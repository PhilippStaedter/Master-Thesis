# Master-Thesis
This repository contains all MATLAB code, figures as well as experimental data files which were used and created for this master thesis 'Modelling the Influence of the Anti-Activator System on Quorum Sensing in Pseudomonas aeruginosa'.

## 1 Content of this master thesis
The complete master thesis can be found by looking at ```Master_Thesis.pdf```.

### 1.1 Biological Background
This chapter contains all necessary background information on the bacteria Pseudomonas Aeruginosa. The image of the gene circuit can be found in the folder ```Figures/Biological background```.

### 1.2 Mathematical Theory
This chapter contains all necessary theory on applying mathematical language in the biological setup. All plots used in this chapter can be found in the folder ```Figures/Mathematical theory```. These plots can be created by running the MATLAB script 
```Thesis_figures.m```.

### 1.3 Mathematical approach to analyse the biological circuit of Pseudomonas Aeruginosa
This chapter contains all calculations that show the existence of a true genetic switch and Quorum Sensing in all submodels as well as the full model. All plots used in this chapter can be found in the folder ```Figures/Mathematical approach to analyse the biological circuit of Pseudomonas Aeruginosa```. These plots can be created by running the MATLAB script 
```Thesis_figures.m```.

### 1.4 Estimation of all unknown parameters
This chapter contains all approaches to estimate all unknown parameter values and then numerically integrate all submodels as well as the full system using these values. All plots used in this chapter can be found in the folder ```Figures/Estimation of all unknown parameters```. These plots can be created by running the MATLAB script 
```Thesis_figures.m```,
```PES_OD_Kmax.m``` as well as
```Goryachev.m```.

### 1.5 Discussion and Outlook
This chapter contains the most important results from all previous chapters and gives an outlook what could be done in the future.

### 1.6 Implementation
This chapter contains a reference to this repository.

## 2 MATLAB scripts
The folder ```MATLAB_scripts``` contains four scripts. By using ```Thesis_figures.m``` all figures can be re-created. Herefore, the respective ODE systems in ```ODE_basic_model.m``` are simulated to estimate all unknown parameter values and determine all time trajectories. The scripts ```PES_OD_Kmax.m``` and ```Goryachev.m``` exist to create two additional figures for the bacterial growth with saturation effect as well as the model stated in the Goryachev et al. 2005 paper.

## 3 Figures
The folder ```Figures``` contains all figures seen in the master thesis. In addition to the figures created by the MATLAB scripts in the folder ```MATLAB_scripts```, it contains figures from different papers which are cited and used in this thesis.

## 4 Experimental data
The folder ```Experimental_Data``` contains all experimentally verified data which is used in this thesis to fit the concentration trajectories and thus estimate all unknown parameter values. 