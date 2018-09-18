//
//  ViewController.swift
//  BasicSwiftDemo
//
//  Created by apple on 2018/8/29.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let possibleString: String? = "An optional String."
        let forcedString: String = possibleString!
        print(forcedString)

        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString
        print(implicitString)
        
        
        //一个 do 语句创建了一个新的包含作用域，使得错误能被传播到一个或多个 catch 从句。
        do {
            try canThrowAnError()
            // 没有错误消息抛出
        } catch {
            // 有一个错误消息抛出
        }
        
        //断言
        let age = 2
        assert(age >= 0, "A person's age cannot be less than zero")
        
        if age > 10 {
            print("You can ride the roller-coaster or the ferris wheel.")
        } else if age > 0 {
            print("You can ride the ferris wheel.")
        } else {
            assertionFailure("A person's age cann't be less than zero.")
        }
        
        //多行字符串字面量
        let quotation = """

        The White Rabbit put on \
        his spectacles. "Where shall I begin,\
        please your Majesty?" he asked.

        "Begin at the beginning," the King said gravely," and \
        go on till you come to the end; then stop."
        """
        print("\\n")
        print(quotation)
        
        let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
        let catString = String(catCharacters)
        print(catString)
        
        let string1 = "hello"
        let string2 = " there"
        var welcome = string1 + string2
        print(welcome)
        
        var instruction = "look over"
        instruction += string2
        
        let exclamationMark: Character = "!"
        welcome.append(exclamationMark)
        //不能将一个字符串或者字符添加到一个已经存在的字符变量上，因为字符变量只能包含一个字符
        
        let badStart = """
        one
        two
        """
        let end = """

        three
        """
        print(badStart + end)
        _ = badStart.index(before: badStart.endIndex)
        
        var shoppingList = ["fruit", "vegetables"]
        shoppingList.append("meat")
        shoppingList += ["milk", "eggs"]
        shoppingList.removeLast()
        
        for (index, value) in shoppingList.enumerated() {
            print("Item \(String(index + 1)):\(value)")
        }
        
        var letters = Set<Character>()
        print("letters is of type Set<Character> with \(letters.count) items.")
        
        var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
        print("I have \(favoriteGenres.count) favorite music genres.")
        if favoriteGenres.isEmpty {
            print("As far as music goes, I'm not picky.")
        } else {
            print("I have particular music preferences.")
        }
        
        favoriteGenres.insert("Jazz")
        if let removedGenre = favoriteGenres.remove("Rock") {
            print("\(removedGenre)? I'm over it.")
        } else {
            print("I never much cared for that.")
        }
        
        if favoriteGenres.contains("Funk") {
            print("I get up on the good foot.")
        } else {
            print("It's too funky in here.")
        }
        
        //遍历一个集合
        for genre in favoriteGenres {
            print("\(genre)")
        }
        
        for genre in favoriteGenres.sorted() {
            print("\(genre)")
        }
        
        /**
         使用intersection(_:)方法根据两个集合中都包含的值创建一个新的集合
         使用symmetricDifference(_:)方法根据在一个集合中但不在两个集合中的值创建一个新的集合
         使用union(_:)方法根据两个集合的值创建一个新的集合
         使用subtracting(_:b)方法根据不在b集合中的值创建一个新的集合
         */
        let oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
        let unionDigits: [Int] = oddDigits.union(evenDigits).sorted()
        print(unionDigits)
        let interDigits: [Int] = oddDigits.intersection(evenDigits).sorted()
        print(interDigits)
        let subDigits: [Int] = oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
        print(subDigits)
        let symmetricDigits: [Int] = oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
        print(symmetricDigits)
        
        /**
         使用“是否相等”运算符（==）来判断两个集合是否包含全部相同的值
         使用isSubset(of:)方法来判断一个集合中的值是否也被包含在另外一个集合中
         使用isSuperset(of:)方法来判断一个集合包含另一个集合中所有的值
         使用isStrictSubset(of:)或者isStrictSuperset(of:)方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等
         使用isDisjoint(with:)方法来判断两个集合是否不含有相同的值（是否没有交集）
         */
        let houseAnimals: Set = ["🐶", "🐱"]
        let farmAnimals: Set = ["🐂", "🐓", "🐑", "🐶", "🐱"]
        let cityAnimals: Set = ["🐦", "🐭"]
        
        let isSub = houseAnimals.isSubset(of: farmAnimals)
        print(isSub)
        let isSuper = farmAnimals.isSuperset(of: houseAnimals)
        print(isSuper)
        let isDisjoint = farmAnimals.isDisjoint(with: cityAnimals)
        print(isDisjoint)
        
        //字典Dictionary<Key, Value>
        var namesOfIntegers = [Int: String]()
        namesOfIntegers[16] = "sixteen"
        var airports = ["YYZ" : "Toronto Pearson", "DUB" : "Dublin"]
        let updateStr = airports.updateValue("DiBi", forKey: "DUB")
        print(updateStr!)
        print(airports)
        
        for (airportCode, airportName) in airports {
            print("\(airportCode): \(airportName)")
        }
        
        for airportCode in airports.keys {
            print("Airport code: \(airportCode)")
        }
        for airportName in airports.values {
            print("Airport name: \(airportName)")
        }
        
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
        }
        print("\(base) to the power of \(power) is \(answer)")
        
        let minuteInterval = 5
        let minutes = 60
        
        //半闭区间
        for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
            //没五分钟渲染一个刻度线（0，5，10，15 ... 45, 50, 55）
            print(tickMark)
        }
        //闭区间
        let hours = 12
        let hourInterval = 3
        for tickMark in stride(from: 3, through: hours, by: hourInterval) {
            //每3小时渲染一个刻度线（3，6，9，12）
            print(tickMark)
        }
        
        //switch 条件语句
        let anotherCharacter: Character = "a"
        switch anotherCharacter {
        case "a"://无效，这个分支下面没有语句
            do {
            
            }
        case "A":
            print("The letter A")
        default:
            print("Not the letter A")
        }
        
        switch anotherCharacter {
        case "a", "A":
            print("The letter A")
        default:
            print("Not the letter A")
        }
        
        //区间匹配  case 分支的模式也可以是一个值的区间。
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        let naturalCount: String
        switch approximateCount {
        case 0:
            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
        }
        print("There are \(naturalCount) \(countedThings)")
        
        //元组  可以使用元组在同一个 switch 语句中测试多个值。元组中的元素可以是值，也可以是区间。使用下划线（_）来匹配所有可能的值。
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            print("\(somePoint) is at the origin")
        case (_, 0):
            print("\(somePoint) is on the x-axis")
        case (0, _):
            print("\(somePoint) is on the y-axis")
        case (-2...2, -2...2):
            print("\(somePoint) is inside the box")
        default:
            print("\(somePoint) is outside of the box")
        }
        
        //值绑定（Value Bindings） case 分支允许将匹配的值声明为临时常量或变量，并且在case分支体内使用--这种行为成为值绑定，因为匹配的值在case分支体内，与临时的常量或变量绑定。
        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with an y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y)")
        }
        
        //where  case分支的模式可以使用 where 语句来判断额外的条件。
        let yetAnotherPoint = (1, 1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            print("(\(x), \(y)) is on the line x = y")
        case let (x, y) where x == -y:
            print("(\(x), \(y)) is on the line x = -y")
        case let (x, y):
            print("(\(x), \(y) is just some arbitrary point")
        }
        
        //复合型 Cases  当多个条件可以使用同一种方法来处理时，可以将这几种可能放在同一个case后面，并且用逗号隔开。当case后面的任意一种模式匹配的时候，这条分支就会被匹配。并且，如果匹配列表过长，还可以分行书写：
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j",
                 "k", "l", "m", "n":
            print("\(someCharacter) is a consonant")
        default:
            print("\(someCharacter) is not a vowel or a consonant")
        }
        
        //复合匹配同样可以包含值绑定。复合匹配里所有的匹配模式，都必须包含相同的值绑定。并且每一个绑定都必须获取到相同类型的值。这保证了，无论复合匹配中的哪个模式匹配，分支体内的代码，都能获取到绑定的值，并且绑定的值都有一样的类型。
        let stillAnotherPoint = (9, 0)
        switch stillAnotherPoint {
        case (let distance, 0), (0, let distance):
            print("On an axis, \(distance) from the origin")
        default:
            print("Not on an axis")
        }
        
        //控制转移语句 continue break fallthrough return throw
        //贯穿（Fallthrough） 在Swift里，switch语句不会从上一个case分支跳转到下一个case分支中。相反，只要第一个匹配到的case分支完成了它需要执行的语句，整个switch代码块完成了它的执行。相比之下，C语言要求你显式地插入break语句到每个case分支的末尾来阻止自动落入到下一个case分支中。Swift的这种避免默认落入到下一个分支中的特性意味着它的switch功能要比C语言的更加清晰和可预测，可以避免无意识地执行多个case分支从而引发的错误。
        //如果你确实需要C风格的贯穿的特性，你可在每个需要该特性的case分支中使用fallthrough关键字。
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        print(description)
        
        //fallthrough 关键字不会检查它下一个将会落入执行的case中的匹配条件。fallthrough简单地使代码继续连接到下一个case中的代码，这和C语言标准中的switch语句特性是一样的。
        
        //带标签的语句 声明一个带标签的语句是通过在该语句的关键词的同一行前面放置一个标签，作为这个语句的前导关键字，并且该标签后面跟随一个冒号。
        /**
         label name: while condition {
            statements
         }
         */
        
        //提前退出  像if语句一样，guard的执行取决于一个表达式的布尔值。我们可以使用guard语句来要求条件必须为真时，以执行guard语句后的代码。不同于if语句，一个guard语句总是有一个else从句，如果条件不为真则执行else从句中的代码。
        
        func greet(person: [String: String]) {
            guard let name = person["name"] else {
                return
            }
            print("Hello \(name)")
            guard let location = person["location"] else {
                print("I hope the weather is nice near year.")
                return
            }
            print("I hope the weather is nice in \(location).")
        }
        
        greet(person: ["name": "John"])
        greet(person: ["name": "Jane", "location": "Cupertino"])
        
        //检测API可用性
        /**
         if #available(platform name version, ..., *) {
                APIs 可用，语句将执行
             } else {
                APIs 不可用，语句将不执行
             }
         */
        if #available(iOS 10, macOS 10.12, *) {
            //在 iOS使用 iOS10的API, 在macOS使用macOS10.12的API
        } else {
            //使用先前版本的iOS 和 macOS的API
        }
        
        //函数 多重返回值函数
        func minMax(array: [Int]) -> (min: Int, max: Int) {
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array[1..<array.count] {
                if value < currentMin {
                    currentMin = value
                } else if value > currentMax {
                    currentMax = value
                }
            }
            return (currentMin, currentMax)
        }
        
        let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
        print("min is \(bounds.min) and max is \(bounds.max)")
        
        //注意：可选元组类型如(Int, Int)？与元组包含可选类型如(Int?, Int?)是不同的。可选的元组类型，整个元组是可选的，而不只是元组中的每个元素值。
        func optionMinMax(array: [Int]) -> (min: Int, max: Int)? {
            if array.isEmpty {return nil}
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array[1..<array.count] {
                if value < currentMin {
                    currentMin = value
                } else if value > currentMax {
                    currentMax = value
                }
            }
            return (currentMin, currentMax)
        }
        if let bounds = optionMinMax(array: [8, -6, 2, 109, 3, 71]) {
            print("min is \(bounds.min) and max is \(bounds.max)")
        }
        
        //指定参数标签  参数标签的使用能够让一个函数在调用时更有表达力，更类似自然语言，并且仍保持了函数内部的可读性以及清晰的意图。
        func someFunction(argumentLabel parameterName: Int) {
            //在函数体内，parameterName 代表参数值
        }
        func greetSecond(person: String, from hometown: String) -> String {
            return "Hello \(person)! Glad you could visit from \(hometown)."
        }
        print(greetSecond(person: "Bill", from: "Cupertino"))
        
        //忽略参数标签
        func anotherFunction(_ firstParameterName: Int, secondParameterName: Int) {
            //在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
        }
        anotherFunction(1, secondParameterName: 2)
        
        //默认参数值 你可以在函数体中通过给参数赋值来为任意一个参数定义默认值（Default Value）。当默认值被定义后，调用这个函数时可以忽略这个参数。
        func thirdFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
            //如果你在调用时候不传第二个参数，parameterWithDefault 会值为 12 传入到函数体中。
        }
        thirdFunction(parameterWithoutDefault: 3)
        thirdFunction(parameterWithoutDefault: 2, parameterWithDefault: 8)
        
        //可变参数 一个可变参数可以接受零个或多个值。函数调用时，你可以用可变参数来指定函数参数可以被传入不确定数量的输入值。通过在变量类型名后面加入(...)的方式来定义可变参数。 可变参数的传入值在函数体中变为此类型的一个数组。
        //注意： 一个函数最多只能拥有一个可变参数
        func arithmeticMean(_ numbers: Double...) -> Double {
            var total: Double = 0
            for number in numbers {
                total += number
            }
            return total / Double(numbers.count)
        }
        arithmeticMean(1, 2, 3, 4, 5)
        arithmeticMean(3, 4.56, 8.3)
        
        //输入输出参数  函数参数默认是常量。试图在函数体中更改参数值将会导致编译错误。这意味着你不能错误地更改参数值。如果你想要一个函数可以修改参数的值，并且想要在这些修改在函数调用结束后仍然存在，那么就应该把这个参数定义为输入输出参数（In-Out Parameters）。 定义一个输入数尺参数时，在参数定义前加 inout 关键字。一个输入输出参数有传入函数的值，这个值被函数修改，然后被传出函数，替换原来的值。 你只能传递变量给输入输出参数。你不能传入常量或者字面量，因为这些量是不能被修改的。当传入的餐食作为输入输出参数时，需要在参数名前加 & 符，表示这个值可以被函数修改。
        //注意： 输入输出参数不能有默认值，而且可变参数不能用 inout 标记。
        func swapTwoInts(_ a: inout Int, _ b: inout Int) {
            let temporary = a
            a = b
            b = temporary
        }
        var someInt = 3
        var anotherInt = 107
        swapTwoInts(&someInt, &anotherInt)
        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
        
        //函数类型  每个函数都有种特定的函数类型，函数的类型由函数的参数类型和返回类型组成。
        
        //使用函数类型  在Swift中，使用函数类型就像使用其他类型一样。例如，你可以定义一个类型为函数的常量或变量，并将适当的函数赋值给它：
        func addTwoInts(_ a: Int, _ b: Int) -> Int {
            return a + b
        }
        let mathFunction:(Int, Int) -> Int = addTwoInts
        var _ = mathFunction(3, 19)
        
        //函数类型作为参数类型  你可以用(Int, Int) -> Int 这样的函数类型作为另一个函数的参数类型。这样你可以将函数的一部分实现留给函数的调用者来提供。
        func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
            print("Result: \(mathFunction(a, b))")
        }
        printMathResult(addTwoInts, 3, 5)
        
        //函数类型作为返回类型  你可以用函数类型作为另一个函数的返回类型。你需要做的是在返回箭头(->)后写一个完整的函数类型。
        
        func stepForward(_ input: Int) -> Int {
            return input + 1
        }
        func stepBackward(_ input: Int) -> Int {
            return input - 1
        }
        
        func chooseStepFunction(backward: Bool) -> (Int) -> Int {
            return backward ? stepBackward : stepForward
        }
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
        print("Counting to zero:")
        while currentValue != 0 {
            print("\(currentValue)...")
            currentValue = moveNearerToZero(currentValue)
        }
        
        //嵌套函数  全局函数，它们定义在全局域中。你也可以把函数定义在别的函数体中，称为 嵌套函数（nested functions）。默认情况下，嵌套函数是对外界不可见的，但是可以被它们的外围函数（enclosing function）调用。一个外围函数也可以返回它的某一个嵌套函数，使得这个函数可以在其他域中被使用。
        
        var names = ["Chris", "Alex", "Ewa", "Eaniella", "Barry"]
        var sortedName = names.sorted()//正序
        print(names)
        print(sortedName)
        var reversedNames = names.sorted { (_ s1: String, _ s2: String) -> Bool in
            //倒序
            return s1 > s2
        }
        //根据上下文推断类型
        reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 })
        
        //单表达式闭包隐式返回
        reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })
        print(reversedNames)
        
        //闭包表达式语法：
        /**
        {
            (parameters) -> return type in
            statements
        }
        */
        //注意： 闭包表达式参数可以是in-out参数，但不能设定默认值。如果你命名了可变参数，也可以使用此可变参数。元组也可以作为参数和返回值。 在内联闭包表达式中，函数和返回值类型都写在大括号内，而不是大括号外。闭包的函数体部分由关键词 in 引入。该关键词表示闭包的参数和返回值类型定义已经完成，闭包函数体即将开始。
        
        //实际上，通过内联闭包表达式构造的闭包作为参数传递给函数或者方法时，总是能够推断出闭包的参数和返回值类型。这意味着闭包作为函数或者方法的参数时，你几乎不需要利用完整格式构造内联闭包。
        
        //参数名称缩写  Swift自动为内联闭包提供了参数名称缩写功能，你可以直接通过$0，$1，$2来顺序调用闭包的参数，一次类推。如果你在闭包表达式中使用参数名称缩写，你可以在闭包定义中省略参数列表，并且对于参数名称缩写的类型会通过函数类型进行推断。in 关键字也同样可以被省略，因为此时闭包表达式完全由闭包函数体构成：
        reversedNames = names.sorted(by: { $0 > $1 })
        //在这个例子中，$0和$1表示闭包中第一个和第二个 String 类型的参数。
        
        //运算符方法  实际上还有一种更简短的方式来编写上面例子中的闭包表达式。Swift的 String 类型定义了关于大于号（>）的字符串实现，其作为一个函数接受两个 String 类型的参数并返回 Bool 类型的值。而这正好与 sorted(by:)方法的参数需要的函数类型相符合。因此，你可以简单地传递一个大于号，Swift可以自动推断出你想使用大于号的字符串函数实现：
        reversedNames = names.sorted(by: >)
        
        //尾随闭包  如果你需要将一个很长的闭包表达式作为最后一个参数传递给函数，可以使用尾随闭包来增强函数的可读性。尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用。在使用尾随闭包时，你不用写出它的参数标签：
        func someFunctionThatTakesAClosure(closure: () -> Void) {
            //函数体部分
        }
        //以下是不适用尾随闭包进行函数调用
        someFunctionThatTakesAClosure(closure: {
            // 闭包主题部分
        })
        //以下是使用尾随闭包进行函数调用
        someFunctionThatTakesAClosure() {
            //闭包主题部分
        }
        
        reversedNames = names.sorted() { $0 > $1 }
        //如果闭包表达式是函数或者方法的唯一参数，则当你使用尾随闭包时，你甚至可以把 () 省略掉：
        reversedNames = names.sorted { $0 > $1 }
        
        let digitNames = [0 : "Zero", 1 : "One", 2 : "Two", 3 : "Three", 4 : "Four", 5 : "Five", 6 : "Six", 7 : "Seven", 8 : "Eight", 9 : "Nine"]
        let numbers = [16, 89, 473]
        let numbersStrings = numbers.map { (number) -> String in
            var number = number
            var output = ""
            repeat {
                output = digitNames[number % 10]! + output
                number /= 10
            } while number > 0
            return output
        }
        print(numbersStrings)
        
        func makeIncrementer(forIncrement amount: Int) -> () -> Int {
            var runningTotal = 0
            func incrementer() -> Int {
                runningTotal += amount
                return runningTotal
            }
            return incrementer
        }
        
        let incrementByTen = makeIncrementer(forIncrement: 10)
        print(incrementByTen())
        print(incrementByTen())
        print(incrementByTen())
        let incrementBySeven = makeIncrementer(forIncrement: 7)
        print(incrementBySeven())
        print(incrementByTen())
        
        //闭包是引用类型  函数也是引用类型  无论你将函数或闭包赋值给一个常量还是变量，你实际上都是将常量或变量的值设置为对应函数或闭包的引用。上面的例子中，指向闭包的引用incrementByTen是一个常量，而非闭包内容本身。
        //这也意味着如果你将闭包赋值给了两个不同的常量或变量，两个值都会指向同一个闭包：
        let alsoIncrementByTen = incrementByTen
        print(alsoIncrementByTen())
        
        //逃逸闭包  当一个闭包作为参数传到一个函数中，但是这个闭包在函数返回之后才被执行，我们称该闭包从函数中逃逸。当你定义接受闭包作为参数的函数时，你可以在参数名之前标注 @escaping，用来指明这个闭包是允许“逃逸”出这个函数的。  一种能使闭包“逃逸”出函数的方法是，将这个闭包保存在一个函数外部定义的变量中。举个例子，很多启动异步操作的函数接受一个闭包参数作为completion handler。这类函数会在异步操作开始之后立刻返回，但是闭包直到异步操作结束后才会被调用。在这种情况下，闭包需要“逃逸”出函数，因为闭包需要在函数返回之后被调用。
       
        class SomeClass {
            var x = 10
            var completionHandlers: [() -> Void] = []
            
            func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
                completionHandlers.append(completionHandler)
            }
            //将一个闭包标记为 @escaping 意味着你必须在闭包中显式地引用 self。
            func someFunctionWithNonescapingClosure(closure: () -> Void) {
                closure()
            }
            func doSomething() {
                someFunctionWithEscapingClosure {
                    self.x = 100
                }
                someFunctionWithNonescapingClosure {
                    x = 200
                }
            }
        }
        let instance = SomeClass()
        instance.doSomething()
        print(instance.x)
        
        //自动闭包  它是一种自动创建的闭包，用于包装传递给函数作为参数的表达式。这种闭包不接受任何参数，当它被调用的时候，会返回被包装在其中的表达式的值。这种便利语法让你能够省略闭包的花括号，用一个普通的表达式来代替显式的闭包。
        //自动闭包让你能够延迟求值，因为直到你调用这个闭包，代码段才会执行。延迟求值对于那些有副作用和高计算成本的代码来说是很有益处的，因为它使得你能控制代码的执行时机。下面的代码展示了闭包如何延时求值。
        var customersInline = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        print(customersInline.count)
        
        let customerProvider = { customersInline.remove(at: 0) }
        print(customersInline.count)
        
        print("Now serving \(customerProvider())!")
        print(customersInline.count)
        
        func serve(customer customerProvider: () -> String) {
            print("Now serving \(customerProvider())!")
        }
        serve(customer: { customersInline.remove(at: 0) })
        
        func autoServe(customer customerProvider: @autoclosure () -> String) {
            print("Now serving \(customerProvider())!")
        }
        autoServe(customer: customersInline.remove(at: 0))
        
        var customerProviders: [() -> String] = []
        func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
            customerProviders.append(customerProvider)
        }
        collectCustomerProviders(customersInline.remove(at: 0))
        collectCustomerProviders(customersInline.remove(at: 0))
        print("Collected \(customerProviders.count) closure.")
        for customerProvider in customerProviders {
            print("Now serving \(customerProvider())!")
        }
        
        //枚举  它为一组相关的值定义了一个共同的类型，使你可以在你的代码中以类型安全的方式来使用这些值。Swift中的枚举更加灵活，不必给每一个枚举成员提供一个值。如果给枚举成员提供一个值（称为“原始”值），则该值的类型可以是字符串、字符，或是一个整型值或浮点数。
        //此外，枚举成员可以指定任意类型的关联值存储到枚举成员中，就像其他语言中的联合体（unions）和变体（variants）。你可以在一个枚举中定义一组相关的枚举成员，每一个枚举成员都可以有适当类型的关联值。
        //在Swift中，枚举类型是一等（first-class）类型。他们采用了很多在传统上只被类（class）所支持的特性，例如计算属性，用于提供枚举值的附加信息，实例方法，用于提供和枚举值相关联的功能。枚举也可以定义构造函数来提供一个初始值；可以在原始实现的基础上扩展它们的功能，还可以遵循协议来提供标准的功能。
        //枚举语法
        enum SomeEnumeration {
            //枚举定义放在这里
        }
        
        enum CompassPoint {
            case north
            case south
            case east
            case west
        }
        //注意： 与 C 和 Objective-C 不同，Swift的枚举成员在被创建时不会被赋予一个默认的整型值。在上面的CompassPoint例子中，north，south，east和west不会被隐式地赋值为0，1，2和3。相反，这些枚举成员本身就是完备的值，这些值的类型是已经明确定义好的 CompassPoint类型。
        //多个成员值可以出现在同一行上，用逗号隔开：
        enum Planet {
            case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
        }
        var directionToHead = CompassPoint.west
        directionToHead = .east
        //当 directionToHead 的类型已知时，再次为其赋值可以省略枚举类型名。在使用具有显式类型的枚举值时，这种写法让代码具有更好的可读性。
        
        //关联值
        enum Barcode {
            case upc(Int, Int, Int, Int)
            case qrCode(String)
        }
        
        var productBarode = Barcode.upc(8, 87623, 67362, 3)
        productBarode = .qrCode("aBVHDiekdiekfse")
        switch productBarode {
        case .upc(let numberSystem, let manufacturer, let product, let check):
            print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
        case .qrCode(let productCode):
            print("QR Code: \(productCode)")
        }
        
        //如果一个枚举成员的所有关联值都被提取成常量，或者都被提取成变量，为了简洁，你可以只在成员名称前标注一个 let 或者 var：
        switch productBarode {
        case let .upc(numberSystem, manufacturer, product, check):
            print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
        case let .qrCode(productBarode):
            print("QR Code: \(productBarode)")
        }
        
        //原始值 枚举成员可以被默认值（称为原始值）预填充，这些原始值的类型必须相同。
        enum ASCIIControlCharacter: Character {
            case tab = "\t"
            case lineFeed = "\n"
            case carriageReture = "\r"
        }
        //原始值可以是字符串、字符，或者任意整型值或浮点型值。每个原始值在枚举声明中必须是唯一的。
        //注意：原始值和关联值是不同的。原始值是在定义枚举时被预先填充的值，像上述三个ASCII码。对于一个特定的枚举成员，它的原始值始终不变。关联值是创建一个基于枚举成员的常量或变量时才设置的值，枚举成员的关联值可以变化。
        
        //原始值的隐式赋值  在使用原始值为整型或者字符串类型的枚举时，不需要显式地为每一个枚举成员设置原始值，Swift将会自动为你赋值。
        enum IntPlanet: Int {
            case mercury = 1, venus, earth, mars, jupiter
        }
        enum SCompassPoint: String {
            case north, south, east, west
        }
        //使用枚举成员的rawValue属性可以访问该枚举成员的原始值。
        let earthsOrder = IntPlanet.earth.rawValue
        print(earthsOrder)
        
        let sunsetDirection = SCompassPoint.west.rawValue
        print(sunsetDirection)
        
        let possiblePlanet = IntPlanet(rawValue: 4)
        print(possiblePlanet ?? .earth)
        
        let positionToFind = 11
        if let somePlanet = IntPlanet(rawValue: positionToFind) {
            switch somePlanet {
            case .earth:
                print("Mostly harmless")
            default:
                print("Not a safe place for humans")
            }
        } else {
            print("There isn't a planet at position \(positionToFind)")
        }
        
        //递归枚举 它是一种枚举类型，它有一个或多个枚举成员使用该枚举类型的实例作为关联值。使用递归枚举时，编译器会插入一个间接层。你可以在枚举成员前加上 indirect 来表示该成员可递归。
        enum ArithemticExpression {
            case number(Int)
            indirect case addition(ArithemticExpression, ArithemticExpression)
            indirect case multiplication(ArithemticExpression, ArithemticExpression)
        }
        //你也可以在枚举类型开头加上 indirect 关键字来表明它的所有成员都是可递归的：
        indirect enum AllArithemticExpression {
            case number(Int)
            case addition(AllArithemticExpression, AllArithemticExpression)
            case multiplication(AllArithemticExpression, AllArithemticExpression)
        }
        let five = AllArithemticExpression.number(5)
        let four = AllArithemticExpression.number(4)
        let sum = AllArithemticExpression.addition(five, four)
        let product = AllArithemticExpression.multiplication(sum, AllArithemticExpression.number(2))
        
        func evaluate (_ expression: AllArithemticExpression) -> Int {
            switch expression {
            case let .number(value):
                return value
            case .addition(let left, let right):
                return evaluate(left) + evaluate(right)
            case let .multiplication(left, right):
                return evaluate(left) * evaluate(right)
            }
        }
        print(evaluate(product))
        
        //类和结构体 与其他编程语言所不同的是，Swift并不要求你为自定义类和结构体去创建独立的接口和实现文件。你所要做的是在一个单一文件中定义一个类或者结构体，系统将会自动生成面向其它代码的外部接口。
        //注意： 通常一个类的实例被称为对象。然而在Swift中，类和结构体的关系要比在其他语言中更加的密切。
        //Swift中类和结构体的共同处在于：
        /**
         定义属性用于存储值
         定义方法用于提供功能
         定义下标操作通过下标语法可以访问它们的值
         定义构造器用于生成初始化值
         通过扩展以增加默认实现的功能
         遵循协议以提供某种标准功能
         */
        //与结构体相比，类还有如下的附加功能：
        /**
         继承允许一个类继承另一个类的特征
         类型转换允许在允许时检查和解释一个类实例的类型
         析构器允许一个类实例释放任何其所被分配的资源
         引用计数允许对一个类多次引用
         */
        struct Resolution {
            var width = 0
            var height = 0
        }
        class VideoMode {
            var resolution = Resolution()
            var interlaced = false
            var frameRate = 0.0
            var name: String?
        }
        
        let someResolution = Resolution()
        let someVideoMode = VideoMode()
        //结构体和类都使用构造器语法来生成新的实例。构造器语法的最简单形式是在结构体或者类的类型名称后跟随一对空括号。通过这种方式所创建的类或者结构体实例，其属性均会被初始化为默认值。
        print("The width of someResolution is \(someResolution.width)")
        
        print("The width of someVideoMode is \(someVideoMode.resolution.width)")
        someVideoMode.resolution.width = 1280
        print("The width of someVideoMode is \(someVideoMode.resolution.width)")
        
        //注意：与Objective-C 语言不同的是，Swift允许直接设置结构体属性的子属性。
        //结构体类型的成员逐一构造器  所有结构体都有一个自动生成的成员逐一构造器，用于初始化新结构体实例中成员的属性。
        let vga = Resolution(width: 640, height: 480)
        //与结构体不同，类实例没有默认的成员逐一构造器。
        //结构体和枚举是值类型  值类型被赋予给一个变量、常量或者被传递给一个函数的时候，其值会被拷贝。
        //实际上，在Swift中，所有的基本类型：整型、浮点数、布尔值、字符串、数组和字典，都是值类型，并且在底层都是以结构体的形式所实现。
        //在Swift中，所有的结构体和枚举类型都是值类型。这意味着它们的实例，以及实例中所包含的任何值类型属性，在代码中传递的时候都会被复制。
        let hd = Resolution(width: 1920, height: 1080)
        var cinema = hd
        cinema.width = 2048
        print("Cinema is now \(cinema.width) pixels wide")
        print("hd is still \(hd.width) pixels wide")
        
        //类是引用类型   与值类型不同，引用类型在被赋予到一个变量、常量或者被传递到一个函数时，其值不会被拷贝。因此，引用的是已存在的实例本身而不是其拷贝。
        let tenEighty = VideoMode()
        tenEighty.resolution = hd
        tenEighty.interlaced = true
        tenEighty.name = "1080i"
        tenEighty.frameRate = 23.0
        
        let alsoTenEighty = tenEighty
        alsoTenEighty.frameRate = 30
        print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
        
        //恒等运算符 等价于（===） 不等价于（!==）
        if tenEighty === alsoTenEighty {
            print("tenEighty and alsoTenEighty refer to the same Resolution instance.")
        }
        //注意：”等价于“（===） 与 等于（==）的不同：
        /**
         “等价于”表示两个类类型的常量或者变量引用同一个类实例。
         “等于”表示两个实例的值“相等”或“相同”，判定时要遵循设计者定义的评判标准，因此相对于“相等”来说，这是一种更加合适的叫法。
         */
        
        //按照通用的准则，当符合一条或多条以下条件时，请考虑构建结构体：
        /**
         该数据结构的主要目的是用来封装少量相关简单数据值
         有理由预计该数据结构的实例在被赋值或传递时，封装的数据将会被拷贝而不是被引用
         该数据结构中储存的值类型属性，也应该被拷贝，而不是被引用
         该数据结构不需要去继承另一个既有类型的属性或者行为
         */
        
        //计算属性可以用于类、结构体和枚举
        //存储属性只能用于类和结构体
        //存储属性和计算属性通常与特定类型的实例关联。但是，属性也可以直接作用于类型本身，这种属性称为类型属性
        //当值类型的实例被声明为常量的时候，它的所有属性也就成了常量。 属于引用类型的类则不一样。把一个引用类型的实例赋给一个常量后，仍然可以修改该实例的变量属性。
        //延迟存储属性 是指当第一次被调用的时候才会计算其初始化值的属性。在属性声明前使用lazy来标示一个延迟存储属性。
        //注意： 必须将延迟存储属性声明成变量，因为属性的初始化值可能在实例构造完成之后才会得到。而常量属性在构造过程完成之前必须要有初始值，因此无法声明成延迟属性。
        //延迟属性很有用，当属性的值依赖于在实例的构造过程结束后才会知道影响值的外部因素时，或者当获得属性的初始值需要复杂或大量计算时，可以只在需要的时候计算它。
        
        class DataImporter {
            /*
             DataImporter 是一个负责将外部文件中的数据导入的类。这个类的初始化会消耗不少时间。
             */
            var fileName = "data.txt"
        }
        
        class DataManager {
            lazy var importer = DataImporter()
            var data = [String]()
        }
        
        let manager = DataManager()
        manager.data.append("Some data")
        manager.data.append("Some more data")
        //DataImporter实例的importer属性还没有被创建
        //由于使用了lazy， importer属性只有在第一次被访问的时候才创建。
        //Objective-C为类实例存储值和引用提供两种方法。除了属性之外，还可以使用实例变量作为属性值的后端存储。Swift编程语言中把这些理论统一用属性来实现。Swift中的属性没有对应的实例变量，属性的后端存储也无法直接访问。这就避免了不同场景下访问方式的困扰，同时也将属性的定义简化成一个语句。属性的全部新消息--包括命名、类型和内存管理特征--作为类型定义的一部分，都定义在一个地方。
        //除存储属性外，类、结构体和枚举可以定义计算属性。计算属性不直接存储值，而是提供一个getter和一个可选的setter，来间接获取和设置其他属性或变量的值。
        struct Point {
            var x = 0.0, y = 0.0
        }
        struct Size {
            var width = 0.0, height = 0.0
        }
        struct Rect {
            var origin = Point()
            var size = Size()
            var center: Point {
                get {
                    let centerX = origin.x + (size.width / 2)
                    let centerY = origin.y + (size.height / 2)
                    return Point(x: centerX, y: centerY)
                }
                set(newCenter) {
                    origin.x = newCenter.x - (size.width / 2)
                    origin.y = newCenter.y - (size.height / 2)
                }
                //简化 Setter 声明
                /*
                set {
                    origin.x = newValue.x - (size.width / 2)
                    origin.y = newValue.y - (size.height / 2)
                }
                */
            }
        }
        var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
        _ = square.center
        square.center = Point(x: 15.0, y: 15.0)
        print("Square.origin is now at (\(square.origin.x), \(square.origin.y))")
        
        //只读计算属性
        struct Cuboid {
            var width = 0.0, height = 0.0, depth = 0.0
            var volume: Double {
                return width * height * depth
            }
        }
        
        //属性观察器
        
        
        struct Order: Codable {
            let customerId: String
            let items: [String]
        }
        
        let order = Order(customerId: "12345", items: ["Cheese pizza", "Diet soda"])
        if let uploadData = try? JSONEncoder().encode(order) {
            print(String(data: uploadData, encoding: .utf8)!)
            
        }
        guard let uploadData = try? JSONEncoder().encode(order) else {
            return
        }
    }
    
    //一个函数可以通过在声明中添加 throws 关键词来抛出错误消息。当你的函数抛出错误消息时，你应该在表达式中前置 try 关键词。

    func canThrowAnError() throws {
        //这个函数有可能抛出错误
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

