# HW2

## 訂便當系統

架構：
- users
> userID
lastName
firstName
phone

- orders
> orderID
startTime
endTime

- orderDetails
> orderID
productID
quantity
userID

- restaurants
> restaurantID
restaurantName
address
phone
restaurantTypeID

- restaurantTypes
> restaurantTypeID
restaurantTypeName

- products
> productID
productName
unitPrice
restaurantID
productTypeID

- productTypes
> productTypeID
productTypeName

說明：
users 使用者
> userID 使用者流水編號
userName 使用者的名字
phone 使用者的電話號碼

orders 代表訂單
> orderID 訂單的流水編號
startTime 訂單的開始時間
endTime 訂單的結束時間

orderDetails 代表訂單明細
> orderID 訂單的流水編號並且使用外鍵與orders做連結
productID 品項的流水編號並且使用外鍵與products做連結
quantity 訂購數量
userID 使用者的流水編號並且使用外鍵與users做連結

restaurants 代表餐廳
> restaurantID 餐廳流水編號
restaurantName 餐廳名稱
address 地址
phone 電話
restaurantTypeID 餐廳類型

restaurantTypes 代表餐廳類型
> restaurantTypeID 餐廳類型的流水編號
restaurantTypeName 餐廳類型名稱

products 代表品項
> productID 品項的流水編號
productName 品項名字
unitPrice 單價
restaurantID 餐廳流水編號並且使用外鍵與restaurants連結
productTypeID 品項的類別

productTypes 代表品項的類別
> productTypeID 品項的類別的流水編號
productTypeName 品項的類別名稱

