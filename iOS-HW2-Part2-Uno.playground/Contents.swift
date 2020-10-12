import UIKit
/*:
 # الواجب الثالث: لعبة UNO
 
 تحتوي لعبة الأونو على ٤ ألوان و١٠ أرقام.
 - تتكرر الأرقام لكل لون مرتين. ماعدا الرقم صفر، يتواجد مرة واحدة للون الواحد.
- توجد هناك ورقتين Action Cards لكل لون.
 1. Draw
 2. Reverse
 3. Pass

*/


//: ![Uno Deck](deck.jpg)


/*:
 ### المطلوب:
#### الجزء الأول:
 -- قم بإنشاء struct باسم Card به  الصفات التالية
 * color: String
 * number: Int
 
 -- قم بإنشاء مصفوفة من نوع `Card` فارغة، ثم قم بملئها بالأرقام فقط مرة واحدة من دون ال action cards ومن دون تكرار كل رقم مرتين (تكرار الأرقام بونص 🎁)
 
 - Green: 0 -> 9
 - Red: 0 -> 9
 - Blue: 0 -> 9
 - Yellow: 0 -> 9
 
 #### الجزء الثاني:
-- قم بإنشاء دالة بداخل الستركت Card باسم  `imageName`والتي تقوم بإرجاع اسم الصورة للكرت. قم بفتح المجلد Resources الموجود بداخل الplayground من النافذة اليسرى لرؤية طريقة تسمية الكرت
 ###### مثال على تسمية الكروت موضحة كالتالي، قم بتشغيل الكود لرؤية الصور أسفل هذه الأكواد:
 */


//var blue_5 = UIImage(named: "Blue_6.png")
//var red_9 = UIImage(named: "Red_9.png")

var green_Skip = UIImage(named: "Green_Skip.png")
var wild_Draw = UIImage(named: "Wild_Draw.png")


/*:
 
 
 ### الجزء الثالث (تجريب الكود😍):
 قم بإزالة الملاحظة عن الأسطر الأخيرة لتجربة الكود إن كان يعمل بشكل مناسب،
 الجزء الأول سيظهر كرت عشوائي
 الجزء الثاني سيظهر مجموعة الكروت كاملة 🃏🎴
 ```
 let randomCard = cards.randomElement()!
 let randomCardImage = UIImage(named: randomCard.imageName())
```

 ```
 let cardImages = cards.map{UIImage(named: $0.imageName())}
 randomCardImage
 ```
 إن تم ذلك بالشكل الصحيح من دون أي خطأ، فقد نجحت في المهمة! 🎉
 
  #### الجزء الرابع (بونص 🎁):
 -- قم بتعبئة مجموعة الكروت كل رقم يعرض مرتين، إلا الصفر، يعرض مرة واحدة، كما هو موضح في صورة مجموعة الأونو في بداية الملف
 -- قم باستعمال For Loop لتعبئة جميع الكروت

 
 #### الجزء الخامس (إكسترا إكسترا بونص 🌶🔥)
 -- قم بتعبئة المصفوفة أيضاً ب Action Cards من خلال تحويلك للصفات إلى optional بإضافة علامة الاستفهام إليها
اسم ال Action Cards موضح في الصور بداخل ال Resources
 
 ```
 var color: String?
 var action: String?
 var number: Int?
 ```
  لا تنسى إزالة كلمة  Optional بسبب تحويلك للمتغيرات إلى متغيرات بعلامة الاستفهام. ربما ستضطر إلى كتابة بعض أوامر if
  
 */


//: ---

//: # الحل ...



/// قم بإنشاء الستركت هنا

// struct ...
var blue1 = UIImage(named: "Blue_1.png")
var blue2 = UIImage(named: "Blue_2.png")
var blue3 = UIImage(named: "Blue_3.png")
var blue4 = UIImage(named: "Blue_4.png")
var blue5 = UIImage(named: "Blue_5.png")
var blue6 = UIImage(named: "Blue_6.png")
var blue7 = UIImage(named: "Blue_7.png")
var blue8 = UIImage(named: "Blue_8.png")
var blue9 = UIImage(named: "Blue_9.png")
var blue0 = UIImage(named: "Blue_0.png")

var red0 = UIImage(named: "Red_0.png")
var red1 = UIImage(named: "Red_1.png")
var red2 = UIImage(named: "Red_2.png")
var red3 = UIImage(named: "Red_3.png")
var red4 = UIImage(named: "Red_4.png")
var red5 = UIImage(named: "Red_5.png")
var red6 = UIImage(named: "Red_6.png")
var red7 = UIImage(named: "Red_7.png")
var red8 = UIImage(named: "Red_8.png")
var red9 = UIImage(named: "Red_9.png")

var green1 = UIImage(named: "Green_1.png")
var green2 = UIImage(named: "Green_2.png")
var green3 = UIImage(named: "Green_3.png")
var green4 = UIImage(named: "Green_4.png")
var green5 = UIImage(named: "Green_5.png")
var green6 = UIImage(named: "Green_6.png")
var green7 = UIImage(named: "Green_7.png")
var green8 = UIImage(named: "Green_8.png")
var green9 = UIImage(named: "Green_9.png")
var green0 = UIImage(named: "Green_0.png")

var yellow0 = UIImage(named: "Yellow_0.png")
var yellow1 = UIImage(named: "Yellow_1.png")
var yellow2 = UIImage(named: "Yellow_2.png")
var yellow3 = UIImage(named: "Yellow_3.png")
var yellow4 = UIImage(named: "Yellow_4.png")
var yellow5 = UIImage(named: "Yellow_5.png")
var yellow6 = UIImage(named: "Yellow_6.png")
var yellow7 = UIImage(named: "Yellow_7.png")
var yellow8 = UIImage(named: "Yellow_8.png")
var yellow9 = UIImage(named: "Yellow_9.png")


struct Cards {
    var color: [String]
    var number: [Int]
    
 

    func imageName () -> String
    {
        let _ = Cards(color: ["Green, blue, red, yellow"], number: [0,1,2,3,4,5,6,7,8,9])

        
       print(blue1 as Any)
       print(blue2 as Any)
       print(blue3 as Any)
       print(blue4 as Any)
       print(blue5 as Any)
       print(blue6 as Any)
       print(blue7 as Any)
       print(blue8 as Any)
       print(blue9 as Any)
       print(blue0 as Any)
        
       print (red0 as Any)
       print (red1 as Any)
       print (red2 as Any)
       print (red3 as Any)
       print (red4 as Any)
       print (red5 as Any)
       print (red6 as Any)
       print (red7 as Any)
       print (red8 as Any)
       print (red9 as Any)
        
        print (green1 as Any)
        print (green2 as Any)
        print (green3 as Any)
        print (green4 as Any)
        print (green5 as Any)
        print (green6 as Any)
        print (green7 as Any)
        print (green8 as Any)
        print (green9 as Any)
        print (green0 as Any)
    
        print (green1 as Any)
        print (green2 as Any)
        print (green3 as Any)
        print (green4 as Any)
        print (green5 as Any)
        print (green6 as Any)
        print (green7 as Any)
        print (green8 as Any)
        print (green9 as Any)
        print (green0 as Any)
        
        
        print (yellow1 as Any)
        print (yellow2 as Any)
        print (yellow3 as Any)
        print (yellow4 as Any)
        print (yellow5 as Any)
        print (yellow6 as Any)
        print (yellow7 as Any)
        print (yellow8 as Any)
        print (yellow9 as Any)
        print (yellow0 as Any)
               
        
       
        return "blue1"
    } }

 let randomCard = Cards.randomElement()!
 let randomCardImage = UIImage(named: randomCard.imageName())



//let cardImages = cards.map{UIImage(named: $0.imageName())}
//randomCardImage

    


//var blue_1 = UIImage(named: "Blue_1.png")
//var blue_2 = UIImage(named: "Blue_2.png")
//var blue_3 = UIImage(named: "Blue_3.png")
//var blue_4 = UIImage(named: "Blue_4.png")
//var blue_5 = UIImage(named: "Blue_5.png")
//var blue_6 = UIImage(named: "Blue_6.png")
//var blue_7 = UIImage(named: "Blue_7.png")
//var blue_8 = UIImage(named: "Blue_8.png")
//var blue_9 = UIImage(named: "Blue_9.png")
//var blue_0 = UIImage(named: "Blue_0.png")
//
//var red_0 = UIImage(named: "Red_0.png")
//var red_1 = UIImage(named: "Red_1.png")
//var red_2 = UIImage(named: "Red_2.png")
//var red_3 = UIImage(named: "Red_3.png")
//var red_4 = UIImage(named: "Red_4.png")
//var red_5 = UIImage(named: "Red_5.png")
//var red_6 = UIImage(named: "Red_6.png")
//var red_7 = UIImage(named: "Red_7.png")
//var red_8 = UIImage(named: "Red_8.png")
//var red_9 = UIImage(named: "Red_9.png")






// لا تقم بإزالة الملاحظات إلا عند وصولك للمطلوب الثالث

//
//let randomCard = cards.randomElement()!
//let randomCardImage = UIImage(named: randomCard.imageName())
//
//
//let cardImages = cards.map{UIImage(named: $0.imageName())}
//randomCardImage
//cardImages

