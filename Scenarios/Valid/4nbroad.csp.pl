:- dynamic parserVersionNum/1, parserVersionStr/1, parseResult/5.
:- dynamic module/4.
'parserVersionStr'('0.5.0.0').
'parseResult'('ok','',0,0,0).
module('src_span'(1,1,15,204,0,1127),['PatBind'('src_span'(1,1,1,74,0,73),'VarPat'('src_span'(1,1,1,2,0,1),'UniqueIdent'('src_span'(1,1,1,2,0,1),'P')) , 'Fun2'('no_loc_info_available','BuiltIn'('src_span'(1,54,1,57,53,3),'F_IntChoice'(U1)) , 'Parens'('src_span'(1,5,1,53,4,48),'PrefixExp'('src_span'(1,7,1,51,6,44),'Var'('src_span'(1,7,1,14,6,7),'UniqueIdent'('src_span'(1,7,1,14,6,7),'sense_p')) , [] , 'PrefixExp'('src_span'(1,18,1,51,17,33),'Var'('src_span'(1,18,1,29,17,11),'UniqueIdent'('src_span'(1,18,1,29,17,11),'calculate_p')) , [] , 'PrefixExp'('src_span'(1,33,1,51,32,18),'Var'('src_span'(1,33,1,46,32,13),'UniqueIdent'('src_span'(1,33,1,46,32,13),'communicate_p')) , [] , 'Var'('src_span'(1,50,1,51,49,1),'UniqueIdent'('src_span'(1,50,1,51,49,1),'P')))))) , 'Parens'('src_span'(1,58,1,74,57,16),'PrefixExp'('src_span'(1,60,1,72,59,12),'Var'('src_span'(1,60,1,67,59,7),'UniqueIdent'('src_span'(1,60,1,67,59,7),'sleep_p')) , [] , 'Var'('src_span'(1,71,1,72,70,1),'UniqueIdent'('src_span'(1,71,1,72,70,1),'P')))))),'PatBind'('src_span'(2,1,2,74,74,73),'VarPat'('src_span'(2,1,2,2,74,1),'UniqueIdent'('src_span'(2,1,2,2,74,1),'Q')) , 'Fun2'('no_loc_info_available','BuiltIn'('src_span'(2,54,2,57,127,3),'F_IntChoice'(U1)) , 'Parens'('src_span'(2,5,2,53,78,48),'PrefixExp'('src_span'(2,7,2,51,80,44),'Var'('src_span'(2,7,2,14,80,7),'UniqueIdent'('src_span'(2,7,2,14,80,7),'sense_q')) , [] , 'PrefixExp'('src_span'(2,18,2,51,91,33),'Var'('src_span'(2,18,2,29,91,11),'UniqueIdent'('src_span'(2,18,2,29,91,11),'calculate_q')) , [] , 'PrefixExp'('src_span'(2,33,2,51,106,18),'Var'('src_span'(2,33,2,46,106,13),'UniqueIdent'('src_span'(2,33,2,46,106,13),'communicate_q')) , [] , 'Var'('src_span'(2,50,2,51,123,1),'UniqueIdent'('src_span'(2,50,2,51,123,1),'Q')))))) , 'Parens'('src_span'(2,58,2,74,131,16),'PrefixExp'('src_span'(2,60,2,72,133,12),'Var'('src_span'(2,60,2,67,133,7),'UniqueIdent'('src_span'(2,60,2,67,133,7),'sleep_q')) , [] , 'Var'('src_span'(2,71,2,72,144,1),'UniqueIdent'('src_span'(2,71,2,72,144,1),'Q')))))),'PatBind'('src_span'(3,1,3,74,148,73),'VarPat'('src_span'(3,1,3,2,148,1),'UniqueIdent'('src_span'(3,1,3,2,148,1),'R')) , 'Fun2'('no_loc_info_available','BuiltIn'('src_span'(3,54,3,57,201,3),'F_IntChoice'(U1)) , 'Parens'('src_span'(3,5,3,53,152,48),'PrefixExp'('src_span'(3,7,3,51,154,44),'Var'('src_span'(3,7,3,14,154,7),'UniqueIdent'('src_span'(3,7,3,14,154,7),'sense_r')) , [] , 'PrefixExp'('src_span'(3,18,3,51,165,33),'Var'('src_span'(3,18,3,29,165,11),'UniqueIdent'('src_span'(3,18,3,29,165,11),'calculate_r')) , [] , 'PrefixExp'('src_span'(3,33,3,51,180,18),'Var'('src_span'(3,33,3,46,180,13),'UniqueIdent'('src_span'(3,33,3,46,180,13),'communicate_r')) , [] , 'Var'('src_span'(3,50,3,51,197,1),'UniqueIdent'('src_span'(3,50,3,51,197,1),'R')))))) , 'Parens'('src_span'(3,58,3,74,205,16),'PrefixExp'('src_span'(3,60,3,72,207,12),'Var'('src_span'(3,60,3,67,207,7),'UniqueIdent'('src_span'(3,60,3,67,207,7),'sleep_r')) , [] , 'Var'('src_span'(3,71,3,72,218,1),'UniqueIdent'('src_span'(3,71,3,72,218,1),'R')))))),'PatBind'('src_span'(4,1,4,74,222,73),'VarPat'('src_span'(4,1,4,2,222,1),'UniqueIdent'('src_span'(4,1,4,2,222,1),'S')) , 'Fun2'('no_loc_info_available','BuiltIn'('src_span'(4,54,4,57,275,3),'F_IntChoice'(U1)) , 'Parens'('src_span'(4,5,4,53,226,48),'PrefixExp'('src_span'(4,7,4,51,228,44),'Var'('src_span'(4,7,4,14,228,7),'UniqueIdent'('src_span'(4,7,4,14,228,7),'sense_s')) , [] , 'PrefixExp'('src_span'(4,18,4,51,239,33),'Var'('src_span'(4,18,4,29,239,11),'UniqueIdent'('src_span'(4,18,4,29,239,11),'calculate_s')) , [] , 'PrefixExp'('src_span'(4,33,4,51,254,18),'Var'('src_span'(4,33,4,46,254,13),'UniqueIdent'('src_span'(4,33,4,46,254,13),'communicate_s')) , [] , 'Var'('src_span'(4,50,4,51,271,1),'UniqueIdent'('src_span'(4,50,4,51,271,1),'S')))))) , 'Parens'('src_span'(4,58,4,74,279,16),'PrefixExp'('src_span'(4,60,4,72,281,12),'Var'('src_span'(4,60,4,67,281,7),'UniqueIdent'('src_span'(4,60,4,67,281,7),'sleep_s')) , [] , 'Var'('src_span'(4,71,4,72,292,1),'UniqueIdent'('src_span'(4,71,4,72,292,1),'S')))))),'PatBind'('src_span'(6,1,6,97,297,96),'VarPat'('src_span'(6,1,6,16,297,15),'UniqueIdent'('src_span'(6,1,6,16,297,15),'CHP_communicate')) , 'PrefixExp'('src_span'(6,19,6,97,315,78),'Var'('src_span'(6,19,6,32,315,13),'UniqueIdent'('src_span'(6,19,6,32,315,13),'communicate_p')) , [] , 'Parens'('src_span'(6,36,6,97,332,61),'Fun2'('no_loc_info_available','BuiltIn'('src_span'(6,73,6,75,369,2),'F_ExtChoice'(U1)) , 'Parens'('src_span'(6,38,6,72,334,34),'PrefixExp'('src_span'(6,40,6,70,336,30),'Var'('src_span'(6,40,6,51,336,11),'UniqueIdent'('src_span'(6,40,6,51,336,11),'communicate')) , [] , 'Var'('src_span'(6,55,6,70,351,15),'UniqueIdent'('src_span'(6,55,6,70,351,15),'CHP_communicate')))) , 'Parens'('src_span'(6,76,6,95,372,19),'Var'('src_span'(6,78,6,93,374,15),'UniqueIdent'('src_span'(6,78,6,93,374,15),'CHP_communicate'))))))),'PatBind'('src_span'(7,1,7,97,394,96),'VarPat'('src_span'(7,1,7,16,394,15),'UniqueIdent'('src_span'(7,1,7,16,394,15),'CHQ_communicate')) , 'PrefixExp'('src_span'(7,19,7,97,412,78),'Var'('src_span'(7,19,7,30,412,11),'UniqueIdent'('src_span'(7,19,7,30,412,11),'communicate')) , [] , 'Parens'('src_span'(7,34,7,97,427,63),'Fun2'('no_loc_info_available','BuiltIn'('src_span'(7,73,7,75,466,2),'F_ExtChoice'(U1)) , 'Parens'('src_span'(7,36,7,72,429,36),'PrefixExp'('src_span'(7,38,7,70,431,32),'Var'('src_span'(7,38,7,51,431,13),'UniqueIdent'('src_span'(7,38,7,51,431,13),'communicate_q')) , [] , 'Var'('src_span'(7,55,7,70,448,15),'UniqueIdent'('src_span'(7,55,7,70,448,15),'CHQ_communicate')))) , 'Parens'('src_span'(7,76,7,95,469,19),'Var'('src_span'(7,78,7,93,471,15),'UniqueIdent'('src_span'(7,78,7,93,471,15),'CHQ_communicate'))))))),'PatBind'('src_span'(8,1,8,97,491,96),'VarPat'('src_span'(8,1,8,16,491,15),'UniqueIdent'('src_span'(8,1,8,16,491,15),'CHR_communicate')) , 'PrefixExp'('src_span'(8,19,8,97,509,78),'Var'('src_span'(8,19,8,30,509,11),'UniqueIdent'('src_span'(8,19,8,30,509,11),'communicate')) , [] , 'Parens'('src_span'(8,34,8,97,524,63),'Fun2'('no_loc_info_available','BuiltIn'('src_span'(8,73,8,75,563,2),'F_ExtChoice'(U1)) , 'Parens'('src_span'(8,36,8,72,526,36),'PrefixExp'('src_span'(8,38,8,70,528,32),'Var'('src_span'(8,38,8,51,528,13),'UniqueIdent'('src_span'(8,38,8,51,528,13),'communicate_r')) , [] , 'Var'('src_span'(8,55,8,70,545,15),'UniqueIdent'('src_span'(8,55,8,70,545,15),'CHR_communicate')))) , 'Parens'('src_span'(8,76,8,95,566,19),'Var'('src_span'(8,78,8,93,568,15),'UniqueIdent'('src_span'(8,78,8,93,568,15),'CHR_communicate'))))))),'PatBind'('src_span'(9,1,9,97,588,96),'VarPat'('src_span'(9,1,9,16,588,15),'UniqueIdent'('src_span'(9,1,9,16,588,15),'CHS_communicate')) , 'PrefixExp'('src_span'(9,19,9,97,606,78),'Var'('src_span'(9,19,9,30,606,11),'UniqueIdent'('src_span'(9,19,9,30,606,11),'communicate')) , [] , 'Parens'('src_span'(9,34,9,97,621,63),'Fun2'('no_loc_info_available','BuiltIn'('src_span'(9,73,9,75,660,2),'F_ExtChoice'(U1)) , 'Parens'('src_span'(9,36,9,72,623,36),'PrefixExp'('src_span'(9,38,9,70,625,32),'Var'('src_span'(9,38,9,51,625,13),'UniqueIdent'('src_span'(9,38,9,51,625,13),'communicate_s')) , [] , 'Var'('src_span'(9,55,9,70,642,15),'UniqueIdent'('src_span'(9,55,9,70,642,15),'CHS_communicate')))) , 'Parens'('src_span'(9,76,9,95,663,19),'Var'('src_span'(9,78,9,93,665,15),'UniqueIdent'('src_span'(9,78,9,93,665,15),'CHS_communicate'))))))),'PatBind'('src_span'(11,1,11,225,686,224),'VarPat'('src_span'(11,1,11,4,686,3),'UniqueIdent'('src_span'(11,1,11,4,686,3),'WSN')) , 'ProcSharing'('src_span'(11,31,11,97,716,66),'SetExp'('src_span'(11,34,11,94,719,60),'RangeEnum'('src_span'(11,35,11,93,720,58),['Var'('src_span'(11,35,11,48,720,13),'UniqueIdent'('src_span'(11,35,11,48,720,13),'communicate_p')),'Var'('src_span'(11,50,11,63,735,13),'UniqueIdent'('src_span'(11,50,11,63,735,13),'communicate_q')),'Var'('src_span'(11,65,11,78,750,13),'UniqueIdent'('src_span'(11,65,11,78,750,13),'communicate_r')),'Var'('src_span'(11,80,11,93,765,13),'UniqueIdent'('src_span'(11,80,11,93,765,13),'communicate_s'))]) , none) , 'Parens'('src_span'(11,7,11,30,692,23),'Fun2'('no_loc_info_available','BuiltIn'('src_span'(11,23,11,26,708,3),'F_Interleave'(U1)) , 'Fun2'('no_loc_info_available','BuiltIn'('src_span'(11,17,11,20,702,3),'F_Interleave'(U1)) , 'Fun2'('no_loc_info_available','BuiltIn'('src_span'(11,11,11,14,696,3),'F_Interleave'(U1)) , 'Var'('src_span'(11,9,11,10,694,1),'UniqueIdent'('src_span'(11,9,11,10,694,1),'P')) , 'Var'('src_span'(11,15,11,16,700,1),'UniqueIdent'('src_span'(11,15,11,16,700,1),'Q'))) , 'Var'('src_span'(11,21,11,22,706,1),'UniqueIdent'('src_span'(11,21,11,22,706,1),'R'))) , 'Var'('src_span'(11,27,11,28,712,1),'UniqueIdent'('src_span'(11,27,11,28,712,1),'S')))) , 'Parens'('src_span'(11,98,11,225,783,127),'ProcSharing'('src_span'(11,188,11,207,873,19),'SetExp'('src_span'(11,191,11,204,876,13),'RangeEnum'('src_span'(11,192,11,203,877,11),['Var'('src_span'(11,192,11,203,877,11),'UniqueIdent'('src_span'(11,192,11,203,877,11),'communicate'))]) , none) , 'ProcSharing'('src_span'(11,152,11,171,837,19),'SetExp'('src_span'(11,155,11,168,840,13),'RangeEnum'('src_span'(11,156,11,167,841,11),['Var'('src_span'(11,156,11,167,841,11),'UniqueIdent'('src_span'(11,156,11,167,841,11),'communicate'))]) , none) , 'ProcSharing'('src_span'(11,116,11,135,801,19),'SetExp'('src_span'(11,119,11,132,804,13),'RangeEnum'('src_span'(11,120,11,131,805,11),['Var'('src_span'(11,120,11,131,805,11),'UniqueIdent'('src_span'(11,120,11,131,805,11),'communicate'))]) , none) , 'Var'('src_span'(11,100,11,115,785,15),'UniqueIdent'('src_span'(11,100,11,115,785,15),'CHP_communicate')) , 'Var'('src_span'(11,136,11,151,821,15),'UniqueIdent'('src_span'(11,136,11,151,821,15),'CHQ_communicate'))) , 'Var'('src_span'(11,172,11,187,857,15),'UniqueIdent'('src_span'(11,172,11,187,857,15),'CHR_communicate'))) , 'Var'('src_span'(11,208,11,223,893,15),'UniqueIdent'('src_span'(11,208,11,223,893,15),'CHS_communicate')))))),'PatBind'('src_span'(13,1,13,11,912,10),'VarPat'('src_span'(13,1,13,5,912,4),'UniqueIdent'('src_span'(13,1,13,5,912,4),'MAIN')) , 'Var'('src_span'(13,8,13,11,919,3),'UniqueIdent'('src_span'(13,8,13,11,919,3),'WSN'))),'Channel'('src_span'(15,1,15,204,924,203),['UniqueIdent'('src_span'(15,9,15,16,932,7),'sense_p'),'UniqueIdent'('src_span'(15,18,15,29,941,11),'calculate_p'),'UniqueIdent'('src_span'(15,31,15,44,954,13),'communicate_p'),'UniqueIdent'('src_span'(15,46,15,53,969,7),'sleep_p'),'UniqueIdent'('src_span'(15,55,15,62,978,7),'sense_q'),'UniqueIdent'('src_span'(15,64,15,75,987,11),'calculate_q'),'UniqueIdent'('src_span'(15,77,15,90,1000,13),'communicate_q'),'UniqueIdent'('src_span'(15,92,15,99,1015,7),'sleep_q'),'UniqueIdent'('src_span'(15,101,15,108,1024,7),'sense_r'),'UniqueIdent'('src_span'(15,110,15,121,1033,11),'calculate_r'),'UniqueIdent'('src_span'(15,123,15,136,1046,13),'communicate_r'),'UniqueIdent'('src_span'(15,138,15,145,1061,7),'sleep_r'),'UniqueIdent'('src_span'(15,147,15,154,1070,7),'sense_s'),'UniqueIdent'('src_span'(15,156,15,167,1079,11),'calculate_s'),'UniqueIdent'('src_span'(15,169,15,182,1092,13),'communicate_s'),'UniqueIdent'('src_span'(15,184,15,191,1107,7),'sleep_s'),'UniqueIdent'('src_span'(15,193,15,204,1116,11),'communicate')] , none)],[],[])
:- dynamic channel/2, bindval/3, agent/3.
:- dynamic agent_curry/3, symbol/4.
:- dynamic dataTypeDef/2, subTypeDef/2, nameType/2.
:- dynamic cspTransparent/1.
:- dynamic cspPrint/1.
:- dynamic pragma/1.
:- dynamic comment/2.
:- dynamic assertBool/1, assertRef/5, assertTauPrio/6.
:- dynamic assertModelCheckExt/4, assertModelCheck/3.
'parserVersionNum'([0,9,1,1]).
'parserVersionStr'('CSPM-Frontent-0.9.1.1').
'bindval'('P','|~|'('prefix'('src_span'(1,7,1,14,6,7),[],'sense_p','prefix'('src_span'(1,18,1,29,17,11),[],'calculate_p','prefix'('src_span'(1,33,1,46,32,13),[],'communicate_p','val_of'('P','src_span'(1,50,1,51,49,1)),'src_span'(1,47,1,49,45,18)),'src_span'(1,30,1,32,28,33)),'src_span'(1,15,1,17,13,44)),'prefix'('src_span'(1,60,1,67,59,7),[],'sleep_p','val_of'('P','src_span'(1,71,1,72,70,1)),'src_span'(1,68,1,70,66,12)),'src_span_operator'('no_loc_info_available','src_span'(1,54,1,57,53,3))),'src_span'(1,1,1,74,0,73)).
'bindval'('Q','|~|'('prefix'('src_span'(2,7,2,14,80,7),[],'sense_q','prefix'('src_span'(2,18,2,29,91,11),[],'calculate_q','prefix'('src_span'(2,33,2,46,106,13),[],'communicate_q','val_of'('Q','src_span'(2,50,2,51,123,1)),'src_span'(2,47,2,49,119,18)),'src_span'(2,30,2,32,102,33)),'src_span'(2,15,2,17,87,44)),'prefix'('src_span'(2,60,2,67,133,7),[],'sleep_q','val_of'('Q','src_span'(2,71,2,72,144,1)),'src_span'(2,68,2,70,140,12)),'src_span_operator'('no_loc_info_available','src_span'(2,54,2,57,127,3))),'src_span'(2,1,2,74,74,73)).
'bindval'('R','|~|'('prefix'('src_span'(3,7,3,14,154,7),[],'sense_r','prefix'('src_span'(3,18,3,29,165,11),[],'calculate_r','prefix'('src_span'(3,33,3,46,180,13),[],'communicate_r','val_of'('R','src_span'(3,50,3,51,197,1)),'src_span'(3,47,3,49,193,18)),'src_span'(3,30,3,32,176,33)),'src_span'(3,15,3,17,161,44)),'prefix'('src_span'(3,60,3,67,207,7),[],'sleep_r','val_of'('R','src_span'(3,71,3,72,218,1)),'src_span'(3,68,3,70,214,12)),'src_span_operator'('no_loc_info_available','src_span'(3,54,3,57,201,3))),'src_span'(3,1,3,74,148,73)).
'bindval'('S','|~|'('prefix'('src_span'(4,7,4,14,228,7),[],'sense_s','prefix'('src_span'(4,18,4,29,239,11),[],'calculate_s','prefix'('src_span'(4,33,4,46,254,13),[],'communicate_s','val_of'('S','src_span'(4,50,4,51,271,1)),'src_span'(4,47,4,49,267,18)),'src_span'(4,30,4,32,250,33)),'src_span'(4,15,4,17,235,44)),'prefix'('src_span'(4,60,4,67,281,7),[],'sleep_s','val_of'('S','src_span'(4,71,4,72,292,1)),'src_span'(4,68,4,70,288,12)),'src_span_operator'('no_loc_info_available','src_span'(4,54,4,57,275,3))),'src_span'(4,1,4,74,222,73)).
'bindval'('CHP_communicate','prefix'('src_span'(6,19,6,32,315,13),[],'communicate_p','[]'('prefix'('src_span'(6,40,6,51,336,11),[],'communicate','val_of'('CHP_communicate','src_span'(6,55,6,70,351,15)),'src_span'(6,52,6,54,347,30)),'val_of'('CHP_communicate','src_span'(6,78,6,93,374,15)),'src_span_operator'('no_loc_info_available','src_span'(6,73,6,75,369,2))),'src_span'(6,33,6,35,328,78)),'src_span'(6,1,6,97,297,96)).
'bindval'('CHQ_communicate','prefix'('src_span'(7,19,7,30,412,11),[],'communicate','[]'('prefix'('src_span'(7,38,7,51,431,13),[],'communicate_q','val_of'('CHQ_communicate','src_span'(7,55,7,70,448,15)),'src_span'(7,52,7,54,444,32)),'val_of'('CHQ_communicate','src_span'(7,78,7,93,471,15)),'src_span_operator'('no_loc_info_available','src_span'(7,73,7,75,466,2))),'src_span'(7,31,7,33,423,78)),'src_span'(7,1,7,97,394,96)).
'bindval'('CHR_communicate','prefix'('src_span'(8,19,8,30,509,11),[],'communicate','[]'('prefix'('src_span'(8,38,8,51,528,13),[],'communicate_r','val_of'('CHR_communicate','src_span'(8,55,8,70,545,15)),'src_span'(8,52,8,54,541,32)),'val_of'('CHR_communicate','src_span'(8,78,8,93,568,15)),'src_span_operator'('no_loc_info_available','src_span'(8,73,8,75,563,2))),'src_span'(8,31,8,33,520,78)),'src_span'(8,1,8,97,491,96)).
'bindval'('CHS_communicate','prefix'('src_span'(9,19,9,30,606,11),[],'communicate','[]'('prefix'('src_span'(9,38,9,51,625,13),[],'communicate_s','val_of'('CHS_communicate','src_span'(9,55,9,70,642,15)),'src_span'(9,52,9,54,638,32)),'val_of'('CHS_communicate','src_span'(9,78,9,93,665,15)),'src_span_operator'('no_loc_info_available','src_span'(9,73,9,75,660,2))),'src_span'(9,31,9,33,617,78)),'src_span'(9,1,9,97,588,96)).
'bindval'('WSN','sharing'('setExp'('rangeEnum'(['communicate_p','communicate_q','communicate_r','communicate_s'])),'|||'('|||'('|||'('val_of'('P','src_span'(11,9,11,10,694,1)),'val_of'('Q','src_span'(11,15,11,16,700,1)),'src_span_operator'('no_loc_info_available','src_span'(11,11,11,14,696,3))),'val_of'('R','src_span'(11,21,11,22,706,1)),'src_span_operator'('no_loc_info_available','src_span'(11,17,11,20,702,3))),'val_of'('S','src_span'(11,27,11,28,712,1)),'src_span_operator'('no_loc_info_available','src_span'(11,23,11,26,708,3))),'sharing'('setExp'('rangeEnum'(['communicate'])),'sharing'('setExp'('rangeEnum'(['communicate'])),'sharing'('setExp'('rangeEnum'(['communicate'])),'val_of'('CHP_communicate','src_span'(11,100,11,115,785,15)),'val_of'('CHQ_communicate','src_span'(11,136,11,151,821,15)),'src_span'(11,116,11,135,801,19)),'val_of'('CHR_communicate','src_span'(11,172,11,187,857,15)),'src_span'(11,152,11,171,837,19)),'val_of'('CHS_communicate','src_span'(11,208,11,223,893,15)),'src_span'(11,188,11,207,873,19)),'src_span'(11,31,11,97,716,66)),'src_span'(11,1,11,225,686,224)).
'bindval'('MAIN','val_of'('WSN','src_span'(13,8,13,11,919,3)),'src_span'(13,1,13,11,912,10)).
'channel'('sense_p','type'('dotUnitType')).
'channel'('calculate_p','type'('dotUnitType')).
'channel'('communicate_p','type'('dotUnitType')).
'channel'('sleep_p','type'('dotUnitType')).
'channel'('sense_q','type'('dotUnitType')).
'channel'('calculate_q','type'('dotUnitType')).
'channel'('communicate_q','type'('dotUnitType')).
'channel'('sleep_q','type'('dotUnitType')).
'channel'('sense_r','type'('dotUnitType')).
'channel'('calculate_r','type'('dotUnitType')).
'channel'('communicate_r','type'('dotUnitType')).
'channel'('sleep_r','type'('dotUnitType')).
'channel'('sense_s','type'('dotUnitType')).
'channel'('calculate_s','type'('dotUnitType')).
'channel'('communicate_s','type'('dotUnitType')).
'channel'('sleep_s','type'('dotUnitType')).
'channel'('communicate','type'('dotUnitType')).
'symbol'('seq','seq','no_loc_info_available','BuiltIn primitive').
'symbol'('P','P','src_span'(1,1,1,2,0,1),'Ident (Groundrep.)').
'symbol'('Q','Q','src_span'(2,1,2,2,74,1),'Ident (Groundrep.)').
'symbol'('R','R','src_span'(3,1,3,2,148,1),'Ident (Groundrep.)').
'symbol'('S','S','src_span'(4,1,4,2,222,1),'Ident (Groundrep.)').
'symbol'('CHP_communicate','CHP_communicate','src_span'(6,1,6,16,297,15),'Ident (Groundrep.)').
'symbol'('CHQ_communicate','CHQ_communicate','src_span'(7,1,7,16,394,15),'Ident (Groundrep.)').
'symbol'('CHR_communicate','CHR_communicate','src_span'(8,1,8,16,491,15),'Ident (Groundrep.)').
'symbol'('CHS_communicate','CHS_communicate','src_span'(9,1,9,16,588,15),'Ident (Groundrep.)').
'symbol'('WSN','WSN','src_span'(11,1,11,4,686,3),'Ident (Groundrep.)').
'symbol'('MAIN','MAIN','src_span'(13,1,13,5,912,4),'Ident (Groundrep.)').
'symbol'('sense_p','sense_p','src_span'(15,9,15,16,932,7),'Channel').
'symbol'('calculate_p','calculate_p','src_span'(15,18,15,29,941,11),'Channel').
'symbol'('communicate_p','communicate_p','src_span'(15,31,15,44,954,13),'Channel').
'symbol'('sleep_p','sleep_p','src_span'(15,46,15,53,969,7),'Channel').
'symbol'('sense_q','sense_q','src_span'(15,55,15,62,978,7),'Channel').
'symbol'('calculate_q','calculate_q','src_span'(15,64,15,75,987,11),'Channel').
'symbol'('communicate_q','communicate_q','src_span'(15,77,15,90,1000,13),'Channel').
'symbol'('sleep_q','sleep_q','src_span'(15,92,15,99,1015,7),'Channel').
'symbol'('sense_r','sense_r','src_span'(15,101,15,108,1024,7),'Channel').
'symbol'('calculate_r','calculate_r','src_span'(15,110,15,121,1033,11),'Channel').
'symbol'('communicate_r','communicate_r','src_span'(15,123,15,136,1046,13),'Channel').
'symbol'('sleep_r','sleep_r','src_span'(15,138,15,145,1061,7),'Channel').
'symbol'('sense_s','sense_s','src_span'(15,147,15,154,1070,7),'Channel').
'symbol'('calculate_s','calculate_s','src_span'(15,156,15,167,1079,11),'Channel').
'symbol'('communicate_s','communicate_s','src_span'(15,169,15,182,1092,13),'Channel').
'symbol'('sleep_s','sleep_s','src_span'(15,184,15,191,1107,7),'Channel').
'symbol'('communicate','communicate','src_span'(15,193,15,204,1116,11),'Channel').