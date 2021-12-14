import { AST } from "./Ast";
import { Entorno } from "./Entorno";

export interface Instruccion{
     linea:number;
     columna: number;
     
     ejecutar(ent:Entorno, arbol:AST):any ;
     traducir(ent:Entorno, arbol:AST):any ;

}