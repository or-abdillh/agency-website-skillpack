---
trigger: always_on
---

# OFFICIAL DOCUMENT GOVERNANCE & SEMANTIC VERSIONING STANDARD

**Version: 1.0 (Finalized)**

---

# 1. PURPOSE & SCOPE

Dokumen ini menetapkan standar tata kelola dokumen strategis, spesifikasi teknis, dan artefak perencanaan di dalam direktori `docs/`. Standar ini mengatur:

- Kewajiban penulisan header identitas dokumen
- Penerapan Semantic Versioning (SemVer) yang ketat pada seluruh dokumen
- Mekanisme pencatatan riwayat revisi (Changelog) yang terstruktur dan terverifikasi

Aturan ini bersifat:
- **Non-negotiable** dan **mengikat secara mutlak** bagi seluruh agen AI dan developer.
- Setiap kali dokumen di `docs/` dibuat atau diperbarui, blok header Semantic Versioning WAJIB disertakan dan diperbarui.

---

# 2. STANDAR FORMAT HEADER DOKUMEN WAJIB

Setiap berkas markdown di dalam direktori `docs/` (`docs/00-*.md` s.d. `docs/06-*.md` dan seterusnya) WAJIB diawali dengan format blok standar berikut pada baris pertama:

```markdown
# [Judul Dokumen]: [Nama Bisnis/Brand]

> **Document Version:** X.Y.Z | **Status:** [Draft / Under Review / Approved] | **Last Updated:** YYYY-MM-DD  
> **Governing Agent/Role:** [Nama Peran Agen Pembuat/Pembaruan Dokumen]

### Revision Changelog
| Version | Date | Author / Role | Changes Summary |
|---|---|---|---|
| X.Y.Z | YYYY-MM-DD | [Nama Peran Agen] | [Uraian ringkas dan presisi perubahan yang dilakukan] |

---
```

Dilarang:
- Menghapus blok header versi pada dokumen yang sudah ada.
- Menuliskan nomor versi acak tanpa mengikuti standar Semantic Versioning.
- Mengubah isi dokumen tanpa menambahkan baris baru pada tabel `Revision Changelog`.

---

# 3. SEMANTIC VERSIONING SPECIFICATION (SemVer)

Versi dokumen ditulis dalam format `MAJOR.MINOR.PATCH` (contoh: `1.0.0`, `1.1.0`, `1.1.2`):

## 3.1 MAJOR Version Bump (X.0.0)
Wajib dinaikkan ketika terjadi perubahan **fundamental dan struktural**, meliputi:
- Perubahan arah bisnis, repositioning brand, atau pergantian target audiens inti (`docs/00` & `docs/02`).
- Perombakan total konsep visual, perubahan visual archetype secara drastis (misal dari *Modern Minimalist* menjadi *Editorial Luxury*), atau restrukturisasi total hero showstopper (`docs/03`).
- Pergantian palet warna dasar, font pairing utama, atau perombakan sistem token desain secara menyeluruh (`docs/04`).
- Perubahan besar pada ruang lingkup produk MVP atau perubahan arsitektur teknologi inti (`docs/05`).

*Contoh:* `1.2.1` $\rightarrow$ `2.0.0`

## 3.2 MINOR Version Bump (X.Y.0)
Wajib dinaikkan ketika terjadi **penambahan fitur, penyesuaian fungsional, atau kalibrasi visual berbasis referensi baru tanpa merusak fondasi yang sudah ada**, meliputi:
- Harmonisasi konsep visual dari screenshot referensi UI baru (`docs/03`).
- Penambahan komponen UI baru, varian interaksi baru, atau penyesuaian styling token tambahan pada design system (`docs/04`).
- Penambahan section baru pada tabel MoSCoW, penambahan fitur interaktif hasil audit strategis, atau penyesuaian user flow MVP (`docs/05`).
- Injeksi fitur *premium positioning* atau mekanisme *trust building* baru dari hasil audit (`docs/06`).

*Catatan:* Setiap kali versi MINOR naik, nilai PATCH direset ke `0`.  
*Contoh:* `1.0.0` $\rightarrow$ `1.1.0`

## 3.3 PATCH Version Bump (X.Y.Z)
Wajib dinaikkan ketika terjadi **koreksi minor atau perbaikan detail tanpa mengubah struktur atau ruang lingkup**, meliputi:
- Perbaikan kesalahan ketik (typo), penghalusan redaksional kalimat (copywriting refinement), atau perbaikan format Markdown.
- Koreksi presisi kode HEX warna atau perbaikan rasio kontras kecil.
- Penambahan catatan kaki, klarifikasi catatan operasional, atau pembaruan tautan kontak/sosial media.

*Contoh:* `1.1.0` $\rightarrow$ `1.1.1`

---

# 4. ATURAN PENEGAKAN AGEN (AI ENFORCEMENT)

1. **Initial Document Generation:**
   - Saat dokumen pertama kali dibuat oleh skill apa pun, inisialisasi versi dokumen pada **`1.0.0`** dengan status **`Draft`** atau **`Approved`**.
2. **Document Modification / Overwrite:**
   - Agen WAJIB membaca versi dokumen saat ini sebelum melakukan modifikasi.
   - Tentukan jenis perubahan (Major, Minor, atau Patch) sesuai aturan pada Bab 3.
   - Perbarui versi di header metadata, perbarui tanggal `Last Updated`, dan tambahkan entri baris baru di posisi paling atas tabel `Revision Changelog`.
3. **Penyimpangan:**
   - Menghasilkan dokumen tanpa blok SemVer dianggap sebagai kegagalan pemenuhan standar tata kelola.
