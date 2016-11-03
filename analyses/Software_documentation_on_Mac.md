#Downloading software to Mac

All analyses were performed on a Mac Desktop computer (OS 10.11.6). Below are descriptions of how software was downloaded for these analyses and what versions of the software were used.

##`BLAST`

- With mouse clicks:
	- went to website: ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/
	- clicked on "ncbi-blast-2.5.0+-x64-macosx.tar.gz"
	- unzipped the file (double-click)
	- opened the bash terminal
- From the command line:
	- typed: `blastp`, got an error saying command does not exist
	- typed: `touch ~/.bash_profile; open ~/.bash_profile`
	- to the text editor window typed: `export PATH=$PATH:/Users/mollie.middleton/Applications/ncbi-blast-2.5.0+/bin`
	- saved `.bash_profile` and quit text editor
	- back at the command line typed: `source ~/.bash_profile` [to force the profile to execute without having to close the terminal]
	- typed: `blastp` again, got a different error: `BLAST query/options error` [means that `blastp` would be able to execute if I had specified something to BLAST]
- Version of `BLAST`: 2.5.0+

##`FASTQC`

- With mouse clicks: 
	- went to website: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/
    - clicked on "download now" button
    - clicked on "FastQC v0.11.5 (Win/Linux zip file)" [so that I could have the version that will run from the command line as noted in the "Running FastQC as part of a pipeline" section of the "Installation and setup instructions" link]
    - moved the downloaded zipped file from `Downloads/` to `Applications/`
    - unzipped the file (double-click)
- From the command line:
	- typed: `open ~/.bash_profile`
	- to the text editor window typed: `export PATH=$PATH:/Users/mollie.middleton/Applications/FastQC
`
	- saved `.bash_profile` and quit text editor
	- back at the command line typed: `source ~/.bash_profile` [to force the profile to execute without having to close the terminal]
	- typed `fastqc --version` which returned `command not found` error [not surprising since I need `Java` in order to run `FASTQC`]

- Downloading the necessary `Java`:
	- followed the installation instructions found here: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/INSTALL.txt
	- now, when I type `java -version` at the command line it returns: 
	      java version "1.8.0_112"	
          Java(TM) SE Runtime Environment (build 1.8.0_112-b16)	
          Java HotSpot(TM) 64-Bit Server VM (build 25.112-b16, mixed mode)

- Type in `fastqc --version` at the command line now returns: `FASTQC v0.11.5`

##`Trim_Galore`

- With mouse clicks:
	- went to website: http://www.bioinformatics.babraham.ac.uk/projects/trim_galore/
	- clicked on "download now" button
	- clicked on "trim_galore_v0.4.2.zip"
	- moved the downloaded zipped file from `Downloads/` to `Applications/`
	- unzipped the file (double-click)
-  From the command line:
	- typed: `open ~/.bash_profile`
	- to the text editor window typed: `export PATH=$PATH:/Users/mollie.middleton/Applications/trim_galore_v0`
	- saved `.bash_profile` and quit text editor
	- back at the command line typed: `source ~/.bash_profile` [to force the profile to execute without having to close the terminal]
	- typed `trim_galore --version` which returned `command not found` error [not surprising since I need `cutadapt` in order to run `trim_galore`]

- Downloading `cutadapt`
	- I tried to install this once on my own by doing a google search for "cutadapt" but was unable to find a version that I could figure out a way to download... So, talked to Giles who helped me install `virtualenv` which will run cutadapt

- Downloading `virtualenv`
	- Went to this website: 
https://virtualenv.pypa.io/en/stable/installation/
	- Based on code found in the “To use locally from source” section: at the command line typed  `curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-15.0.3.tar.gz` [for some reason that neither of us could figure out this didn't work, so...]
	- With mouse-clicks:
		- went to this website: https://pypi.python.org/pypi/virtualenv/15.0.3
		- clicked on the "downloads" button
		- clicked on the "virtualenv-15.0.3.tar.gz (md5, pgp)" link
    - Back at the command line typed:
           mv ~/Downloads/virtualenv-15.0.3.tar.gz .
           tar zxvf virtualenv-15.0.3.tar.gz 
           cd virtualenv-15.0.3
           python ./virtualenv.py /Users/mollie.middleton/Applications/virtualenv-15.0.3
      [this is based on code found in the "To use locally from source" section of the https://virtualenv.pypa.io/en/stable/installation/ website]
	- `/Users/mollie.middleton/Applications/virtualenv-15.0.3/bin/pip install virtualenv-15.0.3.tar.gz` [installs virtualenv in specified directory]
	- `source /Users/mollie.middleton/Applications/virtualenv-15.0.3/bin/activate` [activates virtualenv, but this didn't work because I need to install xcode, so...]
	- installed xcode from the Apple app store (using mouse-clicks)
	- back at the command line: `virtualenv
source /Users/mollie.middleton/Applications/virtualenv-15.0.3/bin/activate`
	- `pip install cutadapt` [installs cutadapt]
	- `open ~/.bash_profile`
	- to the text editor window typed: `alias venv=“source /Users/mollie.middleton/Applications/virtualenv-15.0.3/bin/activate”` [creates a shortcut so that I can just type "venv" when I want to activate `virtualenv` to run `trim-galore` rather than typing all that code each time to activate]
	- saved `.bash_profile` and quit text editor
	- back at the command line typed: `source ~/.bash_profile` [to force the profile to execute without having to close the terminal]

- Now, with `virtualenv` activated, typing `trim_galore --version` returns `Quality-/Adapter-/RRBS-Trimming (powered by Cutadapt) version 0.4.2`

- Version of `cutadapt`: 1.11
- Version of `virtualenv`: 15.0.3














 






`


