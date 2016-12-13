#Notebook structure for FISH 546 project

As noted at the beginning of each Markdown notebook, see [Software_documentation_on_Mac](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/analyses/Software_documentation_on_Mac.md) for versions of software used and how they were downloaded to the Mac Desktop where I performed my analyses.

###A brief description of each notebook:
- **O. mykiss sperm RRBS:** Initial check of the data file when I first received it to see what a `fastq` file looks like
- **FastQC_Pretrim_20161020:** Initial FastQC to look at the quality of the reads and check for adapter contamination
- **TrimGalore_FastQC_20161024_1:** First attempt to clean up the adapter contamination I found in the initial FASTQC, as well as the lower quality reads
- **TrimGalore_FastQC_20161024_2:** Second attempt to clean up the lower quality reads since the quality cut off the first time was probably too low
- **TrimGalore_FastQC_20161025_3:** Third attempt to clean up the lower quality reads, mostly to better familiarize myself with the program since there are many different parameters and I added two to the last run. So, removed one of the parameters from this run for comparison
- **TrimGalore_FastQC_20161025_4:** Final run after talking to Mac to make sure I was understanding my outputs and getting her opinion on what parameters are useful
- **Bismark_failures:** Documentation of all the problems that occurred while trying to complete a `Bismark` analysis both on the CoGe website and in the terminal.
- **Bismark_success:** Documentation of the successful completion of a `Bismark` analysis both on the CoGe website and in the terminal