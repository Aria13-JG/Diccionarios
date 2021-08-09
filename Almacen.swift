struct Almacen{
  var inventario: [(Producto, Int)]

  init(){
    inventario = []
  }

  func showProducts(by category: Category){
    for producto in inventario{
      if producto.0.isInCategory(category: category){
        print(producto.0)
      }
    }
  }

  func showProducts(){
    for producto in inventario{
      print(producto.0, producto.1)
    }
  }

  //Funcion para Existencia actual
func showExist(){
    print("¿Cuantos desea?")
    //let num = 1
        for producto in inventario{
          var exist = producto.1 - 1
          print(producto.0)
          if producto.1 > 0 {
            print(exist)
          }else{
            print("...No hay existencias")
          }
    }
  }

  mutating func addProducto(producto: Producto, cantidad: Int){
    var tupla = (producto, cantidad)
    inventario.append(tupla)
  }

  //Cambie var por let en la tupla

  mutating func removeProducts(producto: Producto, cantidad: Int){         
    //let tupla = (producto, producto.1 - cantidad)
    var tupla = (producto, producto.1 - cantidad)
    inventario.append(tupla)
   }
}