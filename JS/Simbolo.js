"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Simbolo = void 0;
var Simbolo = /** @class */ (function () {
    function Simbolo(tipo, identificador, valor, lista_inst, lista_arreglo, linea, columna) {
        this.identificador = identificador;
        this.tipo = tipo;
        this.valor = valor;
        this.lista_inst = lista_inst;
        this.lista_arreglo = lista_arreglo;
        this.linea = linea;
        this.columna = columna;
    }
    Simbolo.prototype.getIDS = function (ent, arbol) {
        throw new Error("Method not implemented.");
    };
    Simbolo.prototype.traduccion = function (ent, arbol) {
        throw new Error("Method not implemented.");
    };
    Simbolo.prototype.getTipo = function (ent, arbol) {
        return this.tipo;
    };
    Simbolo.prototype.getValorImplicito = function (ent, arbol) {
        return this.valor;
    };
    return Simbolo;
}());
exports.Simbolo = Simbolo;
