//Nivel 2. Ejercicio 5, manejo de errores

// function dividir(a, b) {
//   try {
//     if (typeof a !== "number" || typeof b !== "number") {
//       throw new Error("Solo se pueden dividir numeros");
//     } else if (b === 0) {
//       throw new Error("No se puede dividir por cero");
//     }
//     let resultado = a / b;
//     console.log(resultado);
//   } catch (error) {
//     console.log("ocurrio un error:", error.message);
//   } finally {
//     console.log("Operacion finalizada!");
//   }
// }
//Ejercicio 6, errores personalizados
//  export default class SaldoInsuficienteError extends Error {
//    constructor(message) {
//      super(message);
//    }
//  }

//  class Cuenta {
//    constructor(saldo = 0) {
//      this.saldo = saldo;
//    }
//    depositar(monto) {
//      if (monto > 0) {
//        this.saldo += monto;
//      }
//    }
//    retirar(monto) {
//      if (this.saldo < monto) {
//        throw new SaldoInsuficienteError("No hay suficiente saldo");
//      } else {
//        this.saldo -= monto;
//      }
//    }
//  }
// //Ejercicio 7, Callback
// function procesarUsuario(usuario, callback) {
//   setTimeout(() => {
//     callback(usuario);
//   }, 2000);
// }
//Ejercicio 8, Convertir a Promise
// function obtenerUsuario() {
//     return new Promise((resolve, reject) => {
//         setTimeout(() => {
//             if(Math.random() > 0.3) {
//                 resolve("Todo salio bien. ¡Es un exito!!")
//             } else {
//                 reject("Una calamidad 💥")
//             }
//         }, 2000)
//     })
// }
// obtenerUsuario().then((res) => {
//     console.log("exito", res);
//     return res;
// }).catch((error) => {
//     console.log("Ocurrio un error", error);
// })
//Ejercicio 9, promise.all()
// function obtenerUsuario(e) {
//   return new Promise((resolve, reject) => {
//     setTimeout(() => {
//       if (e) {
//         resolve({
//             id: 1,
//             name: "Juan"
//         });
//       } else {
//         reject("Rechazada!");
//       }
//     }, 2000);
//   });
// }
// function obtenerProducto(e) {
//   return new Promise((resolve, reject) => {
//     setTimeout(() => {
//       if (e) {
//         resolve({
//             productId: 1,
//             productName: "Lavarropas"
//         });
//       } else {
//         reject("Rechazada!");
//       }
//     }, 4000);
//   });
// }
// function obtenerPedidos(e) {
//   return new Promise((resolve, reject) => {
//     setTimeout(() => {
//       if (e) {
//         resolve({
//             id: 102,
//             total: 348
//         });
//       } else {
//         reject("Rechazada!");
//       }
//     }, 1500);
//   });
// }
// let p1 = obtenerUsuario(true);
// let p2 = obtenerProducto(true);
// let p3 = obtenerPedidos(true);

// Promise.all([p1, p2,p3]).then(([usuario, producto, pedido]) => {
//     const resultado = {
//         usuario,
//         producto,
//         pedido
//     };
//     console.log(resultado);
// }).catch((error) => {
//     console.log(error);
// })
//Ejercicio 10 - API
//   async function obtenerUsuarios() {
//     try {
//       const response = await fetch("https://jsonplaceholder.typicode.com/users");

//       if(!response.ok) {
//         throw new Error(`Error al obrener los usuarios: status ${response.status}`)
//       }

//       const datos = await response.json();
//       return datos;
//     } catch(error) {
//       console.log("error: ", error.message);
//     }
//   }
 //Ejercicio 11 - Buscar Usuario
//  async function buscarUsuario(nombre) {
//    try {

//      const datos = await obtenerUsuarios();
//      const userExist = datos.find(e => e.name === nombre);
   
//      if(userExist) {
//        console.log(`Usuario encontrado: ${userExist.name}`)
//      } else {
//        console.log("Usuario no encontrado")
//      }
//    } catch(error) {
//      console.log("Ocurrio un error:", error.message);
//      throw error;
//    }
//  }
// //el json es un array de objetos. Tenerlo en cuenta para iterar. Podría usar metodos del array como find() o includes()
    

// export {buscarUsuario, obtenerUsuarios};