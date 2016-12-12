# Success using both CoGe and Bismark to align my sequences to the genome

## 2016-11-25 - CoGe Bismark analysis success
Because I had realized that I started my `Bismark` analysis in the terminal with the wrong data, I decided to attempt to get CoGe to work again.

- On the CoGe website, selected "My Data" from the top of the page
- On the right-hand side, selected "New" and clicked on "New Experiment" from the drop-down menu
- On the "Describe your experiment" page in the pop-up window:
![CoGe_describe](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_success_DYE.png)
- On the "Data" page in the pop-up window:
![CoGe_data](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_success_data.png)
- On the "Options" page in the pop-up windwo:
![CoGe_opt1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_success_options1.png)
![CoGe_opt2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_success_options2.png)
- On the "Review and Submit" page in the pop-up window:
![CoGe_rev](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_success_review.png)

This time it actually started running!!!!
![CoGe_running](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_success_running.png)
And it even completed successfully!!!!!
![CoGe_complete1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_success_complete1.png)
![CoGe_complete2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_success_complete2.png)
This time around I did not start the analysis with the metaplot option (under the Methylation Analysis heading on the Options page) enabled. Maybe this is what was causing my previous attempts to fail? Not quite sure, but very happy that it completed this time around. At least I got some sort of data that I can go forward with. Despite getting my `Bismark` analysis in the terminal to complete, various other problems cropped up, such as being unable to post large files to GitHub, so this was the primary analysis that I used to make my `.tab` file of heavily methylated genes.

## 2016-11-28 - `Bismark` analysis started with correct data
- In the terminal, navigated to the directory where my data file is stored (part of the reason I ran it with the wrong data file on my first two attempts is that the trimmed data file is embedded another directory deep and I didn't navigate far enough...).
- Entered the command: `bismark ~/Documents/Trout_genome 89_S1_L001_R1_001_trimmed.fq` (see previous analysis attempts for specifics on each part of this command)
- Here's what it looks like while it is running:
![Bismark_start](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/Bismark_success/Bismark_start.png)

It does this for a while...
![Bismark_running1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/Bismark_success/Bismark_running1.png)

Then it does this for a while...
![Bismark_running2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/Bismark_success/Bismark_running2.png)

But eventually it completes with a final alignment report that is also output to a text file (found [here](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/analyses/Bismark/bismark/89_S1_L001_R1_001_trimmed_bismark_bt2_SE_report.txt)). So, in the end you are left with the text file and a `.bam` file in the current working directory (where you started your analysis). Unfortunately, the `.bam` file is much too large to post to GitHub and using a `gzip` command to compress it does not help much with the file size. So, I'm unable to upload that.

## 2016-12-8 - `Bismark` methylation extractor step
- Once the `Bismark` analysis finished running it is necessary to run the `bismark_methylation_extractor` command in order to really get anything out of the data
- In the terminal, navigated to the directory where my `.bam` file was stored.
- Entered the command: `bismark_methylation_extractor --comprehesive --bedGraph --counts --scaffolds 89_S1_L001_R1_001_trimmed_bismark_bt2.bam`
	- `--comprehensive` makes it so that the output files for CpG, CHH, and CHG methylation are combined into single files, one each for each methylation type. The default it that there are two files for each, one for alignments to the original top strand and one for alignments to the original bottom strand. 
	- `--bedGraph` makes it so that methylation output is written into a sorted `bedGraph` file that reports the position of a given cytosine and it methylation state
	- `--counts` was a command I put in because Mac has it as part of her pipeline, but after looking over the Bismark User Guide (found [here](https://rawgit.com/FelixKrueger/Bismark/master/Docs/Bismark_User_Guide.html)) multiple times, neither of us could figure out exactly what it what used for... I figured it couldn't hurt to put it in if she thought it was necessary at one time.
	- `--scaffolds` is necessary due to the fact that we are working with an unfinished genome including thousands of scaffolds. The program has a limit to the number of filehandles that can be written out at any one time and this command bypasses that problem.
	- The last part of the command is the `.bam` file output from the `bismark` alignment step.
	- Default output of the `bismark_methylation_extractor` step is a `.cov` file, which reports percent methylation and depth of coverage at each site, and a `.txt` file, which reports parameters used in methylation extractor step and overall cytosine methylation.
- Here's what it looks like while it's running:
![Bismark_methylation1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/Bismark_success/Bismark_methylation_extractor1.png) 

It does this for a while...
![Bismark_methylation2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/Bismark_success/Bismark_methylation_extractor2.png)

Then it starts processing...
![Bismark_methylation3](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/Bismark_success/Bismark_methylation_extractor3.png)

It completes with an overall cytosine methylation report that is also output to a text file and can be found [here](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/analyses/Bismark/bismark_methylation_extractor/89_S1_L001_R1_001_trimmed_bismark_bt2_splitting_report.txt).
So, in the end you are left with a `.bedGraph.gz` file, a `.cov.gz` file, a `.M-bias.txt` file (this output is default and is what the `.cov.gz` file is written from), and three `.txt` files for each methylation type (they start with CpG_context, CHH_context, and CHG_context; in my case I have only posted a zipped version of the CpG_context file to GitHub since in our lab we aren't interested in CHH or CHG context).