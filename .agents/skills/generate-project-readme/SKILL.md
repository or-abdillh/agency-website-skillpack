---
name: generate-project-readme
description: Membuat dan menyusun dokumentasi komprehensif, human-friendly, dan berstandar agensi pada README.md proyek berdasarkan seluruh dokumentasi yang telah digenerate di @docs, arsitektur teknis, dan kode aplikasi.
---

# Project README Generator & Human-Friendly Documentation Engine

Kamu bertindak sebagai **Principal Technical Writer & Developer Experience (DX) Specialist**.

## Tujuan
Membaca, mengekstrak, dan mensintesis seluruh dokumen perencanaan, strategi brand, panduan visual, spesifikasi teknis di `@docs/`, serta arsitektur kode sumber proyek, untuk menghasilkan **`README.md` tingkat produksi yang komprehensif, terstruktur, ramah dibaca manusia (*human-friendly*), dan berstandar agensi kelas dunia**.

Dokumen ini ditulis langsung ke berkas utama: **`README.md`** di root repositori proyek.

---

## 1. Input Konteks & Dependensi Dokumen

Sebelum menyusun `README.md`, periksa ketersediaan berkas di direktori `docs/` dan konfigurasi teknis workspace:

- `@docs/00-master-data.md` atau `docs/00-brand-initiation.md` (Profil bisnis, niche, pasar lokal, reputasi Google Maps riil)
- `@docs/01-design-direction.md` (Palet warna, visual tokens, rasio kontras WCAG AA)
- `@docs/02-brand-identity.md` (Value proposition, hook tagline persuasif, persona pelanggan)
- `@docs/03-website-concept.md` (Art direction, blueprint hero showstopper, layout bento, kinetic motion)
- `@docs/04-design-system.md` & `@docs/design.md` (Spesifikasi teknikal 8-bab, Google Fonts, fluid clamp typography)
- `@docs/05-prd.md` (Ruang lingkup MoSCoW, acceptance criteria MVP)
- `@docs/06-strategic-audit.md` (Fitur interaktif diferensiasi & authentic trust signals)
- `@.agents/rules/engineering-architecture.md` (Framework, styling tools, arsitektur folder aktif)
- `@docs/07-cold-outreach.md` (Opsional: Playbook penjangkauan klien & monetisasi)
- `@docs/09-launch-handover.md` (Opsional: Checklist go-live & handover kepemilikan)
- `package.json` & struktur folder repositori aktif (dependensi, scripts npm/pnpm/yarn/bun, direktori pages/components)

*Catatan Toleransi:* Jika sebagian dokumen belum lengkap (misal proyek baru sampai Step 5), skill tetap dapat dijalankan untuk mendokumentasikan apa yang sudah selesai dengan memberikan catatan progres yang jelas pada bagian yang belum diimplementasikan.

---

## 2. Safety & Backup Protocol (Perlindungan Berkas Root README)

Sebelum menulis atau mengganti `README.md` di root:
1. **Deteksi Konten Existing:** Periksa baris awal `README.md`.
2. **Jika README saat ini adalah Dokumentasi Skill Pack Utama** (memuat judul `# Agency Website Skill Pack`):
   - Amankan berkas asli dengan menyalinnya ke: **`README.skillpack.md`**.
   - Laporkan kepada pengguna bahwa dokumentasi bawaan skill pack telah dicadangkan secara aman agar referensi pack tidak hilang.
3. **Jika README sudah ada dan memuat konfigurasi kustom proyek** (misal variabel environment rahasia non-repo, deployment webhook, atau catatan internal):
   - Pertahankan bagian khusus tersebut dan integrasikan secara harmonis ke dalam struktur README baru.

---

## 3. Human-Friendly Writing Guardrails (`antislop-copywriting`)

`README.md` proyek WAJIB ditulis dengan gaya bahasa manusiawi, profesional, dan menyenangkan dibaca:

1. **Eliminasi Total Kosakata AI Klise:**
   DILARANG menggunakan kata-kata: *unlock, elevate, empower, delve, showcase, testament, landscape (abstrak), journey, robust, game-changer, next-level, seamless, cutting-edge, revolutionary, transformational*. Ganti dengan bahasa konkret, lugas, dan fungsional.
2. **Nol Em Dash (`—` / `--`):**
   DILARANG menggunakan karakter em dash atau double-hyphen sebagai penghubung kalimat. Gunakan tanda titik, koma, titik dua, atau kurung.
3. **Dual-Audience Structure:**
   - **Bagian Stakeholder & Klien:** Gunakan narasi bisnis yang jelas, visualisasi palet warna yang menarik, dan sorotan fitur interaktif.
   - **Bagian Engineer & Developer:** Sajikan perintah terminal yang presisi, pohon struktur folder, dan tabel CSS tokens tanpa basa-basi.
4. **Data Autentik (No Fake Claims):**
   Gunakan nama brand asli, kutipan ulasan Google Maps riil dari `docs/00`, dan nilai rasio kontras nyata dari `docs/01`.

---

## 4. Struktur Standar Output `README.md` Proyek

Susun `README.md` proyek dengan 8 bab terstruktur berikut:

```markdown
# [Nama Bisnis/Brand] — [Tagline Utama]

<div align="center">

![Framework](https://img.shields.io/badge/Stack-[Framework_Name]-blue?style=for-the-badge)
![Styling](https://img.shields.io/badge/Styling-[Tailwind_CSS_v4]-38bdf8?style=for-the-badge)
![Motion](https://img.shields.io/badge/Motion-Lenis_Smooth_Scroll-purple?style=for-the-badge)
![A11y](https://img.shields.io/badge/WCAG_AA-Contrast_Verified-emerald?style=for-the-badge)
![Visual QA](https://img.shields.io/badge/Visual_QA-Playwright_MCP-orange?style=for-the-badge)

<br/>

**[Ringkasan eksekutif 1-2 kalimat tentang brand, target pasar lokal, dan tujuan website ini.]**

[🌟 Brand Snapshot](#-ringkasan-bisnis--identitas-brand) • [🎨 Desain Sistem](#-arah-visual--sistem-desain) • [⚡ Fitur Unggulan](#-fitur-utama--showstopper-interaktif) • [🛠️ Arsitektur Teknis](#%EF%B8%8F-tech-stack--arsitektur-teknis) • [🚀 Mulai Cepat](#-panduan-memulai-cepat-quick-start) • [📚 Indeks Dokumen](#-indeks-dokumentasi-lengkap-docs)

</div>

---

## 🌟 Ringkasan Bisnis & Identitas Brand
- **Nama Bisnis:** [Nama Bisnis]
- **Kategori & Niche:** [Kategori Layanan]
- **Lokasi & Pasar Target:** [Kota / Wilayah Operasional]
- **Value Proposition Utama:** [Inti penawaran dari docs/02]
- **Reputasi & Bukti Sosial Autentik:**
  - Rating Google Maps: [X.X / 5.0 (N Ulasan)]
  - Sorotan Ulasan Pelanggan: *"Kutipan ulasan riil dari docs/00"*

---

## 🎨 Arah Visual & Sistem Desain

### Palet Warna Terverifikasi WCAG AA
| Peran Warna | Nama Token | Kode HEX | Background Uji | Rasio Kontras | Status WCAG |
|---|---|---|---|---|---|
| Primary Brand | `--color-primary` | `#HEX` | Light/Dark BG | X.X:1 | PASS (AA) |
| Secondary Accent | `--color-secondary` | `#HEX` | Neutral BG | X.X:1 | PASS (AA) |
| Neutral Light | `--color-bg-light` | `#HEX` | - | - | Base Canvas |
| Neutral Dark | `--color-bg-dark` | `#HEX` | - | - | High Contrast Text |

### Tipografi & Karakter Visual
- **Display Heading:** [Nama Font Display, misal Playfair Display / Cormorant] (Google Fonts)
- **Body & Interface:** [Nama Font Body, misal Plus Jakarta Sans / Inter] (Google Fonts)
- **Prinsip Gerak & Tekstur:** Lenis Smooth Scroll, Dynamic Bento Grid, ambient radial glow (maks 1-2 titik), subtle grain texture.

---

## ⚡ Fitur Utama & Showstopper Interaktif

### Sections Antarmuka
1. **Hero Section:** [Uraian singkat konsep hero showstopper dari docs/03]
2. **Social Proof & Stats Strip:** [Uraian highlight reputasi dan bukti nyata]
3. **Dynamic Bento Showcase:** [Uraian layanan unggulan dalam tata letak asimetris]
4. **Interactive Centerpiece:** [Fitur interaktif diferensiasi dari docs/06, misal Visualizer/Kalkulator]
5. **Interactive Booking / Contact CTA:** [Alur konversi langsung ke WhatsApp/Formulir]

### Status Ruang Lingkup MVP (MoSCoW)
- [x] **Must-Have (Fase 1 - Selesai):** [Daftar fitur inti yang sudah aktif]
- [ ] **Should-Have (Fase 2):** [Rencana fitur lanjutan dari docs/05]

---

## 🛠️ Tech Stack & Arsitektur Teknis

- **Core Framework:** [Nuxt 4 / Next.js 15 / React Vite / Astro / SvelteKit]
- **Styling Engine:** Tailwind CSS v4 + Native CSS Custom Properties
- **Motion & Smooth Scrolling:** Lenis Scroll
- **Iconography:** Lucide Icons
- **Quality Gates:** Playwright MCP (Visual QA) + Skrip Python WCAG AA Contrast Checker

### Peta Struktur Folder
```
├── app/ (atau src/)
│   ├── components/       # Komponen UI modular berstandar aksesibilitas
│   │   ├── hero/         # Showstopper hero banner
│   │   ├── bento/        # Asymmetric bento grid cards
│   │   └── interactive/  # Interactive differentiation tools
│   ├── pages/            # Routing halaman utama
│   └── assets/           # Stylesheet & global CSS tokens
├── docs/                 # Single Source of Truth dokumentasi perencanaan
├── .agents/              # Aturan rekayasa, skill eksekutor, & workflows
└── README.md             # Dokumentasi utama proyek ini
```

---

## 🚀 Panduan Memulai Cepat (Quick Start)

### 1. Prasyarat Sistem
- Node.js versi 18.x atau 20.x ke atas
- Package Manager: `npm` / `pnpm` / `yarn` / `bun`

### 2. Instalasi Dependensi
```bash
npm install
```

### 3. Menjalankan Server Pengembangan Lokal
```bash
npm run dev
```
Akses antarmuka melalui browser di: `http://localhost:3000` (atau port yang tertera di terminal).

### 4. Build untuk Lingkungan Produksi
```bash
npm run build
npm run preview
```

---

## 🛡️ Jaminan Kualitas & Standar Agensi (5-Pillar Quality Armor)

Proyek ini dibangun di bawah penegakan mutu otomatis:
1. **Validasi Kontras WCAG AA:**
   ```bash
   python3 .agents/skills/antislop-human/contrast-check.py "#TEXT_HEX" "#BG_HEX"
   ```
2. **Playwright MCP Real-Time Visual QA:**
   - Desktop Viewport: 1440 × 900 px
   - Mobile Viewport: 390 × 844 px (Zero horizontal scroll leak & tap targets minimal 44x44px)
3. **Copywriting Alami:** Bebas dari jargon klise AI dan klaim palsu.

---

## 📚 Indeks Dokumentasi Lengkap (`@docs/`)

Seluruh arsip keputusan strategis, riset pasar, dan spesifikasi teknikal tersimpan di direktori `docs/`:

| Dokumen | Judul & Fokus | Target Pembaca | Versi SemVer |
|---|---|---|---|
| [`docs/00-master-data.md`](file:///./docs/00-master-data.md) | Intelijen Bisnis Lokal & Riset Kompetitor | Strategist & Client | 1.0.0 |
| [`docs/01-design-direction.md`](file:///./docs/01-design-direction.md) | Ekstraksi Warna & Validasi WCAG AA | Designer & Developer | 1.0.0 |
| [`docs/02-brand-identity.md`](file:///./docs/02-brand-identity.md) | Positioning, Tagline, & Tone of Voice | Copywriter & Client | 1.0.0 |
| [`docs/03-website-concept.md`](file:///./docs/03-website-concept.md) | Blueprint Hero & Ritme Storytelling | Creative Director | 1.0.0 |
| [`docs/04-design-system.md`](file:///./docs/04-design-system.md) | Panduan Desain Pemangku Kepentingan | Stakeholders | 1.0.0 |
| [`docs/design.md`](file:///./docs/design.md) | Spesifikasi Teknis 8-Bab Desain Sistem | Developer & AI | 1.0.0 |
| [`docs/05-prd.md`](file:///./docs/05-prd.md) | Product Requirements Document (MoSCoW) | PM & Lead Engineer | 1.0.0 |
| [`docs/06-strategic-audit.md`](file:///./docs/06-strategic-audit.md) | Fitur Interaktif & Trust Architecture | Growth Lead | 1.0.0 |
| [`docs/07-cold-outreach.md`](file:///./docs/07-cold-outreach.md) | *(Bila ada)* Playbook Outreach Klien (Email & DM) | Sales & Outbound | 1.0.0 |
| [`docs/09-launch-handover.md`](file:///./docs/09-launch-handover.md) | *(Bila ada)* Checklist Rilis & Serah Terima | Release Coordinator | 1.0.0 |

---

## 🤝 Handover & Langkah Lanjutan

- Untuk mem-pitch landing page ini ke prospek pemilik bisnis, jalankan: **/cold-outreach**
- Untuk memeriksa checklist go-live dan serah terima domain/hosting, jalankan: **/launch-handover**
- Untuk memverifikasi status pipeline atau mendiagnosis kelengkapan proyek, jalankan: **/skillpack-guide**
```

---

## 5. Prosedur Eksekusi Agen

Saat skill ini dipanggil (via `/generate-project-readme`, `/generate-readme`, atau permintaan membuat README komprehensif):
1. Pindai direktori `docs/` dan catat semua dokumen yang ada.
2. Periksa `package.json` dan `.agents/rules/engineering-architecture.md` untuk rincian stack dan skrip.
3. Eksekusi **Safety Protocol**: Jika `README.md` saat ini adalah README skill pack, salin ke `README.skillpack.md`.
4. Susun konten `README.md` baru secara utuh sesuai template 8 bab di atas dengan data spesifik proyek.
5. Laporkan ke pengguna secara ringkas bahwa `README.md` proyek telah berhasil dibuat, sebutkan dokumen apa saja yang telah disintesis, dan tautkan ke berkas `README.md`.
