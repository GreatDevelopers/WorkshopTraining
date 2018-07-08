# WorkshopTraining

Report of Summer Training in Workshop by B.Tech Students.

The report contains details of jobs done and tools used in each shop. Also 3D/2D models of jobs are provided too.

There are 7 shops in total :

1. Blacksmithy Shop
1. Foundry shop
1. Fitting Shop
1. Machine Shop
1. Welding Shop
1. Electric Shop
1. Carpentry Shop

## Pre-requisites

The code requires the below mentioned packages to run properly on your system:

* Git
* Pandoc
* Latex
* GPP
* Make

To install the above mentioned code, run the command :

 ```` sudo apt-get install git-core pandoc gpp make texlive-full ````

## Instructions

You can simply make the pdf file of each shop seperately or a combined file of every shop, with just one command. The steps are as follows :

1. Open the terminal and clone the repository in your system with the command :

    ```` git clone https://github.com/GreatDevelopers/WorkshopTraining.git WorkShop ````
  
    The above command downloads the repository in a directory named WorkShop within the directory in which you currently are.

1. Enter the WorkShop directory with the command : 
   
    ```` cd WorkShop ````

1. Now, to produce the pdf of all the shops collectively, run the command :

    ```` make ````

    You can find the Workshop_file.pdf within the current directory.

1. To produce file of an individual shop, run the command :

    ```` make <particular_shop.pdf> ````

    For example, to make pdf of Electric Shop, you run :

    ```` make Electric.pdf ````

    You can the pdf file in the directory of that particular shop under the Shops directory.

1. To produce the collective file as well the pdf for each shop individually, run the command :

    ```` make all ````

    Each pdf is now present in its respective directory.

1. To delete the pdfs produced via above commands, run the command :

    ```` make clean ````
