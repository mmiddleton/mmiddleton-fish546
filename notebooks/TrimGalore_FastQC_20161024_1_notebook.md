#Notebook for TrimGalore_FastQC_20161024_1

For information on how the software to perform this analysis was downloaded see `Software_documentation_on_Mac` in `analyses/`.

Opened terminal

Typed: `cd Applications` [to change my directory so that the next step will work]

Typed: `venv` [activates virtualenv, see `Software_documentation_on_Mac` in `analyses/` for an explanation why this is necessary on my computer]

Typed: `trim_galore --rrbs --fastqc -q 10 89_S1_L001_R1_001.fastq` [run parameters are also included in a `.txt` file included in the `TrimGalore_FastQC_20161024_1/` folder found in `analyses/`]

Run completed without error message

Renamed output files/zipped folder by adding `_1` to the end of each

Opened `fastqc_report.html`

Quality looks better, but is still in the orange toward the end of the reads: ![quality](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/TrimGalore_FastQC_20161024_1/per_base_quality_trimmed_1.png)

In the "Overrepresented sequences" section, the report shows much less adapter contamination (0.3203000852088496%). Additionally, the "Adapter content" graph no longer shows adapter contamination further along in the reads. ![adapter content](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/TrimGalore_FastQC_20161024_1/adapter_content_trimmed_1.png)

[This information can also be viewed by unzipping the `89_S1_L001_R1_001_trimmed_fastqc_1` folder found in `analyses/TrimGalore_FastQC_20161024_1/`]

Next step: Run another `trim_galore` to better familiarize myself with the program and how changing the parameters changes the `FastQC` output.