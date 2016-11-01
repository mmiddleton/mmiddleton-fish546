#Notebook for FastQC_Pretrim_20161020

For information on how the software to perform this analysis was downloaded see `Software_documentation_on_Mac` in `analyses/`.

Opened terminal

Typed: `fastqc 89_S1_L001_R1_001.fastq` [run parameters are also included in a `.txt` file included in the `FastQC_pretrim_20161020/` folder found in `analyses/`]

Run completed without error message

Renamed zipped output file: `89_S1_L001_R1_001_fastqc_pretrim_20161020`

Unzipped the file by double-clicking

Opened `fastqc_report.html`

Quality doesn't look bad, but does get worse toward the end of the reads: ![quality](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/TrimGalore_FastQC_20161024_1/per_base_quality_trimmed_1.png) 
In the "Overrepresented sequences" section, the report shows some adapter contamination as the top overrepresented sequence (0.8370280870623236%). Additionally, the "Adapter content" graph shows stronger adapter contamination further along in the reads: ![adapter content](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/images/FastQC_pretrim_20161020/adapter_content_pretrim.png) 
[This information can also be viewed by unzipping the `89_S1_L001_R1_001_fastqc_pretrim_20161020` folder found in `analyses/FastQC_pretrim_20161020/`]

Next step: Talk to Mac about what software to use to trim off the adapters, download it, and run.

