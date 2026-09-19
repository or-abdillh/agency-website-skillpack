# AGENTS.md — Operational Directives for AI Agents

> **Workspace Purpose:** Repositori ini dirancang sebagai sistem orkestrasi dan implementasi frontend berbasis AI untuk menghasilkan **initial landing page bisnis/brand lokal secara cepat, efektif, dan berkualitas agensi tinggi** tanpa menghasilkan output generik/klise (*anti-slop*).

---

## 1. Filosofi Inti & Pola Kerja (Core Tenets)

1. **Non-Generic, Asset-Derived & Agency-Grade:**
   - Seluruh token warna, tipografi, tone of voice, dan layout sections WAJIB diturunkan secara organik dari data riil klien: logo asli, feed Instagram, ulasan Google Maps, dan analisis kompetitor lokal di kota target.
   - DILARANG menciptakan palet warna acak, placeholder lorem ipsum tanpa konteks, atau layout template murah yang tidak relevan dengan identitas bisnis.
   - Terapkan standar visual agensi kelas dunia sesuai `.agents/rules/agency-design-standard.md`: **Dynamic Bento Grids, Pinterest/Masonry flow, atmospheric background (ambient glows & noise), kinetic motion (default: Lenis Smooth Scroll), dan kurasi foto Unsplash riil**.

2. **Step-by-Step Pipeline (Single Responsibility per Turn):**
   - Proses pembuatan dokumen ideasi dan strategi di `docs/` dijalankan secara bertahap satu per satu (Step 1 s.d. Step 7).
   - Setiap langkah menghasilkan artefak dokumen Markdown definitif yang tersimpan rapi di direktori `docs/` sebelum melangkah ke tahap berikutnya.

3. **Dual-Document Design Architecture:**
   - `docs/04-design-system.md`: Dokumen sistem desain yang ramah dibaca dan dipahami oleh pemangku kepentingan lintas divisi (*stakeholders*).
   - `docs/design.md`: Dokumen spesifikasi teknikal 8-bab (*developer & AI-centric*) yang menjadi **acuan utama koding saat build**.

4. **Strict Document Governance & Semantic Versioning:**
   - Seluruh dokumen di direktori `docs/` WAJIB memuat header Semantic Versioning (`MAJOR.MINOR.PATCH`) dan tabel `Revision Changelog` sesuai `.agents/rules/document-governance.md` (`trigger: always_on`).
   - Setiap modifikasi dokumen wajib menaikkan versi dan mencatatkan riwayat perubahan secara presisi.

5. **PLAN-First Mode pada Kalibrasi Visual Referensi:**
   - Saat mengekstrak screenshot referensi UI via skill `harmonize-design-reference`, agen bertindak sebagai **Executive Creative Director** yang wajib menyajikan proposal kurasi (*Traffic Light Matrix*) terlebih dahulu, dan WAJIB meminta konfirmasi pengguna sebelum melakukan mutasi ke dokumen.

6. **Strict Rules Governance pada Arsitektur Teknis:**
   - Sebelum koding dimulai, framework dan arsitektur teknis WAJIB dikunci di `.agents/rules/engineering-architecture.md` dengan metadata `trigger: always_on`.
   - Aturan teknis ini mengikat secara mutlak seluruh agen dan developer.

7. **Zero-Chat Delay & Real-Time Visual QA pada Build Mode:**
   - Saat skill `direct-build` dipanggil, agen bertindak sebagai **Engineer Executor**, bukan konsultan. Agen wajib langsung menulis file kode sumber tanpa prolog atau penjelasan teoritis panjang.
   - Setelah menulis kode, agen **wajib memvalidasi antarmuka secara real-time via Playwright MCP** (`browser_navigate` dan `browser_take_screenshot` desktop & mobile) sebelum menyatakan tugas selesai.

---

## 2. Hierarki Sumber Kebenaran (Single Source of Truth)

Jika terjadi inkonsistensi atau kontradiksi antar dokumen selama fase pengembangan, agen wajib menyelesaikan konflik dengan urutan prioritas berikut:

```
[Prioritas 1 - Tata Kelola Aturan] : .agents/rules/*.md (engineering-architecture, agency-design-standard, document-governance)
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
│   ├── agency-design-standard.md     # Standar visual agensi & anti-slop (trigger: always_on)
│   └── document-governance.md        # Standar tata kelola SemVer (trigger: always_on)
├── workflows/
│   └── lead-ideate-pipeline.md       # Orkestrasi ideasi, referensi UI, audit & build
└── skills/
    ├── 01-collect-lead-master-data/  # Riset intelijen bisnis lokal
    ├── 02-extract-design-direction/  # Ekstraksi visual & palet dari logo/IG
    ├── 03-generate-brand-identity/   # Positioning, tagline, tone of voice
    ├── 04-generate-website-concept/  # Hero showstopper blueprint, storytelling (Agency Level)
    ├── harmonize-design-reference/   # Ekstraksi referensi UI & harmonisasi brand (PLAN-first)
    ├── 05-generate-design-system/    # Token CSS variables, 04-design-system.md & docs/design.md
    ├── 06-generate-prd/              # Spesifikasi MoSCoW, NFR, checklist pitch
    ├── 07-strategic-audit/           # Audit diferensiasi & fitur interaktif premium
    ├── init-engineering-rules/       # Generator aturan arsitektur ketat (multi-framework)
    └── 08-direct-build/              # Eksekusi koding langsung + Playwright Visual QA
```

---

## 4. Alur Kerja Standar Agen (Workflow Execution Lifecycle)

### Fase 1: Discovery & Strategy (Dokumentasi `docs/`)
Ketika user memulai eksplorasi lead bisnis baru:
1. Jalankan `/collect-lead-master-data` $\rightarrow$ Simpan di `docs/00-master-data.md`.
2. Minta user mengunggah logo/screenshot feed $\rightarrow$ Jalankan `/extract-design-direction` $\rightarrow$ Simpan di `docs/01-design-direction.md`.
3. Jalankan `/generate-brand-identity` $\rightarrow$ Simpan di `docs/02-brand-identity.md`.
4. Jalankan `/generate-website-concept` $\rightarrow$ Simpan di `docs/03-website-concept.md` (Gunakan **Context7 MCP** untuk riset pustaka animasi/3D dan `find-skills` jika perlu).
5. *(Opsional / Kalibrasi Visual)* Jika user mengunggah screenshot referensi UI/landing page:
   - Jalankan `/harmonize-design-reference` dalam **PLAN MODE**.
   - Tampilkan dekonstruksi dan evaluasi *Traffic Light Matrix* (Green/Yellow/Red).
   - Minta persetujuan user.
   - Setelah disetujui, lakukan overwrite langsung ke `docs/03-website-concept.md`, sinkronkan `docs/04-design-system.md` dan `docs/05-prd.md`, lalu naikkan versi SemVer.
6. Jalankan `/generate-design-system` $\rightarrow$ Hasilkan `docs/04-design-system.md` (stakeholders) dan `docs/design.md` (panduan teknikal AI).
7. Jalankan `/generate-prd` $\rightarrow$ Simpan di `docs/05-prd.md`.
8. Jalankan `/audit-and-enhance-docs` $\rightarrow$ Simpan di `docs/06-strategic-audit.md`.

### Fase 2: Architecture Locking
Sebelum memulai koding:
1. Jalankan `/init-engineering-rules` untuk mengunci stack yang dipilih proyek (misal: Nuxt 4, Next.js 15, React 19 + Vite, Astro 5, SvelteKit, atau custom stack).
2. Pastikan file `.agents/rules/engineering-architecture.md` memiliki 14 bab lengkap dan frontmatter `trigger: always_on`.

### Fase 3: Production Implementation & Visual QA
1. Jalankan `/direct-build`.
2. Agen langsung mengimplementasikan kode aplikasi secara menyeluruh mengacu pada `docs/design.md` dan `engineering-architecture.md`:
   - Konfigurasi framework & plugin (termasuk Lenis Smooth Scroll & Tailwind v4).
   - Stylesheet utama dengan CSS variables, ambient glows, dan noise overlays.
   - Komponen Base, UI atomik, dan Dynamic Bento/Masonry Sections.
   - Layout utama dan Halaman Utama (`index`).
3. **Quality Gate Real-Time via Playwright MCP:**
   - Buka preview lokal via `browser_navigate`.
   - Ambil screenshot desktop (1440px) dan mobile (390px) via `browser_take_screenshot`.
   - Lakukan inspeksi visual mandiri sebelum mengonfirmasi penyelesaian tugas ke user.

---

## 5. Standar Kualitas Teknis & Larangan AI (Hard Prohibitions)

- **DILARANG** menghasilkan tampilan AI-slop: kotak abu-abu placeholder, deretan flexbox monoton 3 kartu seragam, atau background flat polos tanpa kedalaman/ambience.
- **DILARANG** menambahkan library UI berat tanpa ada mandat di dokumen arsitektur.
- **DILARANG** melakukan hardcoded nilai HEX warna langsung di dalam template/markup komponen (wajib menggunakan kelas token Tailwind atau CSS variable).
- **DILARANG** menulis kode boilerplate kosong atau menyisakan `TODO` / komentar _lazy placeholder_ pada komponen inti.
- **WAJIB** menerapkan TypeScript ketat dengan interface terdefinisi untuk seluruh props komponen.
- **WAJIB** menerapkan mobile-first responsiveness (viewport 360px hingga layar desktop lebar tanpa layout breaking).
