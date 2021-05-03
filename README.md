# 5011CEM2021_liaoy19
My 5011CEM Project info

### Update time：29/04/21

The main task undertaken by the 5011Big Data project is to cooperate with customers, optimize the analysis technology of atmospheric science data and climate models provided by the customer, and provide information about the client for setting data and running code, and display it in a graphical manner result.

The client interface obtained by running GuiUserPage.mlapp is as follows:

<img src=https://github.coventry.ac.uk/5011CEM-2021JANMAY/5011CEM2021_liaoy19/blob/master/Graph/GUI.png width=50% />


## Data Set

The client allows users to select the data set file they want to process, the default file used is o3_surface_20180701000000.nc

## Code Function

The project includes sequential processing of data and sequential processing under different numbers of workers, as well as data quality testing.

Customer application interface file:
GuiUserPage.mlapp

The running folder is main.m

The test function file is:

NaNText.m

TextText.m

Parallel processing function files:
parallelprocessingonline.m

Sequential processing of function files:
SequentialProcessing.m

## Operation instructions:

Due to the limitation of the hardware processor, using multi-threading instead of hardware parallel processing, the best operating environment is Matlab online.

After importing the program on Matlab Online, run the main.m file. The running results will show the 25-hour ozone data results of 2-7 workers running 250 pieces of data and 5000 pieces of data respectively, and the results will be generated as a visual graph.


