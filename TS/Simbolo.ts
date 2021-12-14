import { Expresion } from "./Expresion";
import { AST } from "./Ast";
import { Entorno } from "./Entorno";
import { Tipo } from "./Tipo";
import { Instruccion } from "./Instruccion";

export class Simbolo implements Expresion{
    public identificador:string;
    public valor:any;
    public lista_inst:Array<Instruccion>;
    public lista_arreglo:Array<Expresion>;
    private tipo:Tipo;
    linea:number;
    columna:number;

    constructor(tipo:Tipo, identificador:string, valor:any,lista_inst:Array<Instruccion>, lista_arreglo:Array<Expresion>,linea:number, columna:number){
        this.identificador=identificador;
        this.tipo=tipo;
        this.valor=valor;
        this.lista_inst=lista_inst;
        this.lista_arreglo=lista_arreglo;
        this.linea=linea;
        this.columna=columna;
    }
    getIDS(ent: Entorno, arbol: AST) {
        throw new Error("Method not implemented.");
    }
    traduccion(ent:Entorno, arbol:AST) {
        throw new Error("Method not implemented.");
    }
    getTipo(ent:Entorno, arbol:AST): Tipo {
        return this.tipo;
    }
    getValorImplicito(ent:Entorno, arbol:AST) {
        return this.valor;
    }
}