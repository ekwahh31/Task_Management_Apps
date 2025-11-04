# Tugas Ujian CPMK 03

Berikut merupakan percobaan membuat aplikasi Management Tugas menggunakan framework GetX pada flutter.

<img width="502" height="1001" alt="image" src="https://github.com/user-attachments/assets/11292a69-e70d-4eb5-bc5a-644782d6636d" />


## Instruksi Tugas
Paket 4 (NIM Akhiran: 4)
Tema: Aplikasi To-Do List (Task Management) Buatlah 5 halaman statis untuk aplikasi pencatat tugas:
1. Splash Screen: Halaman loading awal.
2. Home Page: Halaman utama yang menampilkan list "Tugas Hari Ini" dan "Tugas Lainnya". Harus ada tombol Floating Action Button (FAB) untuk menambah tugas.
3. Add Task Page: Halaman form untuk menambah tugas baru (Judul Tugas, Deskripsi, Tanggal Deadline, Kategori, Tombol "Simpan").
4. Task Detail Page: Halaman yang menampilkan detail dari tugas yang dipilih (Judul, Deskripsi lengkap, Tanggal, Tombol "Tandai Selesai" dan "Hapus").
5. Calendar View Page: Halaman yang menampilkan kalender statis (bisa pakai plugin atau widget TableCalendar), dengan penanda (titik) di tanggal yang memiliki tugas.
## Penjelasan Singkat

Aplikasi ini terdiri dari 5 halaman statis yang terdiri dari:
1. **Splash Screen** merupakan halaman loading awal saat aplikasi di buka yang menampilkan logo dan nama aplikasi. Setelah 3 detik maka akan otomatis berpindah menuju home page.
2. **Home Page** menampilkan daftar tugas pada hari ini dan tugas lainnya, memiliki Floating Action Button (FAB) sebagai tombol navigasi menuju halaman untuk menambahkan tugas baru dan miliki tombol navigasi untuk menuju halaman Calendar View.
3. **Add task Page** merupakan halaman form untuk menambahkan tugas baru.
4. **Task detail Page** merupakan halaman untuk menampilkan detail dari sebuah tugas.
5. **Calendar View Page** merupakan halaman untuk menampilkan kalendar statis yang berisi penanda pada tanggal yang memiliki tugas.

## Implementasi GetX
1. Navigation
   Menggunakan metode navigasi GetX:
- `Get.toNamed()` - Navigasi ke halaman dengan route name
- `Get.back()` - Kembali ke halaman sebelumnya
- `Get.offAllNamed()` - Navigasi dan hapus semua route sebelumnya

2. Routes Configuration
   File `app_pages.dart` dan `app_routes.dart` mendefinisikan:
- Route paths untuk semua halaman
- Initial route (Splash Screen)
- Page bindings

3. Controllers
   Setiap modul memiliki controller untuk:
- Mengelola state lokal
- Business logic minimal (untuk halaman statis)
- Handling user interactions

4. GetMaterialApp
`main.dart` menggunakan `GetMaterialApp` sebagai root widget untuk:
- Routing management
- Theme configuration
- Initial route setup
