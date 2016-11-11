## Week 6 Oyster Methylation Analysis using CoGe

- Went to the [CoGe](https://genomevolution.org/coge/) website
	- logged in using the button at the upper right
	- clicked on the "My Data" link

- On the left-hand side of the page, clicked on the "New" button and selected "New Experiment" from the drop-down menu

- In the pop-up window:
	- On the first page, filled in the boxes as shown:
	![new_experiment1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/new_experiment1.png)
    
    - Clicked the "Next" button at the lower right

	- On the second page, filled in the box as shown (the link in the box in full is: http://owl.fish.washington.edu/nightingales/O_lurida/20160203_mbdseq/zr1394_3_s6_R1.fastq.gz, which was my assigned file for this exercise): 
	![new_experiment2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/new_experiment2.png)
    
    - Clicked on the "Go" button to the right of the URL box:
    ![new_experiment3](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/new_experiment3.png)
    
    - Clicked on the "Next" button at the lower right

	- On the third page, everything remained at the defaults, exceopt: under the alignment section changed the aligner to Bismark, checked the enable box in the methylation analysis section, and checked the add results to notebook and send email when finished boxes
	![new_experiment4](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/new_experiment4.png)
    ![new_experiment5](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/new_experiment5.png)
    
    - Clicked on the "Next" button at the lower right

	- Reviewed the selected options:
	![new_experiment6](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/new_experiment6.png)
    
    - Clicked on the "Start" button at the lower right

- Once the analysis was complete (email received), went back to the "My Data" section of CoGe. Now there is a list of five things to choose from, the last of which is the notebook file ("Week6_oyster_methylation (Experiment)"). Double-clicked on that which opened a new pop-up window:
![open_notebook](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/open_notebook.png)

- Clicked on the "Browse" button so that I could see areas of DNA methylation
![browse_notebook](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/browse_notebook.png)

- The purple areas show the BAM alignment (where the sequences in the fastq file align to the genome) and the spikes show areas of three different types of methylation (CHG, CHH, CpG). I wanted to specifically look at the sequences that align to the genome in relation to areas of CpG methylation, so I selected these options from the Week6_oyster_methylation drop-down menu on the right:
![experiment_dropdown](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/experiment_dropdown.png)

	- First, selected the CpG methylation by clicking on "Week6_oyster_methylation (CpG methylation)":
	![add_CpGs](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/add_CpGs.png)

    - Then, selected the BAM alignment by clicking on "Week6_oyster_methylation (BAM alignment)":
    ![add_BAM](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/add_BAM.png)

- To take a closer look at areas of high methylation (areas with lots of green spikes that had alignments (purple areas, as well as the red and blue blocks added after selecting the BAM alignment from the drop-down menu)), used the magnifaction buttons near the top of the window. Once zoomed in, I could center the interesting alignments in the middle of the window by clicking and dragging to the left or right within the white space of the window. That way I could zoom in further:
![zoom_in](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/zoomin.png)

- Looked at multiple different scaffolds by using the drop-down menu to the right of the magnification buttons near the top-center of the window and selecting different scaffolds. Each scaffold was inspected for areas of high methylation as described/shown above.

- When I found an interesting region I double-clicked on the alignments (red or blue) which would bring up a window specific to that sequence. Two interesting sequences and their `BLAST` results are described below.

# Blasting sequence with high methylation against rainbow trout (*O. mykiss*)

- On scaffold 1946, position 71546-71596, I found the sequence: TGGCGTCGGTGGTTTAGTGGTTAGGTCGTCGGATTTTTGATCGAGAGGTTT [Unique ID: HWI-C00124:164:C7URDANXX:3:2115:20699:57030_1:N:0:TTAGGC]
![blast6](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/blast6.png)

- From the window specific to this sequence (as described above), I copied the sequence

- In a new browser window I went the [NCBI-blastn](https://blast.ncbi.nlm.nih.gov/Blast.cgi?PROGRAM=blastn&PAGE_TYPE=BlastSearch&LINK_LOC=blasthome) website

- On the BLAST page, I pasted my copied sequence into the "Enter accession number(s)..." window, typed rainbow trout into the organism section of "Choose Search Set", and selected "Somewhat similar sequences" from the "Program Selection" section (I had previously tried "Highly similar sequences" with several other sequences and discovered that there weren't any search results, so I settled for "Somewhat similar"). Then I hit the "BLAST" button at the bottom of the screen and waited for it to finish.

- The results showed four different hits, the second of which was a gene called il-12A described [here](http://www.uniprot.org/uniprot/P29459). This had 84% query cover and 72% identity which was pretty good, but the e-value was 9.2 which was pretty bad...
![ncbi6_1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/ncbi6_1.png)

![ncbi6_2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/ncbi6_2.png)

- So, I decided to try to find something with a better e-value. Using the same steps as described above, on scaffold 10308, position 57451-57500, I found the sequence: CATAAAAAAATAAACATCCTCTACTAATCGATCATACCCGCCGTAAACCC [Unique ID: HWI-C00124:164:C7URDANXX:3:1202:19540:27003_1:Y:0:TTAGGC]
![blast7](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/blast7.png)

- The BLAST results for this search showed two different hits, the first of which was a putative Na/K/2Cl co-transporter gene. This only had 38% query cover which is pretty bad, but it had 100% identity and an e-value of 0.005 which was really good.
![ncbi7_1](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/ncbi7_1.png)

![ncbi7_2](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week6_CoGe_oyster/screenshots/ncbi7_2.png)

