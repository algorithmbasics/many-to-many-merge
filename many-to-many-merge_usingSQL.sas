# Many-to-many merge two datasets by variables A and B

/* Load the two datasets */
data df1;
  infile 'dataset1.csv' dlm=',' firstobs=2;
  input A B;
  datalines;
  /* data goes here */
run;

data df2;
  infile 'dataset2.csv' dlm=',' firstobs=2;
  input A B;
  datalines;
  /* data goes here */
run;

/* Perform the many-to-many merge using PROC SQL */
proc sql;
  create table merged_df as
  select *
  from df1
  full outer join df2
  on df1.A=df2.A and df1.B=df2.B;
quit;

/* Display the merged dataframe */
proc print data=merged_df;
run;