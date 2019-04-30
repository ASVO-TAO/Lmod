#!/bin/bash

# Reset's lmod to the provided architecture
reset_lmod() {
    # Make sure output is not coloured
    export LMOD_COLORIZE=NO
    # Clear the module path
    export MODULEPATH=
    # Set the new system arch
    export SYS_ARCH="$1"
    # Resource the lmod init script
    source /apps/lmod/lmod/lmod/init/profile
    # Purge any loaded modules
    module purge
}

# Verify that loading modules for different architectures works correctly
test_different_archs() {
    reset_lmod "skylake"
    module load gcc/6.4.0
    assert_equals "/apps/skylake/software/core/gcccore/6.4.0" $EBROOTGCCCORE \
        'Loading gcc for skylake did not result in the expected skylake module path'

    reset_lmod "knl"
    module load gcc/6.4.0
    assert_equals "/apps/knl/software/core/gcccore/6.4.0" $EBROOTGCCCORE \
        'Loading gcc for knl did not result in the expected knl module path'

    reset_lmod "sandybridge"
    module load gcc/6.4.0
    assert_equals "/apps/sandybridge/software/core/gcccore/6.4.0" $EBROOTGCCCORE \
        'Loading gcc for sandybridge did not result in the expected sandybridge module path'

    reset_lmod "westmere"
    module load gcc/6.4.0
    assert_equals "/apps/westmere/software/core/gcccore/6.4.0" $EBROOTGCCCORE \
        'Loading gcc for westmere did not result in the expected westmere module path'
}

# Verify that ambiguous modules work correctly for the compilers level
test_ambiguous_compiler() {
    reset_lmod "skylake"

    assert_equals "$(echo -e "Lmod has detected the following error: Can't load python/3.6.4 because it has more than one parent hierarchy, making this load ambiguous.

\tPlease load one of the following combinations before loading this module:
\t* gcc/6.4.0
\t* gcc/7.3.0 ")" \
    "$(module --width=1000 load python/3.6.4 2>&1)" \
    "Didn't get the expected output for loading an ambigous module at the compiler level"

    assert_equals "" \
    "$(module load python/2.7.14 2>&1)" \
    "Couldn't load module at the compiler level that should have been ok"
}

# Verify that ambiguous modules work correctly for the mpi level
test_ambiguous_mpi() {
    reset_lmod "skylake"

    assert_equals "$(echo -e "Lmod has detected the following error: Can't load scalapack/2.0.2-openblas-0.2.20 because it has more than one parent hierarchy, making this load ambiguous.

\tPlease load one of the following combinations before loading this module:
\t* gcc/7.3.0 openmpi/3.0.0
\t* gcc/6.4.0 openmpi/3.0.0
\t* gcc/5.5.0 openmpi/3.0.0 ")" \
    "$(module --width=1000 load scalapack/2.0.2-openblas-0.2.20 2>&1)" \
    "Didn't get the expected output for loading an ambigous module at the mpi level"

    assert_equals "" \
    "$(module load astrodendro/0.2.0-python-2.7.14 2>&1)" \
    "Couldn't load module at the mpi level that should have been ok"
}


# Verify that saving/restoring works correctly for different architectures
test_save_restore() {
    # Test saving a custom collection works correctly
    reset_lmod "skylake"
    module load gcc/6.4.0
    module load openmpi/3.0.0
    module load scalapack/2.0.2-openblas-0.2.20
    assert_equals "$(echo -e "Saved current collection of modules to: \"mysave\"")" \
    "$(module --width=1000 save mysave 2>&1)" \
    "Saving the module list was not successful"
    if [[ ! -f "/root/.lmod.d/mysave.skylake" ]]; then
        fail "Expected save file was not created"
    fi

    # Test saving a default collection works correctly
    module load gcc/6.4.0
    module load openmpi/3.0.0
    module load scalapack/2.0.2-openblas-0.2.20
    assert_equals "$(echo -e "Saved current collection of modules to: \"default\"")" \
    "$(module --width=1000 save 2>&1)" \
    "Saving the module list was not successful"
    if [[ ! -f "/root/.lmod.d/default.skylake" ]]; then
        fail "Expected save file was not created"
    fi

    # Double check that saving under a different arch works as expected
    reset_lmod "sandybridge"
    module load gcc/6.4.0
    module load openmpi/3.0.0
    module load scalapack/2.0.2-openblas-0.2.20
    assert_equals "$(echo -e "Saved current collection of modules to: \"mysave\"")" \
    "$(module --width=1000 save mysave 2>&1)" \
    "Saving the module list was not successful"
    if [[ ! -f "/root/.lmod.d/mysave.sandybridge" ]]; then
        fail "Expected save file was not created"
    fi

    # Try restoring a collection on an arch that doesn't have the specified collection
    reset_lmod "knl"
    assert_equals "$(echo -e "Lmod has detected the following error: User module collection: \"mysave\" does not exist.
  Try \"module savelist\" for possible choices.")" \
    "$(module --width=1000 restore mysave 2>&1)" \
    "Restoring a collection that does not exist succeeded when it should have failed"

    # Verify that thene are no saved collections for knl
    assert_equals "$(echo -e "No named collections.")" \
    "$(module --width=1000 savelist 2>&1)" \
    "A named collection was reported when there should have been none."

    # Verify that default and mysave exist for skylake
    reset_lmod "skylake"
     assert_equals "$(echo -e "Named collection list :
  1) default  2) mysave")" \
    "$(module --width=1000 savelist 2>&1)" \
    "Named collections reported were different to the expected names"

    # Verify that loading a named collection wonks as expected
    assert_equals "$(echo -e "Restoring modules from user's mysave")" \
    "$(module --width=1000 restore mysave 2>&1)" \
    "Restoring the mysave collection did not work as expected"

    module restore mysave
    assert_equals "$(echo -e "\nCurrently Loaded Modules:
  1) binutils/2.30   2) gcccore/6.4.0   3) gcc/6.4.0   4) openmpi/3.0.0   5) openblas/0.2.20   6) scalapack/2.0.2-openblas-0.2.20

 ")" \
    "$(module --width=1000 list 2>&1)" \
    "The module list that was restored was incorrect"

    # Test that loading an existing collection appends .skylake to the output
    reset_lmod "skylake"
    mv /root/.lmod.d/mysave.skylake /root/.lmod.d/mysave
    module restore mysave
    if [[ ! -f "/root/.lmod.d/mysave.skylake" ]]; then
        fail "Expected save file was not created"
    fi

    reset_lmod "skylake"
    mv /root/.lmod.d/default.skylake /root/.lmod.d/default
    module restore
    if [[ ! -f "/root/.lmod.d/default.skylake" ]]; then
        fail "Expected save file was not created"
    fi

    reset_lmod "skylake"
    mv /root/.lmod.d/mysave.sandybridge /root/.lmod.d/mysave
    module restore mysave
    if [[ ! -f "/root/.lmod.d/mysave.sandybridge" ]]; then
        fail "Expected save file was not created"
    fi
}