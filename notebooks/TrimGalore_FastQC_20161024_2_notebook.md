#Notebook for TrimGalore_FastQC_20161024_2

For information on how the software to perform this analysis was downloaded see `Software_documentation_on_Mac` in `analyses/`.

Opened terminal

Typed: `cd Applications` [to change my directory so that the next step will work]

Typed: `venv` [activates virtualenv, see `Software_documentation_on_Mac` in `analyses/` for an explanation why this is necessary on my computer]

Typed: `trim_galore -q 20 --rrbs --non_directional --fastqc 89_S1_L001_R1_001.fastq` [run parameters are also included in a `.txt` file included in the `TrimGalore_FastQC_20161024_2/` folder found in `analyses/` ]

Run completed without error message

Renamed output files/zipped folder by adding `_2` to the end of each

Opened `fastqc_report.html`

In the "Overrepresented sequences" section, the report shows slightly less adapter contamination (0.26094349617778545%) than the last run. Additionally, the "Adapter content" graph still doesn't show adapter contamination further along in the reads. [This information can be viewed by unzipping the `89_S1_L001_R1_001_trimmed_fastqc_2` folder found in `analyses/TrimGalore_FastQC_20161024_2/`. Alternatively, there are images from the `.html` file available in `images/TrimGalore_FastQC_20161024_2/`.]

Next step: Run another `trim_galore` to see if the lower amount of adapter contamination in this run is due to the change in quality cut-off (`-q 20`) or the addition of the `non_directional` parameter (which was added because I wasn't sure whether or not it applied to this data).