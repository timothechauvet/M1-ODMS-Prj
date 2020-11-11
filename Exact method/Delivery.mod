/*********************************************
 * OPL 12.10.0.0 Model
 * Author: lasagne
 * Creation Date: 30 oct. 2020 at 09:17:21
 *********************************************/

//Problem data
 int nbrCustomer=...;
 {int} customerSet=...;
 int deliveryMat[customerSet][customerSet]=...;
 int dueDate[customerSet]=...;
 int latePnty[customerSet]=...;
 int earlyPnty[customerSet]=...;
 
 //Decision variables
 dvar int HM[customerSet][customerSet];
 dvar int 
 
 //Objective function
 minimize
 	