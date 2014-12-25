## Docker container for textract

Docker container to extract text from any document using textract

Extract text from any document. no muss. no fuss. http://textract.readthedocs.org

#### Pull the image:

	sudo docker pull kunalshah/textract

#### Sample text extraction:

##### Download doctorowother05complexecosystemsepub.epub file (http://manybooks.net/titles/doctorowother05complexecosystems.html) to your Desktop folder
	sudo docker run -v ~/Desktop/doctorowother05complexecosystemsepub.epub:/var/lib/doctorowother05complexecosystemsepub.epub kunalshah/textract /var/lib/doctorowother05complexecosystemsepub.epub

##### Download Algorithms.pdf file (http://upload.wikimedia.org/wikipedia/commons/8/81/Algorithms.pdf) to your Desktop folder
	sudo docker run -v ~/Desktop/Algorithms.pdf:/var/lib/Algorithms.pdf kunalshah/textract /var/lib/Algorithms.pdf


