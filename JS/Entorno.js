"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Entorno = void 0;
class Entorno {
    constructor(anterior, sig) {
        this.tabla = {};
        this.anterior = anterior;
        this.siguiente = sig;
    }
    agregar_siguiente(siguiente) {
        this.siguiente = siguiente;
    }
    agregar(id, simbolo) {
        id = id.toLocaleLowerCase();
        simbolo.identificador = simbolo.identificador.toLocaleLowerCase();
        this.tabla[id] = simbolo;
    }
    elimnar(id) {
        id = id.toLocaleLowerCase();
        for (let e = this; e != null; e = e.anterior) {
            const valor = e.tabla[id];
            if (valor !== undefined) {
                delete e.tabla[id];
                return true;
            }
        }
        return false;
    }
    existe(id) {
        id = id.toLowerCase();
        for (let e = this; e != null; e = e.anterior) {
            const value = e.tabla[id];
            if (value !== undefined) {
                return true;
            }
        }
        return false;
    }
    existeEnActual(id) {
        id = id.toLowerCase();
        if (this.tabla[id] !== undefined) {
            return true;
        }
        return false;
    }
    getSimbolo(id) {
        id = id.toLowerCase();
        for (let e = this; e != null; e = e.anterior) {
            if (e.tabla[id] !== undefined) {
                return e.tabla[id];
            }
        }
        return null;
    }
    getTamanio(id) {
        id = id.toLowerCase();
        for (let e = this; e != null; e = e.anterior) {
            if (e.tabla[id] !== undefined) {
                return e.tabla[id];
            }
        }
        return null;
    }
    reemplazar(id, nuevoValor) {
        id = id.toLowerCase();
        for (let e = this; e != null; e = e.anterior) {
            const value = e.tabla[id];
            if (value !== undefined) {
                e.tabla[id] = nuevoValor;
            }
        }
    }
}
exports.Entorno = Entorno;
