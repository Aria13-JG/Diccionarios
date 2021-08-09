class Category: CustomStringConvertible{
  var name: String = ""
  var subCategories: [Category]

  var description: String{
    return name
  }

  init(name: String){
    self.name = name
    self.subCategories = []
  }
    
    func addSubCategory(category: Category){
        self.subCategories.append(category)
    }

    func showProducts(){
      
    }
}