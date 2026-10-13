## 2. Jawaban Soal Evaluasi / Latihan (Bagian H Halaman 65)

### Soal 1:

**Apa yang dimaksud dengan widget dalam konteks pengembangan aplikasi Flutter?**

**Jawaban:**
Dalam konteks Flutter, _widget_ merujuk pada konsep dasar (blok pembangun utama) untuk membangun antarmuka pengguna (User Interface / UI). Di Flutter, hampir semua elemen yang terlihat di layar adalah widget—mulai dari elemen visual individual seperti teks (`Text`), tombol (`ElevatedButton`), dan gambar (`Image`), hingga pengatur tata letak seperti `Row`, `Column`, `Container`, maupun keseluruhan aplikasi itu sendiri (`MaterialApp`).

---

### Soal 2:

**Bagaimana cara membuat tata letak (layout) sederhana menggunakan widget-widget Flutter?**

**Jawaban:**
Tata letak (layout) sederhana di Flutter dibuat dengan memanfaatkan komposisi widget layout dasar yang disediakan oleh Flutter:

1. **`Row`**: Untuk menyusun widget anak secara horizontal (sejajar ke samping).
2. **`Column`**: Untuk menyusun widget anak secara vertikal (sejajar ke bawah).
3. **`Container`**: Sebagai wadah serbaguna untuk mengatur `margin`, `padding`, dimensi (lebar/tinggi), warna latar, dan dekorasi.
4. **`Center`**: Untuk menempatkan widget tepat di tengah area yang tersedia.
5. **`SizedBox` / `Spacer`**: Untuk memberikan jarak kosong terukur antar elemen layout.
6. **`Card` / `Padding`**: Untuk memberikan pembungkus visual dengan elevasi atau memberi bantalan ruang di sekeliling widget.

Widget-widget ini dapat digabungkan dan ditumpuk secara hierarkis (bertingkat) sesuai kebutuhan antarmuka pengguna.

---

### Soal 3:

**Apa perbedaan antara stateless widget dan stateful widget dalam Flutter?**

**Jawaban:**

1. **StatelessWidget**:
   - Widget yang **tidak memiliki keadaan internal (_state_)** yang dapat berubah sepanjang waktu.
   - Bersifat statis / immutable setelah dibuat; tampilan UI hanya bergantung pada konfigurasi atau parameter input yang diberikan saat inisialisasi.
   - Contoh: `Text`, `Icon`, `AppBar`.

2. **StatefulWidget**:
   - Widget yang **memiliki keadaan internal (_state_)** yang dapat berubah secara dinamis selama siklus hidup aplikasi berjalan.
   - Dapat merespons interaksi pengguna (input teks, klik tombol), penerimaan data dari server, atau perubahan timer, kemudian memperbarui tampilan UI secara reaktif melalui pemanggilan method `setState()`.
   - Contoh: `TextField`, `Checkbox`, `Slider`, atau form interaktif.
