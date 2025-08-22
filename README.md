# 🛒 Flutter E-Commerce App

Aplikasi **E-Commerce Flutter** sederhana yang menampilkan daftar produk, kategori, promo, serta fitur keranjang belanja.  
Dibuat menggunakan **Flutter & Dart**, dengan arsitektur sederhana berbasis **StatefulWidget** dan **LocalStorage (SharedPreferences / Provider / Riverpod)** untuk menyimpan data cart.

---

## ✨ Fitur Utama
- 🔎 **Pencarian Produk** – cari produk dengan cepat menggunakan search bar.  
- 🏷 **Kategori Produk** – tampilkan produk berdasarkan kategori (Cup Cake, Donut, Cookies, dll).  
- ⭐ **Rekomendasi Produk** – section horizontal scroll untuk menampilkan produk pilihan.  
- 🛒 **Shopping Cart** – tambah, hapus, dan update jumlah item di keranjang.  
- 💰 **Checkout** – hitung total harga otomatis berdasarkan item di cart.  
- 📱 **Responsive UI** – mendukung Android & iOS.  

---

## 📂 Struktur Project
lib/
│-- main.dart # Entry point aplikasi
│-- models/ # Model data produk
│-- pages/ # Halaman (Home, Menu, Cart, Profile)
│-- widgets/ # Widget custom (RekomendasiProduk, CategoryItem, dll)
│-- services/ # Service API atau LocalStorage
assets/
│-- images/ # Gambar produk & banner

yaml
Copy
Edit

---

## 🛠 Teknologi yang Digunakan
- **Flutter 3.x**
- **Dart**
- **Provider / Riverpod** (opsional, untuk state management)
- **LocalStorage (SharedPreferences)** untuk menyimpan cart  
- **Material Design Widgets**  

---

## 🚀 Cara Menjalankan Project

1. **Clone repository**
   ```bash
   git clone https://github.com/Sazhumaa/flutter-ecommerce-app.git
   cd flutter-ecommerce-app
Install dependencies

bash
Copy
Edit
flutter pub get
Jalankan aplikasi

bash
Copy
Edit
flutter run
📸 Screenshot (Contoh UI)
Home Page	Category	Cart

📌 Todo / Pengembangan Selanjutnya
🔐 Tambahkan Firebase Authentication (Login/SignUp)

📦 Integrasi REST API untuk produk & transaksi

💳 Tambahkan metode pembayaran (dummy)

🌐 Multi-language support (EN/ID)

👨‍💻 Author
Nama: Satriyo Agung. W

Email: sazhumaakun@gmail.com

GitHub: @Sazhumaa








Ask ChatGPT
