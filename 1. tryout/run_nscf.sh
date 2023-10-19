#! /bin/bash

# run non-SCF calculation for DOS and pDOS
# If you would like to run non-SCF using this file, you have to change some paths in *.in:
#   - outdir = '../out_qa'
#   - pseudo_dir = './pp'

# mpirun -np 4 pw.x < './scf_in/cristo_alpha.in' | tee './scf_out/cristo_alpha.out'

# mpirun -np 4 pw.x < './scf_in/cristo_beta.in' | tee './scf_out/cristo_beta.out'

mpirun -np 4 pw.x < './nscf_in/quartz_alpha.in' | tee './nscf_out/dos_qa.out'

# mpirun -np 4 pw.x < './scf_in/quartz_beta.in' | tee './scf_out/quartz_beta.out'
