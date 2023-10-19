#! /bin/bash

# run non-SCF calculation
# If you would like to run non-SCF using this file, you have to change some paths in *.in:
#   - outdir = '../tmp'
#   - pseudo_dir = './pp'

# mpirun -np 4 pw.x < './scf_in/cristo_alpha.in' | tee './scf_out/cristo_alpha.out'
# grep 'total energy' './scf_out/cristo_alpha.out' | sed 's/!//g'| awk '{print $4}' > tmp && sed '$d' tmp > './total_energy/cristo_alpha.en'

# mpirun -np 4 pw.x < './scf_in/cristo_beta.in' | tee './scf_out/cristo_beta.out'
# grep 'total energy' './scf_out/cristo_beta.out' | sed 's/!//g'| awk '{print $4}' > tmp && sed '$d' tmp > './total_energy/cristo_beta.en'

# mpirun -np 4 pw.x < './scf_in/quartz_alpha.in' | tee './scf_out/quartz_alpha.out'
# grep 'total energy' './scf_out/quartz_alpha.out' | sed 's/!//g'| awk '{print $4}' > tmp && sed '$d' tmp > './total_energy/quartz_alpha.en'

# mpirun -np 4 pw.x < './scf_in/quartz_beta.in' | tee './scf_out/quartz_beta.out'
# grep 'total energy' './scf_out/quartz_beta.out' | sed 's/!//g'| awk '{print $4}' > tmp && sed '$d' tmp > './total_energy/quartz_beta.en'

# rm tmp

# mpirun -np 4 pw.x < './nscf_in/quartz_alpha.in' | tee './nscf_out/quartz_alpha.out'
# pw.x < './nscf_in/quartz_alpha.in' | tee './nscf_out/quartz_alpha.out'
dos.x < './dos_in/dos.in' | tee './dos_out/dos.out'
