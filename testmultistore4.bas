//Test multi variable access from daemon
//Rev6

// This function is used to initialize parameters during install time
Function Initialize() Uint64
10 PRINTF "Contract initialized!"
11 STORE("owner", SIGNER()) 
20 STORE("txcount", 0)
30 STORE("scblockheight", BLOCK_HEIGHT()) 
40 STORE("sctopoheight", BLOCK_TOPOHEIGHT())
50 RETURN 0
End Function



Function Save(x Uint64, y Uint64) Uint64
10 IF ADDRESS_RAW(LOAD("owner")) == ADDRESS_RAW(SIGNER()) THEN GOTO 15 
11 RETURN 1
15 DIM txcount as Uint64
20 LET txcount = LOAD("txcount")
30 STORE("index"+txcount, txcount)
40 STORE("fielda"+txcount, x)
50 STORE("fieldb"+txcount, y)
60 PRINTF "x value is %d" x
70 PRINTF "y value is %d" y
75 PRINTF "txcount is %d" txcount
80 LET txcount = txcount + 1
90 STORE("txcount", txcount)
100 STORE("scblockheight", BLOCK_HEIGHT()) 
110 STORE("sctopoheight", BLOCK_TOPOHEIGHT())
120 RETURN 0
End Function



