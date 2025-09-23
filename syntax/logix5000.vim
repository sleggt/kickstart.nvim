" Vim syntax file
" Language:	logix5000
" Version: 0.0
" Last Change:
" Maintainer:  Marco Slegt
" Previous Maintainer:	

" Contributors: 

" nog lang niet klaar 

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


syn case ignore
syn sync lines=250

syn keyword l5kComponenent      CONTROLLER      END_CONTROLLER
syn keyword l5kComponenent      DATATYPE        END_DATATYPE
syn keyword l5kComponenent      MODULE  END_MODULE
syn keyword l5kComponenent      ADD_ON_INSTRUCTION_DEFINITION   END_ADD_ON_INSTRUCTION_DEFINITION
syn keyword l5kComponenent      TAG     END_TAG
syn keyword l5kComponenent      PROGRAM END_PROGRAM
syn keyword l5kComponenent      ROUTINE END_ROUTINE
syn keyword l5kComponenent      FBD_ROUTINE     END_FBD_ROUTINE
syn keyword l5kComponenent      SFC_ROUTINE     END_SFC_ROUTINE
syn keyword l5kComponenent      ST_ROUTINE      END_ST_ROUTINE
syn keyword l5kComponenent      TASK    END_TASK
syn keyword l5kComponenent      PARAMETER_CONNECTION    END_PARAMETER_CONNECTION
syn keyword l5kComponenent      TREND   END_TREND
syn keyword l5kComponenent      WATCH_LIST      END_WATCH_LIST
syn keyword l5kComponenent      CONFIG  END_CONFIG
syn keyword l5kComponenent      PARAMETERS END_PARAMETERS
syn keyword l5kComponenent      LOCAL_TAGS END_LOCAL_TAGS
syn keyword l5kComponenent      SHEET
syn keyword l5kComponenent      ADD_ON_INSTRUCTION      END_ADD_ON_INSTRUCTION
syn keyword l5kComponenent      IREF END_IREF
syn keyword l5kComponenent      OREF END_OREF
syn keyword l5kComponenent      CONNECTION END_CONNECTION
syn keyword l5kComponenent      WIRE END_WIRE
syn keyword l5kComponenent      PIDE_BLOCK END_PIDE_BLOCK
syn keyword l5kComponenent      SHEET END_SHEET
syn keyword l5kComponenent      PEN END_PEN
syn keyword l5kComponenent      D2SD_BLOCK END_D2SD_BLOCK
syn keyword l5kComponenent      QUICK_WATCH END_QUICK_WATCH
syn keyword l5kComponenent      WATCH_TAG
" toegevoegd voor SIEMENS SCL structured text
syn keyword l5kComponenent      BEGIN
syn keyword l5kComponenent      ORGANIZATION_BLOCK END_ORGANIZATION_BLOCK
syn keyword l5kComponenent      FUNCTION_BLOCK END_FUNCTION_BLOCK
syn keyword l5kComponenent      FUNCTION END_FUNCTION
syn keyword l5kComponenent      VAR VAR_INPUT VAR_OUTPUT VAR_IN_OUT VAR_TEMP END_VAR STRUCT END_STRUCT

syn keyword l5kTodo contained	TODO FIXME XXX DEBUG NOTE

syn region  l5kString           start=+"+  end=+"+  

syn match   l5kIdentifier		"\<[a-zA-Z_][a-zA-Z0-9_]*\>"
" ST_ROUTINE regels starten met '
syn match   l5kLineStart      "^[ \t]*'"
" LAD ROUTINE regels starten met '
syn match   l5kLineStart      "^[ \t]*\(N:\|RC:\)"

syn match   l5kSymbolOperator      "[+\-/*=]"
syn match   l5kSymbolOperator      "[<>]=\="
syn match   l5kSymbolOperator      "<>"
syn match   l5kSymbolOperator      ":="
syn match   l5kSymbolOperator      "[()\]\[]"
syn match   l5kSymbolOperator      "\.\."
syn match   l5kSymbolOperator       "[\^.]"
" syn match   l5kMatrixDelimiter	"[][]"
"if you prefer you can highlight the range
"syn match  l5kMatrixDelimiter	"[\d\+\.\.\d\+]"

syn match  l5kNumber		"\<\d\+\>"
syn match  l5kFloat		"\<\d\+\.\d\+\>"
" real formaat 0.0000000e+000
syn match  l5kFloat		"\<\d\+\.\d\+[eE][-+]\d\+\>"
" Hex formaat 16#0000_0000 (mogelijk ook octaal als in 8#0000_0000)
syn match  l5kHexNumber	        "\<[0-9]\+#[0-9a-fA-F]\+[0-9a-fA-F_]\+\>"


syn region l5kComment	start="(\*\|/\*"  end="\*)\|\*/" contains=l5kTodo
syn region l5kComment   start="//" end="$" contains=l5kTodo

  " array functions
  syn keyword l5kFunction	pack unpack

  " memory function
  syn keyword l5kFunction	Dispose New

  " math functions
  syn keyword l5kFunction	Abs Arctan Cos Exp Ln Sin Sqr Sqrt

  " file functions
  syn keyword l5kFunction	Eof Eoln Write Writeln
  syn keyword l5kPredefined	Input Output

  " ordinal functions
  syn keyword l5kFunction	Odd Pred Succ

  " transfert functions
  syn keyword l5kFunction	Chr Ord Round Trunc


" Ladder instructions TODO groot aantal toevoegen (zie page 147
syn keyword l5kInstruction      ABL ABS ACB ACL ACS ADD AFI AHL ALMA ALMD AND ARD ARL ASN ATN AVC AVE
syn keyword l5kInstruction      AWA AWT BRK BSL BSR BTD CBCM CBIM CBSSM CLR CMP CONCAT COP COS CPM CPS
syn keyword l5kInstruction      CPT CROUT CSM CTD CTU DCM DCS DCSRT DCST DCSTM DCSTL DDT DEG DELETE DIN
syn keyword l5kInstruction      DIV DTOS DTR ENPEN EOT EPMS EQU ESTOP EVENT FAL FBC FFL FFU FIND FLL FOR
syn keyword l5kInstruction      FPMS FRD FSBM FSC GEQ GRT GSV INSERT IOT JMP JSR JXR LBL LC LEQ LES LFL LFU
syn keyword l5kInstruction      LIM LN LOG LOWER MAAT MAFR MAG MAH MAHD MAJ MAM MAOC MAPC MAR MAS MASD MASR MATC
syn keyword l5kInstruction      MAW MCCD MCCM MCCP MCLM MCD MCR MCS MCSD MCSR MCSV MCT MCTP MDF MDO MDOC MDR MDW
syn keyword l5kInstruction      MEQ MGS MGSD MGSP MGSR MID MMVC MOD MOV MRAT MRHD MRP MSF MSG MSO MUL MVC MVM NEG
syn keyword l5kInstruction      NEQ NOP NOT ONS OR OSF OSR OTE OTL OTU PATT PCLF PCMD PDET PFL PID POVR PPD PRNP
syn keyword l5kInstruction      PSC PXRQ RAD RES RET RIN ROUT RTO RTOS SBR SFP SFR SIN SIZE SMAT SQI SQL SQO SQR
syn keyword l5kInstruction      SRT SSV STD STOD STOR SUB SWPB TAN THRS THRSE TND TOD TOF TON TRN TSAM TSSM UID
syn keyword l5kInstruction      UIE UPPER XIC XIO XOR XPY

" Structured text
syn keyword l5kStKeyword        IF THEN ELSE CASE FOR DO WHILE DO REPEAT UNTIL EXIT
syn keyword l5kStKeyword        END_IF END_CASE END_FOR END_WHILE END_REPEAT
syn keyword l5kStKeyword        TRUE FALSE
syn keyword l5kInstruction      ABL ABS ACB ACL ACOS ADD AHL ALM ALMA ALMD AND ARD ARL ASIN
syn keyword l5kInstruction      ATAN AWA AWT BAND BNOT BOR BTDT
syn keyword l5kInstruction      BXOR CASE OF CLR CONCAT COP COS CPS CTUD D2SD D3SD DEDT
syn keyword l5kInstruction      DEG DELETE DERV DFF DIV DTOS EOT EQU ESEL EVENT FGEN FIND
syn keyword l5kInstruction      GEQ GRT GSV HLL HPF INSERT INTG
syn keyword l5kInstruction      IOT JKFF JSR LDL2 LDLG LEQ LES LN LOG LOWER LPF MAAT MAFR MAG MAH
syn keyword l5kInstruction      MAHD MAJ MAM MAOC MAPC MAR MAS MASD MASR MATC MAVE MAW MAXC MCCD
syn keyword l5kInstruction      MCCM MCCP MCD MCLM MCS MCSD MCSR MCSV MCT MCTP MDF
syn keyword l5kInstruction      MDO MDOC MDR MDW MEQ MGS MGSD MGSP MGSR MID MINC MOD MRAT MRHD
syn keyword l5kInstruction      MRP MSF MSG MSO MUL MVMT NEG NEQ NOT OR OSFI OSRI OTE OTL OTU PATT
syn keyword l5kInstruction      PCLF PCMD PDET PFL PI PID PIDE PMUL POSP POVR PPD PRNP PSC PXRQ RAD
syn keyword l5kInstruction      RESD RET RLIM RMPS RTOR RTOS SBR SCRV SETD SFP SFR SIN
syn keyword l5kInstruction      SIZE SNEG SOC SQRT SRT SRTP SSUM SSV STOD STOR SUB SWPB TAN TOFR TONR
syn keyword l5kInstruction      TOT TRUNC UID UIE UPDN UPPER XIC XIO XOR XPY

syn keyword l5kOperator	        OR AND
syn keyword l5kType	        BOOL BIT SINT INT DINT REAL ARRAY STRING CHAR

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_l5k_syn_inits")
  if version < 508
    let did_l5k_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink l5kComponenent         Statement
  HiLink l5kTodo		Todo
  HiLink l5kOperator		Operator
  HiLink l5kSymbolOperator	l5kOperator
  HiLink l5kLineStart           l5kOperator
  HiLink l5kInstruction         Function
  HiLink l5kStKeyword           Statement  " was Identifier, maar die herkennen we niet

  HiLink l5kNumber		Number
  HiLink l5kHexNumber		l5kNumber

  HiLink l5kString		String

  HiLink l5kComment		Comment
  HiLink l5kFloat		Float
  HiLink l5kFunction		Function
  HiLink l5kMatrixDelimiter	Identifier
  HiLink l5kPreProc		PreProc
  HiLink l5kType		Type

  delcommand HiLink
endif


let b:current_syntax = "logix5000"

" vim: ts=8 sw=2
