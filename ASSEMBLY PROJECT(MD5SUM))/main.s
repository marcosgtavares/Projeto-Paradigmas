SECTION .data
test:           db 97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,115,115,115,115,115,115,115,115,115,115,49,53,54,51,50,57,55,54,56,49,56,52,53,49,54,53,54,54,53,115,80h,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,192,1,0,0,0,0,0,0
flenghtupper:   TIMES 4 db 0
checkf:         db 0
tagf:           db 0
textbinf:       db 254
zerof:          db 0
ignoremissingf: db 0
quietf:         db 0
statusf:        db 0
strictf:        db 0
warnf:          db 0
helpf:          db 0
versionf:       db 0
binf:           db 0
onespacef:      db 0
fendedf:        db 0
formwarnctr:    dd 0
failwarnctr:    dd 0
nreadfwarnctr:  dd 0
nnopreadfwarnctr:dd 0
lnsonfilectr:   dd 0
exitnum:        dd 0
flagbintext:    db 'binary', 255
flagchecktext:  db 'check', 255
flagtagtext:    db 'tag', 255
flagtexttext:   db 'text', 255
flagzerotext:   db 'zero', 255
flagigntext:    db 'ignore-missing', 255
flagquiettext:  db 'quiet', 255
flagstatustext: db 'status', 255
flagstricttext: db 'strict', 255
flagwarntext:   db 'warn', 255
flaghelptext:   db 'help', 255
flagversiontext:db 'version', 255
helpprinttext:  db 85,115,97,103,101,58,32,109,100,53,115,117,109,32,91,79,80,84,73,79,78,93,46,46,46,32,91,70,73,76,69,93,46,46,46,10,80,114,105,110,116,32,111,114,32,99,104,101,99,107,32,77,68,53,32,40,49,50,56,45,98,105,116,41,32,99,104,101,99,107,115,117,109,115,46,10,10,87,105,116,104,32,110,111,32,70,73,76,69,44,32,111,114,32,119,104,101,110,32,70,73,76,69,32,105,115,32,45,44,32,114,101,97,100,32,115,116,97,110,100,97,114,100,32,105,110,112,117,116,46,10,10,32,32,45,98,44,32,45,45,98,105,110,97,114,121,32,32,32,32,32,32,32,32,32,114,101,97,100,32,105,110,32,98,105,110,97,114,121,32,109,111,100,101,10,32,32,45,99,44,32,45,45,99,104,101,99,107,32,32,32,32,32,32,32,32,32,32,114,101,97,100,32,77,68,53,32,115,117,109,115,32,102,114,111,109,32,116,104,101,32,70,73,76,69,115,32,97,110,100,32,99,104,101,99,107,32,116,104,101,109,10,32,32,32,32,32,32,45,45,116,97,103,32,32,32,32,32,32,32,32,32,32,32,32,99,114,101,97,116,101,32,97,32,66,83,68,45,115,116,121,108,101,32,99,104,101,99,107,115,117,109,10,32,32,45,116,44,32,45,45,116,101,120,116,32,32,32,32,32,32,32,32,32,32,32,114,101,97,100,32,105,110,32,116,101,120,116,32,109,111,100,101,32,40,100,101,102,97,117,108,116,41,10,32,32,45,122,44,32,45,45,122,101,114,111,32,32,32,32,32,32,32,32,32,32,32,101,110,100,32,101,97,99,104,32,111,117,116,112,117,116,32,108,105,110,101,32,119,105,116,104,32,78,85,76,44,32,110,111,116,32,110,101,119,108,105,110,101,44,10,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,97,110,100,32,100,105,115,97,98,108,101,32,102,105,108,101,32,110,97,109,101,32,101,115,99,97,112,105,110,103,10,10,84,104,101,32,102,111,108,108,111,119,105,110,103,32,102,105,118,101,32,111,112,116,105,111,110,115,32,97,114,101,32,117,115,101,102,117,108,32,111,110,108,121,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,58,10,32,32,32,32,32,32,45,45,105,103,110,111,114,101,45,109,105,115,115,105,110,103,32,32,100,111,110,39,116,32,102,97,105,108,32,111,114,32,114,101,112,111,114,116,32,115,116,97,116,117,115,32,102,111,114,32,109,105,115,115,105,110,103,32,102,105,108,101,115,10,32,32,32,32,32,32,45,45,113,117,105,101,116,32,32,32,32,32,32,32,32,32,32,100,111,110,39,116,32,112,114,105,110,116,32,79,75,32,102,111,114,32,101,97,99,104,32,115,117,99,99,101,115,115,102,117,108,108,121,32,118,101,114,105,102,105,101,100,32,102,105,108,101,10,32,32,32,32,32,32,45,45,115,116,97,116,117,115,32,32,32,32,32,32,32,32,32,100,111,110,39,116,32,111,117,116,112,117,116,32,97,110,121,116,104,105,110,103,44,32,115,116,97,116,117,115,32,99,111,100,101,32,115,104,111,119,115,32,115,117,99,99,101,115,115,10,32,32,32,32,32,32,45,45,115,116,114,105,99,116,32,32,32,32,32,32,32,32,32,101,120,105,116,32,110,111,110,45,122,101,114,111,32,102,111,114,32,105,109,112,114,111,112,101,114,108,121,32,102,111,114,109,97,116,116,101,100,32,99,104,101,99,107,115,117,109,32,108,105,110,101,115,10,32,32,45,119,44,32,45,45,119,97,114,110,32,32,32,32,32,32,32,32,32,32,32,119,97,114,110,32,97,98,111,117,116,32,105,109,112,114,111,112,101,114,108,121,32,102,111,114,109,97,116,116,101,100,32,99,104,101,99,107,115,117,109,32,108,105,110,101,115,10,10,32,32,32,32,32,32,45,45,104,101,108,112,32,32,32,32,32,100,105,115,112,108,97,121,32,116,104,105,115,32,104,101,108,112,32,97,110,100,32,101,120,105,116,10,32,32,32,32,32,32,45,45,118,101,114,115,105,111,110,32,32,111,117,116,112,117,116,32,118,101,114,115,105,111,110,32,105,110,102,111,114,109,97,116,105,111,110,32,97,110,100,32,101,120,105,116,10,10,84,104,101,32,115,117,109,115,32,97,114,101,32,99,111,109,112,117,116,101,100,32,97,115,32,100,101,115,99,114,105,98,101,100,32,105,110,32,82,70,67,32,49,51,50,49,46,32,32,87,104,101,110,32,99,104,101,99,107,105,110,103,44,32,116,104,101,32,105,110,112,117,116,10,115,104,111,117,108,100,32,98,101,32,97,32,102,111,114,109,101,114,32,111,117,116,112,117,116,32,111,102,32,116,104,105,115,32,112,114,111,103,114,97,109,46,32,32,84,104,101,32,100,101,102,97,117,108,116,32,109,111,100,101,32,105,115,32,116,111,32,112,114,105,110,116,32,97,10,108,105,110,101,32,119,105,116,104,32,99,104,101,99,107,115,117,109,44,32,97,32,115,112,97,99,101,44,32,97,32,99,104,97,114,97,99,116,101,114,32,105,110,100,105,99,97,116,105,110,103,32,105,110,112,117,116,32,109,111,100,101,32,40,39,42,39,32,102,111,114,32,98,105,110,97,114,121,44,10,39,32,39,32,102,111,114,32,116,101,120,116,32,111,114,32,119,104,101,114,101,32,98,105,110,97,114,121,32,105,115,32,105,110,115,105,103,110,105,102,105,99,97,110,116,41,44,32,97,110,100,32,110,97,109,101,32,102,111,114,32,101,97,99,104,32,70,73,76,69,46,10,10,71,78,85,32,99,111,114,101,117,116,105,108,115,32,111,110,108,105,110,101,32,104,101,108,112,58,32,60,104,116,116,112,115,58,47,47,119,119,119,46,103,110,117,46,111,114,103,47,115,111,102,116,119,97,114,101,47,99,111,114,101,117,116,105,108,115,47,62,10,70,117,108,108,32,100,111,99,117,109,101,110,116,97,116,105,111,110,32,97,116,58,32,60,104,116,116,112,115,58,47,47,119,119,119,46,103,110,117,46,111,114,103,47,115,111,102,116,119,97,114,101,47,99,111,114,101,117,116,105,108,115,47,109,100,53,115,117,109,62,10,111,114,32,97,118,97,105,108,97,98,108,101,32,108,111,99,97,108,108,121,32,118,105,97,58,32,105,110,102,111,32,39,40,99,111,114,101,117,116,105,108,115,41,32,109,100,53,115,117,109,32,105,110,118,111,99,97,116,105,111,110,39,10
versionprintt:  db 109,100,53,115,117,109,32,40,71,78,85,32,99,111,114,101,117,116,105,108,115,41,32,56,46,51,48,10,67,111,112,121,114,105,103,104,116,32,40,67,41,32,50,48,49,56,32,70,114,101,101,32,83,111,102,116,119,97,114,101,32,70,111,117,110,100,97,116,105,111,110,44,32,73,110,99,46,10,76,105,99,101,110,115,101,32,71,80,76,118,51,43,58,32,71,78,85,32,71,80,76,32,118,101,114,115,105,111,110,32,51,32,111,114,32,108,97,116,101,114,32,60,104,116,116,112,115,58,47,47,103,110,117,46,111,114,103,47,108,105,99,101,110,115,101,115,47,103,112,108,46,104,116,109,108,62,46,10,84,104,105,115,32,105,115,32,102,114,101,101,32,115,111,102,116,119,97,114,101,58,32,121,111,117,32,97,114,101,32,102,114,101,101,32,116,111,32,99,104,97,110,103,101,32,97,110,100,32,114,101,100,105,115,116,114,105,98,117,116,101,32,105,116,46,10,84,104,101,114,101,32,105,115,32,78,79,32,87,65,82,82,65,78,84,89,44,32,116,111,32,116,104,101,32,101,120,116,101,110,116,32,112,101,114,109,105,116,116,101,100,32,98,121,32,108,97,119,46,10,10,87,114,105,116,116,101,110,32,98,121,32,85,108,114,105,99,104,32,68,114,101,112,112,101,114,44,32,83,99,111,116,116,32,77,105,108,108,101,114,44,32,97,110,100,32,68,97,118,105,100,32,77,97,100,111,114,101,46,10
printamberr1t:  db 109,100,53,115,117,109,58,32,111,112,116,105,111,110,32,39,45,45,115,116,39,32,105,115,32,97,109,98,105,103,117,111,117,115,59,32,112,111,115,115,105,98,105,108,105,116,105,101,115,58,32,39,45,45,115,116,97,116,117,115,39,32,39,45,45,115,116,114,105,99,116,39,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printamberr2t:  db 109,100,53,115,117,109,58,32,111,112,116,105,111,110,32,39,45,45,115,39,32,105,115,32,97,109,98,105,103,117,111,117,115,59,32,112,111,115,115,105,98,105,108,105,116,105,101,115,58,32,39,45,45,115,116,97,116,117,115,39,32,39,45,45,115,116,114,105,99,116,39,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10,10,  
printambterrt:  db 109,100,53,115,117,109,58,32,111,112,116,105,111,110,32,39,45,45,116,39,32,105,115,32,97,109,98,105,103,117,111,117,115,59,32,112,111,115,115,105,98,105,108,105,116,105,101,115,58,32,39,45,45,116,101,120,116,39,32,39,45,45,116,97,103,39,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printzerrt:     db 109,100,53,115,117,109,58,32,116,104,101,32,45,45,122,101,114,111,32,111,112,116,105,111,110,32,105,115,32,110,111,116,32,115,117,112,112,111,114,116,101,100,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printtagerrt:   db 109,100,53,115,117,109,58,32,116,104,101,32,45,45,116,97,103,32,111,112,116,105,111,110,32,105,115,32,109,101,97,110,105,110,103,108,101,115,115,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printbterrt:    db 109,100,53,115,117,109,58,32,116,104,101,32,45,45,98,105,110,97,114,121,32,97,110,100,32,45,45,116,101,120,116,32,111,112,116,105,111,110,115,32,97,114,101,32,109,101,97,110,105,110,103,108,101,115,115,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printignerrt:   db 109,100,53,115,117,109,58,32,116,104,101,32,45,45,105,103,110,111,114,101,45,109,105,115,115,105,110,103,32,111,112,116,105,111,110,32,105,115,32,109,101,97,110,105,110,103,102,117,108,32,111,110,108,121,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printstaerrt:   db 109,100,53,115,117,109,58,32,116,104,101,32,45,45,115,116,97,116,117,115,32,111,112,116,105,111,110,32,105,115,32,109,101,97,110,105,110,103,102,117,108,32,111,110,108,121,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printquierrt:   db 109,100,53,115,117,109,58,32,116,104,101,32,45,45,113,117,105,101,116,32,111,112,116,105,111,110,32,105,115,32,109,101,97,110,105,110,103,102,117,108,32,111,110,108,121,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printwarerrt:   db 109,100,53,115,117,109,58,32,116,104,101,32,45,45,119,97,114,110,32,111,112,116,105,111,110,32,105,115,32,109,101,97,110,105,110,103,102,117,108,32,111,110,108,121,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printstricerrt: db 109,100,53,115,117,109,58,32,116,104,101,32,45,45,115,116,114,105,99,116,32,111,112,116,105,111,110,32,105,115,32,109,101,97,110,105,110,103,102,117,108,32,111,110,108,121,32,119,104,101,110,32,118,101,114,105,102,121,105,110,103,32,99,104,101,99,107,115,117,109,115,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printtxtsuperrt:db 109,100,53,115,117,109,58,32,45,45,116,97,103,32,100,111,101,115,32,110,111,116,32,115,117,112,112,111,114,116,32,45,45,116,101,120,116,32,109,111,100,101,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
printnfilerrort:db 109,100,53,115,117,109,58,32
printnfilerr2rt:db 58,32,78,111,32,115,117,99,104,32,102,105,108,101,32,111,114,32,100,105,114,101,99,116,111,114,121,10
printferrchkt:  db 58,32,70,65,73,76,69,68,32,111,112,101,110,32,111,114,32,114,101,97,100,10
printwarnt:     db 109,100,53,115,117,109,58,32,87,65,82,78,73,78,71,58,32
printimprwarnt: db 32,108,105,110,101,32,105,115,32,105,109,112,114,111,112,101,114,108,121,32,102,111,114,109,97,116,116,101,100,10
printimprwarnpt:db 32,108,105,110,101,115,32,97,114,101,32,105,109,112,114,111,112,101,114,108,121,32,102,111,114,109,97,116,116,101,100,10
printnfwarnt:   db 32,108,105,115,116,101,100,32,102,105,108,101,32,99,111,117,108,100,32,110,111,116,32,98,101,32,114,101,97,100,10
printnfwarnpt:  db 32,108,105,115,116,101,100,32,102,105,108,101,115,32,99,111,117,108,100,32,110,111,116,32,98,101,32,114,101,97,100,10
printfailwarnpt:db 32,99,111,109,112,117,116,101,100,32,99,104,101,99,107,115,117,109,115,32,100,105,100,32,78,79,84,32,109,97,116,99,104,10
printfailwarnt: db 32,99,111,109,112,117,116,101,100,32,99,104,101,99,107,115,117,109,32,100,105,100,32,78,79,84,32,109,97,116,99,104,10
printnopfwarnt: db 58,32,110,111,32,112,114,111,112,101,114,108,121,32,102,111,114,109,97,116,116,101,100,32,77,68,53,32,99,104,101,99,107,115,117,109,32,108,105,110,101,115,32,102,111,117,110,100,10
printnofvert:   db 58,32,110,111,32,102,105,108,101,32,119,97,115,32,118,101,114,105,102,105,101,100,10
printimpfrmtd:  db 58,32,105,109,112,114,111,112,101,114,108,121,32,102,111,114,109,97,116,116,101,100,32,77,68,53,32,99,104,101,99,107,115,117,109,32,108,105,110,101,10
invalidoptt:    db 109,100,53,115,117,109,58,32,105,110,118,97,108,105,100,32,111,112,116,105,111,110,32,45,45,32,39
urecoptt:       db 109,100,53,115,117,109,58,32,117,110,114,101,99,111,103,110,105,122,101,100,32,111,112,116,105,111,110,32,39
tryformore:     db 39,10,84,114,121,32,39,109,100,53,115,117,109,32,45,45,104,101,108,112,39,32,102,111,114,32,109,111,114,101,32,105,110,102,111,114,109,97,116,105,111,110,46,10
doublespace:    db 32,32,10
spaceaster:     db 32,42
bsd1:           db 77,68,53,32,40
bsd2:           db 41,32,61,32
okchkmes:       db 58,32,79,75,10
failchkmes:     db 58,32,70,65,73,76,69,68,10

SECTION .bss
fileallocmem:   resb 20000000
flenght:        resb 4
inita:          resb 4
initb:          resb 4
initc:          resb 4
initd:          resb 4
h0:             resb 4 
h1:             resb 4 
h2:             resb 4 
h3:             resb 4
a:              resb 4 
b:              resb 4 
c:              resb 4 
d:              resb 4
x:              resb 4
s:              resb 4
ac:             resb 4 
tlenght:        resb 4    
arglen:         resb 4
digest:         resb 32
fileonstack:    resb 400
noffilesonst:   resb 4
lastposst:      resb 4
fileiterator:   resb 4
hashand2spaces: resb 34
filetohashcheck:resb 255
chkdfilesiz:    resb 4
decstr:         resb 10
ctr1:           resb 1
deadval:        resb 1

SECTION .text
global _start

_start:
pop dword [arglen]                          ;arguments to process
mov dword[noffilesonst], 0                  ;files on the stack 
mov dword[lastposst], esp                   ;last position on stack. Saving it so that i can recover it afer processing the flags(it will use the register i was using)

retiter:
    cmp dword [arglen], 1                   ;if arglen is only one it means there are no more arguments on the stack to process
    je nofile                               
    mov esi, dword [arglen]
    sub esi, 1
    mov edi, dword[lastposst]               ;passing last positon
    add edi, 4
iterarg:
    mov eax, dword[edi]
    mov dword[lastposst], edi               ;saving last position
    cmp byte[eax], 2dh                      ;checking for -
    je flagproc                             ;jump to the label where i process the argument if it starts with -
    mov ebx, dword[noffilesonst]    
    mov ecx, [edi]
    mov dword[fileonstack + ebx], ecx       ;saving the adress of the string with the file name 
    add dword[noffilesonst], 4              
    add edi, 4
    sub dword [arglen], 1
    sub esi, 1
    jnz iterarg                             ;no flag (has -) processed so it repeats until there are no more args to process 

nohver:                                     ;no help and version flags found(input or file)
    cmp byte[checkf], 0                     ;checking if the flag check was activated
    je onlyc
    ja onlygen

onlyc:                                      ;in case it was activated, check for flag errors
    cmp byte[tagf], 255
    jnz chcktxtnsuperr

    cmp byte[textbinf], 255
    je printtxtsuperr

chcktxtnsuperr:
    cmp byte[ignoremissingf], 255
    je printignerr
    cmp byte[statusf], 255
    je printstaerr
    cmp byte[quietf], 255
    je printquierr
    cmp byte[warnf], 255
    je printwarerr
    cmp byte[strictf], 255
    je printstricerr
    
    mov dword[fileiterator], 0

loopfile:
    add dword[fileiterator], 4
    mov esi, dword[fileiterator]
    mov edi, fileonstack
    mov ebx, [edi + esi -4]                 ;passing the file string adress through ebx register(so i don't meddle with the stack)
    jmp md5                                 ;jump to md5 label(it will be acting as a function)

printres:
    cmp byte[tagf], 255                     ;check if the flag tag was activated
    je printbsd
    mov eax, 4
    mov ebx, 1
    mov ecx, digest                         ;if not, print the digest(result of md5)
    mov edx, 32
    int 80h

    cmp byte[textbinf], 255                 ;check if text is activated
    je printnoast
    cmp byte[textbinf], 254                 ;check if text standard is activated
    je printnoast
    mov eax, 4                  
    mov ebx, 1
    mov ecx, spaceaster                     ;if not, print asterisk and space
    mov edx, 2
    int 80h
    
    jmp nodoublespace

printnoast:                                 ;if yes, print double space
    mov eax, 4
    mov ebx, 1
    mov ecx, doublespace
    mov edx, 2
    int 80h

nodoublespace:
    mov esi, dword[fileiterator]
    mov edi, fileonstack
    mov ecx, [edi + esi - 4]             ;save the file name string adress on edi so that whe can discover its size
    mov edx, 0

namesizeloop:
    add edx, 1
    cmp byte[ecx + edx - 1], 0
    jnz namesizeloop
    dec edx

    mov eax, 4
    mov ebx, 1
    int 80h

    cmp byte[zerof], 255                    ;check if zero flag was activated
    je nonwln

    mov eax, 4
    mov ebx, 1
    mov ecx, doublespace                    ;if not, print \n (found on the same string as the two spaces)
    add ecx, 2
    mov edx, 1
    int 80h

nonwln:                                     ;finishes the current iteration
    mov esi, dword[fileiterator]
    cmp esi, dword[noffilesonst]
    jnz loopfile
    jmp end

printbsd:
    mov eax, 4                  
    mov ebx, 1
    mov ecx, bsd1
    mov edx, 5
    int 80h

    mov esi, dword[fileiterator]
    mov edi, fileonstack
    mov ecx, [edi + esi - 4]             ;save the file name string adress on edi so that whe can discover its size
    mov edx, 0

namesizeloopbsd:
    add edx, 1
    cmp byte[ecx + edx - 1], 0
    jnz namesizeloopbsd
    dec edx

    mov eax, 4
    mov ebx, 1
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, bsd2
    mov edx, 5
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, digest                         ;if not, print the digest(result of md5)
    mov edx, 32
    int 80h

    cmp byte[zerof], 255
    je nonwlnbsd

    mov eax, 4
    mov ebx, 1
    mov ecx, doublespace                    ;if not, print \n (found on the same string as the two spaces)
    add ecx, 2
    mov edx, 1
    int 80h    

nonwlnbsd:
    mov esi, dword[fileiterator]
    cmp esi, dword[noffilesonst]
    jnz loopfile
    jmp end

onlygen:                                    ;in case check flag was activated, check for flag errors
    cmp byte[zerof], 255
    je printzerr
    cmp byte[tagf], 255
    je printtagerr
    cmp byte[binf], 255
    je printbterr
    cmp byte[textbinf], 255
    je printbterr

    mov dword[fileiterator], 0

loopfilechk:
    add dword[fileiterator], 4
    mov esi, dword[fileiterator]
    mov edi, fileonstack
    mov ebx, [edi + esi -4]                 ;passing the file string adress through ebx register(so i don't meddle with the stack)

    mov eax, 5                              ;open file 
    mov ecx, 0
    mov edx, 0644o
    int 80h

    mov ebx, eax                    

    jmp nwlnloop    

keepreahashout:
    add ecx, 1

readhash:                                   ;read from file character by character to search for improperly formated lines
    inc esi
    mov eax, 3
    mov edx, 1
    int 80h
    
    mov dword[lastposst], ebx
    cmp eax, 0
    je impformerr
    cmp byte[ecx], 102                       ;checks for chracters that are not representations of hexadecimal numbers
    jg impformerr
    cmp byte[ecx], 97
    jge keepreahash
    cmp byte[ecx], 57
    jg impformerr
    cmp byte[ecx], 48
    jl impformerr

keepreahash:                                ;keeps iterating
    add ecx, 1
    cmp esi, 32
    je hashcorrect
    jmp readhash

hashcorrect:                                ;hash has no problems
    mov eax, 3
    mov edx, 1
    int 80h

    mov dword[lastposst], ebx               ;checking the two spaces(or *) that separe the hash and the file, 
    cmp eax, 0
    je impformerr

    add ecx, 1

    cmp byte[hashand2spaces + 32], 32
    jne impformerr
    
    cmp byte[onespacef], 255
    je readfilechk

    mov eax, 3
    mov edx, 1
    int 80h

    add ecx, 1

    mov dword[lastposst], ebx
    cmp eax, 0
    je impformerr
    cmp byte[hashand2spaces + 33], 10
    je impformerr
    cmp byte[hashand2spaces + 33], 32
    je readfilechk
    cmp byte[hashand2spaces + 33], 42       
    je readfilechk
    
    mov byte[onespacef], 255
    mov ah, byte[hashand2spaces + 33]
    mov byte[filetohashcheck], ah
    mov esi, filetohashcheck
    add esi, 1
    jmp readfrom0

readfilechk:                                    ;ready to get the file to use md5 on
    mov esi, filetohashcheck
    
readfrom0:
    mov eax, 3
    mov ecx, esi
    mov edx, 1
    int 80h

    add esi, 1
    cmp eax, 0
    je fended
    cmp byte[esi -1], 10
    jne readfrom0

aftfended:    
    mov byte[esi -1], 0
    sub esi, filetohashcheck
    mov dword[chkdfilesiz], esi
    mov dword[lastposst], ebx
    mov ebx, filetohashcheck

    jmp md5                                     ;acting as function, paramenter passed through ebx

fended:                                         ;in case the file(with the hash and file to check) ends, it activates a flag to go to the next one
    mov byte[fendedf], 255
    jmp aftfended

printrescheck:                                  ;prints the file name and if it succeded or not
    mov esi, 0
    mov eax, digest
    mov ebx, hashand2spaces

checkhshmatch:                                  ;check if the hash match
    inc esi
    mov ch, byte[ebx + esi -1]
    cmp byte[eax + esi -1], ch
    jne failedcheck
    cmp esi, 32
    jl checkhshmatch

    cmp byte[quietf], 255
    je chkformorelns

    mov eax, 4
    mov ebx, 1
    mov ecx, filetohashcheck
    mov edx, dword[chkdfilesiz]
    sub edx, 1
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, okchkmes
    mov edx, 5
    int 80h

    jmp chkformorelns

failedcheck:
    mov dword[exitnum], 1
    mov eax, 4
    mov ebx, 1
    mov ecx, filetohashcheck
    mov edx, dword[chkdfilesiz]
    sub edx, 1
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, failchkmes
    mov edx, 9
    int 80h

    add dword[failwarnctr], 1

chkformorelns:                                      ;check the file for more lines to do the checking 
    
    mov ebx, dword[lastposst]
    cmp byte[fendedf], 255
    je chkformorefls

nwlnloop:                                           ;it used to be above but it wasn't counting the lines properly so it was shifted down here
    mov esi, 0
    mov ecx, hashand2spaces
    inc esi
    mov eax, 3
    mov edx, 1
    int 80h

    cmp eax, 0
    je chkformorefls

    add dword[lnsonfilectr], 1
    

    mov dword[lastposst], ebx                ;done out of loop to check for eof
    

    cmp byte[ecx], 102                       ;checks for chracters that are not representations of hexadecimal numbers
    jg impformerr
    cmp byte[ecx], 97
    jge keepreahashout
    cmp byte[ecx], 57
    jg impformerr
    cmp byte[ecx], 48
    jl impformerr
    jmp keepreahashout

chkformorefls:                                      ;in case the file ends, check if theres another one to check
    mov byte[fendedf], 0
    mov byte[onespacef], 0

    cmp dword[formwarnctr], 0
    jg printformwarn

retformwarn:                                    ;activate warns
    cmp dword[nreadfwarnctr], 0
    jg printreadwarn

retreadwarn:
    cmp dword[failwarnctr], 0
    jg printfailwarn

retfailwarn:
    cmp byte[ignoremissingf], 255
    je printnofver

retnofver:
    mov dword[lnsonfilectr], 0
    mov dword[formwarnctr], 0
    mov dword[nreadfwarnctr], 0
    mov dword[nnopreadfwarnctr], 0
    mov dword[failwarnctr], 0
    mov esi, dword[fileiterator]
    cmp esi, dword[noffilesonst]
    jnz loopfilechk
    jmp end

flagproc:                                   ;checks the simple case for the flags with one -
    cmp byte[eax + 1], 2dh
    je twominus
    cmp byte[eax + 1], 98
    mov ecx, binf
    je popiterone
    cmp byte[eax + 1], 99
    mov ecx, checkf
    je popiterone
    cmp byte[eax + 1], 116
    mov ecx, textbinf
    je popiterone
    cmp byte[eax + 1], 122
    mov ecx, zerof
    je popiterone
    cmp byte[eax + 1], 119
    mov ecx, warnf
    je popiterone
    mov esi, 1
    jmp unknown2                            ;if it's unknown, go to the label where the error is printed

popiterone:                                 ;checking if its the simple case again
    cmp byte[eax + 2], 0
    je popiter
    mov esi, 0
bctzloop:                                   ;if it is not, do the complex case(multiple flags on the same -)
    inc esi
    cmp byte[eax + esi], 98
    mov ecx, binf
    je concatflag
    cmp byte[eax + esi], 99
    mov ecx, checkf
    je concatflag
    cmp byte[eax + esi], 116
    mov ecx, textbinf
    je concatflag
    cmp byte[eax + esi], 122
    mov ecx, zerof
    je concatflag
    cmp byte[eax + esi], 119
    mov ecx, warnf
    je concatflag
    cmp byte[eax + esi], 0
    je cont3
    jmp unknown2                            ;if unknown is found, print error

concatflag:
    cmp ecx, binf
    je deacttextcplx
    cmp ecx, textbinf
    je deactbincplx

afterdeactcplx:
    mov byte[ecx], 255                      ;used to atribute value to the flag variables
    jmp bctzloop
        
popiter:                                    ;checking for ambiguity error(st case)
    cmp byte[eax + 2], 115
    jne cont
    cmp byte[eax + 3], 0
    je printamberr2
    cmp byte [eax + 4], 0
    je printamberr1
    jmp cont2

cont:                                       ;checking for ambguity error(t case)
    cmp byte[eax + 2], 116
    jne cont2
    cmp byte[eax + 3], 0
    je printambterr

cont2:                                      ;atributes value to the flag stored on ecx
    mov [ecx], byte 255

cont3:
    cmp ecx, binf
    je deacttext
    cmp ecx, textbinf
    je deactbin

afterdeact:
    sub dword [arglen], 1                   ;decreases the number of arguments to deal with
    jmp retiter

deacttext:                                  ;deactivate text flag in bin flag is activated
    mov dword[textbinf], 0
    jmp afterdeact

deactbin:                                   ;deactivate bin flag in text flag is activated
    mov dword[binf], 0
    jmp afterdeact

deacttextcplx:                                  ;deactivate text flag in bin flag is activated
    mov dword[textbinf], 0
    jmp afterdeactcplx

deactbincplx:                                   ;deactivate bin flag in text flag is activated
    mov dword[binf], 0
    jmp afterdeactcplx

twominus:                                   ;if two minus are found(on the same label where the simple cases are checked)
    mov ebx, 1

checkloop:                                  ;there's one of these loops or each flag with --
    inc ebx
    mov cl, byte[flagbintext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop
    cmp byte[eax + ebx], 0
    mov ecx, binf                           ;save the values of the flag on ecx
    je popiter                              ;jump to popiter label if there where no problems with the flag, there it will be checked for ambiguity and assigned value if no errors are found 

    mov ebx, 1
checkloop2:
    inc ebx
    mov cl, byte[flagchecktext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop2
    cmp byte[eax + ebx], 0
    mov ecx, checkf
    je popiter

    mov ebx, 1
checkloop3:
    inc ebx
    mov cl, byte[flagtagtext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop3
    cmp byte[eax + ebx], 0
    mov ecx, tagf
    je popiter

    mov ebx, 1
checkloop4:
    inc ebx
    mov cl, byte[flagtexttext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop4
    cmp byte[eax + ebx], 0
    mov ecx, textbinf
    je popiter

    mov ebx, 1
checkloop5:
    inc ebx
    mov cl, byte[flagzerotext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop5
    cmp byte[eax + ebx], 0
    mov ecx, zerof
    je popiter

    mov ebx, 1
checkloop6:
    inc ebx
    mov cl, byte[flagigntext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop6
    cmp byte[eax + ebx], 0
    mov ecx, ignoremissingf
    je popiter

    mov ebx, 1

checkloop7:
    inc ebx
    mov cl, byte[flagquiettext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop7
    cmp byte[eax + ebx], 0
    mov ecx, quietf
    je popiter

    mov ebx, 1

checkloop8:
    inc ebx
    mov cl, byte[flagstatustext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop8
    cmp byte[eax + ebx], 0
    mov ecx, statusf
    je popiter

    mov ebx, 1

checkloop9:
    inc ebx
    mov cl, byte[flagstricttext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop9
    cmp byte[eax + ebx], 0
    mov ecx, strictf
    je popiter

    mov ebx, 1

checkloop10:
    inc ebx
    mov cl, byte[flagwarntext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop10
    cmp byte[eax + ebx], 0
    mov ecx, warnf
    je popiter

    mov ebx, 1

checkloop11:
    inc ebx
    mov cl, byte[flaghelptext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop11
    cmp byte[eax + ebx], 0
    mov ecx, helpf
    je helpprint

    mov ebx, 1

checkloop12:
    inc ebx
    mov cl, byte[flagversiontext + ebx - 2] 
    cmp byte[eax + ebx], cl
    je checkloop12
    cmp byte[eax + ebx], 0
    mov ecx, versionf
    je versionprint                                     ;if goes through all the loops without being processed, it's and unknown flag

unknown:                                                ;when an unknown -- flag is found, the error is processed here
    mov esi, 1

findssize:
    inc esi
    cmp byte[eax + esi], 0
    jne findssize
    add esi, 1
    mov edi, eax
    
    mov eax, 4
    mov ebx, 1
    mov ecx, urecoptt
    mov edx, 29
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, edi 
    mov edx, esi
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, tryformore
    mov edx, 44
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h
    
unknown2:                                               ;here the - flags unknown errors are processed

    mov edi, eax
    add edi, esi

    mov eax, 4
    mov ebx, 1
    mov ecx, invalidoptt
    mov edx, 27
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, edi
    mov edx, 1
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, tryformore
    mov edx, 44
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

nofile:                                                 ;if there's no more arguments on the stack, it comes here to check for help and version flags
    cmp byte[helpf], 255
    je helpprint
    cmp byte[versionf], 255
    je versionprint
    jmp nohver

helpprint:                                              ;labels where the error are printed
    mov ecx, helpprinttext
    mov eax, 4
    mov ebx, 1
    mov edx, 1502
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h

versionprint:
    mov ecx, versionprintt
    mov eax, 4
    mov ebx, 1
    mov edx, 339
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h

printamberr1:
    mov ecx, printamberr1t
    mov eax, 4
    mov ebx, 2
    mov edx, 115
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printamberr2:
    mov ecx, printamberr2t
    mov eax, 4
    mov ebx, 2
    mov edx, 114
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printambterr:
    mov ecx, printambterrt
    mov eax, 4
    mov ebx, 2
    mov edx, 109
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printzerr:
    mov ecx, printzerrt
    mov eax, 4
    mov ebx, 2
    mov edx, 110
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printtagerr:
    mov ecx, printtagerrt
    mov eax, 4
    mov ebx, 2
    mov edx, 109
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printbterr:
    mov ecx, printbterrt
    mov eax, 4
    mov ebx, 2
    mov edx, 123
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printignerr:
    mov ecx, printignerrt
    mov eax, 4
    mov ebx, 2
    mov edx, 123
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printstaerr:
    mov ecx, printstaerrt
    mov eax, 4
    mov ebx, 2
    mov edx, 114
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printquierr:
    mov ecx, printquierrt
    mov eax, 4
    mov ebx, 2
    mov edx, 113
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printwarerr:
    mov ecx, printwarerrt
    mov eax, 4
    mov ebx, 2
    mov edx, 112
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printstricerr:
    mov ecx, printstricerrt
    mov eax, 4
    mov ebx, 2
    mov edx, 114
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printtxtsuperr:
    mov ecx, printtxtsuperrt
    mov eax, 4
    mov ebx, 2
    mov edx, 85
    int 80h

    mov eax, 1
    mov ebx, 1
    int 80h

printnfilerror:
    mov dword[exitnum], 1
    mov esi, ebx

    mov ecx, printnfilerrort
    mov eax, 4
    mov ebx, 2
    mov edx, 8
    int 80h

    mov ecx, esi
    mov edx, 0
    
nslooperr:
    add edx, 1
    cmp byte[ecx + edx - 1], 0
    jnz nslooperr
    dec edx

    mov eax, 4
    mov ebx, 2
    int 80h

    mov ecx, printnfilerr2rt
    mov eax, 4
    mov ebx, 2
    mov edx, 28
    int 80h

    jmp nonwln

printformwarn:                              ;print the warns
    mov esi, dword[lnsonfilectr]
    cmp esi, dword[formwarnctr] 
    jnz contformwarn

    mov ecx, printwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 8
    int 80h

    mov esi, dword[fileiterator]
    mov edi, fileonstack
    mov ecx, [edi + esi - 4] 
    mov edx, 0

fnamesizew:
    inc edx
    cmp byte[ecx + edx -1], 0
    jne fnamesizew
    dec edx

    mov eax, 4
    mov ebx, 2
    int 80h

    mov ecx, printnopfwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 49
    int 80h

    jmp retformwarn

contformwarn:
    mov ecx, printwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 17
    int 80h

    mov eax, dword[formwarnctr]
    call printdec

    cmp dword[formwarnctr], 1
    jg pluralformwarn

    mov ecx, printimprwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 30
    int 80h

    jmp retformwarn

pluralformwarn:
    mov ecx, printimprwarnpt
    mov eax, 4
    mov ebx, 2
    mov edx, 32
    int 80h

    jmp retformwarn

printreadwarn:
    mov ecx, printwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 17
    int 80h

    mov eax, dword[nreadfwarnctr]
    call printdec

    cmp dword[nreadfwarnctr], 1
    jg pluralreadwarn

    mov ecx, printnfwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 31
    int 80h

    jmp retreadwarn

pluralreadwarn:
    mov ecx, printnfwarnpt
    mov eax, 4
    mov ebx, 2
    mov edx, 32
    int 80h

    jmp retreadwarn

printfailwarn:
    mov ecx, printwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 17
    int 80h

    mov eax, dword[failwarnctr]
    call printdec

    cmp dword[failwarnctr], 1
    jg pluralfailwarn

    mov ecx, printfailwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 33
    int 80h

    jmp retfailwarn

pluralfailwarn:
    mov ecx, printfailwarnpt
    mov eax, 4
    mov ebx, 2
    mov edx, 34
    int 80h

    jmp retfailwarn

printnofver:
    mov eax, dword[failwarnctr]
    add eax, dword[nnopreadfwarnctr]
    add eax, dword[formwarnctr]

    cmp eax, dword[lnsonfilectr]
    jnz retnofver

    mov eax, dword[lnsonfilectr]
    cmp eax, dword[formwarnctr]
    je retnofver

    mov ecx, printwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 8
    int 80h

    mov esi, dword[fileiterator]
    mov edi, fileonstack
    mov ecx, [edi + esi - 4] 
    mov edx, 0

fnamesizewnofv:
    inc edx
    cmp byte[ecx + edx -1], 0
    jne fnamesizewnofv
    dec edx

    mov eax, 4
    mov ebx, 2
    int 80h
    
    mov ecx, printnofvert
    mov eax, 4
    mov ebx, 2
    mov edx, 23
    int 80h

    jmp retnofver


printdec:                                   ;func to print a decimal number (http://www.science.smith.edu/dftwiki/index.php/CSC231_Printing_%26_Inputting_Decimal_Numbers_in_Assembly)
    mov dword[ctr1], 0
    mov edi, decstr
    add edi, 9
    xor edx, edx

whilenotzero:
    mov ebx, 10
    div ebx
    add edx, 48
    mov byte[edi], dl
    dec edi
    inc dword[ctr1]
    xor edx, edx
    cmp eax, 0
    jne whilenotzero

    inc edi
    mov ecx, edi
    mov edx, [ctr1]
    mov eax, 4
    mov ebx, 2
    int 80h

    ret

multipleerrors:                             ;special case on --check that prints multiple erros for failling to read a file
    mov dword[exitnum], 1
    add dword[nnopreadfwarnctr], 1
    cmp byte[ignoremissingf], 255
    je chkformorelns

    add dword[nreadfwarnctr], 1
    mov esi, ebx

    mov ecx, printnfilerrort
    mov eax, 4
    mov ebx, 2
    mov edx, 8
    int 80h

    mov ecx, esi
    mov edx, 0
    
nslooperrmr:
    add edx, 1
    cmp byte[ecx + edx - 1], 0
    jnz nslooperrmr
    dec edx

    mov edi, edx
    mov eax, 4
    mov ebx, 2
    int 80h

    mov ecx, printnfilerr2rt
    mov eax, 4
    mov ebx, 2
    mov edx, 28
    int 80h

    mov ecx, esi
    mov eax, 4
    mov ebx, 2
    mov edx, edi
    int 80h

    mov ecx, printferrchkt
    mov eax, 4
    mov ebx, 2
    mov edx, 22
    int 80h

    jmp chkformorelns

impformerr:                                 ;handles improperly formated lines
    add dword[formwarnctr], 1
    cmp byte[strictf], 255
    je nonzeroexit

retnonzext:
    cmp byte[warnf], 255
    je printflgwarn

retflgwarn:
    add ecx, 1
    cmp eax, 0
    je chkformorefls
    mov byte[deadval], 1
    mov ebx, dword[lastposst]
   
    cmp byte[ecx-1], 10
    je chkformorelns

movtoend:    
    cmp eax, 0
    je chkformorefls
    mov eax, 3
    mov ecx, deadval
    mov edx, 1
    int 80h
    mov dword[lastposst], ebx
    cmp byte[deadval], 10
    jnz movtoend

    jmp chkformorelns

nonzeroexit:
    mov dword[exitnum], 1
    jmp retnonzext

printflgwarn:
    mov ecx, printwarnt
    mov eax, 4
    mov ebx, 2
    mov edx, 8
    int 80h

    mov esi, dword[fileiterator]
    mov edi, fileonstack
    mov ecx, [edi + esi - 4] 
    mov edx, 0

fnamesizewflg:
    inc edx
    cmp byte[ecx + edx -1], 0
    jne fnamesizewflg
    dec edx

    mov eax, 4
    mov ebx, 2
    int 80h
    
    mov ecx, printimpfrmtd
    mov eax, 4
    mov ebx, 2
    mov edx, 2
    int 80h

    mov eax, dword[lnsonfilectr]
    call printdec

    mov ecx, printimpfrmtd
    mov eax, 4
    mov ebx, 2
    mov edx, 41
    int 80h

    jmp retflgwarn

end:                                ;end label
    mov eax, 1
    mov ebx, dword[exitnum]
    int 80h

md5:
    mov dword [h0], 1732584193
    mov dword [h1], 4023233417
    mov dword [h2], 2562383102
    mov dword [h3], 271733878
    mov dword [tlenght], 0

    mov eax, 5                      ;open file 
    mov ecx, 0
    mov edx, 0644o
    int 80h

    cmp byte[checkf], 255           ;type of error to print depens if check is on or off
    jnz nocheckmd5
    cmp eax, 0
    jl multipleerrors

nocheckmd5:
    cmp eax, 0
    jl printnfilerror               ;error caused by unknown file, it prints the error and iterates on the files to be processed

    mov ebx, eax                    ;read 512bit from the file if possible
    mov eax, 3
    mov ecx, fileallocmem
    mov edx, 64
    int 80h

    add ecx, 64                     ;move 64 bytes on the allocated memory

    mov esi, 0
    mov [flenght], esi

    add dword [tlenght], 1          ;add lenght in 64 bytes

    add dword[flenght], eax              ;add lenght in bits
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax

    mov edi, 64
    cmp edi, eax
    jg padding                      ;if read bytes are less than 64, go to padding

readalloc:                          ;read on allocated memory until the end                         
    mov eax, 3
    int 80h
    
    add ecx, 64                     ;move 64 bytes on the allocated memory

    add dword [tlenght], 1          ;add lenght in 64 bytes

    add dword[flenght], eax              ;add lenght in bits
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax
    add dword[flenght], eax

    cmp edi, eax                     ;if read bytes are less than 64, go to padding
    jg padding
    jmp readalloc                    ;otherwise keep looping

padding:
    mov edi, 56
    cmp edi, eax                     
    jg complete                     ;if read bytes are less than 56, go to complete(to add bytes until it's properly padded)
    je complete2                    ;otherwise add 64 bytes(first byte 10000000)
    jl complete3                    ;otherwise add to 64 and add 56

complete:                           ;complete 56
    mov edi, 56
    sub edi, eax
    sub ecx, 8
    sub ecx, edi
    mov [ecx], byte 80h
    cmp eax, 55
    sub edi, 1
    je addbitlenght
    jmp looppad

complete2:                          ;add 64
    add dword[tlenght], 1           ;add lenght in 64 bytes
    sub ecx, 8
    mov [ecx], byte 80h
    mov edi, 63
    jmp looppad

complete3:                          ;otherwise add to 64 and add 56
    add dword [tlenght], 1          ;add lenght in 64 bytes
    mov edi, 64
    sub edi, eax                    
    sub ecx, edi
    mov [ecx], byte 80h
    add edi, 55

looppad:                            ;add fisrt padding and loop for the rest
    add ecx, 1
    mov [ecx], byte 0
    sub edi, 1
    jnz looppad

    

addbitlenght:
    add ecx, 1
    mov ebx, dword[flenght]
    mov [ecx], ebx
    mov ebx, dword[flenghtupper]
    mov [ecx+4], ebx
    
    mov edx, fileallocmem   

    ;mov dword [tlenght], 2
    ;mov edx, test

foreachchunk64:                     ;main loop for each 64 bytes
    mov edi, inita                  ;store hn values on registers 
    mov esi, dword [h0]
    mov [edi], esi
    mov edi, initb
    mov esi, dword [h1]
    mov [edi], esi
    mov edi, initc
    mov esi, dword [h2]
    mov [edi], esi
    mov edi, initd
    mov esi, dword [h3]
    mov [edi], esi
                                    ;start round 1
    push dword [h0]                 ;1ff
    push dword [h1]                 ;push the func parameters on the stack
    push dword [h2]
    push dword [h3]
    push dword [edx]                ;move on the vector(64 bytes segment)
    push dword 7
    push dword 3614090360           
    call ff
    pop dword[h0]                   ;retrieve the value of 'a'

    push dword [h3]                 ;2ff
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 4]
    push dword 12
    push dword 3905402710
    call ff
    pop dword[h3]

    push dword [h2]                 ;3ff
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 8]
    push dword 17
    push dword 606105819
    call ff
    pop dword[h2]

    push dword [h1]                 ;4ff
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 12]
    push dword 22
    push dword 3250441966
    call ff
    pop dword[h1]

    push dword [h0]                 ;5ff
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 16]                
    push dword 7
    push dword 4118548399           
    call ff
    pop dword[h0]

    push dword [h3]                 ;6ff
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 20]
    push dword 12
    push dword 1200080426
    call ff
    pop dword[h3]

    push dword [h2]                 ;7ff
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 24]
    push dword 17
    push dword 2821735955
    call ff
    pop dword[h2]

    push dword [h1]                 ;8ff
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 28]
    push dword 22
    push dword 4249261313
    call ff
    pop dword[h1]

    push dword [h0]                 ;9ff
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 32]                
    push dword 7
    push dword 1770035416           
    call ff
    pop dword[h0]

    push dword [h3]                 ;10ff
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 36]
    push dword 12
    push dword 2336552879
    call ff
    pop dword[h3]

    push dword [h2]                 ;11ff
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 40]
    push dword 17
    push dword 4294925233
    call ff
    pop dword[h2]

    push dword [h1]                 ;12ff
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 44]
    push dword 22
    push dword 2304563134
    call ff
    pop dword[h1]

    push dword [h0]                 ;13ff
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 48]                
    push dword 7
    push dword 1804603682           
    call ff
    pop dword[h0]

    push dword [h3]                 ;14ff
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 52]
    push dword 12
    push dword 4254626195
    call ff
    pop dword[h3]

    push dword [h2]                 ;15ff
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 56]
    push dword 17
    push dword 2792965006
    call ff
    pop dword[h2]

    push dword [h1]                 ;16ff
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 60]
    push dword 22
    push dword 1236535329
    call ff
    pop dword[h1]

    push dword [h0]                 ;1gg
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 4]                
    push dword 5
    push dword 4129170786           
    call gg
    pop dword[h0]

    push dword [h3]                 ;2gg
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 24]
    push dword 9
    push dword 3225465664
    call gg
    pop dword[h3]

    push dword [h2]                 ;3gg
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 44]
    push dword 14
    push dword 643717713
    call gg
    pop dword[h2]

    push dword [h1]                 ;4gg
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx]
    push dword 20
    push dword 3921069994
    call gg
    pop dword[h1]

    push dword [h0]                 ;5gg
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 20]                
    push dword 5
    push dword 3593408605           
    call gg
    pop dword[h0]

    push dword [h3]                 ;6gg
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 40]
    push dword 9
    push dword 38016083
    call gg
    pop dword[h3]

    push dword [h2]                 ;7gg
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 60]
    push dword 14
    push dword 3634488961
    call gg
    pop dword[h2]

    push dword [h1]                 ;8gg
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 16]
    push dword 20
    push dword 3889429448
    call gg
    pop dword[h1]

    push dword [h0]                 ;9gg
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 36]                
    push dword 5
    push dword 568446438           
    call gg
    pop dword[h0]

    push dword [h3]                 ;10gg
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 56]
    push dword 9
    push dword 3275163606
    call gg
    pop dword[h3]

    push dword [h2]                 ;11gg
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 12]
    push dword 14
    push dword 4107603335
    call gg
    pop dword[h2]

    push dword [h1]                 ;12gg
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 32]
    push dword 20
    push dword 1163531501
    call gg
    pop dword[h1]

    push dword [h0]                 ;13gg
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 52]                
    push dword 5
    push dword 2850285829           
    call gg
    pop dword[h0]

    push dword [h3]                 ;14gg
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 8]
    push dword 9
    push dword 4243563512
    call gg
    pop dword[h3]

    push dword [h2]                 ;15gg
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 28]
    push dword 14
    push dword 1735328473
    call gg
    pop dword[h2]

    push dword [h1]                 ;16gg
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 48]
    push dword 20
    push dword 2368359562
    call gg
    pop dword[h1]

    push dword [h0]                 ;1hh
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 20]                
    push dword 4
    push dword 4294588738           
    call hh
    pop dword[h0]

    push dword [h3]                 ;2hh
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 32]
    push dword 11
    push dword 2272392833
    call hh
    pop dword[h3]

    push dword [h2]                 ;3hh
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 44]
    push dword 16
    push dword 1839030562
    call hh
    pop dword[h2]

    push dword [h1]                 ;4hh
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 56]
    push dword 23
    push dword 4259657740
    call hh
    pop dword[h1]

    push dword [h0]                 ;5hh
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 4]                
    push dword 4
    push dword 2763975236           
    call hh
    pop dword[h0]

    push dword [h3]                 ;6hh
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 16]
    push dword 11
    push dword 1272893353
    call hh
    pop dword[h3]

    push dword [h2]                 ;7hh
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 28]
    push dword 16
    push dword 4139469664
    call hh
    pop dword[h2]

    push dword [h1]                 ;8hh
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 40]
    push dword 23
    push dword 3200236656
    call hh
    pop dword[h1]

    push dword [h0]                 ;9hh
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 52]                
    push dword 4
    push dword 681279174           
    call hh
    pop dword[h0]

    push dword [h3]                 ;10hh
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx]
    push dword 11
    push dword 3936430074
    call hh
    pop dword[h3]

    push dword [h2]                 ;11hh
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 12]
    push dword 16
    push dword 3572445317
    call hh
    pop dword[h2]

    push dword [h1]                 ;12hh
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 24]
    push dword 23
    push dword 76029189
    call hh
    pop dword[h1]

    push dword [h0]                 ;13hh
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 36]                
    push dword 4
    push dword 3654602809           
    call hh
    pop dword[h0]

    push dword [h3]                 ;14hh
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 48]
    push dword 11
    push dword 3873151461
    call hh
    pop dword[h3]

    push dword [h2]                 ;15hh
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 60]
    push dword 16
    push dword 530742520
    call hh
    pop dword[h2]

    push dword [h1]                 ;16hh
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 8]
    push dword 23
    push dword 3299628645
    call hh
    pop dword[h1]

    push dword [h0]                 ;1ii
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx]                
    push dword 6
    push dword 4096336452           
    call ii
    pop dword[h0]

    push dword [h3]                 ;2ii
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 28]
    push dword 10
    push dword 1126891415
    call ii
    pop dword[h3]

    push dword [h2]                 ;3ii
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 56]
    push dword 15
    push dword 2878612391
    call ii
    pop dword[h2]

    push dword [h1]                 ;4ii
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 20]
    push dword 21
    push dword 4237533241
    call ii
    pop dword[h1]

    push dword [h0]                 ;5ii
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 48]                
    push dword 6
    push dword 1700485571           
    call ii
    pop dword[h0]

    push dword [h3]                 ;6ii
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 12]
    push dword 10
    push dword 2399980690
    call ii
    pop dword[h3]

    push dword [h2]                 ;7ii
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 40]
    push dword 15
    push dword 4293915773
    call ii
    pop dword[h2]

    push dword [h1]                 ;8ii
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 4]
    push dword 21
    push dword 2240044497
    call ii
    pop dword[h1]

    push dword [h0]                 ;9ii
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 32]                
    push dword 6
    push dword 1873313359           
    call ii
    pop dword[h0]

    push dword [h3]                 ;10ii
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 60]
    push dword 10
    push dword 4264355552
    call ii
    pop dword[h3]

    push dword [h2]                 ;11ii
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 24]
    push dword 15
    push dword 2734768916
    call ii
    pop dword[h2]

    push dword [h1]                 ;12ii
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 52]
    push dword 21
    push dword 1309151649
    call ii
    pop dword[h1]

    push dword [h0]                 ;13ii
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 16]                
    push dword 6
    push dword 4149444226           
    call ii
    pop dword[h0]                   

    push dword [h3]                 ;14ii
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 44]
    push dword 10
    push dword 3174756917
    call ii
    pop dword[h3]

    push dword [h2]                 ;15ii
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 8]
    push dword 15
    push dword 718787259
    call ii
    pop dword[h2]

    push dword [h1]                 ;16ii
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 36]
    push dword 21
    push dword 3951481745
    call ii
    pop dword[h1]

    mov edi, dword[h0]              ;increment hn
    add edi, dword[inita]
    mov dword[h0], edi
    mov edi, dword[h1]
    add edi, dword[initb]
    mov dword[h1], edi
    mov edi, dword[h2]
    add edi, dword[initc]
    mov dword[h2], edi
    mov edi, dword[h3]
    add edi, dword[initd]
    mov dword[h3], edi

    
    add edx, 64                     ;move to the next 64 byte segment
    sub dword [tlenght], 1
    jnz foreachchunk64               ;keep doing it if there's more chunks to process

hntohex:
    mov edx, digest
    mov edi, h0
    mov esi, 4

digestloop0:    
    mov al, byte[edi]
    
    call to2characters
    mov byte[edx], bh
    mov byte[edx+1], ch
    add edx, 2
    add edi, 1
    sub esi, 1
    jnz digestloop0

    mov edi, h1
    mov esi, 4

digestloop1:    
    mov al, byte[edi]
    
    call to2characters
    mov byte[edx], bh
    mov byte[edx+1], ch
    add edx, 2
    add edi, 1
    sub esi, 1
    jnz digestloop1

    mov edi, h2
    mov esi, 4

digestloop2:    
    mov al, byte[edi]
    
    call to2characters
    mov byte[edx], bh
    mov byte[edx+1], ch
    add edx, 2
    add edi, 1
    sub esi, 1
    jnz digestloop2

    mov edi, h3
    mov esi, 4

digestloop3:    
    mov al, byte[edi]
    
    call to2characters
    mov byte[edx], bh
    mov byte[edx+1], ch
    add edx, 2
    add edi, 1
    sub esi, 1
    jnz digestloop3

    cmp byte[checkf], 255           ;if flag check is activated, jump to the loop where the answer is generated for check, if not, go to where the answer is generated for hash creation 
    je printrescheck
    jmp printres


to2characters:                      ;transform a byte in 2 hex caracters
    mov ah, al
    shr ah, 4
    and al, 0fh
    cmp ah, 10
    jl numappendh
    jmp charappendh

rethere:
    cmp al, 10
    jl numappendl
    jmp charappendl

numappendh:
    mov bh, 48
    add bh, ah
    jmp rethere

charappendh:
    sub ah, 9
    mov bh, 96
    add bh, ah
    jmp rethere

numappendl:
    mov ch, 48
    add ch, al
    ret

charappendl:
    sub al, 9
    mov ch, 96
    add ch, al
    ret

ff:                                 ;tranformation functions
    pop esi                         ;saving return adress

    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov ebx, dword [b]
    and ebx, dword [c]  
    mov eax, dword [b]
    not eax
    and eax, dword [d]
    or eax, ebx
    
    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotateleftf:    
    rol eax, 1                      ;segfault
    sub ebx, 1
    jnz rotateleftf

    add eax, dword[b] 

    push eax

    push esi                        ;return adress
    ret

gg:
    pop esi                         ;saving return adress
    
    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov ebx, dword [b]
    and ebx, dword [d]
    mov eax, dword [d]   
    not eax
    and eax, dword [c]
    or eax, ebx

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotateleftg:    
    rol eax, 1
    sub ebx, 1
    jnz rotateleftg

    add eax, dword[b] 

    push eax

    push esi                        ;return adress
    ret

hh:
    pop esi                         ;saving return adress

    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov eax, dword [b]
    xor eax, dword [c]
    xor eax, dword [d]

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotatelefth:    
    rol eax, 1
    sub ebx, 1
    jnz rotatelefth

    add eax, dword[b] 

    push eax
    
    push esi                        ;return adress
    ret

ii:
    pop esi                         ;saving return adress

    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]
    
    mov eax, dword [c]
    mov ebx, dword [b]
    mov ecx, dword [d]
    not ecx
    or ebx, ecx
    xor eax, ebx

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotatelefti:    
    rol eax, 1
    sub ebx, 1
    jnz rotatelefti

    add eax, dword[b] 

    push eax

    push esi                        ;return adress
    ret