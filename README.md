# Project Title

A bash shell script to convert PDFs in a folder to bitonal multi-page tiff files

## Getting Started

Run pdf2tiff.sh within a folder of PDFs you want to convert. TIFF files will be produced alongside your PDFs. PDFs are not changed in any way.

### Prerequisites

This script requires GhostScript. If you don't have it, you can install it.

```
sudo apt install ghostscript
```

### Installing

Copy or pull pdf2tiff to your machine

make the script executable
```
chmod u+x pdf2tiff.sh
```

Execute pdf2tiff

```
pdf2tiff.sh
```

Or run with bash if you don't want to make it executable

```
bash pdf2tiff.sh
```
You can refer back to the location of the script when you need to use pdf2tiff in another folder.

```
bash ~/somefolder/pdf2tiff.sh
```


### Example
```
$ bash pdf2tiff.sh
Converting PDF to TIFF - demo.pdf...
GPL Ghostscript 9.19 (2016-03-23)
Copyright (C) 2016 Artifex Software, Inc.  All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.
Processing pages 1 through 24.
Page 1
Page 2
Page 3
Page 4
Page 5
Page 6
Page 7
Page 8
Page 9
Page 10
Page 11
Page 12
Page 13
Page 14
Page 15
Page 16
Page 17
Page 18
Page 19
Page 20
Page 21
Page 22
Page 23
Page 24
processed demo.pdf to TIFF in 1 seconds
1 processed in 1 seconds
```
