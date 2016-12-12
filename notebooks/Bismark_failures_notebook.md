# Attempts at aligning my data to the genome using `Bismark`

For information on how the software to perform this analysis was downloaded see `Software_documentation_on_Mac` in `analyses/`.

In order to align to the genome using `Bismark` I first have to do a genome preparation command which will convert all the cytosines (Cs) to thymines (Ts) and all the guanines (Gs) to adenines (As). When you do the alignment step `Bismark` uses both the converted and unconverted genomes to align your sequences.

## 2016-11-10 - `Bismark` genome prep failure 1
Started a `Bismark` genome prep using the command `bismark_genome_preparation --verbose .` The verbose is just so that I can see what is happening in the terminal as the process progresses. The "." is really just to identify what directory the genome that I wanted prepared is in. I had already navigated to that directory though, so I can just put "." rather than a path to that directory. Since `Bowtie2` is in my PATH I also do not have to specify what directory that is in.

I started this on Thursday morning in the hopes that it would complete by the time I returned to work on Monday morning, since I have been told (and read) that the genome prep is a rather long process. Here's what it looks like in the terminal when it first starts running:
![Bismark_genome_prep](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/bismark_genome_prep_unsuccessful.png)

When I got back to work on Monday morning (2016-11-14) my computer was more or less unresponsive... I was able to get the mouse arrow to show up, but on a completely black screen and I could not get the log-in box to come up so that I could enter my password. Had to do a hard shut-down... When I finally could log-in I had the windows that were previously open re-opened so that I could see how far the process had progressed before it failed. Apparently it got most of the way through step II which is the alignment. I also found out from IT that there was a setting on my computer which I didn't have access to that causes the hardware on the computer to go to sleep after five hours of inactivity and that was likely what caused the process to fail. So, they changed the setting for me so that the hardware would never go to sleep and I'll try again later in the week.

## 2016-11-15 - `Bismark` genome prep failure 2
Started another genome prep with `Bismark` since I will be away from my computer all day Wednesday sampling fish. Used the same command (`bismark_genome_preparation --verbose .`). Will check on it Thursday, hopefully it completes this time.

When I got back to my computer on Thursday morning, my computer was again mostly unresponsive. All I got was the pinwheel on a black screen. Reluctantly, I did another hard shut down. When the windows that were previously open re-opened I was able to see that the process got to step III this time which is the indexing. Truly unfortunate that I couldn't let it finish, but at least it got further, maybe if I was able to leave it for another day it would have completed...

Since I have not yet been able to get my own computer to complete the genome prep, I got a copy of the prepared genome from Mac since she has the same genome and bisulfite prepared genome on her computer. I'll attempt to run the alignment with my sequence data over the weekend.

## 2016-11-15 - CoGe Bismark analysis failure
Since so far `Bismark` has been less than happy attempting to run on my computer, I decided to try and run an analysis on [CoGe](https://genomevolution.org/coge/).

### First attempt using the chromosome assembly with annotation (Genoscope)
- On the CoGe website, selected "My Data" from the top of the page
- On the right-hand side, selcted "New" and clicked on "New experiment" from the drop-down menu
- On the "Describe your experiment" page in the pop-up window:
![CoGe_describe_your_experiment](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_describe_chr.png)
- On the "Data" page in the pop-up window:
![CoGe_data](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_data_chr_and_scaf.png)
- On the "Options" page in the pop-up window::
![CoGe_options1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_options1_chr_and_scaf.png)
![CoGe_options2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_options2_chr_and_scaf.png)
- On the "Review and Submit" page in the pop-up window:
![CoGe_review](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_review_chr.png)
- After waiting for awhile for this to finish, got this message...
![CoGe_fail](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_chr_fail.png)
Apparently, the BAM file can't be indexed, but why that failed is beyond my capabilities. So, I'll try to upload the genome that I have been using (scaffolds) and try that instead in case it is a genome issue.

### Second attempt using the scaffolds from Genoscope (the genome I have been trying to prep with `Bismark` on my computer)
- Upload the genome
	- On the CoGe website, selected "My Data" from the top of the page
	- On the right-hand side, selected "New" and clicked on "New Genome" from the drop-down menu
	- On the "Describe your genome" page in the pop-up window:
	![CoGe_gen_describe](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_describegenome.png)
    - On the "Data" page in the pop-up window:
    ![CoGe_gen_upload](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_uploadgenome.png)
    - On the "Review and Submit" page in the pop-up window:
    ![CoGe_gen_review](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_reviewgenome.png)
    - Took about 45 minutes to complete, now to try and run a `Bismark` analysis

- Bismark Analysis
	- On the CoGe website, selected "My Data" from the top of the page
	- On the right-hand side, selected "New" and clicked on "New Experiment" from the drop-down menu
	- On the "Describe your experiment" page in the pop-up window:
	![CoGe_describe](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_describe_scaf.png)
	- On the "Data" page in the pop-up window:
	![CoGe_data](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_data_chr_and_scaf.png)
    - On the "Options" page in the pop-up windwo:
    ![CoGe_opt1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_options1_chr_and_scaf.png)
    ![CoGe_opt2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_options2_chr_and_scaf.png)
    - On the "Review and Submit" page in the pop-up window:
    ![CoGe_rev](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_review_scaf.png)
    - Everytime I hit the "Start" button to get this analysis running I get an error messgage:
    ![CoGe_error](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/CoGe_scaf_fail.png)

I have tried to run this at least five times over the course of two days at different times of the day and I get the error message every time. I'm not sure if it is a problem with the genome that I uploaded or the way that I uploaded it... 

## 2016-11-18 - `Bismark` analysis test run
Using the prepared genome I received from Mackenzie I'm attempting to run the `Bismark` analysis with default settings, just to see if it crashes my computer, which hopefully it does not.

- In the terminal, navigated to the directory where my data file is stored since that is part of the requirements of the analysis.
- Entered the command: `bismark ~/Documents/Trout_genome 89_S1_L001_R1_001.fastq` 
	- `bismark` is the command for the alignment step
	- `~/Documents/Trout_genome` is the path to the folder where both the reference genome and the bisulfite converted genome are stored
	- `89_S1_L001_R1_001.fastq` is my data file which is stored in my working directory
	- Both the path to the genome folder and the file in the working directory are required arguments, everything else was left at default settings

Here's what I was able to see before I decided to leave it alone:
![bismark](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/bismark_fail.png)
![bismark2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/Bismark_notebook/bismark2_fail.png)
When I got back to my computer on Monday it was still running, but at least it hadn't crashed. However, it does run incredibly slow for everything else while trying to do the alignment. Since I need access to my computer, I quit out of the terminal and will restart the alignment over the four-day holiday weekend in the hopes that the alignment will finish in that amount of time.

## 2016-11-23 - `Bismark` analysis failure
Followed the exact same steps as described above. The alignment was mostly successful, it didn't finish but when I got back to my computer after the four-day weekend it had processed nearly all of the 5,000,000 sequences. However, I realized over the weekend that I started the alignment with the wrong file, I used `89_S1_L001_R1_001.fastq` rather than `89_S1_L001_R1_001_trimmed.fq` which is the quality trimmed version of the data. So, I quit out of the terminal since even if I were to let it finish that output would not be useful since it was produced from adapter contaminated sequence data.