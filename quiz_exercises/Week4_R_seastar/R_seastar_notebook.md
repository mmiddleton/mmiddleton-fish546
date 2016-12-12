#R_seastar Week 4 Notebook

- Files needed:
	- `Phel_DEGlist.tab`
	- `Phel_transcriptome.fasta`
	- `Omykiss_codinggenes.fa` (not in repo, instruction on how to get are below)
	- `all.swiss.out.tab` (This is an annotated genome our lab has compiled, not available on GitHub due to size)

- Files made:
	- `Phel_DEGlist.ids.txt`
	- `Phel_DEGlist.seq.fasta`
	- `blastn_seastar`
	- `blastn_seastar_sorted_by_evalue`

- After making the `Phel_DEGlist.tab` file from the R exercice (see `Week4_exercise` file), need to remove just those contig ids (first column) in order to match them to their sequence in the `Phel_transcriptome.fasta` file:
	`cut -d " " -f 1 Phel_DEGlist.tab`

- Since this looked good and did what I wanted it to do, redirect it to an output file:
	`cut -d " " -f 1 Phel_DEGlist.tab > Phel_DEGlist.ids.txt`

- Since the `Phel_DEGlist.tab` file had a header row in it, this came over when the first column was cut out, so need to remove that:
	`open Phel_DEGlist.ids.txt` (delete manually, save, and exit)

- Activate virtualenv (see `Software_documentation_on_Mac` file in `analyses/` for an explanation why):
	`venv`
- Run fasta_filter.py script to join the two (see `fasta_filter.py_script` [here](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/quiz_exercises/Week4_R_seastar/fasta_filter.py_script.md)):
	`fasta_filter.py -i Phel_transcriptome.fasta -w Phel_DEGlist.ids.txt -o Phel_DEGlist.seq.fasta`

- Check to make sure that the output looks like a fasta file:
	`head -n 10 Phel_DEGlist.seq.fasta`
	looked good

- Check to make sure that the number of lines in the output file matches the number in the .ids.txt file:
	`grep -c ">" Phel_DEGlist.seq.fasta`
	`wc -l Phel_DEGlist.ids.txt`
    both are 3672

- From the http://www.genoscope.cns.fr/trout/data/ website, download the `Omykiss_codinggenes.fa.gz` file and unzip by double-clicking

- Need to make a `BLAST` database in order to blast the `Phel_DEGlist.seq.fasta` file against the trout:
	`makeblastdb -in Omykiss_codinggenes.fa -dbtype nucl -out Omykiss_codinggenes`

- Run `BLAST`:
	`blastn -query R_seastar/Phel_DEGlist.seq.fasta -db Documents/Trout_genome/Omykiss_codinggenes -outfmt 6 -max_target_seqs 1 -out Desktop/blastn_seastar.txt`

- Sort this file based on the e-value so that the best hits are at the top:
	`sort -k 11 blastn_seastar.txt`

- Looked good, so redirect to an output file:
	`sort -k 11 blastn_seastar.txt > blastn_seastar_sorted_by_evalue.txt`

- Do searches for the top hits (e-value of 0) from the `blastn_seastar_sorted.txt` file in the `all.swiss.out.tab` file:
	`grep "GSONMT00028010001" all.swiss.out.tab`
    `grep "GSONMT00026940001" all.swiss.out.tab`
    `grep "GSONMT00028101001" all.swiss.out.tab`
    `grep "GSONMT00051283001" all.swiss.out.tab`
    `grep "GSONMT00029676001" all.swiss.out.tab`
    `grep "GSONMT00013009001" all.swiss.out.tab`
    `grep "GSONMT00040227001" all.swiss.out.tab`

- These corresponded to various genes, I thought the last one sounded the most interesting, the output of that search was:
	`GSONMT00040227001	2286	BLASTX	Non-redundant UniProtKB/SwissProt sequences	sp|Q7ZU99.1|TERA_DANRE	
RecName: Full=Transitional endoplasmic reticulum ATPase; Short=TER ATPase; 
AltName: Full=Protein CDC48; 
AltName: Full=Valosin-containing protein; Short=VCP [Danio rerio]	3295	0.0	654/668 (97%)	259	2262`

- Looked up the gene with a google search, it's a gene involved in the formation of the nuclear envelope and the endoplasmic reticulum. It is also necessary for the fragmentation of Golgi stacks during mitosis and their reassembly after mitosis and it's involved in DNA damage response (Also, known as valosin).

- Figure out which Phel_contig it matched to:
	`grep "GSONMT00040227001" blastn_seastar_sorted_by_evalue.txt`
	It matched to Phel_contig_1027 

- Just for more experience, find the Phel_contig_1027 sequence and use the `BLAST` website:
	`grep -A100 "Phel_contig_1027" Phel_DEGlist.seq.fasta` [Also opened the `Phel_DEGlist.seq.fasta` file with Text Wrangler and searched for "Phel_contig_1027" to make sure that I got all the sequence with my `grep` command]
   - went to the https://blast.ncbi.nlm.nih.gov/Blast.cgi website
   - clicked on the "Nucleotide blast" button
   - In the "Choose Search Section", changed the organism to search against to *Oncorhynchus mykiss*
   - copy and paste the sequence that came after the `>Phel_contig_1027` from the grep command into the "Enter accession number(s), gi(s), or FASTA sequence(s)" window
   - Hit the "BLAST" button at the bottom

- The sequence matched with 70% identity and an e-value of zero (see NCBI_Omykiss_valosin image)