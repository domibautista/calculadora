[33mcommit b037f73b9d031f6d80ffc7a02280b97ba724c8ea[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Dominik Bautista <domibauti1234@gmail.com>
Date:   Tue Oct 6 15:50:12 2026 -0300

    creando el repo

[1mdiff --git a/PROYECTO - calculadora/calculadora.css b/PROYECTO - calculadora/calculadora.css[m
[1mnew file mode 100644[m
[1mindex 0000000..53d7771[m
[1m--- /dev/null[m
[1m+++ b/PROYECTO - calculadora/calculadora.css[m	
[36m@@ -0,0 +1,76 @@[m
[32m+[m[32m* {[m
[32m+[m[32m  margin: 0;[m
[32m+[m[32m  padding: 0;[m
[32m+[m[32m  box-sizing: border-box;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mbody {[m
[32m+[m[32m  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;[m
[32m+[m[32m  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);[m
[32m+[m[32m  min-height: 100vh;[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  justify-content: center;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.calculadora {[m
[32m+[m[32m  background: #2c3e50;[m
[32m+[m[32m  border-radius: 20px;[m
[32m+[m[32m  padding: 20px;[m
[32m+[m[32m  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);[m
[32m+[m[32m  max-width: 300px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.display {[m
[32m+[m[32m  background: #34495e;[m
[32m+[m[32m  border-radius: 10px;[m
[32m+[m[32m  padding: 20px;[m
[32m+[m[32m  margin-bottom: 20px;[m
[32m+[m[32m  text-align: right;[m
[32m+[m[32m  min-height: 80px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.operacion-anterior {[m
[32m+[m[32m  color: #bdc3c7;[m
[32m+[m[32m  font-size: 14px;[m
[32m+[m[32m  min-height: 20px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.operacion-actual {[m
[32m+[m[32m  color: white;[m
[32m+[m[32m  font-size: 28px;[m
[32m+[m[32m  font-weight: bold;[m
[32m+[m[32m  min-height: 40px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.botones {[m
[32m+[m[32m  display: grid;[m
[32m+[m[32m  grid-template-columns: repeat(4, 1fr);[m
[32m+[m[32m  gap: 10px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.btn {[m
[32m+[m[32m  border: none;[m
[32m+[m[32m  border-radius: 10px;[m
[32m+[m[32m  font-size: 18px;[m
[32m+[m[32m  font-weight: bold;[m
[32m+[m[32m  padding: 20px;[m
[32m+[m[32m  cursor: pointer;[m
[32m+[m[32m  transition: all 0.2s;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.btn:hover {[m
[32m+[m[32m  transform: translateY(-2px);[m
[32m+[m[32m  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.btn:active { transform: translateY(0); }[m
[32m+[m[32m.btn-numero { background: #ecf0f1; color: #2c3e50; }[m
[32m+[m[32m.btn-numero:hover { background: #d5dbdb; }[m
[32m+[m[32m.btn-operador { background: #f39c12; color: white; }[m
[32m+[m[32m.btn-operador:hover { background: #e67e22; }[m
[32m+[m[32m.btn-funcion { background: #e74c3c; color: white; }[m
[32m+[m[32m.btn-funcion:hover { background: #c0392b; }[m
[32m+[m[32m.btn-igual { background: #27ae60; color: white; grid-row: span 2; }[m
[32m+[m[32m.btn-igual:hover { background: #229954; }[m
[32m+[m[32m.btn-cero { grid-column: span 2; }[m
\ No newline at end of file[m
[1mdiff --git a/PROYECTO - calculadora/calculadora.js b/PROYECTO - calculadora/calculadora.js[m
[1mnew file mode 100644[m
[1mindex 0000000..c824f7a[m
[1m--- /dev/null[m
[1m+++ b/PROYECTO - calculadora/calculadora.js[m	
[36m@@ -0,0 +1,121 @@[m
[32m+[m[32mconst displayActual = document.getElementById('operacion-actual');[m
[32m+[m[32mconst displayAnterior = document.getElementById('operacion-anterior');[m
[32m+[m[32mconst borrar = document.getElementById('delete');[m
[32m+[m[32mconst limpiar = document.getElementById('clear');[m
[32m+[m[32mconst botonesNumero = document.querySelectorAll('.btn-numero');[m
[32m+[m[32mconst operadores = document.querySelectorAll('.btn-operator');[m
[32m+[m
[32m+[m[32mlet numeroActual = '0';[m
[32m+[m[32mlet numeroAnterior = '';[m
[32m+[m[32mlet operador = null;[m
[32m+[m[32mlet debeReset = false;[m
[32m+[m
[32m+[m[32mfunction calcular() {[m
[32m+[m[32m    if(operador || debeReset) {[m
[32m+[m[32m        return;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    const anterior = parseFloat(numeroAnterior);[m
[32m+[m[32m    const actual = parseFloat(numeroActual);[m
[32m+[m
[32m+[m[32m    if(isNaN(anterior) || isNaN(actual)) {[m
[32m+[m[32m        return;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    let resultado;[m
[32m+[m
[32m+[m[32m    try {[m
[32m+[m[32m        switch(operador) {[m
[32m+[m[32m            case '+':[m
[32m+[m[32m                resultado = anterior + actual;[m
[32m+[m[32m                break;[m
[32m+[m[32m            case '-':[m
[32m+[m[32m                resultado = anterior - actual;[m
[32m+[m[32m                break[m
[32m+[m[32m            case '×':[m
[32m+[m[32m                resultado = anterior * actual;[m
[32m+[m[32m                break[m
[32m+[m[32m            case '÷':[m
[32m+[m[32m                if(actual === 0) {[m
[32m+[m[32m                    throw new Error('no se puede dividir por 0')[m
[32m+[m[32m                }[m
[32m+[m[32m                resultado = anterior / actual;[m
[32m+[m[32m                break[m
[32m+[m[32m            default:[m
[32m+[m[32m                return;[m
[32m+[m[32m        }[m[41m [m
[32m+[m[32m        resultado = Math.round((resultado + Number.EPSILON) * 100000000 / 100000000)[m
[32m+[m[41m    [m
[32m+[m[32m        numeroActual = resultado.toString();[m
[32m+[m[32m        numeroAnterior = '';[m
[32m+[m[32m        operador = null;[m
[32m+[m[32m        debeReset = true;[m
[32m+[m[32m    } catch(e) {[m
[32m+[m[32m        mostrarError(e.message);[m
[32m+[m[32m        return[m
[32m+[m[32m    }[m
[32m+[m[32m    actualizarDisplay();[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction seleccionarOperador(op) {[m
[32m+[m[32m    if(operador && !debeReset) {[m
[32m+[m[32m        calcular()[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    operador = op;[m
[32m+[m[32m    numeroAnterior = numeroActual + ' ' + op;[m
[32m+[m[32m    debeReset = true;[m
[32m+[m[32m    actualizarDisplay();[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction actualizarDisplay() {[m
[32m+[m[32m    displayActual.textContent = numeroActual;[m
[32m+[m[32m    displayAnterior.textContent = numeroAnterior;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction agregarNumero(numero) {[m
[32m+[m[32m    if(debeReset) {[m
[32m+[m[32m        numeroActual = '0'[m
[32m+[m[32m        debeReset = false;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    if(numeroActual.includes('.') && numero === '.') {[m
[32m+[m[32m        return;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    if(numeroActual ==='0' && numero !=='.') {[m
[32m+[m[32m        numeroActual = numero;[m
[32m+[m[32m    } else {[m
[32m+[m[32m        numeroActual += numero;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    actualizarDisplay();[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32moperadores.forEach(boton => {[m
[32m+[m[32m    boton.addEventListener('click', () => {[m
[32m+[m[32m        seleccionarOperador(boton.dataset.operador);[m
[32m+[m[32m    })[m
[32m+[m[32m})[m
[32m+[m
[32m+[m[32mbotonesNumero.forEach(boton => {[m
[32m+[m[32m    boton.addEventListener('click', agregarNumero(boton.dataset.numero))[m
[32m+[m[32m})[m
[32m+[m
[32m+[m[32mlimpiar.addEventListener('click', () => {[m
[32m+[m[32m    numeroActual = '0';[m
[32m+[m[32m    displayActual.textContent = numeroActual;[m
[32m+[m[32m    displayAnterior.textContent = '';[m
[32m+[m[32m})[m
[32m+[m
[32m+[m[32mborrar.addEventListener('click', () => {[m
[32m+[m[32m    if(numeroActual.length > 1) {[m
[32m+[m[32m        numeroActual = numeroActual.slice(0, -1);[m
[32m+[m[32m    } else {[m
[32m+[m[32m        numeroActual = '0';[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    displayActual.textContent = numeroActual;[m
[32m+[m[32m})[m
[32m+[m
[32m+[m
[1mdiff --git a/PROYECTO - calculadora/index.html b/PROYECTO - calculadora/index.html[m
[1mnew file mode 100644[m
[1mindex 0000000..c6f186a[m
[1m--- /dev/null[m
[1m+++ b/PROYECTO - calculadora/index.html[m	
[36m@@ -0,0 +1,46 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="es">[m
[32m+[m[32m<head>[m
[32m+[m[32m  <meta charset="UTF-8">[m
[32m+[m[32m  <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m  <title>Calculadora Interactiva</title>[m
[32m+[m[32m  <link rel="stylesheet" href="calculadora.css">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m  <div class="calculadora">[m
[32m+[m[32m    <!-- Display -->[m
[32m+[m[32m    <div class="display">[m
[32m+[m[32m      <div class="operacion-anterior" id="operacion-anterior"></div>[m
[32m+[m[32m      <div class="operacion-actual" id="operacion-actual">0</div>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <!-- Botones -->[m
[32m+[m[32m    <div class="botones">[m
[32m+[m[32m      <button class="btn btn-funcion" id="clear">C</button>[m
[32m+[m[32m      <button class="btn btn-funcion" id="delete">⌫</button>[m
[32m+[m[32m      <button class="btn btn-operador" data-operador="÷">÷</button>[m
[32m+[m[32m      <button class="btn btn-operador" data-operador="×">×</button>[m
[32m+[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="7">7</button>[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="8">8</button>[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="9">9</button>[m
[32m+[m[32m      <button class="btn btn-operador" data-operador="-">-</button>[m
[32m+[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="4">4</button>[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="5">5</button>[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="6">6</button>[m
[32m+[m[32m      <button class="btn btn-operador" data-operador="+">+</button>[m
[32m+[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="1">1</button>[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="2">2</button>[m
[32m+[m[32m      <button class="btn btn-numero" data-numero="3">3</button>[m
[32m+[m[32m      <button class="btn btn-igual" id="igual" rowspan="2">=</button>[m
[32m+[m
[32m+[m[32m      <button class="btn btn-numero btn-cero" data-numero="0">0</button>[m
[32m+[m[32m      <button class="btn btn-numero" data-numero=".">.</button>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  </div>[m
[32m+[m
[32m+[m[32m  <script src="calculadora.js"></script>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
[1mdiff --git a/index.html b/index.html[m
[1mnew file mode 100644[m
[1mindex 0000000..3ab195c[m
[1m--- /dev/null[m
[1m+++ b/index.html[m
[36m@@ -0,0 +1,54 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="es">[m
[32m+[m[32m<head>[m
[32m+[m[32m    <meta charset="UTF-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m    <title>Prácticas de JavaScript</title>[m
[32m+[m[32m    <link rel="stylesheet" href="css/style.css">[m
[32m+[m[32m    <!-- Fuente Google Inter para mejor tipografía -->[m
[32m+[m[32m    <link rel="preconnect" href="https://fonts.googleapis.com">[m
[32m+[m[32m    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>[m
[32m+[m[32m    <link rel="stylesheet" href="style.css">[m
[32m+[m[32m    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m
[32m+[m[32m    <header class="header">[m
[32m+[m[32m        <div class="container">[m
[32m+[m[32m            <h1>🚀 JS Playground</h1>[m
[32m+[m[32m            <p>Espacio de entrenamiento y práctica de JavaScript</p>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </header>[m
[32m+[m
[32m+[m[32m    <main class="container content">[m
[32m+[m[32m        <section class="card">[m
[32m+[m[32m            <h2>Consola / Resultados</h2>[m
[32m+[m[32m            <p>Abre la consola del navegador (<kbd>F12</kbd> o <kbd>Ctrl + Shift + I</kbd>) para ver las salidas de tus scripts o interactúa con los elementos si estás manipulando el DOM.</p>[m
[32m+[m[41m            [m
[32m+[m[32m            <div class="status-badge">[m
[32m+[m[32m                <span class="dot"></span> Scripts Vinculados Correctamente[m
[32m+[m[32m            </div>[m
[32m+[m[32m        </section>[m
[32m+[m
[32m+[m[32m        <section class="card demo-section">[m
[32m+[m[32m            <h3>Área de Prueba para el DOM</h3>[m
[32m+[m[32m            <p class="description">Puedes usar estos elementos de prueba si necesitas seleccionar nodos, escuchar eventos o modificar estilos con tus scripts.</p>[m
[32m+[m
[32m+[m[32m            <div class="interactive-area">[m
[32m+[m[32m                <button id="btn-demo" class="btn btn-primary">Hacer Clic Aquí</button>[m
[32m+[m[32m                <div id="resultado" class="result-box">[m
[32m+[m[32m                    Esperando interacción...[m
[32m+[m[32m                </div>[m
[32m+[m[32m            </div>[m
[32m+[m[32m        </section>[m
[32m+[m[32m    </main>[m
[32m+[m
[32m+[m[32m    <footer class="footer">[m
[32m+[m[32m        <p>Prácticas de JavaScript &bull; Listo para código</p>[m
[32m+[m[32m    </footer>[m
[32m+[m
[32m+[m[32m    <!-- Tus scripts de JavaScript -->[m
[32m+[m[32m    <script type="module" src="js/02-app.js"></script>[m
[32m+[m[32m    <script type="module" src="js/03-app.js"></script>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
[1mdiff --git a/js/02-app.js b/js/02-app.js[m
[1mnew file mode 100644[m
[1mindex 0000000..8231c48[m
[1m--- /dev/null[m
[1m+++ b/js/02-app.js[m
[36m@@ -0,0 +1,92 @@[m
[32m+[m[32m//Ejercicio 1[m
[32m+[m[32m//  const producto = {[m
[32m+[m[32m//    nombre: "Teclado",[m
[32m+[m[32m//    precio: 1500,[m
[32m+[m[32m//    stock: 10[m
[32m+[m[32m//  };[m
[32m+[m
[32m+[m[32m//  function agregarStock(producto, cantidad) {[m
[32m+[m[32m//      producto.stock+= cantidad;[m
[32m+[m[32m//      return producto;[m
[32m+[m[32m//  }[m
[32m+[m
[32m+[m[32m//  const producto2 = producto;[m
[32m+[m[32m//  agregarStock(producto2, 5);[m
[32m+[m
[32m+[m
[32m+[m[32m//Ejercicio2[m
[32m+[m[32m//   const usuario = {[m
[32m+[m[32m//     nombre: "Juan",[m
[32m+[m[32m//     edad: 20,[m
[32m+[m[32m//     direccion: {[m
[32m+[m[32m//       ciudad: "Montevideo",[m
[32m+[m[32m//       calle: "18 de Julio"[m
[32m+[m[32m//     }[m
[32m+[m[32m//   };[m
[32m+[m
[32m+[m[32m//   const copia = {[m
[32m+[m[32m//       ...usuario,[m
[32m+[m[32m//       direccion: {[m
[32m+[m[32m//           ...usuario.direccion[m
[32m+[m[32m//       }[m
[32m+[m[32m//   };[m
[32m+[m[32m//   copia.nombre = "Pedro";[m
[32m+[m[32m//   copia.direccion.ciudad = "Salto";[m
[32m+[m[32m//   console.log(copia);[m
[32m+[m[32m//   console.log(usuario);[m
[32m+[m
[32m+[m[32m//Ejercicio 3[m
[32m+[m[32m//  function usuario(nombre, edad) {[m
[32m+[m[32m//      this.nombre = nombre;[m
[32m+[m[32m//      this.edad = edad;[m
[32m+[m[32m//  }[m
[32m+[m
[32m+[m[32m//  usuario.prototype.presentarse = function() {[m
[32m+[m[32m//      console.log(`Hola, soy ${this.nombre}`);[m
[32m+[m[32m//  }[m
[32m+[m
[32m+[m[32m//  const usuario1 = new usuario("Juan", 20);[m
[32m+[m[32m//  const usuario2 = new usuario("Ana", 25);[m
[32m+[m
[32m+[m[32m//  console.log(usuario1);[m
[32m+[m
[32m+[m[32m//Ejercicio 4[m
[32m+[m[32m//  export default class persona {[m
[32m+[m[32m//    constructor(nombre, edad) {[m
[32m+[m[32m//      this.nombre = nombre;[m
[32m+[m[32m//      this.edad = edad;[m
[32m+[m[32m//    }[m
[32m+[m
[32m+[m[32m//    presentarse() {[m
[32m+[m[32m//      console.log(`Hola, soy ${this.nombre} y tengo ${this.edad} años`);[m
[32m+[m[32m//    }[m
[32m+[m[32m//  }[m
[32m+[m
[32m+[m[32m//  class empleado extends persona {[m
[32m+[m[32m//    constructor(nombre, edad, salario) {[m
[32m+[m[32m//      super(nombre, edad)[m
[32m+[m[32m//      this.salario = salario;[m
[32m+[m[32m//    }[m
[32m+[m
[32m+[m[32m//    trabajar() {[m
[32m+[m[32m//      console.log(`${this.nombre} esta trabajando`)[m
[32m+[m[32m//    }[m
[32m+[m[32m//  }[m
[32m+[m
[32m+[m[32m//  class programador extends empleado {[m
[32m+[m[32m//    constructor(nombre, edad, salario, lenguaje) {[m
[32m+[m[32m//      super(nombre, edad, salario)[m
[32m+[m[32m//      this.salario = salario;[m
[32m+[m[32m//      this.lenguaje = lenguaje;[m
[32m+[m[32m//    }[m
[32m+[m
[32m+[m[32m//    programar() {[m
[32m+[m[32m//      console.log(`Programando en ${this.lenguaje}`)[m[41m  [m
[32m+[m[32m//    }[m
[32m+[m[32m//  }[m
[32m+[m[32m//  const dev = new programador([m
[32m+[m[32m//    "Carlos",[m
[32m+[m[32m//    25,[m
[32m+[m[32m//    60000,[m
[32m+[m[32m//    "JavaScript"[m
[32m+[m[32m//  );[m
[1mdiff --git a/js/03-app.js b/js/03-app.js[m
[1mnew file mode 100644[m
[1mindex 0000000..02e2330[m
[1m--- /dev/null[m
[1m+++ b/js/03-app.js[m
[36m@@ -0,0 +1,158 @@[m
[32m+[m[32m//Nivel 2. Ejercicio 5, manejo de errores[m
[32m+[m
[32m+[m[32m// function dividir(a, b) {[m
[32m+[m[32m//   try {[m
[32m+[m[32m//     if (typeof a !== "number" || typeof b !== "number") {[m
[32m+[m[32m//       throw new Error("Solo se pueden dividir numeros");[m
[32m+[m[32m//     } else if (b === 0) {[m
[32m+[m[32m//       throw new Error("No se puede dividir por cero");[m
[32m+[m[32m//     }[m
[32m+[m[32m//     let resultado = a / b;[m
[32m+[m[32m//     console.log(resultado);[m
[32m+[m[32m//   } catch (error) {[m
[32m+[m[32m//     console.log("ocurrio un error:", error.message);[m
[32m+[m[32m//   } finally {[m
[32m+[m[32m//     console.log("Operacion finalizada!");[m
[32m+[m[32m//   }[m
[32m+[m[32m// }[m
[32m+[m[32m//Ejercicio 6, errores personalizados[m
[32m+[m[32m//  export default class SaldoInsuficienteError extends Error {[m
[32m+[m[32m//    constructor(message) {[m
[32m+[m[32m//      super(message);[m
[32m+[m[32m//    }[m
[32m+[m[32m//  }[m
[32m+[m
[32m+[m[32m//  class Cuenta {[m
[32m+[m[32m//    constructor(saldo = 0) {[m
[32m+[m[32m//      this.saldo = saldo;[m
[32m+[m[32m//    }[m
[32m+[m[32m//    depositar(monto) {[m
[32m+[m[32m//      if (monto > 0) {[m
[32m+[m[32m//        this.saldo += monto;[m
[32m+[m[32m//      }[m
[32m+[m[32m//    }[m
[32m+[m[32m//    retirar(monto) {[m
[32m+[m[32m//      if (this.saldo < monto) {[m
[32m+[m[32m//        throw new SaldoInsuficienteError("No hay suficiente saldo");[m
[32m+[m[32m//      } else {[m
[32m+[m[32m//        this.saldo -= monto;[m
[32m+[m[32m//      }[m
[32m+[m[32m//    }[m
[32m+[m[32m//  }[m
[32m+[m[32m// //Ejercicio 7, Callback[m
[32m+[m[32m// function procesarUsuario(usuario, callback) {[m
[32m+[m[32m//   setTimeout(() => {[m
[32m+[m[32m//     callback(usuario);[m
[32m+[m[32m//   }, 2000);[m
[32m+[m[32m// }[m
[32m+[m[32m//Ejercicio 8, Convertir a Promise[m
[32m+[m[32m// function obtenerUsuario() {[m
[32m+[m[32m//     return new Promise((resolve, reject) => {[m
[32m+[m[32m//         setTimeout(() => {[m
[32m+[m[32m//             if(Math.random() > 0.3) {[m
[32m+[m[32m//                 resolve("Todo salio bien. ¡Es un exito!!")[m
[32m+[m[32m//             } else {[m
[32m+[m[32m//                 reject("Una calamidad 💥")[m
[32m+[m[32m//             }[m
[32m+[m[32m//         }, 2000)[m
[32m+[m[32m//     })[m
[32m+[m[32m// }[m
[32m+[m[32m// obtenerUsuario().then((res) => {[m
[32m+[m[32m//     console.log("exito", res);[m
[32m+[m[32m//     return res;[m
[32m+[m[32m// }).catch((error) => {[m
[32m+[m[32m//     console.log("Ocurrio un error", error);[m
[32m+[m[32m// })[m
[32m+[m[32m//Ejercicio 9, promise.all()[m
[32m+[m[32m// function obtenerUsuario(e) {[m
[32m+[m[32m//   return new Promise((resolve, reject) => {[m
[32m+[m[32m//     setTimeout(() => {[m
[32m+[m[32m//       if (e) {[m
[32m+[m[32m//         resolve({[m
[32m+[m[32m//             id: 1,[m
[32m+[m[32m//             name: "Juan"[m
[32m+[m[32m//         });[m
[32m+[m[32m//       } else {[m
[32m+[m[32m//         reject("Rechazada!");[m
[32m+[m[32m//       }[m
[32m+[m[32m//     }, 2000);[m
[32m+[m[32m//   });[m
[32m+[m[32m// }[m
[32m+[m[32m// function obtenerProducto(e) {[m
[32m+[m[32m//   return new Promise((resolve, reject) => {[m
[32m+[m[32m//     setTimeout(() => {[m
[32m+[m[32m//       if (e) {[m
[32m+[m[32m//         resolve({[m
[32m+[m[32m//             productId: 1,[m
[32m+[m[32m//             productName: "Lavarropas"[m
[32m+[m[32m//         });[m
[32m+[m[32m//       } else {[m
[32m+[m[32m//         reject("Rechazada!");[m
[32m+[m[32m//       }[m
[32m+[m[32m//     }, 4000);[m
[32m+[m[32m//   });[m
[32m+[m[32m// }[m
[32m+[m[32m// function obtenerPedidos(e) {[m
[32m+[m[32m//   return new Promise((resolve, reject) => {[m
[32m+[m[32m//     setTimeout(() => {[m
[32m+[m[32m//       if (e) {[m
[32m+[m[32m//         resolve({[m
[32m+[m[32m//             id: 102,[m
[32m+[m[32m//             total: 348[m
[32m+[m[32m//         });[m
[32m+[m[32m//       } else {[m
[32m+[m[32m//         reject("Rechazada!");[m
[32m+[m[32m//       }[m
[32m+[m[32m//     }, 1500);[m
[32m+[m[32m//   });[m
[32m+[m[32m// }[m
[32m+[m[32m// let p1 = obtenerUsuario(true);[m
[32m+[m[32m// let p2 = obtenerProducto(true);[m
[32m+[m[32m// let p3 = obtenerPedidos(true);[m
[32m+[m
[32m+[m[32m// Promise.all([p1, p2,p3]).then(([usuario, producto, pedido]) => {[m
[32m+[m[32m//     const resultado = {[m
[32m+[m[32m//         usuario,[m
[32m+[m[32m//         producto,[m
[32m+[m[32m//         pedido[m
[32m+[m[32m//     };[m
[32m+[m[32m//     console.log(resultado);[m
[32m+[m[32m// }).catch((error) => {[m
[32m+[m[32m//     console.log(error);[m
[32m+[m[32m// })[m
[32m+[m[32m//Ejercicio 10 - API[m
[32m+[m[32m//   async function obtenerUsuarios() {[m
[32m+[m[32m//     try {[m
[32m+[m[32m//       const response = await fetch("https://jsonplaceholder.typicode.com/users");[m
[32m+[m
[32m+[m[32m//       if(!response.ok) {[m
[32m+[m[32m//         throw new Error(`Error al obrener los usuarios: status ${response.status}`)[m
[32m+[m[32m//       }[m
[32m+[m
[32m+[m[32m//       const datos = await response.json();[m
[32m+[m[32m//       return datos;[m
[32m+[m[32m//     } catch(error) {[m
[32m+[m[32m//       console.log("error: ", error.message);[m
[32m+[m[32m//     }[m
[32m+[m[32m//   }[m
[32m+[m[32m //Ejercicio 11 - Buscar Usuario[m
[32m+[m[32m//  async function buscarUsuario(nombre) {[m
[32m+[m[32m//    try {[m
[32m+[m
[32m+[m[32m//      const datos = await obtenerUsuarios();[m
[32m+[m[32m//      const userExist = datos.find(e => e.name === nombre);[m
[32m+[m[41m   [m
[32m+[m[32m//      if(userExist) {[m
[32m+[m[32m//        console.log(`Usuario encontrado: ${userExist.name}`)[m
[32m+[m[32m//      } else {[m
[32m+[m[32m//        console.log("Usuario no encontrado")[m
[32m+[m[32m//      }[m
[32m+[m[32m//    } catch(error) {[m
[32m+[m[32m//      console.log("Ocurrio un error:", err