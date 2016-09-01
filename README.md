![VizGallery](https://raw.githubusercontent.com/molbiodiv/Blackbird/master/viz_gallery.png)

## About the original project

[Phinch](http://phinch.org/) is an open-source framework for visualizing biological data, funded by a grant from the [Alfred P. Sloan foundation](http://www.sloan.org/). This project represents an interdisciplinary collaboration between [Pitch Interactive](http://www.pitchinteractive.com/beta/index.php), a data visualization studio in Oakland, CA, and biological researchers at [UC Davis](http://www.ucdavis.edu/). Whether it's genes, proteins, or microbial species, Phinch provides an interactive visualization tool that allows users to explore and manipulate large biological datasets. 

[Phinch](http://phinch.org/) is optimized for use in the Chrome browser. It currently supports downstream analyses of .biom files ([Biological Observation Matrix](http://biom-format.org/), a JSON-formatted file type typically used to represent marker gene OTUs or metagenomic data). All sample metadata and taxonomy/ontology information MUST be embedded in the .biom file before being uploaded. 

## About this fork

This fork addresses a couple of practical limitations. All changes are made available under the same license as the original project (BSD 2-clause). Here is an overview over the changes:

 - All desktop browsers are allowed (original project only allows Chrome)
 - [BIOM format](http://biom-format.org/) version 2 is supported (in addition to version 1) by integrating [biom-conversion-server](https://github.com/molbiodiv/biom-conversion-server) and [biojs-io-biom](https://github.com/molbiodiv/biojs-io-biom)
 - A few bugs are fixed (e.g. [#49](https://github.com/PitchInteractiveInc/Phinch/pull/49))
 - Shared links are not sent via email automatically
 - A docker image is provided for self hosting
 - Export is in svg rather than png format ([#43](https://github.com/PitchInteractiveInc/Phinch/issues/43))

I'll be happy to help port my changes back to the main project.

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
