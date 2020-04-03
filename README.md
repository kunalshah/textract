Extract text from a binary file/image/other text formats

### Credits
1. [textract](https://textract.readthedocs.io)

### How to use this docker image

The docker image uses `/data` folder as a volume where document will be read/written. Hence the user needs to provide the folder that would be mapped to `/data`

For example, 
Download [BookReporter.pdf](https://github.com/w3c/epubcheck/blob/master/docs/BookReporter.pdf) file to the Downloads folder of your home directory (~/Downloads)

To extract text from `BookReporter.pdf` and save it to file `BookReporter.txt`, run

```
docker run \
--rm \
-v "`pwd`:/data" \
kunalshah/textract:latest \
-o converted.txt \
file.pdf
```

See converted text file

```
cat converted.txt
```


### About textract


#### CLI options

Read [here](https://textract.readthedocs.io/en/v1.3.0/command_line_interface.html)


#### Supported file types

Read [here](https://textract.readthedocs.io/en/stable/index.html)
