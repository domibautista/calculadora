const displayActual = document.getElementById('operacion-actual');
const displayAnterior = document.getElementById('operacion-anterior');
const borrar = document.getElementById('delete');
const limpiar = document.getElementById('clear');
const botonesNumero = document.querySelectorAll('.btn-numero');
const operadores = document.querySelectorAll('.btn-operator');

let numeroActual = '0';
let numeroAnterior = '';
let operador = null;
let debeReset = false;

function calcular() {
    if(operador || debeReset) {
        return;
    }

    const anterior = parseFloat(numeroAnterior);
    const actual = parseFloat(numeroActual);

    if(isNaN(anterior) || isNaN(actual)) {
        return;
    }

    let resultado;

    try {
        switch(operador) {
            case '+':
                resultado = anterior + actual;
                break;
            case '-':
                resultado = anterior - actual;
                break
            case '×':
                resultado = anterior * actual;
                break
            case '÷':
                if(actual === 0) {
                    throw new Error('no se puede dividir por 0')
                }
                resultado = anterior / actual;
                break
            default:
                return;
        } 
        resultado = Math.round((resultado + Number.EPSILON) * 100000000 / 100000000)
    
        numeroActual = resultado.toString();
        numeroAnterior = '';
        operador = null;
        debeReset = true;
    } catch(e) {
        mostrarError(e.message);
        return
    }
    actualizarDisplay();
}

function seleccionarOperador(op) {
    if(operador && !debeReset) {
        calcular()
    }

    operador = op;
    numeroAnterior = numeroActual + ' ' + op;
    debeReset = true;
    actualizarDisplay();
}

function actualizarDisplay() {
    displayActual.textContent = numeroActual;
    displayAnterior.textContent = numeroAnterior;
}

function agregarNumero(numero) {
    if(debeReset) {
        numeroActual = '0'
        debeReset = false;
    }

    if(numeroActual.includes('.') && numero === '.') {
        return;
    }

    if(numeroActual ==='0' && numero !=='.') {
        numeroActual = numero;
    } else {
        numeroActual += numero;
    }

    actualizarDisplay();
}

operadores.forEach(boton => {
    boton.addEventListener('click', () => {
        seleccionarOperador(boton.dataset.operador);
    })
})

botonesNumero.forEach(boton => {
    boton.addEventListener('click', agregarNumero(boton.dataset.numero))
})

limpiar.addEventListener('click', () => {
    numeroActual = '0';
    displayActual.textContent = numeroActual;
    displayAnterior.textContent = '';
})

borrar.addEventListener('click', () => {
    if(numeroActual.length > 1) {
        numeroActual = numeroActual.slice(0, -1);
    } else {
        numeroActual = '0';
    }

    displayActual.textContent = numeroActual;
})


