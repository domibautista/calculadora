/* ==========================================================================
   NIVEL 2 — MANEJO DE ERRORES
   ========================================================================== */

/**
 * Ejercicio 5 — Validador
 * 
 * Creá la función:
 *   function dividir(a, b)
 * 
 * Requisitos:
 *   - Devuelva el resultado de a / b.
 *   - Lance un error si b === 0.
 *   - Lance un error si alguno de los parámetros no es un número.
 * 
 * Uso esperado:
 *   try {
 *      // ...
 *   } catch (error) {
 *      // ...
 *   } finally {
 *      // Debe mostrar: "Operación finalizada"
 *   }
 */ //CHECKED


/**
 * Ejercicio 6 — Error personalizado
 * 
 * Creá la clase:
 *   class SaldoInsuficienteError extends Error
 * 
 * Después creá:
 *   class Cuenta {
 *      depositar(monto) { ... }
 *      retirar(monto) { ... }
 *   }
 * 
 * Requisito:
 *   - Si se intenta retirar más dinero del disponible, lanzá SaldoInsuficienteError.
 */  //CHECKED


/* ==========================================================================
   NIVEL 3 — CALLBACKS Y PROMESAS
   ========================================================================== */

/**
 * Ejercicio 7 — Callback
 * 
 * Creá la función:
 *   procesarUsuario(usuario, callback)
 * 
 * Requisitos:
 *   - Simular obtener información del usuario.
 *   - Después de 2 segundos, debe ejecutar: callback(usuario);
 * 
 * Ejemplo de uso:
 *   procesarUsuario(
 *     { nombre: "Juan", edad: 22 },
 *     (usuario) => {
 *        console.log(usuario.nombre);
 *     }
 *   );
 */
//        CHECKED


/**
 * Ejercicio 8 — Convertir a Promise
 * 
 * Transformá el ejercicio anterior para que funcione con:
 *   const resultado = obtenerUsuario();
 * 
 * Requisitos:
 *   - Debe devolver una Promise.
 *   - Hacé que exista aproximadamente un 30% de probabilidad de error.
 * 
 * Uso esperado:
 *   obtenerUsuario()
 *     .then(usuario => {
 *         console.log(usuario);
 *     })
 *     .catch(error => {
 *         console.log(error);
 *     });
 */
        // CHECKED

/**
 * Ejercicio 9 — Promise.all
 * 
 * Creá tres funciones:
 *   obtenerUsuario()
 *   obtenerProductos()
 *   obtenerPedidos()
 * 
 * Requisitos:
 *   - Cada una debe devolver una Promise que tarde un tiempo diferente.
 *   - Conseguí los tres resultados utilizando Promise.all(...).
 * 
 * Salida conceptual esperada:
 *   {
 *     usuario: ...,
 *     productos: ...,
 *     pedidos: ...
 *   }
 */
            //CHECKED

/* ==========================================================================
   NIVEL 4 — ASYNC / AWAIT + FETCH
   ========================================================================== */

/**
 * Ejercicio 10 — API
 * 
 * Usando fetch, obtené información de:
 *   https://jsonplaceholder.typicode.com/users
 * 
 * Creá:
 *   async function obtenerUsuarios()
 * 
 * Requisitos:
 *   - Haga el fetch.
 *   - Compruebe si la respuesta fue exitosa (res.ok).
 *   - Convierta la respuesta a JSON.
 *   - Devuelva los usuarios.
 *   - Maneje errores con try/catch.
 *   - Mostrar los usuarios en consola.
 */
           // CHECKED

/**
 * Ejercicio 11 — Buscar usuario
 * 
 * A partir del ejercicio anterior, creá:
 *   async function buscarUsuario(nombre)
 * 
 * Requisitos:
 *   - Debe buscar un usuario cuyo nombre coincida.
 *   - Ejemplo: buscarUsuario("Leanne Graham");
 *   - Si existe, mostrar: "Usuario encontrado: Leanne Graham"
 *   - Si no existe, mostrar: "Usuario no encontrado"
 */
         // CHECKED

/* ==========================================================================
   NIVEL 5 — MÓDULOS (ES6 Modules)
   ========================================================================== */

/**
 * Ejercicio de Módulos (2 archivos)
 * 
 * Archivo: usuarios.js
 *   - Exportar funciones nombradas: crearUsuario(), buscarUsuario()
 *   - Exportar una tercera función por defecto: export default ...
 * 
 * Archivo: app.js
 *   - Importar las funciones de usuarios.js y utilizarlas.
 * 
 * Objetivo:
 *   Practicar export, export default e import para entender sus diferencias.
 */


/* ==========================================================================
   NIVEL 6 — DOM + EVENTOS
   ========================================================================== */

/**
 * Ejercicio 12 — Lista de tareas
 * 
 * Creá una página HTML con:
 *   - Un <input>
 *   - Un botón "Agregar"
 *   - Una lista <ul>
 * 
 * Comportamiento:
 *   - Al escribir "Estudiar JavaScript" y pulsar "Agregar",
 *     debe aparecer en la lista: "☐ Estudiar JavaScript".
 *   - Cada tarea debe tener un botón "Eliminar".
 */


/**
 * Ejercicio 13 — Completar tareas
 * 
 * Comportamiento:
 *   - Al hacer click sobre una tarea, pasa de "☐ Estudiar JavaScript"
 *     a "☑ Estudiar JavaScript" y visualmente queda tachada.
 */


/**
 * Ejercicio 14 — Contador
 * 
 * Creá la interfaz:
 *        [ 0 ]
 *   [-]  [+]  [Reset]
 * 
 * Comportamiento:
 *   - [+] → Aumentar contador.
 *   - [-] → Disminuir contador.
 *   - [Reset] → Volver a 0.
 *   - Condición: No recargar la página.
 */


/* ==========================================================================
   NIVEL 7 — SET Y MAP
   ========================================================================== */

/**
 * Ejercicio 15 — Eliminar duplicados
 * 
 * Dado el array:
 *   const numeros = [1, 2, 3, 2, 4, 5, 1, 6, 3, 7];
 * 
 * Requisito:
 *   - Utilizando Set, obtené el array sin duplicados: [1, 2, 3, 4, 5, 6, 7]
 */


/**
 * Ejercicio 16 — Sistema de usuarios
 * 
 * Dado el array:
 *   const usuarios = [
 *     { id: 1, nombre: "Juan" },
 *     { id: 2, nombre: "Ana" },
 *     { id: 3, nombre: "Pedro" }
 *   ];
 * 
 * Requisito:
 *   - Creá un Map donde: clave -> id, valor -> objeto usuario.
 *   - De forma que al ejecutar usuariosMap.get(2) devuelva: { id: 2, nombre: "Ana" }
 */