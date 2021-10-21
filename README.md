# SwiftUIImage

第3章 圖片的處理
這章來介紹如何處理swiftui的圖片

專案初始畫面
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/1.png?raw=true)

若要顯示系統圖片，可以初始化一個 Image 視圖，加上systemName參數
Image(systemName: "cloud.heavyrain")
如果想瀏覽系統圖片有哪些可以點下列連結到apple官網安裝圖片庫做查閱
https://developer.apple.com/sf-symbols/
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/2.png?raw=true)

若要使用自己的圖片，先將圖片拖到Assets.xcassets
直接使用Assets.xcassets內的圖片名稱就可以使用自己的圖片
Image(“iphoneWallPaper”)
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/3.png?raw=true)

使用resizable調整圖片大小，會填滿iOS所定義的安全區域
如圖所示安全區域並不包含頂部列及底部列
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/4.png?raw=true)

若想顯示全螢幕圖片可以使用edgesIgnoringSafeArea來忽略安全區域
根據參數可以控制要忽略的安全區域例如.all, .top或是.bottom
.edgesIgnoringSafeArea(.all)
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/5.png?raw=true)

Aspect Fit 與 Aspect Fill
之前一直沒認真搞懂這個概念
這個練習做了第三次來釐清一下..
aspect就當作是維持*圖片比例*
Fit 表示在安全範圍內
Fill表示忽略安全範圍
合起來就是
Aspect Fit 在安全範圍內，保持比例盡可能的延伸
.scaledToFit()
Aspect Fill 在顯示畫面上，保持比例盡可能的延伸
.scaledToFill()
另外一種寫法是
.aspectRatio(contentMode: .fill) or .aspectRatio(contentMode: .fit)
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/6.png?raw=true)
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/7.png?raw=true)

控制視圖的大小...呃，我是把他理解成該視圖安全範圍的大小
.frame(width:300)
(Aspect Fit 在安全範圍內，保持比例盡可能的延伸)
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/8.png?raw=true)
(Aspect Fill 在顯示畫面上，保持比例盡可能的延伸)
畫面上的虛線則是該圖片的安全範圍
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/9.png?raw=true)
若要正常運作，可以加上clipped修飾器來消除視圖額外的部分
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/10.png?raw=true)

可以透過.clipShape修飾器建立特定圖形形狀
.clipShape(Circle())
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/11.png?raw=true)

.clipShape(Ellipse())
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/12.png?raw=true)
.clipShape(Capsule())
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/13.png?raw=true)

不透明度的調整
opacity修飾器可以控制圖片的不透明度
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/14.png?raw=true)

圖片重疊，可以透過overlay修飾器覆蓋新的圖層在圖層上方
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/15.png?raw=true)
overlay修飾器還可以帶入alignment參數可以調整視圖的對齊(.top, .center, .bottom)
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/16.png?raw=true)
也可以透過重疊圖層來使圖片變暗
![](https://github.com/NullRa/SwiftUIImage/blob/main/SwiftUI_Png/17.png?raw=true)
