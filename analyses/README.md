# Description of directories in `analyses/`

For more in-depth descriptions of how these analyses were performed see the [notebooks](https://github.com/mmiddleton/mmiddleton-fish546/tree/master/notebooks) for each analysis. Alternatively, the [README](https://github.com/mmiddleton/mmiddleton-fish546/blob/master/notebooks/README.md) in the `notebooks` directory has a brief description of each notebook.

- **`FastQC`:** contains the zipped output from my `FastQC` run and the run parameters

- **`TrimGalore`:** Four different `TrimGalore` analyses (1,2,3,4) were performed so there is a separate directory for each one. They all contain the zipped output from the `TrimGalore` run, the trimming report (`.txt`) and the run parameters

- **`Bismark`:** 
	- `bismark/` directory - contains the summary report from the alignment step of `Bismark` [also contains the `.bam` file which is the output of the alignment step, however, this is not synced to my repository due to size]

	- `bismark_methylation_extractor/` directory - contains the summary report from the methylation extractor step of `Bismark` 