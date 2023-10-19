#! /bin/bash

# run SCF calculation
# write total energy values to text file
# If you would like to run SCF using this file, you have to change some paths in *.in:
#   - outdir = '../tmp'
#   - pseudo_dir = './pp'

# mpirun -np 4 pw.x < './scf_in/cristo_alpha.in' | tee './scf_out/ca.out'
# grep 'total energy' './scf_out/ca.out' | sed 's/!//g'| awk '{print $4}' > tmp && sed '$d' tmp > './total_energy/ca.en'

# mpirun -np 4 pw.x < './scf_in/cristo_beta.in' | tee './scf_out/cb.out'
# grep 'total energy' './scf_out/cb.out' | sed 's/!//g'| awk '{print $4}' > tmp && sed '$d' tmp > './total_energy/cb.en'

mpirun -np 4 pw.x < './scf_in/quartz_alpha.in' | tee './scf_out/qa.out'
grep 'total energy' './scf_out/qa.out' | sed 's/!//g'| awk '{print $4}' > tmp && sed '$d' tmp > './total_energy/qa.en'

# mpirun -np 4 pw.x < './scf_in/quartz_beta.in' | tee './scf_out/qb.out'
# grep 'total energy' './scf_out/qb.out' | sed 's/!//g'| awk '{print $4}' > tmp && sed '$d' tmp > './total_energy/qb.en'

rm tmp 
