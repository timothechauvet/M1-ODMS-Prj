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
 dvar int+ X[customerSet][customerSet];
 dvar int  Y[customerSet];
 dvar int+ E[customerSet];
 
 //Objective function 
 minimize sum(i in customerSet) 
 	(E[i]-dueDate[i])*(-earlyPnty[i]*Y[i]+latePnty[i]*(1-Y[i])); 
 	
 //problem constraints
 subject to{
   forall(i in customerSet)
     ct1: sum(j in customerSet) 
     X[i][j]==1; //all delivery only happens once
     
    forall(i in customerSet)
     ct2:sum(j in customerSet)
     X[j][i]==1; //no two delivery at same time
     
    /* ct3: if(E[i]-d[i]<0)
     	Y[i]=1;*/
   
 }
  main{
   thisOplModel.generate();
   cplex.solve();
   var ofile=new IloOplOutputFile("test.txt");
   ofile.writeln(thisOplModel.printExternalData());
   ofile.writeln(thisOplModel.printInternalData());
   ofile.writeln(thisOplModel.printSolution());
   ofile.close;
 }
 