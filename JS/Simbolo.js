"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Simbolo = void 0;
class Simbolo {
    constructor(tipo, identificador, valor, lista_inst, lista_arreglo, linea, columna) {
        this.identificador = identificador;
        this.tipo = tipo;
        this.valor = valor;
        this.lista_inst = lista_inst;
        this.lista_arreglo = lista_arreglo;
        this.linea = linea;
        this.columna = columna;
    }
    getIDS(ent, arbol) {
        throw new Error("Method not implemented.");
    }
    traduccion(ent, arbol) {
        throw new Error("Method not implemented.");
    }
    getTipo(ent, arbol) {
        return this.tipo;
    }
    getValorImplicito(ent, arbol) {
        return this.valor;
    }
}
exports.Simbolo = Simbolo;
