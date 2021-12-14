import { AST } from "./Ast";
import { Entorno } from "./Entorno";
import { Expresion } from "./Expresion";
import { Tipo } from "./Tipo";

export class Dato implements Expresion {
    linea: number;
    columna: number;
    valor: any;

    constructor(valor: any, linea: number, columna: number) {
        this.linea = linea;
        this.columna = columna;
        this.valor = valor;
    }
    getIDS(ent: Entorno, arbol: AST) {
        throw new Error("Method not implemented.");
    }
    traduccion(ent: Entorno, arbol: AST) {
        throw new Error("Method not implemented.");
    }


    getTipo(ent: Entorno, arbol: AST): Tipo {
        const valor = this.getValorImplicito(ent, arbol);
        if (typeof (valor) === 'boolean') {
            return Tipo.BOOL;
        }
        else if (typeof (valor) === 'string') {
            if (valor.includes("\'")) {
                return Tipo.CHAR;
            } else {
                return Tipo.CADENA;
            }
        }
        else if (typeof (valor) === null) {
            return Tipo.NULL;
        }
        else if (typeof (valor) === 'number') {
            if (this.isInt(Number(valor))) {
                return Tipo.ENTERO;
            }
            return Tipo.DECIMAL;
        }
        return Tipo.IDENTIFICADOR;
    }

    getValorImplicito(ent: Entorno, arbol: AST) {
        return this.valor;
    }

    isInt(n: number) {
        return Number(n) === n && n % 1 === 0;
    }

}