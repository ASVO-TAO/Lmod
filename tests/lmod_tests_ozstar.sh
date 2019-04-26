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
\t* gcc/7.3.0 ")" "$(module --width=1000 load python/3.6.4 2>&1)" "Didn't get the expected output for loading an ambigous module at the compiler level"

    assert_equals "" "$(module load python/2.7.14 2>&1)" "Couldn't load module at the compiler level that should have been ok"
}

# Verify that ambiguous modules work correctly for the mpi level
test_ambiguous_mpi() {
    reset_lmod "skylake"

    assert_equals "$(echo -e "Lmod has detected the following error: Can't load scalapack/2.0.2-openblas-0.2.20 because it has more than one parent hierarchy, making this load ambiguous.

\tPlease load one of the following combinations before loading this module:
\t* gcc/7.3.0 openmpi/3.0.0
\t* gcc/6.4.0 openmpi/3.0.0
\t* gcc/5.5.0 openmpi/3.0.0 ")" "$(module --width=1000 load scalapack/2.0.2-openblas-0.2.20 2>&1)" "Didn't get the expected output for loading an ambigous module at the mpi level"

    assert_equals "" "$(module load astrodendro/0.2.0-python-2.7.14 2>&1)" "Couldn't load module at the mpi level that should have been ok"
}


# Verify that saving/restoring works correctly for different architectures
test_save_restore() {
    reset_lmod "skylake"
    module load 
}