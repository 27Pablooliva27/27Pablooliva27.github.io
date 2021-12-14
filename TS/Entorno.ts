import { Simbolo } from "./Simbolo"

export class Entorno {
    private anterior: Entorno;
    private siguiente: Entorno;
    private tabla: { [id: string]: Simbolo }

    constructor(anterior: any, sig: any) {
        this.tabla = {};
        this.anterior = anterior;
        this.siguiente = sig;
    }

    agregar_siguiente(siguiente: any) {
        this.siguiente = siguiente;
    }

    agregar(id: string, simbolo: Simbolo) {
        id = id.toLocaleLowerCase();
        simbolo.identificador = simbolo.identificador.toLocaleLowerCase();
        this.tabla[id] = simbolo;
    }

    elimnar(id: string): boolean {
        id = id.toLocaleLowerCase();
        for (let e: Entorno = this; e != null; e = e.anterior) {
            const valor = e.tabla[id];
            if (valor !== undefined) {
                delete e.tabla[id];
                return true;
            }
        }
        return false;
    }


    existe(id: string): boolean {
        id = id.toLowerCase();
        for (let e: Entorno = this; e != null; e = e.anterior) {
            const value = e.tabla[id]
            if (value !== undefined) {
                return true;
            }
        }
        return false;
    }


    existeEnActual(id: string): boolean {
        id = id.toLowerCase();
        if (this.tabla[id] !== undefined) {
            return true;
        }
        return false;
    }

    getSimbolo(id: string): any {
        id = id.toLowerCase();
        for (let e: Entorno = this; e != null; e = e.anterior) {
            if (e.tabla[id] !== undefined) {
                return e.tabla[id];
            }
        }
        return null;
    }

    getTamanio(id: string): any {
        id = id.toLowerCase();
        for (let e: Entorno = this; e != null; e = e.anterior) {
            if (e.tabla[id] !== undefined) {
                return e.tabla[id];
            }
        }
        return null;
    }

    reemplazar(id: string, nuevoValor: Simbolo) {
        id = id.toLowerCase();
        for (let e: Entorno = this; e != null; e = e.anterior) {
            const value = e.tabla[id]
            if (value !== undefined) {
                e.tabla[id] = nuevoValor;
            }
        }
    }


}