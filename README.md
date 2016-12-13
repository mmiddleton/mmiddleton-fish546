#*Oncorhynchus mykiss* sperm methylome project for FISH 546

The project I will be working on will examine the methylome of sperm taken from a single, hatchery-raised, returning adult steelhead (*Oncorhynchus mykiss*). See a more in-depth description of the data that I am working with [here](https://github.com/mmiddleton/mmiddleton-fish546/tree/master/data)

##Goals/Objectives
My original goal was to obtain data from steelhead raised in the natural environment, as well as those raised in the hatchery environment, and compare methylation between the two rearing environments. However, since I have no data of my own and have never done this type of analysis before, that might be a large task to start out with. Therefore, my current goals/objectives are:

1. Learn more about the types of analyses used in bioinformatics and gain a semi-firm grasp of how to do them.

2. Learn more about how to use Jupyter Notebook to communicate how these analyses were performed so that they are reproducible by myself or others.

3. Take MiSeq data from an RRBS-treated sperm sample through the steps necessary (`FastQC`, `Trim_Galore`, `Bismark`, etc.) to examine the methylome of that sample.

##Repository Structure
`analyses/`
- contains all output files from analyses performed on my data.
	- `FastQC` - contains the zipped output from my `FastQC` run and the run parameters
	- `TrimGalore` - Four different runs (1,2,3,4) each containing the zipped output from the `TrimGalore` run, the trimming report (`.txt`) and the run parameters
	- `Bismark`
		- `bismark/` directory - contains the summary report from the alignment step of `Bismark` [also contains the `.bam` file which is the output of the alignment step, however, this is not synced to my repository due to size]
		- `bismark_methylation_extractor/` directory - contains the summary report from the methylation extractor step of `Bismark`
- contains a file called `Software_documentation_on_Mac` which documents the operating system these analyses were performed on, versions of software used, and how that software was downloaded

`data/`
- `fastq` data file (not synced to my repository due to size)
- `README.md` describing the sample, sample preparation, and how the data was obtained

`images/`
- contains images from unzipped versions of the `FASTQC` output files, quick links to each image are available in the [README](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/README.md)
- contains images included in the [Bismark_failures_notebook](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/notebooks/Bismark_failures_notebook.md) and [Bismark_success_notebook](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/notebooks/Bismark_success_notebook.md) files

`notebooks/`
- contains `.ipynb` checkpoints (not synced to my repository)
- contains documentation showing how analyses were performed, see [README](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/notebooks/README.md) for a brief description of each notebook

`quiz_exercises/`
- `Week3_images/`
	- contains repository images (punchcard and directory structure) used to complete quiz questions for Week 3 
- `Week4_R_seastar/`
	- contains files used to complete the quiz question for Week 4
	- contains output files (images, `.txt` files, a `fasta` file, and a `.tab` file) from completing the quiz question for Week 4
	- contains the description of a script I had help writing (fasta_filter.py) that I used to merge a `fasta` file with a `tab` file in order to complete the quiz question
	- contains a `.md` notebook showing the steps I took to complete the Week 4 quiz question
- `Week6_CoGe_oyster/`
	- contains a `.md` notebook describing the steps taken to do a methylation analysis using CoGe
	- contains screenshots of the CoGe and Blast websites showing the steps taking to complete the methylation analysis 
- `Week9_bashscript/`
	- contains a `bash script` titled `quiz9` I wrote that will create copies of `fastq` files and move them to a new directory titled `Raw_backup`
	- contains a `jupyter notebook` showing a successful run of the script
	- contains test `fastq` files I made in order to test my script
	- contains the directory `Raw_backup` that was successfully created by running the script

`results/`
- contains results files after methylation extractor step of `Bismark` and a `.tab` file with results from Blast-ing some heavily methylated and undermethylated sequences to examine what genes they match to. See [README](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/results/README.md) for more detailed information.

`README.md`
- this `README.md` describing my project

##Weekly Goals
**Week 1:**
- Download `bash shell`, `GitHub Desktop`, `Anaconda`, `Notepad++`, and `Haroopad`
- Gain a basic understanding of the command line (do the tutorial)
- Obtain data

**Week 2:**
- Download `BLAST` (this was not fully completed until Week 3 due to various problems with the Windows machine)
- Gain a basic understanding of GitHub/GitHub Desktop and Jupyter Notebook
- Start thinking about first steps in my project

**Week 3:**
- Download `BLAST` on my Mac desktop (will be downloading any future software to this location due to problems with Windows machine)
- Complete download of `BLAST` on my Windows machine so that it will successfully run (accomplished by downloading `Visual C++ Redistributable Packages for Visual Studio 2013` from the Microsoft website)
- Download `FASTQC`, gain a basic understanding of how to use it, run an analysis of my data, and gain a basic understanding of the output

**Week 4:**
- Because I found some adapter contamination in my `FASTQC` analysis: download `Trim_Galore`, gain a basic understanding of how to use it, run an analysis, and gain a basic understanding of the output
- Investigate which software would be best to use to map my trimmed sequences back to the genome (`BSMaps`?)

**Week 5:**
- Download `Bismark` and its dependencies to start mapping my sequences back to the genome
- Gain a basic understanding of the software by reading the Bismark User Guide.

**Week 6**
- Run a `bismark_genome_preparation` which is the first step to being able to align my data back to the genome [see `Bismark_notebook.md` for more detail on why].
- Attempt to run a Bismark analysis online at the CoGe website.

**Week 7**
- Attempt to run the `bismark_genome_preparation` again since it was unable to complete last week (see `Bismark_notebook.md` for more details).
- Upload my genome (scaffolds) to the CoGe website and attempt to run the Bismark alignment again since it didn't work using the chromosome assembly which was previously uploaded by someone else.

**Week 8**
- Since I was never able to get my computer to complete the genome prep, I obtained a copy of the bisulfite prepped genome from Mac and will run the mapping portion (commmand: `bismark`) over the holiday weekend
- Attempt to run a Bismark analysis with CoGe again since it has not been working thus far.

**Week 9**
- Since I started the `bismark` alignment command using the wrong file (raw rather than quality trimmed data), re-run the `bismark` alignment using the correct file
- `BLAST` some heavily methylated genes and search for genes of interest to see if they are covered by the sequencing data and whether or not they are methylated

**Week 10**
- Run the `bismark_methylation_extraction` step in the terminal to see if I can get that to complete
- Continue with the `BLAST` searches
- Create release of repository and archive using Zenodo
