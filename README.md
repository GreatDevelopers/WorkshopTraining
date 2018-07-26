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

To install the above mentioned packages, run the command :

 ```` sudo apt-get install git-core pandoc gpp make texlive-full ````

## Instructions

You can simply make the pdf/html file of each shop seperately or a combined file of every shop, with just one command. The steps are as follows :

1. Open the terminal and clone the repository in your system with the command :

    ```` git clone https://github.com/GreatDevelopers/WorkshopTraining.git WorkShop ````
  
    The above command downloads the repository in a directory named WorkShop within the directory in which you currently are.

1. Enter the WorkShop directory with the command : 
   
    ```` cd WorkShop ````

1. Now, to produce the pdf and html of all the shops collectively, run the command :

    ```` make ````

1. To produce pdf/html of individual shop, run the command :

    ```` make <particular_shop.pdf/html> ````

    For example, to make pdf of Electric Shop, you run :

    ```` make Electric.pdf ````

1. To produce the collective files as well the pdf and html for each shop individually, run the command :

    ```` make all ````

   The output pdf can be found in build/pdf/ directory. 

   Similarly, the output html can be found in build/html/ directory. 

1. To delete the files produced via above commands, run the command :

    ```` make clean ````

1. To find all the possible targets that you can build/run, run the command :

    ````make targets````
