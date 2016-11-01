#Notebook for TrimGalore_FastQC_20161025_3

For information on how the software to perform this analysis was downloaded see `Software_documentation_on_Mac` in `analyses/`.

Opened terminal

Typed: `cd Applications` [to change my directory so that the next step will work]

Typed: `venv` [activates virtualenv, see `Software_documentation_on_Mac` in `analyses/` for an explanation why this is necessary on my computer]

Typed: `trim_galore -q 20 --rrbs --fastqc
 89_S1_L001_R1_001.fastq` [run parameters are also included in a `.txt` file included in the `TrimGalore_FastQC_20161025_3/` folder found in `analyses/`]

Run completed without error message

Renamed output files/zipped folder by adding `_3` to the end of each

Opened `fastqc_report.html`

In the "Overrepresented sequences" section, the report shows the same amount of adapter contamination (0.26094349617778545%) as the last run. The "Adapter content" and "Per base sequence quality" graphs look the same as the last run as well. ![quality](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/TrimGalore_FastQC_20161025_3/per_base_quality_trimmed_3.png)
![adapter content](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/TrimGalore_FastQC_20161025_3/adapter_content_trimmed_3.png)

After giving the `_1` run a second look the "Per base sequence quality" graph for that run does not look quite as good at the end of the reads as this run (`_3`) and the last one (`_2`) [This information can also be viewed by unzipping the `89_S1_L001_R1_001_trimmed_fastqc_3` folder found in `analyses/TrimGalore_FastQC_20161025_3/`]

Next step: Based on this analysis, clearly the `non_directional` parameter is not important for this data. Check with Mac to make sure I understand what I'm doing and that I'm running similar commands to what she ran. Run another `trim_galore` with her parameters.