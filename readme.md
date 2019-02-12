


Testing process as follows:



Contract initialized at block 162763/166730


Initial SC Key values after initializing:

Tx Count: 0
SC Block Height: 162763
SC Topo Height: 166730



5 x RPC calls were then sent to the wallet in quick succession (using a golang program to make the calls one after the other in a loop, iterating the "params" values):


RPC call 0:

Data sent:
{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key":true,"sc_tx":{"entrypoint":"Save","scid":"7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a","value":0,"params":{"x":"0","y":"0"}}}}

Wallet response:
{"id":"0","jsonrpc":"2.0","result":{"fee_list":[3000000000],"amount_list":null,"tx_key_list":["472c638cf524b5fa3be015092b12a8c7f6eaa40b8422f49197593cb60e80fe07"],"tx_hash_list":["5d7865cc9b87757b9318e4ddd5b12d743e2e5704edb1fc54bd3e7177df4a1e53"],"tx_blob_list":null}}

RPC Call 1:

Data sent:
{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key":true,"sc_tx":{"entrypoint":"Save","scid":"7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a","value":0,"params":{"x":"1","y":"1"}}}}

Wallet response:
{"id":"0","jsonrpc":"2.0","result":{"fee_list":[3000000000],"amount_list":null,"tx_key_list":["8803a93e0556fcb5230ff8126845c73b71901f58dc7f6956ab8be28500c7ff07"],"tx_hash_list":["3ea7d26f8e1dc124e74722d0f67741f1286e363fdaa92ba0be6067d33a86a89f"],"tx_blob_list":null}}

RPC Call 2:

Data sent:
{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key":true,"sc_tx":{"entrypoint":"Save","scid":"7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a","value":0,"params":{"x":"2","y":"2"}}}}

Wallet response:
{"id":"0","jsonrpc":"2.0","result":{"fee_list":[3000000000],"amount_list":null,"tx_key_list":["72721360fbffe24ebd2ee27ca7f7b0eaf916f30582066a1703f069677e7a8b04"],"tx_hash_list":["c942379f8dd71201a374730a690c6fd0266e709f479c687f766fa656d5a384cc"],"tx_blob_list":null}}

RPC Call 3:

Data sent:
{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key":true,"sc_tx":{"entrypoint":"Save","scid":"7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a","value":0,"params":{"x":"3","y":"3"}}}}

Wallet response:
{"id":"0","jsonrpc":"2.0","result":{"fee_list":[3000000000],"amount_list":null,"tx_key_list":["488fbcacc3d1477ce9ac1d7f6c0fe9edec6fe44d08ffd7ab16892d9da788a90a"],"tx_hash_list":["91c1a24948e1a78fa16dfafa570ad947cd5403d3f7b63c96ed73c2dbec9c3f9e"],"tx_blob_list":null}}

RPC Call 4:

Data sent:
{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key":true,"sc_tx":{"entrypoint":"Save","scid":"7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a","value":0,"params":{"x":"4","y":"4"}}}}

Wallet response:
{"id":"0","jsonrpc":"2.0","result":{"fee_list":[3000000000],"amount_list":null,"tx_key_list":["0478b779b0d2d7e2f0815ee91cdd8ae58cdfdc30a55356dfa80bc3ac4f951404"],"tx_hash_list":["b260d330c6b633292805539eb47b34ed91b18b2d5e0539acc2de1b307ce2e614"],"tx_blob_list":null}}



I then sent RPC calls to the daemon (http://127.0.0.1:30306/gettransactions) after every subsequent block (except for the first one, I was not quick enough) to extract the stored values in the SC. Again, using a golang program to format the ScKeys values, send the RPC call, and then strip out the data I wanted from the daemon response. These are the results of the calls:


Block height: 162776/166743 [162776/166743]
Data:

Tx Count: 9
SC Block Height: 162775
SC Topo Height: 166742
index0 value: 
index1 value: 
index2 value: 
index3 value: 
index4 value: 4
index5 value: 5
index6 value: 6
index7 value: 7
index8 value: 8
fielda0 value: 
fielda1 value: 
fielda2 value: 
fielda3 value: 
fielda4 value: 4
fielda5 value: 3
fielda6 value: 2
fielda7 value: 0
fielda8 value: 1
fieldb0 value: 
fieldb1 value: 
fieldb2 value: 
fieldb3 value: 
fieldb4 value: 4
fieldb5 value: 3
fieldb6 value: 2
fieldb7 value: 0
fieldb8 value: 1


Block height: 162777/166744 [162777/166744]
Data:

Tx Count: 13
SC Block Height: 162775
SC Topo Height: 166742
index0 value: 
index1 value: 
index2 value: 
index3 value: 
index4 value: 
index5 value: 
index6 value: 
index7 value: 
index8 value: 8
index9 value: 9
index10 value: 10
index11 value: 11
index12 value: 12
fielda0 value: 
fielda1 value: 
fielda2 value: 
fielda3 value: 
fielda4 value: 
fielda5 value: 
fielda6 value: 
fielda7 value: 
fielda8 value: 4
fielda9 value: 3
fielda10 value: 2
fielda11 value: 0
fielda12 value: 1
fieldb0 value: 
fieldb1 value: 
fieldb2 value: 
fieldb3 value: 
fieldb4 value: 
fieldb5 value: 
fieldb6 value: 
fieldb7 value: 
fieldb8 value: 4
fieldb9 value: 3
fieldb10 value: 2
fieldb11 value: 0
fieldb12 value: 1


Block height: 162778/166745
Data:

Tx Count: 21
SC Block Height: 162775
SC Topo Height: 166742
index0 value: 
index1 value: 
index2 value: 
index3 value: 
index4 value: 
index5 value: 
index6 value: 
index7 value: 
index8 value: 
index9 value: 
index10 value: 
index11 value: 
index12 value: 
index13 value: 
index14 value: 
index15 value: 
index16 value: 16
index17 value: 17
index18 value: 18
index19 value: 19
index20 value: 20
fielda0 value: 
fielda1 value: 
fielda2 value: 
fielda3 value: 
fielda4 value: 
fielda5 value: 
fielda6 value: 
fielda7 value: 
fielda8 value: 
fielda9 value: 
fielda10 value: 
fielda11 value: 
fielda12 value: 
fielda13 value: 
fielda14 value: 
fielda15 value: 
fielda16 value: 4
fielda17 value: 3
fielda18 value: 2
fielda19 value: 0
fielda20 value: 1
fieldb0 value: 
fieldb1 value: 
fieldb2 value: 
fieldb3 value: 
fieldb4 value: 
fieldb5 value: 
fieldb6 value: 
fieldb7 value: 
fieldb8 value: 
fieldb9 value: 
fieldb10 value: 
fieldb11 value: 
fieldb12 value: 
fieldb13 value: 
fieldb14 value: 
fieldb15 value: 
fieldb16 value: 4
fieldb17 value: 3
fieldb18 value: 2
fieldb19 value: 0
fieldb20 value: 1


Block height: 162779/166747
Data:

Tx Count: 25
SC Block Height: 162775
SC Topo Height: 166742
index0 value: 
index1 value: 
index2 value: 
index3 value: 
index4 value: 
index5 value: 
index6 value: 
index7 value: 
index8 value: 
index9 value: 
index10 value: 
index11 value: 
index12 value: 
index13 value: 
index14 value: 
index15 value: 
index16 value: 
index17 value: 
index18 value: 
index19 value: 
index20 value: 20
index21 value: 21
index22 value: 22
index23 value: 23
index24 value: 24
fielda0 value: 
fielda1 value: 
fielda2 value: 
fielda3 value: 
fielda4 value: 
fielda5 value: 
fielda6 value: 
fielda7 value: 
fielda8 value: 
fielda9 value: 
fielda10 value: 
fielda11 value: 
fielda12 value: 
fielda13 value: 
fielda14 value: 
fielda15 value: 
fielda16 value: 
fielda17 value: 
fielda18 value: 
fielda19 value: 
fielda20 value: 4
fielda21 value: 3
fielda22 value: 2
fielda23 value: 0
fielda24 value: 1
fieldb0 value: 
fieldb1 value: 
fieldb2 value: 
fieldb3 value: 
fieldb4 value: 
fieldb5 value: 
fieldb6 value: 
fieldb7 value: 
fieldb8 value: 
fieldb9 value: 
fieldb10 value: 
fieldb11 value: 
fieldb12 value: 
fieldb13 value: 
fieldb14 value: 
fieldb15 value: 
fieldb16 value: 
fieldb17 value: 
fieldb18 value: 
fieldb19 value: 
fieldb20 value: 4
fieldb21 value: 3
fieldb22 value: 2
fieldb23 value: 0
fieldb24 value: 1


Block height: 162780/166748
Data:

Tx Count: 29
SC Block Height: 162775
SC Topo Height: 166742
index0 value: 
index1 value: 
index2 value: 
index3 value: 
index4 value: 
index5 value: 
index6 value: 
index7 value: 
index8 value: 
index9 value: 
index10 value: 
index11 value: 
index12 value: 
index13 value: 
index14 value: 
index15 value: 
index16 value: 
index17 value: 
index18 value: 
index19 value: 
index20 value: 
index21 value: 
index22 value: 
index23 value: 
index24 value: 24
index25 value: 25
index26 value: 26
index27 value: 27
index28 value: 28
fielda0 value: 
fielda1 value: 
fielda2 value: 
fielda3 value: 
fielda4 value: 
fielda5 value: 
fielda6 value: 
fielda7 value: 
fielda8 value: 
fielda9 value: 
fielda10 value: 
fielda11 value: 
fielda12 value: 
fielda13 value: 
fielda14 value: 
fielda15 value: 
fielda16 value: 
fielda17 value: 
fielda18 value: 
fielda19 value: 
fielda20 value: 
fielda21 value: 
fielda22 value: 
fielda23 value: 
fielda24 value: 4
fielda25 value: 3
fielda26 value: 2
fielda27 value: 0
fielda28 value: 1
fieldb0 value: 
fieldb1 value: 
fieldb2 value: 
fieldb3 value: 
fieldb4 value: 
fieldb5 value: 
fieldb6 value: 
fieldb7 value: 
fieldb8 value: 
fieldb9 value: 
fieldb10 value: 
fieldb11 value: 
fieldb12 value: 
fieldb13 value: 
fieldb14 value: 
fieldb15 value: 
fieldb16 value: 
fieldb17 value: 
fieldb18 value: 
fieldb19 value: 
fieldb20 value: 
fieldb21 value: 
fieldb22 value: 
fieldb23 value: 
fieldb24 value: 4
fieldb25 value: 3
fieldb26 value: 2
fieldb27 value: 0
fieldb28 value: 1


Block height: 162781/166749
Data:

Tx Count: 33
SC Block Height: 162775
SC Topo Height: 166742
index0 value: 
index1 value: 
index2 value: 
index3 value: 
index4 value: 
index5 value: 
index6 value: 
index7 value: 
index8 value: 
index9 value: 
index10 value: 
index11 value: 
index12 value: 
index13 value: 
index14 value: 
index15 value: 
index16 value: 
index17 value: 
index18 value: 
index19 value: 
index20 value: 
index21 value: 
index22 value: 
index23 value: 
index24 value: 
index25 value: 
index26 value: 
index27 value: 
index28 value: 28
index29 value: 29
index30 value: 30
index31 value: 31
index32 value: 32
fielda0 value: 
fielda1 value: 
fielda2 value: 
fielda3 value: 
fielda4 value: 
fielda5 value: 
fielda6 value: 
fielda7 value: 
fielda8 value: 
fielda9 value: 
fielda10 value: 
fielda11 value: 
fielda12 value: 
fielda13 value: 
fielda14 value: 
fielda15 value: 
fielda16 value: 
fielda17 value: 
fielda18 value: 
fielda19 value: 
fielda20 value: 
fielda21 value: 
fielda22 value: 
fielda23 value: 
fielda24 value: 
fielda25 value: 
fielda26 value: 
fielda27 value: 
fielda28 value: 4
fielda29 value: 3
fielda30 value: 2
fielda31 value: 0
fielda32 value: 1
fieldb0 value: 
fieldb1 value: 
fieldb2 value: 
fieldb3 value: 
fieldb4 value: 
fieldb5 value: 
fieldb6 value: 
fieldb7 value: 
fieldb8 value: 
fieldb9 value: 
fieldb10 value: 
fieldb11 value: 
fieldb12 value: 
fieldb13 value: 
fieldb14 value: 
fieldb15 value: 
fieldb16 value: 
fieldb17 value: 
fieldb18 value: 
fieldb19 value: 
fieldb20 value: 
fieldb21 value: 
fieldb22 value: 
fieldb23 value: 
fieldb24 value: 
fieldb25 value: 
fieldb26 value: 
fieldb27 value: 
fieldb28 value: 4
fieldb29 value: 3
fieldb30 value: 2
fieldb31 value: 0
fieldb32 value: 1


Block height: 162782/166750
Data:

Tx Count: 37
SC Block Height: 162775
SC Topo Height: 166742
index0 value: 
index1 value: 
index2 value: 
index3 value: 
index4 value: 
index5 value: 
index6 value: 
index7 value: 
index8 value: 
index9 value: 
index10 value: 
index11 value: 
index12 value: 
index13 value: 
index14 value: 
index15 value: 
index16 value: 
index17 value: 
index18 value: 
index19 value: 
index20 value: 
index21 value: 
index22 value: 
index23 value: 
index24 value: 
index25 value: 
index26 value: 
index27 value: 
index28 value: 
index29 value: 
index30 value: 
index31 value: 
index32 value: 32
index33 value: 33
index34 value: 34
index35 value: 35
index36 value: 36
fielda0 value: 
fielda1 value: 
fielda2 value: 
fielda3 value: 
fielda4 value: 
fielda5 value: 
fielda6 value: 
fielda7 value: 
fielda8 value: 
fielda9 value: 
fielda10 value: 
fielda11 value: 
fielda12 value: 
fielda13 value: 
fielda14 value: 
fielda15 value: 
fielda16 value: 
fielda17 value: 
fielda18 value: 
fielda19 value: 
fielda20 value: 
fielda21 value: 
fielda22 value: 
fielda23 value: 
fielda24 value: 
fielda25 value: 
fielda26 value: 
fielda27 value: 
fielda28 value: 
fielda29 value: 
fielda30 value: 
fielda31 value: 
fielda32 value: 4
fielda33 value: 3
fielda34 value: 2
fielda35 value: 0
fielda36 value: 1
fieldb0 value: 
fieldb1 value: 
fieldb2 value: 
fieldb3 value: 
fieldb4 value: 
fieldb5 value: 
fieldb6 value: 
fieldb7 value: 
fieldb8 value: 
fieldb9 value: 
fieldb10 value: 
fieldb11 value: 
fieldb12 value: 
fieldb13 value: 
fieldb14 value: 
fieldb15 value: 
fieldb16 value: 
fieldb17 value: 
fieldb18 value: 
fieldb19 value: 
fieldb20 value: 
fieldb21 value: 
fieldb22 value: 
fieldb23 value: 
fieldb24 value: 
fieldb25 value: 
fieldb26 value: 
fieldb27 value: 
fieldb28 value: 
fieldb29 value: 
fieldb30 value: 
fieldb31 value: 
fieldb32 value: 4
fieldb33 value: 3
fieldb34 value: 2
fieldb35 value: 0
fieldb36 value: 1


Block height: 162783/166751
Data:

Tx Count: 41
SC Block Height: 162775
SC Topo Height: 166742
index0 value: 
index1 value: 
index2 value: 
index3 value: 
index4 value: 
index5 value: 
index6 value: 
index7 value: 
index8 value: 
index9 value: 
index10 value: 
index11 value: 
index12 value: 
index13 value: 
index14 value: 
index15 value: 
index16 value: 
index17 value: 
index18 value: 
index19 value: 
index20 value: 
index21 value: 
index22 value: 
index23 value: 
index24 value: 
index25 value: 
index26 value: 
index27 value: 
index28 value: 
index29 value: 
index30 value: 
index31 value: 
index32 value: 
index33 value: 
index34 value: 
index35 value: 
index36 value: 36
index37 value: 37
index38 value: 38
index39 value: 39
index40 value: 40
fielda0 value: 
fielda1 value: 
fielda2 value: 
fielda3 value: 
fielda4 value: 
fielda5 value: 
fielda6 value: 
fielda7 value: 
fielda8 value: 
fielda9 value: 
fielda10 value: 
fielda11 value: 
fielda12 value: 
fielda13 value: 
fielda14 value: 
fielda15 value: 
fielda16 value: 
fielda17 value: 
fielda18 value: 
fielda19 value: 
fielda20 value: 
fielda21 value: 
fielda22 value: 
fielda23 value: 
fielda24 value: 
fielda25 value: 
fielda26 value: 
fielda27 value: 
fielda28 value: 
fielda29 value: 
fielda30 value: 
fielda31 value: 
fielda32 value: 
fielda33 value: 
fielda34 value: 
fielda35 value: 
fielda36 value: 4
fielda37 value: 3
fielda38 value: 2
fielda39 value: 0
fielda40 value: 1
fieldb0 value: 
fieldb1 value: 
fieldb2 value: 
fieldb3 value: 
fieldb4 value: 
fieldb5 value: 
fieldb6 value: 
fieldb7 value: 
fieldb8 value: 
fieldb9 value: 
fieldb10 value: 
fieldb11 value: 
fieldb12 value: 
fieldb13 value: 
fieldb14 value: 
fieldb15 value: 
fieldb16 value: 
fieldb17 value: 
fieldb18 value: 
fieldb19 value: 
fieldb20 value: 
fieldb21 value: 
fieldb22 value: 
fieldb23 value: 
fieldb24 value: 
fieldb25 value: 
fieldb26 value: 
fieldb27 value: 
fieldb28 value: 
fieldb29 value: 
fieldb30 value: 
fieldb31 value: 
fieldb32 value: 
fieldb33 value: 
fieldb34 value: 
fieldb35 value: 
fieldb36 value: 4
fieldb37 value: 3
fieldb38 value: 2
fieldb39 value: 0
fieldb40 value: 1


No further changes (we are at block 162894/166863 at the time of writing this report).



Raw data dump from the daemon, starting from time of SC initialization until no further changes in stored values were observed:


sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 50:[RETURN 0] 10:[PRINTF "Contract initialized!"] 11:[STORE ( "owner" , SIGNER ( ) )] 20:[STORE ( "txcount" , 0 )]] LinesNumberIndex:map[10:0 11:1 20:2 30:3 40:4 50:5] LineNumbers:[10 11 20 30 40 50]} Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[20:[LET txcount = LOAD ( "txcount" )] 120:[RETURN 0] 15:[DIM txcount as Uint64] 90:[STORE ( "txcount" , txcount )] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 11:[RETURN 1] 50:[STORE ( "fieldb" + txcount , y )] 70:[PRINTF "y value is %d" y] 80:[LET txcount = txcount + 1] 40:[STORE ( "fielda" + txcount , x )] 30:[STORE ( "index" + txcount , txcount )] 60:[PRINTF "x value is %d" x] 75:[PRINTF "txcount is %d" txcount] 10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15]] LinesNumberIndex:map[40:5 30:4 60:7 70:8 120:14 15:2 20:3 50:6 80:10 90:11 100:12 110:13 10:0 11:1 75:9] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162763/166730 [162763/166730] P 6 TXp 0 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Processing TX SC  data 938 
sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[11:[STORE ( "owner" , SIGNER ( ) )] 20:[STORE ( "txcount" , 0 )] 30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 50:[RETURN 0] 10:[PRINTF "Contract initialized!"]] LinesNumberIndex:map[10:0 11:1 20:2 30:3 40:4 50:5] LineNumbers:[10 11 20 30 40 50]} Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15] 15:[DIM txcount as Uint64] 30:[STORE ( "index" + txcount , txcount )] 75:[PRINTF "txcount is %d" txcount] 50:[STORE ( "fieldb" + txcount , y )] 90:[STORE ( "txcount" , txcount )] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 11:[RETURN 1] 40:[STORE ( "fielda" + txcount , x )] 60:[PRINTF "x value is %d" x] 80:[LET txcount = txcount + 1] 20:[LET txcount = LOAD ( "txcount" )] 70:[PRINTF "y value is %d" y] 120:[RETURN 0]] LinesNumberIndex:map[20:3 30:4 80:10 90:11 100:12 110:13 15:2 75:9 10:0 40:5 50:6 11:1 60:7 70:8 120:14] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162764/166731 [162764/166731] P 6 TXp 0 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Processing TX SC  data 938 
sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[10:[PRINTF "Contract initialized!"] 11:[STORE ( "owner" , SIGNER ( ) )] 20:[STORE ( "txcount" , 0 )] 30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 50:[RETURN 0]] LinesNumberIndex:map[10:0 11:1 20:2 30:3 40:4 50:5] LineNumbers:[10 11 20 30 40 50]} Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[120:[RETURN 0] 10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15] 15:[DIM txcount as Uint64] 20:[LET txcount = LOAD ( "txcount" )] 30:[STORE ( "index" + txcount , txcount )] 70:[PRINTF "y value is %d" y] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 11:[RETURN 1] 40:[STORE ( "fielda" + txcount , x )] 50:[STORE ( "fieldb" + txcount , y )] 60:[PRINTF "x value is %d" x] 80:[LET txcount = txcount + 1] 90:[STORE ( "txcount" , txcount )] 75:[PRINTF "txcount is %d" txcount] 110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )]] LinesNumberIndex:map[70:8 75:9 60:7 120:14 10:0 11:1 40:5 30:4 50:6 100:12 90:11 110:13 15:2 20:3 80:10] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162765/166732 [162765/166732] P 6 TXp 1 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Processing TX SC  data 938 
sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[15:[DIM txcount as Uint64] 30:[STORE ( "index" + txcount , txcount )] 40:[STORE ( "fielda" + txcount , x )] 90:[STORE ( "txcount" , txcount )] 110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 70:[PRINTF "y value is %d" y] 75:[PRINTF "txcount is %d" txcount] 80:[LET txcount = txcount + 1] 120:[RETURN 0] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15] 11:[RETURN 1] 20:[LET txcount = LOAD ( "txcount" )] 50:[STORE ( "fieldb" + txcount , y )] 60:[PRINTF "x value is %d" x]] LinesNumberIndex:map[15:2 20:3 30:4 40:5 100:12 10:0 60:7 70:8 75:9 90:11 110:13 120:14 11:1 80:10 50:6] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]} Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[20:[STORE ( "txcount" , 0 )] 30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 50:[RETURN 0] 10:[PRINTF "Contract initialized!"] 11:[STORE ( "owner" , SIGNER ( ) )]] LinesNumberIndex:map[10:0 11:1 20:2 30:3 40:4 50:5] LineNumbers:[10 11 20 30 40 50]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162766/166733 [162766/166733] P 6 TXp 0 NW 800 H/s > TESTNET>> loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162763}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166730}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Processing TX SC  data 938 
sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 50:[RETURN 0] 10:[PRINTF "Contract initialized!"] 11:[STORE ( "owner" , SIGNER ( ) )] 20:[STORE ( "txcount" , 0 )] 30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )]] LinesNumberIndex:map[10:0 11:1 20:2 30:3 40:4 50:5] LineNumbers:[10 11 20 30 40 50]} Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[40:[STORE ( "fielda" + txcount , x )] 80:[LET txcount = txcount + 1] 90:[STORE ( "txcount" , txcount )] 15:[DIM txcount as Uint64] 60:[PRINTF "x value is %d" x] 70:[PRINTF "y value is %d" y] 110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15] 30:[STORE ( "index" + txcount , txcount )] 75:[PRINTF "txcount is %d" txcount] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 120:[RETURN 0] 11:[RETURN 1] 20:[LET txcount = LOAD ( "txcount" )] 50:[STORE ( "fieldb" + txcount , y )]] LinesNumberIndex:map[75:9 90:11 100:12 11:1 60:7 70:8 40:5 110:13 10:0 15:2 20:3 30:4 50:6 80:10 120:14] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162767/166734 [162767/166734] P 6 TXp 0 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Processing TX SC  data 938 
sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[50:[RETURN 0] 10:[PRINTF "Contract initialized!"] 11:[STORE ( "owner" , SIGNER ( ) )] 20:[STORE ( "txcount" , 0 )] 30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )]] LinesNumberIndex:map[10:0 11:1 20:2 30:3 40:4 50:5] LineNumbers:[10 11 20 30 40 50]} Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[30:[STORE ( "index" + txcount , txcount )] 40:[STORE ( "fielda" + txcount , x )] 80:[LET txcount = txcount + 1] 20:[LET txcount = LOAD ( "txcount" )] 60:[PRINTF "x value is %d" x] 75:[PRINTF "txcount is %d" txcount] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 15:[DIM txcount as Uint64] 11:[RETURN 1] 50:[STORE ( "fieldb" + txcount , y )] 70:[PRINTF "y value is %d" y] 90:[STORE ( "txcount" , txcount )] 110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 120:[RETURN 0] 10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15]] LinesNumberIndex:map[11:1 15:2 60:7 10:0 40:5 100:12 20:3 50:6 75:9 90:11 110:13 120:14 30:4 70:8 80:10] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162768/166735 [162768/166735] P 6 TXp 0 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Processing TX SC  data 938 
sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[11:[STORE ( "owner" , SIGNER ( ) )] 20:[STORE ( "txcount" , 0 )] 30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 50:[RETURN 0] 10:[PRINTF "Contract initialized!"]] LinesNumberIndex:map[10:0 11:1 20:2 30:3 40:4 50:5] LineNumbers:[10 11 20 30 40 50]} Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[30:[STORE ( "index" + txcount , txcount )] 75:[PRINTF "txcount is %d" txcount] 110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 120:[RETURN 0] 20:[LET txcount = LOAD ( "txcount" )] 50:[STORE ( "fieldb" + txcount , y )] 70:[PRINTF "y value is %d" y] 90:[STORE ( "txcount" , txcount )] 40:[STORE ( "fielda" + txcount , x )] 80:[LET txcount = txcount + 1] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15] 11:[RETURN 1] 15:[DIM txcount as Uint64] 60:[PRINTF "x value is %d" x]] LinesNumberIndex:map[40:5 80:10 15:2 20:3 30:4 50:6 70:8 11:1 60:7 75:9 10:0 90:11 100:12 110:13 120:14] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162769/166736 [162769/166736] P 6 TXp 0 NW 808 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Processing TX SC  data 938 
sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[10:[PRINTF "Contract initialized!"] 11:[STORE ( "owner" , SIGNER ( ) )] 20:[STORE ( "txcount" , 0 )] 30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 50:[RETURN 0]] LinesNumberIndex:map[20:2 30:3 40:4 50:5 10:0 11:1] LineNumbers:[10 11 20 30 40 50]} Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15] 110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 20:[LET txcount = LOAD ( "txcount" )] 30:[STORE ( "index" + txcount , txcount )] 40:[STORE ( "fielda" + txcount , x )] 70:[PRINTF "y value is %d" y] 75:[PRINTF "txcount is %d" txcount] 90:[STORE ( "txcount" , txcount )] 11:[RETURN 1] 60:[PRINTF "x value is %d" x] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 15:[DIM txcount as Uint64] 50:[STORE ( "fieldb" + txcount , y )] 80:[LET txcount = txcount + 1] 120:[RETURN 0]] LinesNumberIndex:map[11:1 60:7 80:10 120:14 15:2 30:4 110:13 70:8 100:12 75:9 90:11 10:0 20:3 40:5 50:6] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162770/166737 [162770/166737] P 6 TXp 0 NW 808 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Processing TX SC  data 938 
sctx {SC://Test multi variable access from daemon
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



 SCID:0000000000000000000000000000000000000000000000000000000000000000 EntryPoint: Params:map[] Value:0}
SC parsed
{Functions:map[Save:{Name:Save Params:[{Name:x Type:1 Value:<nil>} {Name:y Type:1 Value:<nil>}] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[80:[LET txcount = txcount + 1] 10:[IF ADDRESS_RAW ( LOAD ( "owner" ) ) = = ADDRESS_RAW ( SIGNER ( ) ) THEN GOTO 15] 11:[RETURN 1] 30:[STORE ( "index" + txcount , txcount )] 75:[PRINTF "txcount is %d" txcount] 120:[RETURN 0] 15:[DIM txcount as Uint64] 70:[PRINTF "y value is %d" y] 90:[STORE ( "txcount" , txcount )] 110:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 20:[LET txcount = LOAD ( "txcount" )] 40:[STORE ( "fielda" + txcount , x )] 50:[STORE ( "fieldb" + txcount , y )] 60:[PRINTF "x value is %d" x] 100:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )]] LinesNumberIndex:map[10:0 50:6 70:8 75:9 90:11 100:12 11:1 15:2 40:5 80:10 110:13 120:14 20:3 30:4 60:7] LineNumbers:[10 11 15 20 30 40 50 60 70 75 80 90 100 110 120]} Initialize:{Name:Initialize Params:[] ReturnValue:{Name: Type:1 Value:<nil>} Lines:map[30:[STORE ( "scblockheight" , BLOCK_HEIGHT ( ) )] 40:[STORE ( "sctopoheight" , BLOCK_TOPOHEIGHT ( ) )] 50:[RETURN 0] 10:[PRINTF "Contract initialized!"] 11:[STORE ( "owner" , SIGNER ( ) )] 20:[STORE ( "txcount" , 0 )]] LinesNumberIndex:map[30:3 40:4 50:5 10:0 11:1 20:2] LineNumbers:[10 11 20 30 40 50]}]}
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:0 Value:<nil>} found status false 
 SMART contract parsed 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
Contract initialized!
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   : {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162763}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166730}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 895
DERO: 162774/166741 [162774/166741] P 6 TXp 6 NW 808 H/s > TESTNET>> Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:0} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index0} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index0} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a cfd6ec3f0f3ecb285acf66cfc1935afe277feb76dda117ce32ab8363bf746949 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index0} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda0} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda0} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3c07df4b57e31ee20a84771d0fefe75735ce7e5ab9bd157aca8b4d4c27de75eb 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda0} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb0} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb0} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f67aa7588ad7a52560100c8e1966140108c633a248a453e6c4589334e5e9219 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb0} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 0
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:0} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162763} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166730} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a cfd6ec3f0f3ecb285acf66cfc1935afe277feb76dda117ce32ab8363bf746949 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3c07df4b57e31ee20a84771d0fefe75735ce7e5ab9bd157aca8b4d4c27de75eb 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f67aa7588ad7a52560100c8e1966140108c633a248a453e6c4589334e5e9219 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:1} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index1} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index1} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index1} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda1} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda1} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda1} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb1} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb1} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb1} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 1
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:1} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:2} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index2} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index2} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index2} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda2} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda2} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda2} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb2} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb2} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb2} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 2
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:2} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:0 y:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:3} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index3} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index3} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index3} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda3} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda3} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda3} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb3} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb3} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb3} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 3
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:3} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:1 y:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:4} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index4} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index4} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index4} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda4} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda4} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda4} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb4} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb4} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb4} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 4
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:5}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:4} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162775/166742 [162775/166742] P 6 TXp 0 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �J
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f67aa7588ad7a52560100c8e1966140108c633a248a453e6c4589334e5e9219 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3c07df4b57e31ee20a84771d0fefe75735ce7e5ab9bd157aca8b4d4c27de75eb 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a cfd6ec3f0f3ecb285acf66cfc1935afe277feb76dda117ce32ab8363bf746949 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:4} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index4} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index4} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index4} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda4} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda4} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda4} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb4} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb4} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb4} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 4
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:5}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:4} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:5} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index5} Special:false}   : {Name: Type:1 Value:5}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index5} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index5} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda5} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda5} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda5} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb5} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb5} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb5} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 5
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:6}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:5} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:6} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index6} Special:false}   : {Name: Type:1 Value:6}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index6} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index6} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda6} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda6} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda6} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb6} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb6} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb6} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 6
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:7}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:6} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:0 x:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:7} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index7} Special:false}   : {Name: Type:1 Value:7}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index7} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index7} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda7} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda7} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda7} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb7} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb7} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb7} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 7
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:8}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:7} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:1 y:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:8} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index8} Special:false}   : {Name: Type:1 Value:8}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index8} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index8} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda8} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda8} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda8} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb8} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb8} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb8} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 8
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:9}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:8} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 	
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162776/166743 [162776/166743] P 6 TXp 0 NW 808 H/s > TESTNET>> loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:9}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162775}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166742}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
read value {Name: Type:1 Value:5}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
read value {Name: Type:1 Value:6}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
read value {Name: Type:1 Value:7}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
read value {Name: Type:1 Value:8}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
read value {Name: Type:0 Value:<nil>}Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:8} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index8} Special:false}   : {Name: Type:1 Value:8}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index8} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index8} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda8} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda8} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda8} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb8} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb8} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb8} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 8
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:9}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:8} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 	
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:9} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index9} Special:false}   : {Name: Type:1 Value:9}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index9} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index9} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda9} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda9} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda9} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb9} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb9} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb9} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 9
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:10}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:9} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 	
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 

storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:10} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index10} Special:false}   : {Name: Type:1 Value:10}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index10} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index10} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda10} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda10} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda10} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb10} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb10} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb10} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 10
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:11}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:10} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 

storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 

storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:0 x:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:11} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index11} Special:false}   : {Name: Type:1 Value:11}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index11} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index11} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda11} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda11} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda11} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb11} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb11} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb11} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 11
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:12}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:11} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 

storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 

storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:1 x:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:12} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index12} Special:false}   : {Name: Type:1 Value:12}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index12} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index12} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda12} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda12} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda12} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb12} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb12} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb12} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 12
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:13}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:12} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 

storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162777/166744 [162777/166744] P 6 TXp 0 NW 800 H/s > TESTNET>> loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:13}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162775}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166742}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
read value {Name: Type:1 Value:8}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
read value {Name: Type:1 Value:9}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
read value {Name: Type:1 Value:10}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
read value {Name: Type:1 Value:11}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
read value {Name: Type:1 Value:12}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
read value {Name: Type:0 Value:<nil>}Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 	
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 

Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 

Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 

Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:4 x:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:12} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index12} Special:false}   : {Name: Type:1 Value:12}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index12} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index12} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda12} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda12} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda12} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb12} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb12} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb12} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 12
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:13}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:12} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 

storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:13} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index13} Special:false}   : {Name: Type:1 Value:13}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index13} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index13} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda13} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda13} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda13} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb13} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb13} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb13} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 13
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:14}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:13} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:14} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index14} Special:false}   : {Name: Type:1 Value:14}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index14} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index14} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda14} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda14} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda14} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb14} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb14} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb14} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 14
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:15}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:14} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:0 x:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:15} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index15} Special:false}   : {Name: Type:1 Value:15}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index15} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index15} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda15} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda15} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda15} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb15} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb15} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb15} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 15
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:16}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:15} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:1 y:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:16} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index16} Special:false}   : {Name: Type:1 Value:16}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index16} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index16} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda16} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda16} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda16} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb16} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb16} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb16} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 16
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:17}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:16} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162778/166745 [162778/166745] P 6 TXp 0 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 

Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:16} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index16} Special:false}   : {Name: Type:1 Value:16}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index16} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index16} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda16} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda16} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda16} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb16} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb16} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb16} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 16
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:17}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:16} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:17} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index17} Special:false}   : {Name: Type:1 Value:17}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index17} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index17} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda17} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda17} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda17} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb17} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb17} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb17} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 17
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:18}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:17} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:18} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index18} Special:false}   : {Name: Type:1 Value:18}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index18} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index18} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda18} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda18} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda18} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb18} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb18} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb18} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 18
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:19}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:18} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:0 y:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:19} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index19} Special:false}   : {Name: Type:1 Value:19}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index19} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index19} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda19} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda19} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda19} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb19} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb19} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb19} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 19
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:20}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:19} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:1 x:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:20} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index20} Special:false}   : {Name: Type:1 Value:20}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index20} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index20} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda20} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda20} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda20} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb20} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb20} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb20} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 20
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:21}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:20} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:21}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162775}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166742}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
read value {Name: Type:1 Value:16}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
read value {Name: Type:1 Value:17}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
read value {Name: Type:1 Value:18}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
read value {Name: Type:1 Value:19}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
read value {Name: Type:1 Value:20}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
read value {Name: Type:0 Value:<nil>}Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:20} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index20} Special:false}   : {Name: Type:1 Value:20}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index20} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index20} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda20} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda20} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda20} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb20} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb20} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb20} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 20
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:21}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:20} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:21} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index21} Special:false}   : {Name: Type:1 Value:21}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index21} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index21} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda21} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda21} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda21} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb21} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb21} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb21} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 21
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:22}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:21} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:22} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index22} Special:false}   : {Name: Type:1 Value:22}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index22} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca3c865e005a5da1f435eec0b39719e8f874f2ed1b7d301aec242d3f2abc2488 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index22} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda22} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda22} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 383aca4ed61258b8493b38d8163baf06be3ed3bdc11cd0940f4e6feea4791b86 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda22} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb22} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb22} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ae6e5abf5b0817d658dfb7c3445b31a55a6403f44498d0debd32f990292e95a3 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb22} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 22
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:23}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:22} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca3c865e005a5da1f435eec0b39719e8f874f2ed1b7d301aec242d3f2abc2488 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 383aca4ed61258b8493b38d8163baf06be3ed3bdc11cd0940f4e6feea4791b86 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ae6e5abf5b0817d658dfb7c3445b31a55a6403f44498d0debd32f990292e95a3 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:0 x:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:23} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index23} Special:false}   : {Name: Type:1 Value:23}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index23} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a0455bfc2489ebb02f869fb4d6e226f0e751f39db30a236f0d4f96b15fadb642 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index23} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda23} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda23} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50c6543bb9c74c970c2bbd378700431561da657d369b59e6f4971b065f1f85b5 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda23} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb23} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb23} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1433f8473a8648caa919ca6fa143c6ac5fa173fcf980cc20d08c4bdd76ae78bb 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb23} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 23
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:24}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:23} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a0455bfc2489ebb02f869fb4d6e226f0e751f39db30a236f0d4f96b15fadb642 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50c6543bb9c74c970c2bbd378700431561da657d369b59e6f4971b065f1f85b5 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1433f8473a8648caa919ca6fa143c6ac5fa173fcf980cc20d08c4bdd76ae78bb 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:1 y:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:24} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index24} Special:false}   : {Name: Type:1 Value:24}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index24} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index24} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda24} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda24} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda24} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb24} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb24} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb24} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 24
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:25}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:24} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162779/166747 [162779/166747] P 6 TXp 0 NW 800 H/s > TESTNET>> loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:25}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162775}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166742}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
read value {Name: Type:1 Value:20}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
read value {Name: Type:1 Value:21}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca3c865e005a5da1f435eec0b39719e8f874f2ed1b7d301aec242d3f2abc2488 
read value {Name: Type:1 Value:22}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a0455bfc2489ebb02f869fb4d6e226f0e751f39db30a236f0d4f96b15fadb642 
read value {Name: Type:1 Value:23}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
read value {Name: Type:1 Value:24}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f7b8466fdad54c8e872bf25eef10c013a3cdd3b37dfe51e04e7a3a4ea9d50c5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 383aca4ed61258b8493b38d8163baf06be3ed3bdc11cd0940f4e6feea4791b86 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50c6543bb9c74c970c2bbd378700431561da657d369b59e6f4971b065f1f85b5 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e62bb2b31cca775f79e0b3d86009742b054955710c5335ee9bb803cb4b71dc30 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ae6e5abf5b0817d658dfb7c3445b31a55a6403f44498d0debd32f990292e95a3 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1433f8473a8648caa919ca6fa143c6ac5fa173fcf980cc20d08c4bdd76ae78bb 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d48ca45b58f47eb91e3565e011957b6f0d858f2f681bf894be6ff992d5ad1f60 
DERO: 162779/166747 [162779/166747] P 6 TXp 0 NW 800 H/s > TESTNET>> 
DERO: 162779/166747 [162779/166747] P 6 TXp 0 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ae6e5abf5b0817d658dfb7c3445b31a55a6403f44498d0debd32f990292e95a3 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 383aca4ed61258b8493b38d8163baf06be3ed3bdc11cd0940f4e6feea4791b86 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca3c865e005a5da1f435eec0b39719e8f874f2ed1b7d301aec242d3f2abc2488 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1433f8473a8648caa919ca6fa143c6ac5fa173fcf980cc20d08c4bdd76ae78bb 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50c6543bb9c74c970c2bbd378700431561da657d369b59e6f4971b065f1f85b5 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a0455bfc2489ebb02f869fb4d6e226f0e751f39db30a236f0d4f96b15fadb642 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:24} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index24} Special:false}   : {Name: Type:1 Value:24}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index24} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index24} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda24} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda24} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda24} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb24} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb24} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb24} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 24
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:25}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:24} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:25} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index25} Special:false}   : {Name: Type:1 Value:25}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index25} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f7b8466fdad54c8e872bf25eef10c013a3cdd3b37dfe51e04e7a3a4ea9d50c5 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index25} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda25} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda25} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e62bb2b31cca775f79e0b3d86009742b054955710c5335ee9bb803cb4b71dc30 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda25} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb25} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb25} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d48ca45b58f47eb91e3565e011957b6f0d858f2f681bf894be6ff992d5ad1f60 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb25} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 25
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:26}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:25} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f7b8466fdad54c8e872bf25eef10c013a3cdd3b37dfe51e04e7a3a4ea9d50c5 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e62bb2b31cca775f79e0b3d86009742b054955710c5335ee9bb803cb4b71dc30 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d48ca45b58f47eb91e3565e011957b6f0d858f2f681bf894be6ff992d5ad1f60 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:26} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index26} Special:false}   : {Name: Type:1 Value:26}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index26} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4da5b413908f69ba78994d646c2448d8cb65391137ed81b5a8e6a12ea7d78c7d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index26} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda26} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda26} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 11c518a12ef1c8bcf1e1b6a038ce91de04e9946b3cc261271e127a789adea6ee 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda26} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb26} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb26} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f0816aab1561f53b7c2b09059c946644bfc64329c1f5bcd6b588bc427841a7bc 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb26} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 26
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:27}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:26} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4da5b413908f69ba78994d646c2448d8cb65391137ed81b5a8e6a12ea7d78c7d 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 11c518a12ef1c8bcf1e1b6a038ce91de04e9946b3cc261271e127a789adea6ee 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f0816aab1561f53b7c2b09059c946644bfc64329c1f5bcd6b588bc427841a7bc 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:0 x:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:27} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index27} Special:false}   : {Name: Type:1 Value:27}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index27} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 49184002fb873e069fa06bfb0e4df20d672747b9322e1d078651bc1bf916c4f6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index27} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda27} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda27} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4385353c46886770d3f9ebbe7065c99a1ddab9dfc5b04646104727f9874e23ef 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda27} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb27} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb27} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0941fa18f35f94b59ab9a89efcd3335db6ba188e02c7f084b751e865bfae547e 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb27} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 27
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:28}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:27} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 49184002fb873e069fa06bfb0e4df20d672747b9322e1d078651bc1bf916c4f6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4385353c46886770d3f9ebbe7065c99a1ddab9dfc5b04646104727f9874e23ef 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0941fa18f35f94b59ab9a89efcd3335db6ba188e02c7f084b751e865bfae547e 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:1 y:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:28} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index28} Special:false}   : {Name: Type:1 Value:28}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index28} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index28} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda28} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda28} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda28} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb28} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb28} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb28} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 28
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:29}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:28} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162780/166748 [162780/166748] P 6 TXp 0 NW 800 H/s > TESTNET>> loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:29}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162775}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166742}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca3c865e005a5da1f435eec0b39719e8f874f2ed1b7d301aec242d3f2abc2488 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a0455bfc2489ebb02f869fb4d6e226f0e751f39db30a236f0d4f96b15fadb642 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
read value {Name: Type:1 Value:24}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f7b8466fdad54c8e872bf25eef10c013a3cdd3b37dfe51e04e7a3a4ea9d50c5 
read value {Name: Type:1 Value:25}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4da5b413908f69ba78994d646c2448d8cb65391137ed81b5a8e6a12ea7d78c7d 
read value {Name: Type:1 Value:26}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 49184002fb873e069fa06bfb0e4df20d672747b9322e1d078651bc1bf916c4f6 
read value {Name: Type:1 Value:27}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
read value {Name: Type:1 Value:28}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 30d6a8eb8c1635915e0b7cbf3bf66d0f7e477698717d7d97f44b6f68979e1eb0 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 383aca4ed61258b8493b38d8163baf06be3ed3bdc11cd0940f4e6feea4791b86 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50c6543bb9c74c970c2bbd378700431561da657d369b59e6f4971b065f1f85b5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e62bb2b31cca775f79e0b3d86009742b054955710c5335ee9bb803cb4b71dc30 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 11c518a12ef1c8bcf1e1b6a038ce91de04e9946b3cc261271e127a789adea6ee 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4385353c46886770d3f9ebbe7065c99a1ddab9dfc5b04646104727f9874e23ef 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8f4afa30f4b6bd6dd55d98fa93ae9833974bc71e822ad458b98631d81eb6af99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ae6e5abf5b0817d658dfb7c3445b31a55a6403f44498d0debd32f990292e95a3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1433f8473a8648caa919ca6fa143c6ac5fa173fcf980cc20d08c4bdd76ae78bb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d48ca45b58f47eb91e3565e011957b6f0d858f2f681bf894be6ff992d5ad1f60 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f0816aab1561f53b7c2b09059c946644bfc64329c1f5bcd6b588bc427841a7bc 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0941fa18f35f94b59ab9a89efcd3335db6ba188e02c7f084b751e865bfae547e 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9a1351cf209e3c9dff0e09681d69a702178c0d5f0d17bbd31a055b01826d2a2d 
read value {Name: Type:0 Value:<nil>}Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d48ca45b58f47eb91e3565e011957b6f0d858f2f681bf894be6ff992d5ad1f60 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e62bb2b31cca775f79e0b3d86009742b054955710c5335ee9bb803cb4b71dc30 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f7b8466fdad54c8e872bf25eef10c013a3cdd3b37dfe51e04e7a3a4ea9d50c5 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f0816aab1561f53b7c2b09059c946644bfc64329c1f5bcd6b588bc427841a7bc 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 11c518a12ef1c8bcf1e1b6a038ce91de04e9946b3cc261271e127a789adea6ee 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4da5b413908f69ba78994d646c2448d8cb65391137ed81b5a8e6a12ea7d78c7d 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0941fa18f35f94b59ab9a89efcd3335db6ba188e02c7f084b751e865bfae547e 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4385353c46886770d3f9ebbe7065c99a1ddab9dfc5b04646104727f9874e23ef 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 49184002fb873e069fa06bfb0e4df20d672747b9322e1d078651bc1bf916c4f6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:28} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index28} Special:false}   : {Name: Type:1 Value:28}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index28} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index28} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda28} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda28} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda28} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb28} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb28} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb28} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 28
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:29}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:28} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:29} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index29} Special:false}   : {Name: Type:1 Value:29}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index29} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 30d6a8eb8c1635915e0b7cbf3bf66d0f7e477698717d7d97f44b6f68979e1eb0 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index29} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda29} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda29} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8f4afa30f4b6bd6dd55d98fa93ae9833974bc71e822ad458b98631d81eb6af99 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda29} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb29} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb29} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9a1351cf209e3c9dff0e09681d69a702178c0d5f0d17bbd31a055b01826d2a2d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb29} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 29
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:30}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:29} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 30d6a8eb8c1635915e0b7cbf3bf66d0f7e477698717d7d97f44b6f68979e1eb0 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8f4afa30f4b6bd6dd55d98fa93ae9833974bc71e822ad458b98631d81eb6af99 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9a1351cf209e3c9dff0e09681d69a702178c0d5f0d17bbd31a055b01826d2a2d 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:30} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index30} Special:false}   : {Name: Type:1 Value:30}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index30} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 28bad1a78dd638abd6b5bf68f66bbe6e3247a750ccc7f551338a262218cf1785 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index30} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda30} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda30} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d7c4304ae67b2141f05b85f39c7564ea97c28c137bf54ae08470c6807bba8c80 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda30} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb30} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb30} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 00aac2ff1925625f7565d6d149e88334b2ddca37b001c14f47aeff7917bdb30e 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb30} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 30
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:31}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:30} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 28bad1a78dd638abd6b5bf68f66bbe6e3247a750ccc7f551338a262218cf1785 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d7c4304ae67b2141f05b85f39c7564ea97c28c137bf54ae08470c6807bba8c80 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 00aac2ff1925625f7565d6d149e88334b2ddca37b001c14f47aeff7917bdb30e 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:0 x:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:31} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index31} Special:false}   : {Name: Type:1 Value:31}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index31} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b6708918797114d13d0bb720d637d71bdc662ae14addfb873da454b1114e6cc 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index31} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda31} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda31} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a416aca05a35452d36ecbaa15a0a27492ef0646489bb89db3cf44215fcc19924 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda31} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb31} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb31} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e081dfbe6ce67ee85c4f2e39c986227e36f0e481073a3653d12f73ca6e3f1bd6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb31} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 31
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:32}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:31} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b6708918797114d13d0bb720d637d71bdc662ae14addfb873da454b1114e6cc 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a416aca05a35452d36ecbaa15a0a27492ef0646489bb89db3cf44215fcc19924 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e081dfbe6ce67ee85c4f2e39c986227e36f0e481073a3653d12f73ca6e3f1bd6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe  
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:1 y:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:32} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index32} Special:false}   : {Name: Type:1 Value:32}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index32} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index32} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda32} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda32} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda32} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb32} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb32} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb32} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 32
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:33}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:32} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d  
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe !
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162781/166749 [162781/166749] P 6 TXp 0 NW 800 H/s > TESTNET>> loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:33}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162775}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166742}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca3c865e005a5da1f435eec0b39719e8f874f2ed1b7d301aec242d3f2abc2488 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a0455bfc2489ebb02f869fb4d6e226f0e751f39db30a236f0d4f96b15fadb642 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f7b8466fdad54c8e872bf25eef10c013a3cdd3b37dfe51e04e7a3a4ea9d50c5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4da5b413908f69ba78994d646c2448d8cb65391137ed81b5a8e6a12ea7d78c7d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 49184002fb873e069fa06bfb0e4df20d672747b9322e1d078651bc1bf916c4f6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
read value {Name: Type:1 Value:28}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 30d6a8eb8c1635915e0b7cbf3bf66d0f7e477698717d7d97f44b6f68979e1eb0 
read value {Name: Type:1 Value:29}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 28bad1a78dd638abd6b5bf68f66bbe6e3247a750ccc7f551338a262218cf1785 
read value {Name: Type:1 Value:30}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b6708918797114d13d0bb720d637d71bdc662ae14addfb873da454b1114e6cc 
read value {Name: Type:1 Value:31}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d 
read value {Name: Type:1 Value:32}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3ff308b1c686efd35fb4085fa21b8b95b8cb818412531a17f0463083010962a4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 383aca4ed61258b8493b38d8163baf06be3ed3bdc11cd0940f4e6feea4791b86 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50c6543bb9c74c970c2bbd378700431561da657d369b59e6f4971b065f1f85b5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e62bb2b31cca775f79e0b3d86009742b054955710c5335ee9bb803cb4b71dc30 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 11c518a12ef1c8bcf1e1b6a038ce91de04e9946b3cc261271e127a789adea6ee 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4385353c46886770d3f9ebbe7065c99a1ddab9dfc5b04646104727f9874e23ef 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8f4afa30f4b6bd6dd55d98fa93ae9833974bc71e822ad458b98631d81eb6af99 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d7c4304ae67b2141f05b85f39c7564ea97c28c137bf54ae08470c6807bba8c80 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a416aca05a35452d36ecbaa15a0a27492ef0646489bb89db3cf44215fcc19924 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0ea0f63ad6f35a92526860bd620fb03f2ae869691b6372593057acf3a3c5add5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ae6e5abf5b0817d658dfb7c3445b31a55a6403f44498d0debd32f990292e95a3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1433f8473a8648caa919ca6fa143c6ac5fa173fcf980cc20d08c4bdd76ae78bb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d48ca45b58f47eb91e3565e011957b6f0d858f2f681bf894be6ff992d5ad1f60 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f0816aab1561f53b7c2b09059c946644bfc64329c1f5bcd6b588bc427841a7bc 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0941fa18f35f94b59ab9a89efcd3335db6ba188e02c7f084b751e865bfae547e 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9a1351cf209e3c9dff0e09681d69a702178c0d5f0d17bbd31a055b01826d2a2d 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 00aac2ff1925625f7565d6d149e88334b2ddca37b001c14f47aeff7917bdb30e 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e081dfbe6ce67ee85c4f2e39c986227e36f0e481073a3653d12f73ca6e3f1bd6 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 53ad57168f1f19a23852e7a3c78b9fa6ae2f4e302a49a9bda756a334715182cb 
DERO: 162781/166749 [162781/166749] P 6 TXp 0 NW 800 H/s > TESTNET>> 
DERO: 162781/166749 [162781/166749] P 6 TXp 0 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9a1351cf209e3c9dff0e09681d69a702178c0d5f0d17bbd31a055b01826d2a2d 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8f4afa30f4b6bd6dd55d98fa93ae9833974bc71e822ad458b98631d81eb6af99 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 30d6a8eb8c1635915e0b7cbf3bf66d0f7e477698717d7d97f44b6f68979e1eb0 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 00aac2ff1925625f7565d6d149e88334b2ddca37b001c14f47aeff7917bdb30e 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d7c4304ae67b2141f05b85f39c7564ea97c28c137bf54ae08470c6807bba8c80 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 28bad1a78dd638abd6b5bf68f66bbe6e3247a750ccc7f551338a262218cf1785 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e081dfbe6ce67ee85c4f2e39c986227e36f0e481073a3653d12f73ca6e3f1bd6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a416aca05a35452d36ecbaa15a0a27492ef0646489bb89db3cf44215fcc19924 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b6708918797114d13d0bb720d637d71bdc662ae14addfb873da454b1114e6cc 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe  
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:32} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index32} Special:false}   : {Name: Type:1 Value:32}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index32} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index32} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda32} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda32} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda32} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb32} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb32} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb32} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 32
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:33}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:32} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d  
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe !
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:33} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index33} Special:false}   : {Name: Type:1 Value:33}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index33} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3ff308b1c686efd35fb4085fa21b8b95b8cb818412531a17f0463083010962a4 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index33} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda33} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda33} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0ea0f63ad6f35a92526860bd620fb03f2ae869691b6372593057acf3a3c5add5 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda33} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb33} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb33} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 53ad57168f1f19a23852e7a3c78b9fa6ae2f4e302a49a9bda756a334715182cb 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb33} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 33
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:34}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:33} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3ff308b1c686efd35fb4085fa21b8b95b8cb818412531a17f0463083010962a4 !
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0ea0f63ad6f35a92526860bd620fb03f2ae869691b6372593057acf3a3c5add5 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 53ad57168f1f19a23852e7a3c78b9fa6ae2f4e302a49a9bda756a334715182cb 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe "
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:34} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index34} Special:false}   : {Name: Type:1 Value:34}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index34} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 658736fe79ddbabb707497ff85dcc9355f8ff2df5d91fbc9b6f387064072a272 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index34} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda34} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda34} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 87029ef5d6f3353aa70c37a9777161915431d98002406452f353c52d8abdccb2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda34} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb34} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb34} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 72f1171a645ad5e1fb78e1beb8ee754d7aa9375159ab44f582a256001b6d8a18 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb34} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 34
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:35}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:34} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 658736fe79ddbabb707497ff85dcc9355f8ff2df5d91fbc9b6f387064072a272 "
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 87029ef5d6f3353aa70c37a9777161915431d98002406452f353c52d8abdccb2 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 72f1171a645ad5e1fb78e1beb8ee754d7aa9375159ab44f582a256001b6d8a18 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe #
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:0 x:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:35} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index35} Special:false}   : {Name: Type:1 Value:35}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index35} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a5984f97c722e0103613f2c4c89b3a675aa1bf282c1102a41d5d90ded6848b81 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index35} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda35} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda35} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2947e2a20abfcd3dab1455c72a1dd311c00db313c16fbbda27e4a22335e96942 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda35} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb35} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb35} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 08c69045ca53d0185f8aa6170c6e341cd87e7448d1ff67a810419bd7d9eade12 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb35} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 35
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:36}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:35} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a5984f97c722e0103613f2c4c89b3a675aa1bf282c1102a41d5d90ded6848b81 #
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2947e2a20abfcd3dab1455c72a1dd311c00db313c16fbbda27e4a22335e96942 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 08c69045ca53d0185f8aa6170c6e341cd87e7448d1ff67a810419bd7d9eade12 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe $
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:1 y:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:36} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index36} Special:false}   : {Name: Type:1 Value:36}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index36} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c1d68e81eed444f63e13b491329c6092a88b9c1daa171ecfb70d6b64121d5508 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index36} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda36} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda36} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6c11d5bafc9db3378e9d38e5f0bd234d310db74f0f6e48c0e619cbdfe4075ef6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda36} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb36} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb36} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ce67100b324a24e3ffa376ef7a79a159e7670c5761c103d67c3e768acde08b16 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb36} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 36
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:37}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:36} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c1d68e81eed444f63e13b491329c6092a88b9c1daa171ecfb70d6b64121d5508 $
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6c11d5bafc9db3378e9d38e5f0bd234d310db74f0f6e48c0e619cbdfe4075ef6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ce67100b324a24e3ffa376ef7a79a159e7670c5761c103d67c3e768acde08b16 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe %
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162782/166750 [162782/166750] P 6 TXp 0 NW 800 H/s > TESTNET>> loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:37}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162775}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166742}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca3c865e005a5da1f435eec0b39719e8f874f2ed1b7d301aec242d3f2abc2488 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a0455bfc2489ebb02f869fb4d6e226f0e751f39db30a236f0d4f96b15fadb642 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f7b8466fdad54c8e872bf25eef10c013a3cdd3b37dfe51e04e7a3a4ea9d50c5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4da5b413908f69ba78994d646c2448d8cb65391137ed81b5a8e6a12ea7d78c7d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 49184002fb873e069fa06bfb0e4df20d672747b9322e1d078651bc1bf916c4f6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 30d6a8eb8c1635915e0b7cbf3bf66d0f7e477698717d7d97f44b6f68979e1eb0 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 28bad1a78dd638abd6b5bf68f66bbe6e3247a750ccc7f551338a262218cf1785 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b6708918797114d13d0bb720d637d71bdc662ae14addfb873da454b1114e6cc 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d 
read value {Name: Type:1 Value:32}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3ff308b1c686efd35fb4085fa21b8b95b8cb818412531a17f0463083010962a4 
read value {Name: Type:1 Value:33}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 658736fe79ddbabb707497ff85dcc9355f8ff2df5d91fbc9b6f387064072a272 
read value {Name: Type:1 Value:34}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a5984f97c722e0103613f2c4c89b3a675aa1bf282c1102a41d5d90ded6848b81 
read value {Name: Type:1 Value:35}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c1d68e81eed444f63e13b491329c6092a88b9c1daa171ecfb70d6b64121d5508 
read value {Name: Type:1 Value:36}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9501f1c62b803803c0dd62f31b2acd8edbca05ab4cab1f6d3127c53b7cde357d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 383aca4ed61258b8493b38d8163baf06be3ed3bdc11cd0940f4e6feea4791b86 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50c6543bb9c74c970c2bbd378700431561da657d369b59e6f4971b065f1f85b5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e62bb2b31cca775f79e0b3d86009742b054955710c5335ee9bb803cb4b71dc30 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 11c518a12ef1c8bcf1e1b6a038ce91de04e9946b3cc261271e127a789adea6ee 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4385353c46886770d3f9ebbe7065c99a1ddab9dfc5b04646104727f9874e23ef 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8f4afa30f4b6bd6dd55d98fa93ae9833974bc71e822ad458b98631d81eb6af99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d7c4304ae67b2141f05b85f39c7564ea97c28c137bf54ae08470c6807bba8c80 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a416aca05a35452d36ecbaa15a0a27492ef0646489bb89db3cf44215fcc19924 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0ea0f63ad6f35a92526860bd620fb03f2ae869691b6372593057acf3a3c5add5 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 87029ef5d6f3353aa70c37a9777161915431d98002406452f353c52d8abdccb2 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2947e2a20abfcd3dab1455c72a1dd311c00db313c16fbbda27e4a22335e96942 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6c11d5bafc9db3378e9d38e5f0bd234d310db74f0f6e48c0e619cbdfe4075ef6 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f62d1a9f4ee7a4723db27359f5e087eda10b987f77c97d0fc7c830325139aae3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ae6e5abf5b0817d658dfb7c3445b31a55a6403f44498d0debd32f990292e95a3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1433f8473a8648caa919ca6fa143c6ac5fa173fcf980cc20d08c4bdd76ae78bb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d48ca45b58f47eb91e3565e011957b6f0d858f2f681bf894be6ff992d5ad1f60 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f0816aab1561f53b7c2b09059c946644bfc64329c1f5bcd6b588bc427841a7bc 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0941fa18f35f94b59ab9a89efcd3335db6ba188e02c7f084b751e865bfae547e 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9a1351cf209e3c9dff0e09681d69a702178c0d5f0d17bbd31a055b01826d2a2d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 00aac2ff1925625f7565d6d149e88334b2ddca37b001c14f47aeff7917bdb30e 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e081dfbe6ce67ee85c4f2e39c986227e36f0e481073a3653d12f73ca6e3f1bd6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 53ad57168f1f19a23852e7a3c78b9fa6ae2f4e302a49a9bda756a334715182cb 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 72f1171a645ad5e1fb78e1beb8ee754d7aa9375159ab44f582a256001b6d8a18 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 08c69045ca53d0185f8aa6170c6e341cd87e7448d1ff67a810419bd7d9eade12 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ce67100b324a24e3ffa376ef7a79a159e7670c5761c103d67c3e768acde08b16 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bb2949d449a766a7a1ac1ae2ca42c3cf8f03ece03804057bee9ace01af47769f 
DERO: 162782/166750 [162782/166750] P 6 TXp 1 NW 800 H/s > TESTNET>> Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe  
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe !
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 53ad57168f1f19a23852e7a3c78b9fa6ae2f4e302a49a9bda756a334715182cb 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0ea0f63ad6f35a92526860bd620fb03f2ae869691b6372593057acf3a3c5add5 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3ff308b1c686efd35fb4085fa21b8b95b8cb818412531a17f0463083010962a4 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe "
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 72f1171a645ad5e1fb78e1beb8ee754d7aa9375159ab44f582a256001b6d8a18 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 87029ef5d6f3353aa70c37a9777161915431d98002406452f353c52d8abdccb2 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 658736fe79ddbabb707497ff85dcc9355f8ff2df5d91fbc9b6f387064072a272 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe #
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 08c69045ca53d0185f8aa6170c6e341cd87e7448d1ff67a810419bd7d9eade12 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2947e2a20abfcd3dab1455c72a1dd311c00db313c16fbbda27e4a22335e96942 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a5984f97c722e0103613f2c4c89b3a675aa1bf282c1102a41d5d90ded6848b81 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe $
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ce67100b324a24e3ffa376ef7a79a159e7670c5761c103d67c3e768acde08b16 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6c11d5bafc9db3378e9d38e5f0bd234d310db74f0f6e48c0e619cbdfe4075ef6 
Reverting todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c1d68e81eed444f63e13b491329c6092a88b9c1daa171ecfb70d6b64121d5508 
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:4 y:4] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:36} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index36} Special:false}   : {Name: Type:1 Value:36}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index36} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c1d68e81eed444f63e13b491329c6092a88b9c1daa171ecfb70d6b64121d5508 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index36} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda36} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda36} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6c11d5bafc9db3378e9d38e5f0bd234d310db74f0f6e48c0e619cbdfe4075ef6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda36} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb36} Special:false}   : {Name: Type:1 Value:4}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb36} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ce67100b324a24e3ffa376ef7a79a159e7670c5761c103d67c3e768acde08b16 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb36} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 4
y value is 4
txcount is 36
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:37}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:36} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c1d68e81eed444f63e13b491329c6092a88b9c1daa171ecfb70d6b64121d5508 $
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6c11d5bafc9db3378e9d38e5f0bd234d310db74f0f6e48c0e619cbdfe4075ef6 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ce67100b324a24e3ffa376ef7a79a159e7670c5761c103d67c3e768acde08b16 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe %
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:3 y:3] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:37} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index37} Special:false}   : {Name: Type:1 Value:37}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index37} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9501f1c62b803803c0dd62f31b2acd8edbca05ab4cab1f6d3127c53b7cde357d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index37} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda37} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda37} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f62d1a9f4ee7a4723db27359f5e087eda10b987f77c97d0fc7c830325139aae3 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda37} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb37} Special:false}   : {Name: Type:1 Value:3}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb37} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bb2949d449a766a7a1ac1ae2ca42c3cf8f03ece03804057bee9ace01af47769f 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb37} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 3
y value is 3
txcount is 37
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:38}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:37} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9501f1c62b803803c0dd62f31b2acd8edbca05ab4cab1f6d3127c53b7cde357d %
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f62d1a9f4ee7a4723db27359f5e087eda10b987f77c97d0fc7c830325139aae3 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bb2949d449a766a7a1ac1ae2ca42c3cf8f03ece03804057bee9ace01af47769f 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe &
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:2 y:2] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:38} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index38} Special:false}   : {Name: Type:1 Value:38}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index38} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3652337b418b5adfd4f722d672fbf7fce0cf6486631982a1e0f639a3ee2750c0 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index38} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda38} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda38} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b7f0918852890b9b2feb71f7b4d583f210c6810da993a0d915f70e0f2fe5fee 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda38} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb38} Special:false}   : {Name: Type:1 Value:2}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb38} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 71139bd46b4e0e846c1de7ae58ddc2712fff2229cbaa20472771912d6caf9f4a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb38} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 2
y value is 2
txcount is 38
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:39}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:38} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3652337b418b5adfd4f722d672fbf7fce0cf6486631982a1e0f639a3ee2750c0 &
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b7f0918852890b9b2feb71f7b4d583f210c6810da993a0d915f70e0f2fe5fee 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 71139bd46b4e0e846c1de7ae58ddc2712fff2229cbaa20472771912d6caf9f4a 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe '
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[y:0 x:0] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:39} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index39} Special:false}   : {Name: Type:1 Value:39}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index39} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1b003df65c9254ceb68e4c3a4d5488b13390a725e131dc2914f941e4f4129dae 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index39} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda39} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda39} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 157f028d1b0589d04e3825423cf517eb216e6dc5367c243bcaed1cc3c28faa56 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda39} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb39} Special:false}   : {Name: Type:1 Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb39} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b62bd047c0e092b4dda9e9f250bc0c964eaf74f8c1f7b68415b1a3870847ac6a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb39} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 0
y value is 0
txcount is 39
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:40}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:39} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1b003df65c9254ceb68e4c3a4d5488b13390a725e131dc2914f941e4f4129dae '
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 157f028d1b0589d04e3825423cf517eb216e6dc5367c243bcaed1cc3c28faa56 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b62bd047c0e092b4dda9e9f250bc0c964eaf74f8c1f7b68415b1a3870847ac6a 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe (
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
Processing TX SC  data 55 
sctx {SC: SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a EntryPoint:Save Params:map[x:1 y:1] Value:0}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:DERO_BALANCE} Special:true}  result {Name: Type:1 Value:0} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a eee75a1baf21084cd38cdf8f8b45438471c22c3268a4b8fc6169b76148a001b2 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:owner} Special:false}  result {Name: Type:2 Value:dERomxHGvxkee7cfzko9THU9Mc4W8gogLdEVs9fp983HM3T87jxtXhcC4DjLHdoBrfcrwXCZofbCSTmAQTG37gbX7scDqsFqCE} found status true 
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:40} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index40} Special:false}   : {Name: Type:1 Value:40}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index40} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e96d53538ad2d00be0fe7f358b341f29a12a0432f0805234f1c44770b08db20a 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:index40} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda40} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda40} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0196e6257eca37a118f7b1c953bc8d422236b5d411c8ee4799b2809464521544 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fielda40} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb40} Special:false}   : {Name: Type:1 Value:1}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb40} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ebd40bc734f5cc4fd49844ccf81f1b7e292d7d7b1fa9b90b2e88ba336b98633d 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:fieldb40} Special:false}  result {Name: Type:0 Value:<nil>} found status false 
x value is 1
y value is 1
txcount is 40
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   : {Name: Type:1 Value:41}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:txcount} Special:false}  result {Name: Type:1 Value:40} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   : {Name: Type:1 Value:162775}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:scblockheight} Special:false}  result {Name: Type:1 Value:162775} found status true 
Storing request {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   : {Name: Type:1 Value:166742}
Loading {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}   
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
Loading from disk {SCID:7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a Key:{Name: Type:2 Value:sctopoheight} Special:false}  result {Name: Type:1 Value:166742} found status true 
result value {Name: Type:1 Value:0}
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e96d53538ad2d00be0fe7f358b341f29a12a0432f0805234f1c44770b08db20a (
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0196e6257eca37a118f7b1c953bc8d422236b5d411c8ee4799b2809464521544 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ebd40bc734f5cc4fd49844ccf81f1b7e292d7d7b1fa9b90b2e88ba336b98633d 
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe )
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 {�
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 �V
storing todb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
SC execution finished amount value 0
SC processing finished 0
DERO: 162783/166751 [162783/166751] P 6 TXp 0 NW 800 H/s > TESTNET>> loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d52b388c4951d38667e42fb151e15552f69563eaf0a5e42a784a791f4328c4fe 
read value {Name: Type:1 Value:41}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 61932d755e959d343a865f37173902ccfd29d4cef07cca7252dadfacf5626e10 
read value {Name: Type:1 Value:162775}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 80cebc733e4f8d9e7f14200edcfcde7e8e0c5754d4bb29c0a16fff21e308d354 
read value {Name: Type:1 Value:166742}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2c3ef981f94ff79ab97a283e199462931f7321ab48e97ca060253bc34cf837d2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ae169de6899d3a6db98938a00d1fe5cbc8ef2e18569311b4538dbd6b6f5b9e4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 109988b1026aa44c102bfc80ff21f7c467ccb4043a9584d15aee6b7ad87c2965 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e77af43001852b3ad3d59268f44fa987c75ed2a7d9d8aa59b54f6603d0b3b6df 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4893fc1af7ef2fc0f28a8b8b943d871cf7abd86eea0937e8e3d0bd1c8e7b147b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a be7ce20e3f186de054062094e08b9acf38481bfca703f85adc6096e1f1ef6eb4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 17c1caae2b12c0c22b1e4b048961c79b44d7f31bf5dc3deff5b2ac79d128f32d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2659431e52beebc46f04bb4aa73bcf92c36836f5b21802a9f463deb34cfa7bcb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1d02d2236cc881539d93eade06de24c6e6a0526209568a2af99a0dbd12d7f957 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5363d89a59db9d32f10dcaa967d4e5ad0abb64993feef80d7a16415b244ff7d7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 971a926df909763404252086833f5a1fffd85d59a90834af6b9792f79a0ef05a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e6432e62ead050bd0045ac717aeb67a585bccd95fd0ef5fdcc6492c6025ce6b8 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83b0f0d0af831413d095a036d12dba56aa601a13368c30cb94b60020cad52d56 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c0c6210758428e474d2501bf00b9c5650ec66f75c252f33a0a08e4721a49d944 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c009ea07d8d1bfce0ac9516597fa62cca754159dcc09259aa5933875e0c3b7bf 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 253eb893e35fd3daf3b2a48386c738b129b06ee11e4444b0a6cb9eb14329687f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 95fa87c4ee19d9a06a99e699fbaa381588dcd464468545c45adea64dda3a9523 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bffdf91df16a484783f19b6718badeb04895dd0bf738ccbd8dedefd0684607aa 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9d4f3f22a8ab3edc4213f959555746e13f3492f538309bb3dc7e82cdb8a5a03a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f884bbc9e1d68c175c63739466892b45338bfd24ca847ab459fe04e58d9b66d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3418d1957454678c58f882b571f483fed29eeebf25186d306b599e17a8c22001 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca3c865e005a5da1f435eec0b39719e8f874f2ed1b7d301aec242d3f2abc2488 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a0455bfc2489ebb02f869fb4d6e226f0e751f39db30a236f0d4f96b15fadb642 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6cb8dafbc5ed974ad77d97fed4579c7fe2861dbdfe6165809b3b5b2c699a38ca 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2f7b8466fdad54c8e872bf25eef10c013a3cdd3b37dfe51e04e7a3a4ea9d50c5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4da5b413908f69ba78994d646c2448d8cb65391137ed81b5a8e6a12ea7d78c7d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 49184002fb873e069fa06bfb0e4df20d672747b9322e1d078651bc1bf916c4f6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ef0822ded3b8d58f80d0098d8a8084c8e20407c1e1c1ef468f191516ef696019 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 30d6a8eb8c1635915e0b7cbf3bf66d0f7e477698717d7d97f44b6f68979e1eb0 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 28bad1a78dd638abd6b5bf68f66bbe6e3247a750ccc7f551338a262218cf1785 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b6708918797114d13d0bb720d637d71bdc662ae14addfb873da454b1114e6cc 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1e329e309f2017bbe1c707a68f431d5f3b19b0dfb644ca845f84f1da02bf506d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3ff308b1c686efd35fb4085fa21b8b95b8cb818412531a17f0463083010962a4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 658736fe79ddbabb707497ff85dcc9355f8ff2df5d91fbc9b6f387064072a272 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a5984f97c722e0103613f2c4c89b3a675aa1bf282c1102a41d5d90ded6848b81 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c1d68e81eed444f63e13b491329c6092a88b9c1daa171ecfb70d6b64121d5508 
read value {Name: Type:1 Value:36}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9501f1c62b803803c0dd62f31b2acd8edbca05ab4cab1f6d3127c53b7cde357d 
read value {Name: Type:1 Value:37}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3652337b418b5adfd4f722d672fbf7fce0cf6486631982a1e0f639a3ee2750c0 
read value {Name: Type:1 Value:38}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1b003df65c9254ceb68e4c3a4d5488b13390a725e131dc2914f941e4f4129dae 
read value {Name: Type:1 Value:39}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e96d53538ad2d00be0fe7f358b341f29a12a0432f0805234f1c44770b08db20a 
read value {Name: Type:1 Value:40}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 868e8479018d252ce4f419fb49a20f451a4d1a488bc07a24359cdcfb06272e35 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 26d83ca972103f67f3f382c94efa0d5cc421f6b2774f386f9e3ac0e2040489ff 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58e6c700b14a23a70a1b052a721b50112a4bdf54a9f1059016ed21b52cf20448 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 571b6378652cf17df01d78799b989812b256cd9178614571ad2eda07592acb03 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 44511d3d5a6ea820a06b50f1b13c103f6f88cd64f57018c9d4aefa80ab64e00c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a9969b0710062e38193149685e60a56b72cbfcfe3e82ea2f1cc3c0367f6ea224 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 02d698dcd08787a8a6d0cd3ea5dbdbe71e45cb57e3c88489d1840c2335871b66 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8d3e9efcb97075c50c58a148f4205e24d3acc3651070de64070dee70552c39e6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 343dc3c465b90e0126188278cf68056500145a75d37e374d3f5670e0a4a3aece 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ca2d4811481625a2f35a8c109a0d6f0d42c409bf91ff31a13527890a53ae11b7 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a dcf2b2e1d0037645337722b9a5582d5f3d22287e5d8170b0ceafc6f42283e9f4 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d06adc9c77a614232a0e28b7ba0f0e715a55b6ce21902b36aac3017fea26927a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 204bef07fe7717dba28dabe6be9dff4f3cf32bfca07793d2abeb3190fb6af2ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 98553bbb8624e57a316bcab00aa0c8fb498692324c7b78132e06881f80fc1f74 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e804ccd338ffe96f0e95e28afddd41fc956143e716dd60afa44aaad8d8e42587 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 21c34cf1041960e412dc7aac3c536537e28c7c2dbee44110d7691655eab4cc90 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bdc787053f615808e673390bc3faf8fd783141123f1b6f338b7e69fedaa04080 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0a5b7aa99693c9df602d77d8840473c8569cc9b2f7265d242d27af5cb6187e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b61dfd104f286c64f8e16a4139f30514ee6c31da530802ef75ad766d0007d165 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 74ba98ab8c4510c121cb4586e4098acec19ce65ea2c33847c18857b5cf728290 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 3e9193fc7cdc6f0550de9746f7a52dc2b322ff7c102fe0e7e874aba0aec67125 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2ee9aafd7feae4f3cc600324bbc3d1115a92bfb1ec6a26b92ca8a97439fd3bee 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 383aca4ed61258b8493b38d8163baf06be3ed3bdc11cd0940f4e6feea4791b86 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50c6543bb9c74c970c2bbd378700431561da657d369b59e6f4971b065f1f85b5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c6fe355be7f446250fdbe9672492d140452c5257fcf29b1b88bb868dc2461436 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e62bb2b31cca775f79e0b3d86009742b054955710c5335ee9bb803cb4b71dc30 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 11c518a12ef1c8bcf1e1b6a038ce91de04e9946b3cc261271e127a789adea6ee 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 4385353c46886770d3f9ebbe7065c99a1ddab9dfc5b04646104727f9874e23ef 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9ef6edcd1322e50853196f470bfc3e1b70d0f5e78434922fb421e1ebad7bc135 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 8f4afa30f4b6bd6dd55d98fa93ae9833974bc71e822ad458b98631d81eb6af99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d7c4304ae67b2141f05b85f39c7564ea97c28c137bf54ae08470c6807bba8c80 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a a416aca05a35452d36ecbaa15a0a27492ef0646489bb89db3cf44215fcc19924 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 225f6d7e7c48337d97ef1f21253c2593c371949eb7020cac69814afd9c0c6768 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0ea0f63ad6f35a92526860bd620fb03f2ae869691b6372593057acf3a3c5add5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 87029ef5d6f3353aa70c37a9777161915431d98002406452f353c52d8abdccb2 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2947e2a20abfcd3dab1455c72a1dd311c00db313c16fbbda27e4a22335e96942 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6c11d5bafc9db3378e9d38e5f0bd234d310db74f0f6e48c0e619cbdfe4075ef6 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f62d1a9f4ee7a4723db27359f5e087eda10b987f77c97d0fc7c830325139aae3 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2b7f0918852890b9b2feb71f7b4d583f210c6810da993a0d915f70e0f2fe5fee 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 157f028d1b0589d04e3825423cf517eb216e6dc5367c243bcaed1cc3c28faa56 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0196e6257eca37a118f7b1c953bc8d422236b5d411c8ee4799b2809464521544 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1b54102de51c431a405eb07ae9408ed9a0d1edcab85350d5d24b1d03b908a231 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5a49cd12af073144a7de52c3f9b1bea2e282f0dbb180158db4b831ac35cadb2b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 47bad37994973e4194599d32d6e1ff39c6653cb6bf67df7332a2020f22ce14ac 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 6364f958b778797ddb25865a856b958125ebe89df2bea245eab0674735778e99 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0edd2c5e57f7a77df8a87d513cd0cdcbc47b2c267c22d51a11f855647bc73eda 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e494fed5f62e21398d1a2d75daccca1625c5d7bb3be1d4b7da42f366c33ef174 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fddbd3391a797633533acf93db9037ac9923f3fa856427866400dab6a1c51e0c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a fccaf871f0ed8933ec817fc9503735697dfafa98c30dae9ae4b419b80ec82055 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c30b4a02f92d3f08da9cd5492bb39da2279470eacce41ae7f2243dc3027d0ca6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 50421042a02ec1d6f0a9ccec50f5c77478115f0c986c3a402d8311e931070eab 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b9a2c868113179e78228fa7d8737b3357cf61b80383c6f7a508e6a628c2d0b9f 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 58479f214d93b7a46d9495aeb573e0d84eab95301367d908fbc4e99b07aecc7b 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2d7e2331f24cc4800c8259d6c81dd20fa26c53c4e0f0566e1180ff6932f37d7c 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d3f18eec1a765ee6a9fc6405567196e9c1b43c3f6e848813bfb95dcde3f567e1 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1892e832604448b44fc82853e22532705d8a41769f5d2220ed85342c94f0d7f5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 2577f4a610060626d63ea84c1ccbb10165efce3bb620f39c4aead31e5e42fc0a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 55c0af6775b4e403b0a82603b603a902f7a9b4867e8c92bcc6dbd7fe93537495 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee4bc91777cfbe4cf1d13a3fc0e2ce915021206a7de56819c412b9442b67b532 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ee6a1a1cb9678eabc1ac499d2d54969ad748c97a160f4ad6abbcdf3fe478a5a5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5074c9849451cc96bd919981d1e6d62dae57603c54f5a1ab1d705c73c94b50d3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 06e869c5fbb939794b7204388f1af0b4870e92a6e31851db164fdc26c203bfe9 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 990009f91f5fb3e676d74dace6a8d6554d0b0bacd890c048f6843f1e0042fd43 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ae6e5abf5b0817d658dfb7c3445b31a55a6403f44498d0debd32f990292e95a3 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 1433f8473a8648caa919ca6fa143c6ac5fa173fcf980cc20d08c4bdd76ae78bb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b733017668d844d7526560eff60ca0ce54057d471bd03c149f2cb0e1da31950a 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a d48ca45b58f47eb91e3565e011957b6f0d858f2f681bf894be6ff992d5ad1f60 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a f0816aab1561f53b7c2b09059c946644bfc64329c1f5bcd6b588bc427841a7bc 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 0941fa18f35f94b59ab9a89efcd3335db6ba188e02c7f084b751e865bfae547e 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a c7038512fcab3f49a7b95ca5758223ef5b72b6cc5c6a7d536467de523c92a9e5 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 9a1351cf209e3c9dff0e09681d69a702178c0d5f0d17bbd31a055b01826d2a2d 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 00aac2ff1925625f7565d6d149e88334b2ddca37b001c14f47aeff7917bdb30e 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a e081dfbe6ce67ee85c4f2e39c986227e36f0e481073a3653d12f73ca6e3f1bd6 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 5fff090290ea2dba767ef423dbb2701f845a6f2b61bc66252620e971cf1bbff0 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 53ad57168f1f19a23852e7a3c78b9fa6ae2f4e302a49a9bda756a334715182cb 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 72f1171a645ad5e1fb78e1beb8ee754d7aa9375159ab44f582a256001b6d8a18 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 08c69045ca53d0185f8aa6170c6e341cd87e7448d1ff67a810419bd7d9eade12 
read value {Name: Type:0 Value:<nil>}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ce67100b324a24e3ffa376ef7a79a159e7670c5761c103d67c3e768acde08b16 
read value {Name: Type:1 Value:4}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a bb2949d449a766a7a1ac1ae2ca42c3cf8f03ece03804057bee9ace01af47769f 
read value {Name: Type:1 Value:3}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 71139bd46b4e0e846c1de7ae58ddc2712fff2229cbaa20472771912d6caf9f4a 
read value {Name: Type:1 Value:2}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a b62bd047c0e092b4dda9e9f250bc0c964eaf74f8c1f7b68415b1a3870847ac6a 
read value {Name: Type:1 Value:0}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a ebd40bc734f5cc4fd49844ccf81f1b7e292d7d7b1fa9b90b2e88ba336b98633d 
read value {Name: Type:1 Value:1}loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 83c9e88411aeb11c68783d21604f5b1600eb23a8aa7c7c844a9354b98aec41b6 
loading fromdb 7b6eaa60850f1b786395729fa2b03b136c8e52199ae60849be6ce1fb4f94092a 51988727437a13a4df567ac98c2b4af7a69864d8666b98177ff42f5ba0d7b7e1 
DERO: 162786/166754 [162786/166754] P 6 TXp 0 NW 800 H/s > TESTNET>> 
DERO: 162787/166755 [162787/166755] P 6 TXp 0 NW 800 H/s > TESTNET>> 
DERO: 162788/166756 [162788/166756] P 6 TXp 0 NW 808 H/s > TESTNET>> 
DERO: 162788/166756 [162788/166756] P 6 TXp 0 NW 808 H/s > TESTNET>>


