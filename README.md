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


## หน้า Categories

<p align="center">
<img width="2506" height="1421" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 01 28" src="https://github.com/user-attachments/assets/879bca50-b754-4991-a08b-a9228de191d9" />
</p>

---

## หน้า Meals

<p align="center">
<img width="785" height="1435" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 01 41" src="https://github.com/user-attachments/assets/bea31f81-fe83-4cef-b103-1e3bfa9810e6" />
</p>

---

## หน้า Meal Detail

<p align="center">
<img width="779" height="1440" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 02 06" src="https://github.com/user-attachments/assets/95bd157f-49fb-420b-9226-a672a4867bd7" />
</p>

---

## หน้า Favorites

<p align="center">
<img width="785" height="1440" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 02 18" src="https://github.com/user-attachments/assets/25ea83ca-65f8-47bd-ba5a-4f7184e885cc" />
</p>

---

## หน้า Favorites (เมื่อยังไม่มีรายการ)

<p align="center">
<img width="780" height="1436" alt="ภาพถ่ายหน้าจอ 2569-03-04 เวลา 17 02 30" src="https://github.com/user-attachments/assets/b0969916-974d-43d6-abbc-cd98e9fbc7f9" />
</p>






