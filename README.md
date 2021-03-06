# Blackbird is currently on hold
The changes to Phinch introduced by Blackbird are going to be merged into the main Phinch project (see [#63](https://github.com/PitchInteractiveInc/Phinch/issues/63) and [#67](https://github.com/PitchInteractiveInc/Phinch/issues/67)).
Blackbird will retire after those changes are merged. Future development will happen in the [Phinch repository](https://github.com/PitchInteractiveInc/Phinch) and it's [fork](https://github.com/molbiodiv/Phinch) 
At [https://blackbird.iimog.org](https://blackbird.iimog.org) there is a preview of Phinch after merging the pull request.

## Server

A public server is online at [https://blackbird.iimog.org]().
But you can also host your own (see below).

![VizGallery](https://raw.githubusercontent.com/molbiodiv/Blackbird/master/viz_gallery.png)

## About Blackbird

This fork is based on Phinch 1.1.2. It addresses a couple of practical limitations.
All changes are made available under the same license as the original project (BSD 2-clause).
Here is an overview of the changes between Blackbird 1.2.0 and Phinch 1.1.2:

 - All desktop browsers are allowed (original project only allows Chrome)
 - [BIOM format](http://biom-format.org/) version 2 is supported (in addition to version 1) by integrating [biom-conversion-server](https://github.com/molbiodiv/biom-conversion-server) and [biojs-io-biom](https://github.com/molbiodiv/biojs-io-biom)
 - Export is possible as svg and png format ([Phinch#43](https://github.com/PitchInteractiveInc/Phinch/issues/43))
 - Dense biom format is supported (in addition to sparse, [Phinch#64](https://github.com/PitchInteractiveInc/Phinch/issues/64))
 - A few bugs are fixed (e.g. [Phinch#49](https://github.com/PitchInteractiveInc/Phinch/pull/49))
 - Shared links are not sent via email automatically
 - A docker image is provided for self hosting
 - SQLite instead of MySQL is used

I'll be happy to help port my changes back to the main project.

## About the original project

[Phinch](http://phinch.org/) is an open-source framework for visualizing biological data, funded by a grant from the [Alfred P. Sloan foundation](http://www.sloan.org/). This project represents an interdisciplinary collaboration between [Pitch Interactive](http://www.pitchinteractive.com/beta/index.php), a data visualization studio in Oakland, CA, and biological researchers at [UC Davis](http://www.ucdavis.edu/). Whether it's genes, proteins, or microbial species, Phinch provides an interactive visualization tool that allows users to explore and manipulate large biological datasets.

[Phinch](http://phinch.org/) is optimized for use in the Chrome browser. It currently supports downstream analyses of .biom files ([Biological Observation Matrix](http://biom-format.org/), a JSON-formatted file type typically used to represent marker gene OTUs or metagenomic data). All sample metadata and taxonomy/ontology information MUST be embedded in the .biom file before being uploaded. 

## Cite

If you use Blackbird for your research please cite this repository (by doi, see below) as well as the following articles:
> Ankenbrand MJ, Terhoeven N, Hohlfeld S et al. biojs-io-biom, a BioJS component for handling data in Biological Observation Matrix (BIOM) format 
[version 1; referees: awaiting peer review] F1000Research 2016, 5:2348; [doi:10.12688/f1000research.9618.1](http://dx.doi.org/10.12688/f1000research.9618.1)

and

> Phinch: An interactive, exploratory data visualization framework for –Omic datasets.
Holly M Bik, Pitch Interactive. bioRxiv 009944; [doi:10.1101/009944](http://dx.doi.org/10.1101/009944)

  --------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------
 - Cite Project    [![Zenodo](https://zenodo.org/badge/12731/molbiodiv/Blackbird.svg)](https://zenodo.org/badge/latestdoi/12731/molbiodiv/Blackbird)
 - License         [![BSD 2-Clause](https://img.shields.io/badge/License-BSD_2--Clause-blue.svg)](file:LICENSE)
 - Docker          [![DockerPulls](https://img.shields.io/docker/pulls/iimog/blackbird.svg?maxAge=2592000)](https://hub.docker.com/r/iimog/blackbird/)

  --------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Data

Blackbird supports both "sparse" and "dense" <b>[BIOM](http://biom-format.org/)</b> formats (although sparse .biom files are highly recommended, since the file size is much smaller). In [QIIME](http://qiime.org/), users can prepare the .biom file by executing the following commands:
```Python
make_otu_table.py -i final_otu_map_mc2.txt -o otu_table_mc2_w_tax.biom -t rep_set_tax_assignments.txt
```

Second, add your sample metadata to your .biom file. Where your input file (-i) is your OTU Map (defining clusters of raw sequences reads), taxonomy file (-t) contains the taxonomy or gene ontology strings that correspond to each OTU, and mapping file (-m) is a tab-delimited file containing sample metadata ([instructions](http://qiime.org/documentation/file_formats.html#metadata-mapping-files)).
```Python
biom add-metadata -i otu_table_mc2_w_tax.biom -o otu_table_mc2_w_tax_and_metadata.biom -m sample_metadata_mapping_file.txt
```
## Run your own Blackbird server
Use docker to run your own Blackbird server locally:
```
# run on port 8081 (for another free port exchange the 8081 with that port number)
docker run -d --publish 8081:80 --name blackbird iimog/blackbird
```
You can then navigate your web browser to [http://localhost:8081/]().

## Libraries 
D3: http://d3js.org/ <br>
IndexedDB: http://aaronpowell.github.io/db.js/<br>
FileSaver: https://github.com/eligrey/FileSaver.js/<br>
Moment: http://momentjs.com/<br>
jQuery: http://jquery.com/<br>
jQueryUI: http://jqueryui.com/<br>
jQueryFracs: http://larsjung.de/fracs/<br>
Blob: https://github.com/eligrey/Blob.js/<br>
DataTable: https://datatables.net/<br>
JSZip: http://stuk.github.io/jszip/<br>
Lo-Dash: http://lodash.com/<br>
lz-string: https://github.com/pieroxy/lz-string<br>
md5-js: https://github.com/wbond/md5-js<br>
biom-conversion-server: https://github.com/molbiodiv/biom-conversion-server<br>
biojs-io-biom: https://github.com/molbiodiv/biojs-io-biom<br>

## License
The BSD 2-Clause License

## Logo
The Blackbird logo slightly resembles the Phinch logo using the Blackbird-Silhouette from [openclipart.org](https://openclipart.org/detail/220754/blackbird-silhouette) (public domain) and the Hanken font from [fontlibrary.org](https://fontlibrary.org/en/font/hanken) (SIL Open Font License).

![Blackbird Logo](https://raw.githubusercontent.com/molbiodiv/Blackbird/master/img/blackbird_logo.png)

## Changes

### v1.2.2 (2016-10-17)

 - Add footer to all pages
 - Fix sharing permissions
 - Fix svg namespace

### v1.2.1 (2016-09-08)

 - Fix security problem
 - Add info and opt-out for Google Analytics

### v1.2.0 (2016-09-07)

 - First release as Blackbird (previously Phinch)
 - All desktop browsers are allowed (original project only allows Chrome)
 - [BIOM format](http://biom-format.org/) version 2 is supported (in addition to version 1) by integrating [biom-conversion-server](https://github.com/molbiodiv/biom-conversion-server) and [biojs-io-biom](https://github.com/molbiodiv/biojs-io-biom)
 - Export is possible as svg and png format ([Phinch#43](https://github.com/PitchInteractiveInc/Phinch/issues/43))
 - Dense biom format is supported (in addition to sparse, [Phinch#64](https://github.com/PitchInteractiveInc/Phinch/issues/64))
 - A few bugs are fixed (e.g. [Phinch#49](https://github.com/PitchInteractiveInc/Phinch/pull/49))
 - Shared links are not sent via email automatically
 - A docker image is provided for self hosting
 - SQLite instead of MySQL is used
