"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Dato = void 0;
const Tipo_1 = require("./Tipo");
class Dato {
    constructor(valor, linea, columna) {
        this.linea = linea;
        this.columna = columna;
        this.valor = valor;
    }
    getIDS(ent, arbol) {
        throw new Error("Method not implemented.");
    }
    traduccion(ent, arbol) {
        throw new Error("Method not implemented.");
    }
    getTipo(ent, arbol) {
        const valor = this.getValorImplicito(ent, arbol);
        if (typeof (valor) === 'boolean') {
            return Tipo_1.Tipo.BOOL;
        }
        else if (typeof (valor) === 'string') {
            if (valor.includes("\'")) {
                return Tipo_1.Tipo.CHAR;
            }
            else {
                return Tipo_1.Tipo.CADENA;
            }
        }
        else if (typeof (valor) === null) {
            return Tipo_1.Tipo.NULL;
        }
        else if (typeof (valor) === 'number') {
            if (this.isInt(Number(valor))) {
                return Tipo_1.Tipo.ENTERO;
            }
            return Tipo_1.Tipo.DECIMAL;
        }
        return Tipo_1.Tipo.IDENTIFICADOR;
    }
    getValorImplicito(ent, arbol) {
        return this.valor;
    }
    isInt(n) {
        return Number(n) === n && n % 1 === 0;
    }
}
exports.Dato = Dato;
