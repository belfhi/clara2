#PBS -q laser
#PBS -l walltime=02:00:00
#PBS -N MPI_lib1
#PBS -m n -M x.lastname@hzdr.de
#PBS -d .
#PBS -e ./error.txt
#PBS -o ./output.txt

#PBS -l nodes=4:ppn=32

source  clara2_hypnos.modules

mpiexec --prefix  -tag-output --display-map -x LIBRARY_PATH -x LD_LIBRARY_PATH -n 128 ./executable  |  tee output.log

