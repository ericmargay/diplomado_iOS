import Foundation

/// You can ignore line 8, asume that the constant ``groceryList`` will contain an **Array of Strings**
/// For testing locally you can comment line 8 and remove the `//` from line 9

/// **Remember to comment line 9 and remove the `//` from line 8 before submitting your code**

let groceryList: [String] = Array(CommandLine.arguments.dropFirst())

func siftBeans (fromGroceryList: [String]) -> (beans: [String],otherGroseries: [String]){
    
    var beans = [String]()
    var otherGroseries = [String]()
    
    for Grosery in fromGroceryList{
        if Grosery.hasSuffix("beans"){
            beans.append(Grosery)
        } else {
            otherGroseries.append(Grosery)
        }
    }
    return(beans: beans , otherGroseries: otherGroseries)
}


//let groceryList: [String] = ["green beans", "milk", "black beans", "pinto beans", "apples"]

let myList = siftBeans(fromGroceryList: groceryList)

print(myList.beans)
print(myList.otherGroseries)
