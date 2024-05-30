This is the COR-ASP that will be utilised to help measure freqeuncy of a signal accurately.

Inside the COR-ASP, the simple function below is performed:
Correlation = f(x)* f(x-1)  + f(x+1)*f(x-2) + ... f(k + n-1).f(k -n)

Where function f represents the various average values of samples that will be obtained by the AVG-ASP, and n represents the correlation window size.
The correlation values will then be forwarded to the peak detecting PD-ASP for further analysis to determine if any peaks occurred.

Currently the Correlation Window Size is set to 20.



Here are the instructions on how to run the COR-ASP and its test benches.
1. Open up the project using Quartus Prime.
2. Once opened, select ‘COR_ASP_TopLevel’ to be the top level entity.
3. Compile the top level.
4. Once compilation is complete, head to Tools > Run Simulation Tool > RTL Simulation to start up Modelsim.
5. In modelsim, start compiling the various TDMA files, along with the CORASP.vhd, testCor, COR_ASP_TopLevel and COR_ASP_TopLevel_tb .vhd files.
6. After compiling, be sure to start the simulation, ensuring that you are simulating the COR_ASP_TopLevel_tb file.
7. You can then start adding some waves, I would recommend the ones listed in the compendium, how ever you may choose whatever ones you desire. 
8. Start simulation, can choose any time you prefer.

Note:
If you would like to alter the simulation variables, feel free to do so. 
Notably testCor.vhd since it contains the values that the Cor-asp is receiving. 
You may also alter values through the COR_ASP_TopLevel_tb file as it also contains a nice Sine Wave that has been conveniently commented out.


Thanks for reading.