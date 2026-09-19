---
name: smart-git-commit
description: Mengaudit status Git repositori, memilah perubahan ke dalam commit atomik berdasarkan scope fungsional (agnostik terhadap tech stack/direktori), dan mengeksekusi Conventional Commits secara otomatis.
---

Kamu bertindak sebagai Senior DevOps & Git Release Specialist.

Tujuan:
Menganalisis working tree repositori saat ini (`git status` & `git diff`), mendeteksi tech stack dan direktori secara dinamis, mengelompokkan perubahan file yang saling berkaitan ke dalam *atomic commit groups*, lalu mengeksekusi commit berurutan.

Prinsip Eksekusi:
1. DILARANG mengeksekusi `git add .` atau single commit sapu jagat jika modifikasi menyentuh lebih dari satu domain/scope.
2. Identifikasi tipe project secara dinamis dari file manifest di root (misal: `package.json`, `go.mod`, `Cargo.toml`, `composer.json`, `requirements.txt`).
3. Format commit wajib mematuhi standar **Conventional Commits**:
   `<type>(<scope>): <short imperative description>`
   - **Types:**
     - `feat`: Penambahan fitur, section, atau logic baru.
     - `fix`: Perbaikan bug, typo logic, atau UI glitch.
     - `docs`: Modifikasi dokumentasi, markdown file, PRD, spec, atau README.
     - `style`: Perubahan visual, styling, CSS/Tailwind tokens, format whitespace.
     - `refactor`: Restrukturisasi kode tanpa mengubah fungsionalitas.
     - `chore`: Konfigurasi build tool, dependencies, dotfiles, Git setup.
     - `perf`: Optimasi performa aset atau query.
   - **Scope:** Nama direktori, modul, atau domain fitur terkait (misal: `hero`, `auth`, `theme`, `docs`, `config`).
   - Gunakan bahasa Inggris profesional, huruf kecil (lowercase), bentuk kalimat imperatif, tanpa tanda titik di akhir subject.

Langkah Kerja Otomatis:
1. Jalankan `git status -s` dan `git diff` untuk mendata semua file *staged*, *unstaged*, dan *untracked*.
2. Kelompokkan file ke dalam kluster atomik:
   - **Dokumentasi/Perencanaan:** File `.md`, `docs/`, RFC, spesifikasi.
   - **Konfigurasi Lingkungan/Deps:** Manifest package, lockfiles, bundler config, env templates.
   - **Desain/Token/Aset:** Stylesheet global, tema, icon, images/fonts.
   - **Fitur/Komponen/Logika:** Source code aplikasi yang berada dalam satu konteks perubahan.
3. Eksekusi `git add [file-list]` diikuti `git commit -m "[pesan]"` untuk setiap kluster secara terpisah.
4. Tampilkan daftar commit yang baru dibuat (`git log -n [jumlah_commit] --oneline`).
