#Notebook for TrimGalore_FastQC_20161025_4

For information on how the software to perform this analysis was downloaded see `Software_documentation_on_Mac` in `analyses/`.

Opened terminal

Typed: `cd Applications` [to change my directory so that the next step will work]

Typed: `venv` [activates virtualenv, see `Software_documentation_on_Mac` in `analyses/` for an explanation why this is necessary on my computer]

Typed: `trim_galore --rrbs --fastqc 89_S1_L001_R1_001.fastq` [run parameters are also included in a `.txt` file included in the `TrimGalore_FastQC_20161025_4/` folder found in `analyses/`]

Run completed without error message

Renamed output files/zipped folder by adding `_4` to the end of each

Opened `fastqc_report.html`

This run looks identical to the last run (`_3`). In the "Overrepresented sequences" section, the report shows the same amount of adapter contamination (0.26094349617778545%). The "Adapter content" and "Per base sequence quality" graphs look the same as well. ![quality](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/TrimGalore_FastQC_20161025_4/per_base_quality_trimmed_4.png)
![adapter content](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/TrimGalore_FastQC_20161025_4/adapter_content_trimmed_4.png)

The per base sequence content also looks good since the first three bases should be CGG due to the enzyme cut site. The fact that the overall T content is higher than the C content is good, it means the bisulfite conversion worked the way it should have.

![per base content](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/TrimGalore_FastQC_20161025_4/per_base_sequence_content_trimmed_4.png)

[This information can also be viewed by unzipping the `89_S1_L001_R1_001_trimmed_fastqc_4` folder found in `analyses/TrimGalore_FastQC_20161025_4/`]

Next step: Since these are the exact parameters that Mac ran for the data and felt comfortable with it, I feel better about thinking everything looked okay. Now that I feel comfortable with `FastQC` and `Trim_Galore` I can move on to deciding whether I would like to use `BSMap` or `Bismark` to map the trimmed sequences.