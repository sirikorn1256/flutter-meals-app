# Flutter Meals App

แอปตัวอย่างที่พัฒนาด้วย **Flutter** สำหรับแสดงเมนูอาหารตามหมวดหมู่  
ผู้ใช้สามารถดูรายละเอียดอาหาร และเพิ่มเมนูที่ชอบไว้ใน **Favorites** ได้



## Features

- แสดงหมวดหมู่อาหาร
- ดูรายการอาหารตามหมวดหมู่
- ดูรายละเอียดอาหาร
- เพิ่มอาหารลงใน Favorites

---

## เทคโนโลยีที่ใช้

- Flutter
- Dart
- Material UI

---

## ปัญหาที่พบและวิธีแก้

### 1. ไม่สามารถรัน Android Emulator ได้

**ปัญหา**

ไม่สามารถรันแอปบน Android Emulator ได้ แต่สามารถรันบน **iOS Simulator** ได้ปกติ

**วิธีแก้**

ใช้ **iOS Simulator** ในการทดสอบแอปแทน และตรวจสอบการติดตั้ง Android SDK และ Emulator ในภายหลัง

---

### 2. Error ตอนส่ง parameter ระหว่างหน้าของแอป

**ปัญหา**

เกิด error ตอนส่งค่า `onToggleFavorite` ระหว่างหน้าต่าง ๆ

ตัวอย่าง error
No named parameter with the name ‘onToggleFavorite’
**วิธีแก้**

เพิ่ม parameter `onToggleFavorite` ใน constructor ของ widget  
และส่งค่าต่อไปตอน navigate ไปยังหน้าถัดไป

---

### 3. การ Push โปรเจคขึ้น GitHub ครั้งแรก

**ปัญหา**

ตอนแรกยังไม่รู้วิธีเชื่อม Git กับ GitHub

**วิธีแก้**

ใช้คำสั่งใน Terminal

``bash
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/sirikorn1256/flutter-meals-app.git
git push -u origin main

---

## โครงสร้างโปรเจค
## ผลลัพธ์การทำงานของแอป
main<img width="437" height="712" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 00 11" src="https://github.com/user-attachments/assets/4982b1a1-6fd6-454f-bd21-1bfecf211462" />

## หน้า Categories
<img width="2506" height="1421" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 01 28" src="https://github.com/user-attachments/assets/9deee349-b7a5-44b2-ae2b-8015753c96c7" />

## หน้า Meals
<img width="785" height="1435" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 01 41" src="https://github.com/user-attachments/assets/67635a58-db5a-41d0-ba48-2418b73de0cf" />

## หน้า Meal Detail
<img width="773" height="14<img width="779" height="1440" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 02 06" src="https://github.com/user-attachments/assets/b4926c2f-8255-4db2-b11f-e663f193d01d" />

## หน้า Favorites
40" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 01 51" src="https://github.com/user-attachments/assets/f4f1a156-311d-407b-85d2-42cfadaef226" />
<img width="785" height="1440" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 02 18" src="https://github.com/user-attachments/assets/683e1a2e-3b16-4bf1-bff6-2d0a42bdf330" />

## หน้า Favorites (เมื่อยังไม่มีรายการ)
<img width="780" height="1436" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 02 30" src="https://github.com/user-attachments/assets/013b819c-ca16-4d4c-9e14-253dca758325" />






