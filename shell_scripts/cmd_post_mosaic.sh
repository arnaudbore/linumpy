#!/bin/sh
#SBATCH --nodes=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=249G
#SBATCH --time=5:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=julien.reynaud5@gmail.com
#SBATCH --account=def-jolefc

module load nextflow/22.10.8
module load apptainer/1.1.8

nextflow run /home/jreynaud/workflows/process_reconstruction_post_mosaic.nf -c /home/jreynaud/workflows/reconstruction.config -with-singularity /home/jreynaud/containers/reconstruction.sif --input_directory /home/jreynaud/scratch/mosaic_grids --output_directory /home/jreynaud/scratch/reconstructed_data_zarr -resume
