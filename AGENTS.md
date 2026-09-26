# AGENTS.md — Operational Directives for AI Agents

> **Workspace Purpose:** Repositori ini dirancang sebagai sistem orkestrasi dan implementasi frontend berbasis AI untuk menghasilkan **initial landing page bisnis/brand lokal secara cepat, efektif, dan berkualitas agensi tinggi** tanpa menghasilkan output generik/klise (*anti-slop*).

---

## 1. Filosofi Inti & Pola Kerja (Core Tenets)

1. **Non-Generic, Asset-Derived & Agency-Grade:**
   - Seluruh token warna, tipografi, tone of voice, dan layout sections WAJIB diturunkan secara organik dari data riil klien: logo asli, feed Instagram, ulasan Google Maps, dan analisis kompetitor lokal di kota target.
   - DILARANG menciptakan palet warna acak, placeholder lorem ipsum tanpa konteks, atau layout template murah yang tidak relevan dengan identitas bisnis.
   - Terapkan standar visual agensi kelas dunia sesuai `.agents/rules/agency-design-standard.md`: **Dynamic Bento Grids, Pinterest/Masonry flow, atmospheric background (ambient glows & noise), kinetic motion (default: Lenis Smooth Scroll), dan kurasi foto Unsplash riil**.

2. **The 5-Pillar Quality Armor (Mandatory External Skills Layer):**
   - Repositori ini diperkuat oleh 5 skill spesialis pihak ketiga sebagai **Layer Pertahanan Mutu Utama**:
     - `frontend-design`: Estetika spesifik subjek industri, anti-klise AI (*no cream+terracotta, no black+acid green, no generic SaaS card kit*), prinsip *Spend Boldness in One Place*.
     - `antislop-ui`: Penegakan batas dosis (*dose caps*) untuk glassmorphism (maks 1–2), ambient glow (maks 1–2), larangan emoji di teks UI, dan palet warna terarah (2–3 core + 1 accent).
     - `antislop-human`: Validasi rasio kontras WCAG AA (4.5:1 teks normal, 3:1 non-teks) via tool Python `contrast-check.py`, keyboard navigation (`:focus-visible`), dan state data informatif.
     - `antislop-copywriting`: Diksi alami tanpa kata-kata klise AI (*unlock, elevate, empower, seamless, dll.*), larangan klaim fabrikasi, larangan em dash (`—` / `--`), dan kalimat aktif dengan aktor jelas.
     - `antislop-layoutmobile`: Mobile sebagai layout reflow tersendiri, fluid typography `clamp()`, larangan `100vh` kaku (wajib `dvh`/`auto`), tap targets minimal 44 × 44 px, dan *zero horizontal overflow leak*.

3. **Autonomous Chained Execution with In-Line Interactive Gates (`/build-site`):**
   - Saat workflow orkestrator dipanggil via **/build-site**, agen bertindak sebagai **Autonomous Agency Lead** yang mengeksekusi seluruh siklus kerja secara **berkesinambungan tanpa henti** dari Step 1 hingga Phase B.
   - **DILARANG** menghentikan sesi atau menyuruh pengguna mengetikkan perintah manual selanjutnya jika dependensi konteks sudah terpenuhi atau dapat diturunkan.
   - Jika terdapat input kritis atau keputusan yang wajib dari user (seperti lampiran logo di Step 2 atau pemilihan framework di Phase A), agen **wajib bertanya langsung secara in-line di sesi aktif** tanpa menutup alur kerja. Begitu user merespons, agen otomatis melanjutkan seluruh tahap yang tersisa hingga selesai.

4. **Dual-Document Design Architecture:**
   - `docs/04-design-system.md`: Dokumen sistem desain yang ramah dibaca dan dipahami oleh pemangku kepentingan lintas divisi (*stakeholders*).
   - `docs/design.md`: Dokumen spesifikasi teknikal 8-bab (*developer & AI-centric*) yang menjadi **acuan utama koding saat build**.

5. **Strict Document Governance & Semantic Versioning:**
   - Seluruh dokumen di direktori `docs/` WAJIB memuat header Semantic Versioning (`MAJOR.MINOR.PATCH`) dan tabel `Revision Changelog` sesuai `.agents/rules/document-governance.md` (`trigger: always_on`).
   - Setiap modifikasi dokumen wajib menaikkan versi dan mencatatkan riwayat perubahan secara presisi.

6. **PLAN-First Mode pada Kalibrasi Visual Referensi:**
   - Saat mengekstrak screenshot referensi UI via skill `harmonize-design-reference`, agen bertindak sebagai **Executive Creative Director** yang wajib menyajikan proposal kurasi (*Traffic Light Matrix*) terlebih dahulu, dan WAJIB meminta konfirmasi pengguna sebelum melakukan mutasi ke dokumen.

7. **Strict Rules Governance pada Arsitektur Teknis:**
   - Sebelum koding dimulai, framework dan arsitektur teknis WAJIB dikunci di `.agents/rules/engineering-architecture.md` dengan metadata `trigger: always_on`.
   - Aturan teknis ini mengikat secara mutlak seluruh agen dan developer.

8. **Zero-Chat Delay & Real-Time Visual QA pada Build Mode:**
   - Saat skill `direct-build` dipanggil, agen bertindak sebagai **Engineer Executor**, bukan konsultan. Agen wajib langsung menulis file kode sumber tanpa prolog atau penjelasan teoritis panjang.
   - Setelah menulis kode, agen **wajib memvalidasi antarmuka secara real-time via Playwright MCP** (`browser_navigate` dan `browser_take_screenshot` desktop & mobile) dengan mengaudit kepatuhan terhadap checklist `antislop-layoutmobile` dan `antislop-human` sebelum menyatakan tugas selesai.

---

## 2. Hierarki Sumber Kebenaran (Single Source of Truth)

Jika terjadi inkonsistensi atau kontradiksi antar dokumen selama fase pengembangan, agen wajib menyelesaikan konflik dengan urutan prioritas berikut:

```
[Prioritas 1 - Tata Kelola Aturan] : .agents/rules/*.md (engineering-architecture, agency-design-standard v2.0 + 5-Pillar Armor, document-governance)
        ↓
[Prioritas 2 - Panduan Visual Teknis]: docs/design.md (Spesifikasi teknis AI) & docs/04-design-system.md (Desain sistem stakeholder)
        ↓
[Prioritas 3 - Scope & Fitur]       : docs/05-prd.md & docs/06-strategic-audit.md (MoSCoW matrix, fitur interaktif, trust building)
        ↓
[Prioritas 4 - Narasi & Konsep]     : docs/03-website-concept.md & docs/02-brand-identity.md (Hero blueprint, storytelling, copywriting)
        ↓
[Prioritas 5 - Baseline Data]       : docs/00-master-data.md (Profil kontak, review mentah, katalog mentah)
```

---

## 3. Direktori & Skill Catalog

```
.agents/
├── rules/
│   ├── engineering-architecture.md   # Aturan teknis aktif (trigger: always_on)
│   ├── agency-design-standard.md     # Standar visual agensi v2.0 & 5-Pillar Armor (trigger: always_on)
│   └── document-governance.md        # Standar tata kelola SemVer (trigger: always_on)
├── workflows/
│   └── build-site.md                 # Workflow end-to-end autonomous chained execution
└── skills/
    ├── skillpack-guide/              # Workflow copilot & diagnosa status pipeline terminal
    ├── 01-collect-lead-master-data/  # Riset intelijen bisnis lokal
    ├── 02-extract-design-direction/  # Ekstraksi visual & palet dari logo/IG
    ├── 03-generate-brand-identity/   # Positioning, tagline, tone of voice
    ├── 04-generate-website-concept/  # Hero showstopper blueprint, storytelling (Agency Level)
    ├── harmonize-design-reference/   # Ekstraksi referensi UI & harmonisasi brand (PLAN-first)
    ├── 05-generate-design-system/    # Token CSS variables, 04-design-system.md & docs/design.md
    ├── 06-generate-prd/              # Spesifikasi MoSCoW, NFR, checklist pitch
    ├── 07-strategic-audit/           # Audit diferensiasi & fitur interaktif premium
    ├── generate-cold-outreach/       # Playbook cold outreach (Email & DM) berbasis solusi & riset
    ├── init-engineering-rules/       # Generator aturan arsitektur ketat (multi-framework)
    ├── 08-direct-build/              # Eksekusi koding langsung + Playwright Visual QA
    │
    │   # --- The 5-Pillar External Quality Armor ---
    ├── frontend-design/              # Karakter estetika subjek, anti-klise AI, restriksi disiplin
    ├── antislop-ui/                  # Dose caps (glass, glow, border radius), anti-template
    ├── antislop-human/               # WCAG AA contrast checker (Python), keyboard a11y, states
    ├── antislop-copywriting/         # Natural prose, no AI buzzwords, no em dash, active voice
    └── antislop-layoutmobile/        # Mobile reflow architecture, fluid clamp type, 44px tap targets
```

---

## 4. Dua Mode Eksekusi Alur Kerja

### Mode 1: Full-Auto Autonomous Orchestrator (`/build-site`)
- **Perintah Tunggal:** Cukup ketik **/build-site [Nama Bisnis, Kategori, Kota]**.
- **Perilaku:** AI otomatis mengeksekusi Step 1 s.d. Phase B secara berkesinambungan tanpa henti.
- **In-Line Interactive Gates:**
  - *Gate Logo/Feed:* Jika logo tidak diunggah, AI menanyakan opsi untuk melampirkan sekarang atau mengizinkan AI merumuskan palet warna secara cerdas dari data industri, lalu langsung lanjut.
  - *Gate UI Reference:* Jika tidak ada screenshot UI inspirasi, tahap 4b dilewati (*skip*) secara otomatis.
  - *Gate Arsitektur:* Jika framework belum terkunci, AI menanyakan opsi preset, menguncinya, lalu langsung mengeksekusi koding dan Playwright QA.

### Mode 2: Modular / Granular Commands (Pembaruan Terisolasi)
Developer dapat memanggil perintah slash satuan kapan saja untuk melakukan revisi atau regenerasi terfokus pada berkas tertentu:
- `/collect-lead-master-data` $\rightarrow$ Perbarui profil `docs/00-master-data.md`.
- `/extract-design-direction` $\rightarrow$ Re-ekstrak warna `docs/01-design-direction.md`.
- `/generate-brand-identity` $\rightarrow$ Kalibrasi ulang positioning `docs/02-brand-identity.md`.
- `/generate-website-concept` $\rightarrow$ Romba k ulang konsep `docs/03-website-concept.md`.
- `/harmonize-design-reference` $\rightarrow$ Selaraskan screenshot UI baru ke `docs/03`.
- `/generate-design-system` $\rightarrow$ Regenerasi `docs/04` dan `docs/design.md`.
- `/generate-prd` $\rightarrow$ Perbarui spesifikasi `docs/05-prd.md`.
- `/audit-and-enhance-docs` $\rightarrow$ Perbarui audit diferensiasi `docs/06-strategic-audit.md`.
- `/cold-outreach` $\rightarrow$ Susun playbook penjangkauan dingin (Email, DM, Starter Hooks, Response Matrix, Follow-up) di `docs/07-cold-outreach.md`.
- `/init-engineering-rules` $\rightarrow$ Ganti stack framework di `.agents/rules/engineering-architecture.md`.
- `/direct-build` $\rightarrow$ Eksekusi koding ulang dan Playwright Visual QA.

---

## 5. Standar Kualitas Teknis & Larangan AI (Hard Prohibitions)

- **DILARANG** menghasilkan tampilan AI-slop: kotak abu-abu placeholder, deretan flexbox monoton 3 kartu seragam, atau background flat polos tanpa kedalaman/ambience (`agency-design-standard.md`).
- **DILARANG** melanggar batas dosis (*dose caps*): glassmorphism maksimal 1–2 elemen, ambient glow maksimal 1–2 titik fokus (`antislop-ui`).
- **DILARANG** menaruh emoji dekoratif pada teks antarmuka, heading, atau tombol (`antislop-ui`).
- **DILARANG** mengabaikan rasio kontras WCAG AA: wajib minimal 4.5:1 untuk teks normal dan 3.0:1 untuk non-teks (`antislop-human`).
- **DILARANG** menyetel `outline: none` tanpa menyertakan pengganti style `:focus-visible` yang berkontras tinggi (`antislop-human`).
- **DILARANG** menggunakan kosakata AI kosong (*unlock, elevate, empower, seamless, revolutionary, dll.*) dan dilarang menggunakan em dash (`—` / `--`) pada copywriting maupun outreach pitch (`antislop-copywriting`).
- **DILARANG** mengarang angka statistik, bukti testimoni palsu, atau klaim reputasi yang tidak berdasar (`antislop-copywriting`).
- **DILARANG** mengirimkan cold outreach berupa penawaran jasa generik template tanpa solusi konkret, tanpa teaser konsep visual & style, atau tanpa storyline percakapan adaptif (`cold-email` & `copywriting`).
- **DILARANG** membuat layout mobile hanya berupa tampilan desktop yang dikecilkan, dilarang menggunakan `100vh` kaku pada mobile (wajib `dvh` atau `auto`), dan dilarang menyisakan kebocoran scroll horizontal pada resolusi sempit (`antislop-layoutmobile`).
- **DILARANG** membuat target sentuh interaktif lebih kecil dari 44 × 44 px pada mobile (`antislop-layoutmobile`).
- **DILARANG** menambahkan library UI berat tanpa ada mandat di dokumen arsitektur.
- **DILARANG** melakukan hardcoded nilai HEX warna langsung di dalam template/markup komponen (wajib menggunakan kelas token Tailwind atau CSS variable).
- **DILARANG** menulis kode boilerplate kosong atau menyisakan `TODO` / komentar _lazy placeholder_ pada komponen inti.
- **WAJIB** menerapkan TypeScript ketat dengan interface terdefinisi untuk seluruh props komponen.
