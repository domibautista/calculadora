//Ejercicio 1
//  const producto = {
//    nombre: "Teclado",
//    precio: 1500,
//    stock: 10
//  };

//  function agregarStock(producto, cantidad) {
//      producto.stock+= cantidad;
//      return producto;
//  }

//  const producto2 = producto;
//  agregarStock(producto2, 5);


//Ejercicio2
//   const usuario = {
//     nombre: "Juan",
//     edad: 20,
//     direccion: {
//       ciudad: "Montevideo",
//       calle: "18 de Julio"
//     }
//   };

//   const copia = {
//       ...usuario,
//       direccion: {
//           ...usuario.direccion
//       }
//   };
//   copia.nombre = "Pedro";
//   copia.direccion.ciudad = "Salto";
//   console.log(copia);
//   console.log(usuario);

//Ejercicio 3
//  function usuario(nombre, edad) {
//      this.nombre = nombre;
//      this.edad = edad;
//  }

//  usuario.prototype.presentarse = function() {
//      console.log(`Hola, soy ${this.nombre}`);
//  }

//  const usuario1 = new usuario("Juan", 20);
//  const usuario2 = new usuario("Ana", 25);

//  console.log(usuario1);

//Ejercicio 4
//  export default class persona {
//    constructor(nombre, edad) {
//      this.nombre = nombre;
//      this.edad = edad;
//    }

//    presentarse() {
//      console.log(`Hola, soy ${this.nombre} y tengo ${this.edad} años`);
//    }
//  }

//  class empleado extends persona {
//    constructor(nombre, edad, salario) {
//      super(nombre, edad)
//      this.salario = salario;
//    }

//    trabajar() {
//      console.log(`${this.nombre} esta trabajando`)
//    }
//  }

//  class programador extends empleado {
//    constructor(nombre, edad, salario, lenguaje) {
//      super(nombre, edad, salario)
//      this.salario = salario;
//      this.lenguaje = lenguaje;
//    }

//    programar() {
//      console.log(`Programando en ${this.lenguaje}`)  
//    }
//  }
//  const dev = new programador(
//    "Carlos",
//    25,
//    60000,
//    "JavaScript"
//  );
