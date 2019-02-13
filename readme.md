Update 13/02/2019:

Possible solution found, appears to be working so far. Refer to testmultistore-solution.bas. 


Original issue with code in testmultistore4.bas:

Purpose of tests: see what happens when multiple calls are made to the same function in the SC quickly. Is data stored as expected?


Expected behaviour: Data is stored correctly. 

Actual behaviour: Data is stored correctly in first block after RPC calls, but then the data changes in subsequent blocks without any additional RPC calls being made.

Steps to reproduce: Check out .txt file for description of testing process and results. I can provide more details if required. 
