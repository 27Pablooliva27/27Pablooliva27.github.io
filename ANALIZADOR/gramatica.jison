/* INICIO ANALISIS LEXICO */
%lex
%options case-insensitive
%option yylineno
%%

/* OPERADORES ARITMETICOS */
"+"     { console.log("MAS : "+ yytext); return 'TK_MAS';}
"-"     { console.log("MENOS : "+ yytext); return 'TK_MENOS';}
"/"     { console.log("DIVISION : "+ yytext); return 'TK_DIVISION';}
"*"     { console.log("MULTIPLICACION : "+ yytext); return 'TK_MULTIPLICACION';}
"%"     { console.log("MODULO : "+ yytext); return 'TK_MODULO';}

/* OPERADORES MATEMATICOS */
"pow"   { console.log("POTENCIA : "+ yytext); return 'TK_POTENCIA';}
"sqrt"  { console.log("RAIZ : "+ yytext); return 'TK_RAIZ';}
"sin"   { console.log("SENO : "+ yytext); return 'TK_SENO';}
"cos"   { console.log("COSENO : "+ yytext); return 'TK_COSENO';}
"tan"   { console.log("TANGENTE : "+ yytext); return 'TK_TANGENTE';}

/* OPERADORES RELACIONALES */
"=="    { console.log("IGUALDAD : "+ yytext); return 'TK_IGUALDAD';}
"!="    { console.log("DESIGUALDAD : "+ yytext); return 'TK_DESIGUALDAD';}
">"     { console.log("MAYOR : "+ yytext); return 'TK_MAYOR';}
"<"     { console.log("MENOR : "+ yytext); return 'TK_MENOR';}
">="    { console.log("MAYORIGUAL : "+ yytext); return 'TK_MAYORIGUAL';}
"<="    { console.log("MENORIGUAL : "+ yytext); return 'TK_MENORIGUAL';}

/* OPERADORES LOGICOS */
"&&"    { console.log("AND : "+ yytext); return 'TK_AND';}
"||"    { console.log("OR : "+ yytext); return 'TK_OR';}
"!"     { console.log("NOT : "+ yytext); return 'TK_NOT';}

/* PALABRAS RESERVADAS DEL LENGUAJES */
/* VALORES BOOLENANOS */
"true"      { console.log("TRUE : "+ yytext); return 'TK_TRUE';}
"false"     { console.log("FALSE : "+ yytext); return 'TK_FALSE';}

/* SIMBOLOS DEL LENGUAJES */
"("     { console.log("LPARAN : "+ yytext); return 'TK_LPARAN';}
")"     { console.log("RPARN : "+ yytext); return 'TK_RPARAN';}
"["     { console.log("LCOR : "+ yytext); return 'TK_LCOR';}
"]"     { console.log("RCOR : "+ yytext); return 'TK_RCOR';}
"{"     { console.log("LKEY : "+ yytext); return 'TK_LKEY';}
"}"     { console.log("RKEY : "+ yytext); return 'TK_RKEY';}
";"     { console.log("PYC : "+ yytext); return 'TK_PYC';}
","     { console.log("COMA : "+ yytext); return 'TK_COMA';}
":"     { console.log("DPOINT : "+ yytext); return 'TK_DPOINT';}
"?"     { console.log("INTERROGACION : "+ yytext); return 'TK_INTERROGACION';}
"."     { console.log("POINT : "+ yytext); return 'TK_POINT';}
"++"    { console.log("INCRE : "+ yytext); return 'TK_INCRE';}
"--"    { console.log("DECRE : "+ yytext); return 'TK_DECRE';}
"="     { console.log("IGUAL : "+ yytext); return 'TK_IGUAL';}
"#"     { console.log("COPIAR : "+ yytext); return 'TK_COPIAR';}
"&"     { console.log("CONCATENAR : "+ yytext); return 'TK_CONCATENAR';}
"^"     { console.log("REPETICION : "+ yytext); return 'TK_REPETICION';}


/* TIPO DATOS */
"null"      { console.log("NULL : "+ yytext); return 'TK_NULL';}
"int"       { console.log("INT : "+ yytext); return 'TK_INT';}
"double"    { console.log("DOUBLE : "+ yytext); return 'TK_DOUBLE';}
"boolean"   { console.log("BOOLEAN : "+ yytext); return 'TK_BOOLEAN';}
"char"      { console.log("CHAR : "+ yytext); return 'TK_CHAR';}
"String"    { console.log("STRING : "+ yytext); return 'TK_STRING';}
"struct"    { console.log("STRUCT : "+ yytext); return 'TK_STRUCT';}

/* FUNCION DE IMPRESION */
"print"     { console.log("PRINT : "+ yytext); return 'TK_PRINT';}
"println"   { console.log("PTINTLN : "+ yytext); return 'TK_PRINTLN';}

/* FUNCIONES CON ARREGLOS */
"begin"     { console.log("BEGIN : "+ yytext); return 'TK_BEGIN';}
"end"       { console.log("END : "+ yytext); return 'TK_END';}
"push"      { console.log("PUSH : "+ yytext); return 'TK_PUSH';}
"pop"       { console.log("POP : "+ yytext); return 'TK_POP';}
"length"    { console.log("LENGTH : "+ yytext); return 'TK_LENGTH';}

/* FUNCIONES CON CADENAS */
"caracterOfPosition"    { console.log("CADPOSICION : "+ yytext); return 'TK_CADPOSICION';}
"subString"             { console.log("SUBSTRING : "+ yytext); return 'TK_SUBSTRING';}
"toUppercase"           { console.log("TOUPPERCASE : "+ yytext); return 'TK_TOUPPERCASE';}
"toLowercase"           { console.log("TOLOWERCASE : "+ yytext); return 'TK_TOLOWERCASE';}

/* FUNCIONES Y METODOS */
"function"  { console.log("FUNCTION : "+ yytext); return 'TK_FUNCTION';}
"void"      { console.log("VOID : "+ yytext); return 'TK_VOID';}
"main"      { console.log("MAIN : "+ yytext); return 'TK_MAIN';}

/* FUNCIONES NATIVAS */
"parse"     { console.log("PARSE : "+ yytext); return 'TK_PARSE';}
"toInt"     { console.log("TOINT : "+ yytext); return 'TK_TOINT';}
"toDouble"  { console.log("TODOUBLE : "+ yytext); return 'TK_TODOUBLE';}
"string"    { console.log("TOSTRING : "+ yytext); return 'TK_TOSTRING';}
"typeof"    { console.log("TYPEOF : "+ yytext); return 'TK_TYPEOF';}

/* SENTENCIAS CONDICIONALES */
"if"        { console.log("IF : "+ yytext); return 'TK_IF';}
"else"      { console.log("ELSE : "+ yytext); return 'TK_ELSE';}
"elseif"    { console.log("ELSEIF : "+ yytext); return 'TK_ELSEIF';}
"switch"    { console.log("SWITCH : "+ yytext); return 'TK_SWITCH';}
"case"      { console.log("CASE : "+ yytext); return 'TK_CASE';}

/* CICLOS */
"while"     { console.log("WHILE : "+ yytext); return 'TK_WHILE';}
"do"        { console.log("DO : "+ yytext); return 'TK_DO';}
"for"       { console.log("FOR : "+ yytext); return 'TK_FOR';}
"in"        { console.log("IN : "+ yytext); return 'TK_IN';}

/* SENTENCIAS DE CONTROL */
"continue"  { console.log("CONTINUE : "+ yytext); return 'TK_CONTINUE'}
"break"     { console.log("BREAK : "+ yytext); return 'TK_BREAK';}
"default"   { console.log("DEFAULT : "+ yytext); return 'TK_DEFAULT';}
"return"   { console.log("RETURN : "+ yytext); return 'TK_RETURN';}

/* EXPRESIONES REGULARES */
\s+             /* QUITA ESPACIOS EN BLANCO */
[0-9]+                      { console.log("ENTERO : "+ yytext); return 'TK_ENTERO'}
[0-9]+("."[0-9]+)           { console.log("DECIMAL : "+ yytext); return 'TK_DECIMAL' }
[a-zñA-ZÑ_][a-zñA-ZÑ0-9]*   { console.log("IDENTIFICADOR : "+ yytext); return 'TK_IDENTIFICADOR' }
\"([^\\\n]|(\\.))*?\"       { console.log("CADENA : "+ yytext); return 'TK_CADENA' }
\'([^\\\n]|(\\.))*?\'       { console.log("CARACTER : "+ yytext); return 'TK_CARACTER' }


/* COMENTARIOS */
"//".*                              {/* SE IGNORA LOS COMENTARIOS DE UNA LINA */}
"/*"((\*+[^/*])|([^*]))*\**"*/"     {/* SE IGNORA EL COMENTARIO MULTILINEA */}  

<<EOF>>               return 'EOF'

/*.*/

/lex

/* SECCION DE IMPORTS */

%{
    

%}

/* PRECEDENCIA DE OPERADORES */
%right 'ULTIM'
%right 'TK_INTERROGACION'
%left 'TK_OR'
%left 'TK_AND'
%right 'TK_NOT'
%left 'TK_MENOR' 'TK_MAYOR' 'TK_IGUALDAD' 'TK_DESIGUALDAD' 'TK_MENORIGUAL' 'TK_MAYORIGUAL'
%left 'TK_MAS' 'TK_MENOS'
%left 'TK_MULTIPLICACION' 'TK_DIVISION'
%left 'TK_POTENCIA'
%left 'TK_MODULO'
%right 'UNARIO'

/* FIN ANALISIS LEXICO */

/* INICIO ANALISIS SINTACTICO */
%start INICIO
%%

INICIO: INSTRUCCIONES EOF {};

INSTRUCCIONES: INSTRUCCIONES INSTRUCCION    {}
    | INSTRUCCION                           {}
    ;

INSTRUCCION: DECLARACION    {}
    | ASIGNACION            {}
    | STRUCTS               {}
    | FUNCIONES             {}
    | METODOS               {}
    |
    ;

DECLARACION: TIPODATO L_VARIABLES TK_PYC                                                    {}
    | TIPODATO L_VARIABLES TK_IGUAL EXPRESSION TK_PYC                                       {}
    | TIPODATO TK_LCOR TK_RCOR TK_IDENTIFICADOR TK_IGUAL TK_LCOR L_ARREGLO TK_RCOR TK_PYC   {}
    | TIPODATO L_VARIABLES                                                                  {}
    | TIPODATO L_VARIABLES TK_IGUAL EXPRESSION                                              {}
    | TIPODATO TK_LCOR TK_RCOR TK_IDENTIFICADOR TK_IGUAL TK_LCOR L_ARREGLO TK_RCOR          {}
    ;

TIPODATO: TK_INT    {}
    | TK_DOUBLE     {}
    | TK_STRING     {}
    | TK_BOOLEAN    {}
    | TK_CHAR       {}
    ;

L_VARIABLES: L_VARIABLES TK_COMA TK_IDENTIFICADOR               {}
    | TK_IDENTIFICADOR                                          {}
    ;

L_ARREGLO: L_ARREGLO TK_COMA EXPRESSION {}
    | EXPRESSION                        {}
    ;

ASIGNACION: TK_IDENTIFICADOR TK_IGUAL EXPRESSION TK_PYC {}
    | TK_IDENTIFICADOR INCREDECRE TK_PYC                {}
    | TK_IDENTIFICADOR TK_IGUAL EXPRESSION              {}
    | TK_IDENTIFICADOR INCREDECRE                       {}
    ;

INCREDECRE: TK_INCRE    {$$ = $1;}
    | TK_DECRE          {$$ = $1;}
    ;

STRUCTS: TK_STRUCT TK_IDENTIFICADOR TK_LKEY L_ATRIBUTOS TK_RKEY TK_PYC {}
    ;

L_ATRIBUTOS: L_ATRIBUTOS ATRIBUTOS  {}
    | ATRIBUTOS                     {}
    ;

ATRIBUTOS: TIPODATO TK_IDENTIFICADOR TK_PYC {};

/* ESTO LO USE PARA PROBAR EL PRINT
FUNCIONES: TIPODATO TK_FUNCTION TK_IDENTIFICADOR TK_LPARAN TK_RPARAN TK_LKEY L_INSTRUCCION TK_RKEY          {$$ = new Objeto($2,'',@1.first_line, @1.first_column,$7,$7);}*/

FUNCIONES: TIPODATO TK_FUNCTION TK_IDENTIFICADOR TK_LPARAN TK_RPARAN TK_LKEY L_INSTRUCCION TK_RKEY          {}
    | TIPODATO TK_FUNCTION TK_IDENTIFICADOR TK_LPARAN L_PARAMETROS TK_RPARAN TK_LKEY L_INSTRUCCION TK_RKEY  {}
    | TIPODATO TK_FUNCTION TK_IDENTIFICADOR TK_LPARAN TK_RPARAN TK_LKEY TK_RKEY                             {}
    | TIPODATO TK_FUNCTION TK_IDENTIFICADOR TK_LPARAN L_PARAMETROS TK_RPARAN TK_LKEY TK_RKEY                {}
    ;

METODOS: TK_VOID TK_MAIN TK_LPARAN TK_RPARAN TK_LKEY L_INSTRUCCION TK_RKEY                      {}
    | TK_VOID TK_MAIN TK_LPARAN TK_RPARAN TK_LKEY TK_RKEY                                       {}
    | TK_VOID TK_IDENTIFICADOR TK_LPARAN TK_RPARAN TK_LKEY L_INSTRUCCION TK_RKEY                {}
    | TK_VOID TK_IDENTIFICADOR TK_LPARAN L_PARAMETROS TK_RPARAN TK_LKEY L_INSTRUCCION TK_RKEY   {}
    | TK_VOID TK_IDENTIFICADOR TK_LPARAN TK_RPARAN TK_LKEY TK_RKEY                              {}
    | TK_VOID TK_IDENTIFICADOR TK_LPARAN L_PARAMETROS TK_RPARAN TK_LKEY TK_RKEY                 {}
    ;

L_PARAMETROS: L_PARAMETROS TK_COMA TIPODATO TK_IDENTIFICADOR    {}
    | TIPODATO TK_IDENTIFICADOR                                 {}
    ;

L_INSTRUCCION: L_INSTRUCCION INST   {}
    | INST  {}
    ;

INST: IMPRIMIR          {}
    | SENTENCIA_IF      {}
    | SENTENCIA_SWITCH  {}
    | CICLO_WHILE       {}
    | CICLO_DO          {}
    | CICLO_FOR         {}
    | DECLARACION       {}
    | ASIGNACION        {}
    | LLAMAR_FUNCIONES  {}
    | STRUCTS           {}
    | FUNCIONES_NATIVAS {}
    | FUNCIONES_MATE    {}
    | FUNCIONES_ARREGLO {}
    | FUNCIONES_CADENAS {}
    | RETORNO           {}
    |
    ;

RETORNO: TK_RETURN TK_PYC         {}
    | TK_RETURN EXPRESSION TK_PYC {}    
    | TK_RETURN EXPRESSION        {}    
    | TK_RETURN                   {}
    ;

IMPRIMIR: TK_PRINT TK_LPARAN L_ARGUMENTOS TK_RPARAN TK_PYC  {}
    | TK_PRINTLN TK_LPARAN L_ARGUMENTOS TK_RPARAN TK_PYC    {}
    | TK_PRINT TK_LPARAN L_ARGUMENTOS TK_RPARAN             {}
    | TK_PRINTLN TK_LPARAN L_ARGUMENTOS TK_RPARAN           {}
    ;

L_ARGUMENTOS: L_ARGUMENTOS TK_COMA EXPRESSION    {}
    | EXPRESSION   {}
    ;

SENTENCIA_IF: TK_IF EXPRESSION TK_LKEY L_INSTRUCCION1 TK_RKEY                                 {}
    | TK_IF EXPRESSION TK_LKEY L_INSTRUCCION1 TK_RKEY TK_ELSE TK_LKEY L_INSTRUCCION1 TK_RKEY  {}
    | TK_IF EXPRESSION TK_LKEY L_INSTRUCCION1 TK_RKEY  SENTENCIA_ELSE                         {} /* POR SI VA EL ELSEIF */
    ;

SENTENCIA_ELSE: SENTENCIA_ELSE TK_ELSEIF EXPRESSION TK_LKEY L_INSTRUCCION1 TK_RKEY   {}
    | TK_ELSEIF EXPRESSION TK_LKEY L_INSTRUCCION1 TK_RKEY                            {}
    ;

SENTENCIA_SWITCH: TK_SWITCH EXPRESSION TK_LKEY L_CASES TK_RKEY  {}
    ;

L_CASES: L_CASES TK_CASE EXPRESSION TK_DPOINT L_INSTRUCCION1 TK_BREAK TK_PYC {}
    | L_CASES TK_DEFAULT TK_DPOINT L_INSTRUCCION1 TK_BREAK TK_PYC            {}
    | L_CASES TK_CASE EXPRESSION TK_DPOINT L_INSTRUCCION1                    {}
    | L_CASES TK_DEFAULT TK_DPOINT L_INSTRUCCION1                            {}
    | TK_CASE EXPRESSION TK_DPOINT L_INSTRUCCION1 TK_BREAK TK_PYC            {}
    | TK_DEFAULT TK_DPOINT L_INSTRUCCION1 TK_BREAK TK_PYC                    {}
    | TK_CASE EXPRESSION TK_DPOINT L_INSTRUCCION1                            {}
    | TK_DEFAULT TK_DPOINT L_INSTRUCCION1                                    {}
    |
    ;

BREAK_CONTINUE: TK_BREAK TK_PYC {}
    | TK_CONTINUE TK_PYC        {}
    | TK_BREAK                  {}
    | TK_CONTINUE               {}
    ;

L_INSTRUCCION1: L_INSTRUCCION1 INST1   {}
    | INST1  {}
    ;

INST1: IMPRIMIR         {}
    | DECLARACION       {}
    | ASIGNACION        {}
    | LLAMAR_FUNCIONES  {}
    | STRUCTS           {}
    | FUNCIONES_NATIVAS {}
    | FUNCIONES_MATE    {}
    | FUNCIONES_ARREGLO {}
    | FUNCIONES_CADENAS {}
    | BREAK_CONTINUE    {}
    |
    ;

CICLO_WHILE: TK_WHILE EXPRESSION TK_LKEY L_INSTRUCCION1 TK_RKEY  {}
    ;

CICLO_DO: TK_DO TK_LKEY L_INSTRUCCION1 TK_RKEY TK_WHILE EXPRESSION TK_PYC    {}
    ;
           
CICLO_FOR: TK_FOR TK_LPARAN DECLARACION EXPRESSION TK_PYC TK_IDENTIFICADOR INCREDECRE TK_RPARAN TK_LKEY L_INSTRUCCION1 TK_RKEY   {}
    | TK_FOR TK_LPARAN ASIGNACION EXPRESSION TK_PYC TK_IDENTIFICADOR INCREDECRE TK_RPARAN TK_LKEY L_INSTRUCCION1 TK_RKEY         {}
    | TK_FOR EXPRESSION TK_IN EXPRESSION TK_LKEY L_INSTRUCCION1 TK_RKEY                                                          {}
    ;

LLAMAR_FUNCIONES: TK_IDENTIFICADOR TK_LPARAN TK_RPARAN  {}
    | TK_IDENTIFICADOR TK_LPARAN L_DATOS TK_RPARAN      {}
    ;

L_DATOS: L_DATOS TK_COMA EXPRESSION {}
    | EXPRESSION                    {}
    ;

FUNCIONES_ARREGLO: ACCEDER                                              {} 
    | TK_COPIAR TK_IDENTIFICADOR                                        {}
    | TK_IDENTIFICADOR TK_POINT TK_PUSH TK_LPARAN EXPRESSION TK_RPARAN  {}
    | TK_IDENTIFICADOR TK_POINT TK_POP TK_LPARAN TK_RPARAN              {}
    | TK_IDENTIFICADOR TK_POINT TK_LENGTH TK_LPARAN TK_RPARAN           {}
    ;

ACCEDER: TK_IDENTIFICADOR TK_LCOR EXPRESSION TK_RCOR                    {}
    | TK_IDENTIFICADOR TK_LCOR EXPRESSION TK_DPOINT EXPRESSION TK_RCOR  {}
    ;

FUNCIONES_NATIVAS: TIPODATO TK_POINT TK_PARSE EXPRESSION    {}
    | TF_NATIVAS EXPRESSION                                 {}
    ;

TF_NATIVAS: TK_TOINT    {$$ = $1;}
    | TK_TODOUBLE       {$$ = $1;}
    | TK_TOSTRING       {$$ = $1;}
    | TK_TYPEOF         {$$ = $1;}
    ;

FUNCIONES_MATE: OPERADOR TK_LPARAN EXPRESSION TK_RPARAN             {}
    | TK_POTENCIA TK_LPARAN EXPRESSION TK_COMA EXPRESSION TK_RPARAN {}
    ;

OPERADOR: TK_SENO   {$$ = $1;}
    | TK_COSENO     {$$ = $1;}
    | TK_TANGENTE   {$$ = $1;}
    | TK_RAIZ       {$$ = $1;}
    ;

FUNCIONES_CADENAS: TK_IDENTIFICADOR TK_POINT POSICION           {}
    | TK_IDENTIFICADOR TK_POINT TIPCADENA TK_LPARAN TK_RPARAN   {}
    ;

POSICION: TK_CADPOSICION TK_LPARAN EXPRESSION TK_RPARAN                 {}
    | TK_SUBSTRING TK_LPARAN EXPRESSION TK_COMA EXPRESSION TK_RPARAN    {}
    ;

TIPCADENA: TK_LENGTH    {$$ = $1;}
    | TK_TOUPPERCASE    {$$ = $1;}
    | TK_TOLOWERCASE    {$$ = $1;}
    ;

ARREGLO_BUSQUEDA: TK_IDENTIFICADOR TK_LCOR EXPRESSION TK_DPOINT EXPRESSION TK_RCOR {}
    ;



EXPRESSION: EXPRESSION TK_MAS EXPRESSION        {}
    | EXPRESSION TK_MENOS EXPRESSION            {}
    | EXPRESSION TK_MULTIPLICACION EXPRESSION   {}
    | EXPRESSION TK_DIVISION EXPRESSION         {}
    | EXPRESSION TK_MODULO EXPRESSION           {}
    | EXPRESSION TK_POTENCIA EXPRESSION         {}
    | EXPRESSION TK_AND EXPRESSION              {}
    | EXPRESSION TK_OR EXPRESSION               {}
    | TK_NOT EXPRESSION                         {}
    | EXPRESSION TK_MAYOR EXPRESSION            {}
    | EXPRESSION TK_MAYORIGUAL EXPRESSION       {}
    | EXPRESSION TK_MENOR EXPRESSION            {}
    | EXPRESSION TK_MENORIGUAL EXPRESSION       {}
    | EXPRESSION TK_IGUALDAD EXPRESSION         {}
    | EXPRESSION TK_DESIGUALDAD EXPRESSION      {}
    | TK_MENOS EXPRESSION %prec UNARIO          {}
    | TK_LPARAN EXPRESSION TK_RPARAN            {}
    | EXPRESSION TK_CONCATENAR EXPRESSION       {}
    | EXPRESSION TK_REPETICION EXPRESSION       {}
    | TK_DECIMAL                                {}
    | TK_ENTERO                                 {}
    | TK_CADENA                                 {}
    | TK_CARACTER                               {}
    | TK_TRUE                                   {}
    | TK_FALSE                                  {}
    | TK_IDENTIFICADOR                          {}
    | TK_BEGIN                                  {}
    | TK_END                                    {}
    | EXPRESSION TK_INTERROGACION EXPRESSION TK_DPOINT EXPRESSION   {}
    | FUNCIONES_MATE                            {}
    | FUNCIONES_NATIVAS                         {}
    | ARREGLO_BUSQUEDA                          {}
    | FUNCIONES_ARREGLO                         {}
    | LLAMAR_FUNCIONES                          {}
    | FUNCIONES_CADENAS                         {}
    ;
    

/* FIN ANALISIS SINTACTICO */