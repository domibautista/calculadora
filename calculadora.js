const displayActual = document.getElementById("operacion-actual");
const displayAnterior = document.getElementById("operacion-anterior");
const borrar = document.getElementById("delete");
const botonLimpiar = document.getElementById("clear");
const botonesNumero = document.querySelectorAll(".btn-numero");
const operadores = document.querySelectorAll(".btn-operador");
const botonIgual = document.getElementById("igual");

let numeroActual = "0";
let numeroAnterior = "";
let operador = null;
let debeReset = false;

function mostrarError(mensaje) {
  displayActual.textContent = "Error";
  displayAnterior.textContent = mensaje;

  setTimeout(() => limpiar(), 2000);
}

function borrarUno() {
  if (numeroActual.length > 1) {
    numeroActual = numeroActual.slice(0, -1);
  } else {
    numeroActual = "0";
  }

  displayActual.textContent = numeroActual;
}

function limpiar() {
  numeroActual = "0";
  numeroAnterior = "";
  operador = null;
  debeReset = false;
  actualizarDisplay();
}

function calcular() {
  if (!operador) {
    return;
  }

  const anterior = parseFloat(numeroAnterior);
  const actual = parseFloat(numeroActual);

  if (isNaN(anterior) || isNaN(actual)) {
    return;
  }

  let resultado;

  try {
    switch (operador) {
      case "+":
        resultado = anterior + actual;
        break;
      case "-":
        resultado = anterior - actual;
        break;
      case "×":
        resultado = anterior * actual;
        break;
      case "÷":
        if (actual === 0) {
          throw new Error("no se puede dividir por 0");
        }
        resultado = anterior / actual;
        break;
      default:
        return;
    }
    resultado =
      Math.round((resultado + Number.EPSILON) * 100000000) / 100000000;

    numeroActual = resultado.toString();
    numeroAnterior = "";
    operador = null;
    debeReset = true;
  } catch (e) {
    mostrarError(e.message);
    return;
  }
  actualizarDisplay();
}

function seleccionarOperador(op) {
  if (operador && !debeReset) {
    calcular();
  }

  operador = op;
  numeroAnterior = numeroActual + " " + op;
  debeReset = true;
  actualizarDisplay();
}

function actualizarDisplay() {
  displayActual.textContent = numeroActual;
  displayAnterior.textContent = numeroAnterior;
}

function agregarNumero(numero) {
  if (debeReset) {
    numeroActual = "0";
    debeReset = false;
  }

  if (numeroActual.includes(".") && numero === ".") {
    return;
  }

  if (numeroActual === "0" && numero !== ".") {
    numeroActual = numero;
  } else {
    numeroActual += numero;
  }

  actualizarDisplay();
}

operadores.forEach((boton) => {
  boton.addEventListener("click", () =>
    seleccionarOperador(boton.dataset.operador),
  );
});

botonesNumero.forEach((boton) => {
  boton.addEventListener("click", () => agregarNumero(boton.dataset.numero));
});

botonLimpiar.addEventListener("click", limpiar);

borrar.addEventListener("click", borrarUno);

botonIgual.addEventListener("click", calcular);

document.addEventListener('keydown', (evento) => {
  const tecla = evento.key;

  if ('0123456789'.includes(tecla)) {
    agregarNumero(tecla);
  } else if(tecla === '+') {
    seleccionarOperador('+');
  } else if(tecla === '-') {
    seleccionarOperador('-');
  } else if(tecla === '*') {
    seleccionarOperador('×')
  } else if(tecla === '/') {
    seleccionarOperador('÷')
  }

  else if(tecla === 'Enter') {
    calcular();
  } else if(tecla === 'Escape') {
    limpiar();
  } else if(tecla === 'Backspace') {
    borrarUno();
  }
})