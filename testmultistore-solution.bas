//Test multi variable access from daemon
//Rev9 - block height check added and amended - seems to be working

// This function is used to initialize parameters during install time
Function Initialize() Uint64
10 PRINTF "Contract initialized!"
11 STORE("owner", SIGNER()) 
20 STORE("txcount", 0)
30 STORE("scblockheight", BLOCK_HEIGHT()) 
40 STORE("sctopoheight", BLOCK_TOPOHEIGHT())
50 RETURN 0
End Function


//Checks added to prevent multiple simultaneous function calls, which cause unexpected results. 
Function Save(x Uint64, y Uint64) Uint64
10 IF ADDRESS_RAW(LOAD("owner")) == ADDRESS_RAW(SIGNER()) THEN GOTO 12 
11 RETURN 1
12 IF BLOCK_HEIGHT() > LOAD("scblockheight") THEN GOTO 15
13 PRINTF "Multiple simultaneous function calls detected, exiting function!"
14 RETURN 1
15 IF BLOCK_TOPOHEIGHT() > LOAD("sctopoheight") THEN GOTO 20
16 PRINTF "Multiple simultaneous function calls detected, exiting function!"
17 RETURN 1
20 STORE("scblockheight", BLOCK_HEIGHT()) //store block and topo heights immediately after initial checks, to catch subsequent attempts to load function
21 STORE("sctopoheight", BLOCK_TOPOHEIGHT())
25 DIM txcount as Uint64
26 LET txcount = LOAD("txcount")
30 STORE("index"+txcount, txcount)
40 STORE("fielda"+txcount, x)
50 STORE("fieldb"+txcount, y)
60 PRINTF "x value is %d" x
70 PRINTF "y value is %d" y
75 PRINTF "txcount is %d" txcount
80 LET txcount = txcount + 1
90 STORE("txcount", txcount)
100 RETURN 0
End Function



