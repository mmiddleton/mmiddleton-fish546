#Fasta_filter.py script and explanation

With help (a lot) from Giles Goetz we loaded this script onto my computer so that I could join the Phel_contig ids with the Phel_transcriptome file. That way I could BLAST the Phel sequences against the trout genome I found online (http://www.genoscope.cns.fr/trout/data/).

- First, needed to activate virtualenv:
	`venv`
- Then, needed to install biopython:
	`pip install biopython`
- Didn't work because biopython wanted numpy installed first:
	`pip install numpy`
- Now install biopython:
	`pip install biopython`
- Make a directory for the script to go in:
	`mkdir bin`
- Make the script executable:
	`chmod +x fasta_filter.py`
- Start writing the script:
	`vim fasta_filter.py`
- Script:

`#!/Users/mollie.middleton/Applications/virtualenv-15.0.3/bin/python`

`import sys, getopt`

`from Bio import SeqIO`

`def main(argv):`

     `fasta_file = ''`
     `wanted_file = ''`
     `result_file = ''`
     `try:`
         `opts, args = getopt.getopt(argv, "hi:o:w:", ["input=", "output=", "wanted"])`
     `except getopt.GetoptError:`
         `print 'fasta_filter.py -i <input> -o <output> -w <wanted>'`
        `sys.exit(2)`
    `for opt, arg in opts:`
        `if opt == '-h':`
            `print 'fasta_filter.py -i <input> -o <output> -w <wanted>'`
            `sys.exit()`
        `elif opt in ("-i", "--input"):`
            `fasta_file = arg`
        `elif opt in ("-o", "--output"):`

 `print "Input fasta file is ", fasta_file`
    
    `print "Output fasta file is ", result_file`
    `print "Wanted file is ", wanted_file`

   `wanted = set()`
   `with open(wanted_file) as f:`
        `for line in f:`
            `line = line.strip()`
            `if line != "":`
                `wanted.add(line)`

   `fasta_sequences = SeqIO.parse(open(fasta_file),'fasta')`
   `with open(result_file, "w") as f:`
        `for seq in fasta_sequences:`
            `if seq.id in wanted:`
                `SeqIO.write([seq], f, "fasta")`

`if __name__ == "__main__":`
    `main(sys.argv[1:])`

- Move fasta_filter.py to virtualenv-15.0.3/bin folder
	`mv fasta_filter.py ../virtualenv-15.0.3/bin`
	(now the script will work when virtualenv is activated)