#O. mykiss sperm methylome

The project I will be working on will examine the methylome of sperm taken from a single, hatchery-raised, returning adult steelhead (*Oncorhynchus mykiss*).

##Goals/Objectives
My original goal was to obtain data from steelhead raised in the natural environment, as well as those raised in the hatchery environment, and compare methylation between the two rearing environments. However, since I have no data of my own and have never done this type of analysis before that might be a large task to start out with. Therefore, my current goals/objectives are:

1. Learn more about the types of analyses used in bioinformatics and gain a semi-firm grasp of how to do them.

2. Learn more about how to use Jupyter Notebook to communicate how these analyses were performed so that they are reproducible by myself or others.

3. Take MiSeq data from an RRBS-treated sperm sample through the steps necessary (`FastQC`, `Trim_Galore`, `Bismark`, etc.) to examine the methylome of that sample.

##Repository Structure
`analyses/`
- contains all output files from analyses performed on my data, each analysis is in a separate folder (named for the type of analysis performed). The `Trim_Galore` files contain a `.txt` document with the run parameters for that particular analysis, these are also included in the notebook entry for that analysis.

`data/`
- `fastq` data file (not synced to my repository due to size)
- `README.md` describing the sample, sample preparation, and how the data was obtained

`images/`
- contains images from unzipped versions of the `FASTQC` output files, see README.md in this directory

`notebooks/`
- contains `.ipynb` checkpoints (not synced to my repository)
- contains documentation showing how analyses were performed

`R_seastar/`
- contains files used to complete the quiz question for Week 4
- contains output files (images, `.txt` files, a `fasta` file, and a `.tab` file) from completing the quiz question for Week 4
- contains a `.md` notebook showing the steps I took to complete the Week 4 quiz question

`scripts/`
- contains information about a script called `fasta_filter.py` that I can use to merge fasta files with `.txt` or `.tab` files (currently the spacing in the script itself is incorrect, trying to figure out how to fix that so it looks the way it should...)

`README.md`
- this `README.md` describing my project

##Weekly Goals
**Week 1:**
- Download `bash shell`, `GitHub Desktop`, `Anaconda`, `Notepad++`, and `Haroopad`
- Gain a basic understanding of the command line (do the tutorial)
- Obtain data

**Week 2:**
- Download `BLAST` (this was not fully completed until Week 3 due to various problems...)
- Gain a basic understanding of GitHub/GitHub Desktop and Jupyter Notebook
- Start thinking about first steps in my project

**Week 3:**
- Complete download of `BLAST` so that it will successfully run (accomplished by downloading `Visual C++ Redistributable Packages for Visual Studio 2013` from the Microsoft website)
- Download `FASTQC`, gain a basic understanding of how to use it, run an analysis of my data, and gain a basic understanding of the output

**Week 4:**
- Because I found some adapter contamination in my `FASTQC` analysis: download `Trim_Galore`, gain a basic understanding of how to use it, run an analysis, and gain a basic understanding of the output
- Investigate which software would be best to use to map my trimmed sequences back to the genome (`BSMaps`?)

**Week 5:**
- Download either `BSMap` or `Bismark` to start mapping my sequences
- Gain a basic understanding of whichever software I choose and run an analysis
