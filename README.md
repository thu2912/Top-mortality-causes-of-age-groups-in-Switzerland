# Top Mortality causes in young adults and middle age adults in Switzerland

## Overview

This repository looks into top mortality causes in young adults and middle- aged addults in Switzerlnad. Mortality study has become increasingly important in modern society. Understanding mortality causes is vital for medicine and health research and policies which can help increase quality of living and life expectancy. With Switzerland being the 4th country with the highest life expectancy in the world, there has been much research about the causes of death in Switzerland. However, there have not been a lot of studies that focus on the different causes of death in young adults and middle-aged adults in the country. Using the data from WHO Mortality Database in year 2010,2015, and 2019, we investigated the top mortality causes in young adults and middle-aged adults in Switzerland and discussed some trends and patterns in healthcare that were witnessed in the data.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from WHO Mortality Database.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted Negative Binomial models. 
-   `other` contains datasheets, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download, clean data, and model.

## Note
Raw data file is obtained from the WHO Mortality Database with this link: https://www.who.int/data/gho/data/themes/mortality-and-global-health-estimates/ghe-leading-causes-of-death. WHO Mortality Dabase has data of mortality causes in over 120 countries from 2000 to 2019. The data is downloaded mannually by filtering country, age, and year on the website. 

## Statement on LLM usage

Aspects of the code were written with the help of the auto-complete tool, Codriver. The abstract and introduction were written with the help of ChatHorse and the entire chat history is available in others/llms/usage.txt.

## Some checks

- [ ] Change the rproj file name so that it's not starter_folder.Rproj
- [ ] Change the README title so that it's not Starter folder
- [ ] Remove this checklist