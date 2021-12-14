import { Tipo } from "./Tipo";
import { AST } from "./Ast";
import { Entorno } from "./Entorno";

export interface Expresion{

    linea:number;
    columna: number;
   
    getTipo(ent:Entorno, arbol:AST):Tipo;
    getValorImplicito(ent:Entorno, arbol:AST):any;
    traduccion(ent:Entorno, arbol:AST):any;
    getIDS(ent:Entorno, arbol:AST):any;
}