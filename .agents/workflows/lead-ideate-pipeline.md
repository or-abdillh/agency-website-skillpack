---
description: Pipeline orkestrasi 7-step brainstorming, ideasi, dan implementasi MVP landing page kelas agensi dengan 5-Pillar Quality Armor
---

name: lead-ideate-pipeline
description: Pipeline orkestrasi 7-step brainstorming, ideasi, dan implementasi MVP landing page kelas agensi dengan 5-Pillar Quality Armor.

---

Kamu bertindak sebagai Lead Orchestrator untuk repositori MVP ini.

Tujuan:
Membimbing eksekusi bertahap (step-by-step) pembuatan seluruh dokumen strategi dan spesifikasi teknis langsung ke direktori `docs/`, mengunci arsitektur, dan membangun frontend landing page kelas agensi siap produksi yang dilindungi oleh **5-Pillar Quality Armor** (`frontend-design`, `antislop-ui`, `antislop-human`, `antislop-copywriting`, `antislop-layoutmobile`).

Prinsip Kerja Pipeline:

1. EKSEKUSI SATU LANGKAH PADA SATU WAKTU (Step-by-Step).
2. Tunggu konfirmasi atau upload aset (terutama logo/feed) sebelum melangkah ke step berikutnya.
3. Seluruh output dokumen disimpan langsung di folder `docs/`.
4. Seluruh agen dan sub-proses WAJIB mematuhi checklist dari **5-Pillar Quality Armor**.

---

### Pipeline Roadmap & File Mapping:

- [ ] **Step 1: Master Data Collection**
  - Skill: `/collect-lead-master-data`
  - Output: `docs/00-master-data.md`
  - Input: Nama Bisnis, Kategori, Kota.
  - Quality Armor: Data riil Google Maps, ulasan autentik, tanpa profil sintetis.

- [ ] **Step 2: Colors & Visual Extraction**
  - Skill: `/extract-design-direction`
  - Output: `docs/01-design-direction.md`
  - Input: Attachment Logo & Screenshot Feed IG.
  - Quality Armor: **`antislop-human`** (Wajib uji rasio kontras WCAG AA 4.5:1 teks dan 3:1 non-teks via `contrast-check.py`) + **`antislop-ui`** (Palet dibatasi 2–3 core + 1 accent, tolak gradient biru-ungu generik).

- [ ] **Step 3: Brand Identity & Positioning**
  - Skill: `/generate-brand-identity`
  - Output: `docs/02-brand-identity.md`
  - Konteks: `@docs/00-master-data.md` + `@docs/01-design-direction.md`.
  - Quality Armor: **`antislop-copywriting`** (Diksi alami bebas kata klise AI *unlock/elevate/seamless*, larangan em dash, klaim terbukti, kalimat aktif) + **`frontend-design`** (Karakter brand berakar pada subjek industri).

- [ ] **Step 4: Website Concept & Art Direction (Agency-Grade)**
  - Skill: `/generate-website-concept`
  - Output: `docs/03-website-concept.md`
  - Konteks: `@docs/00-master-data.md` + `@docs/01-design-direction.md` + `@docs/02-brand-identity.md`.
  - Tooling: Context7 MCP (`resolve-library-id` $\rightarrow$ `query-docs`) untuk pustaka animasi/3D/motion.
  - Quality Armor: **`frontend-design`** (Anti-klise AI: no cream+terracotta, no black+acid green, *Spend Boldness in One Place*) + **`antislop-ui`** (Dose caps: glass & glow maks 1–2 elemen, layout bento berbobot riil).

- [ ] **Step 4b (Opsional): Visual Reference & UI Harmonization**
  - Skill: `/harmonize-design-reference`
  - Target: Overwrite `docs/03-website-concept.md`, sync `04-design-system.md` & `05-prd.md`
  - Input: Screenshot referensi UI/landing page inspirasi
  - Aturan: PLAN-First Mode (wajib konfirmasi sebelum overwrite, filter traffic light Green/Yellow/Red, bump SemVer).

- [ ] **Step 5: Design System & Technical Specification**
  - Skill: `/generate-design-system`
  - Output:
    - `docs/04-design-system.md` (Dokumen sistem desain untuk pemangku kepentingan lintas divisi)
    - `docs/design.md` (Spesifikasi teknikal 8-bab acuan koding AI)
  - Konteks: `@docs/01-design-direction.md` + `@docs/02-brand-identity.md` + `@docs/03-website-concept.md` + `.agents/rules/agency-design-standard.md`.
  - Quality Armor: **`antislop-ui`** (Border radius hierarchy terarah, dose caps) + **`antislop-human`** (Kontras non-teks 3:1) + **`antislop-layoutmobile`** (Fluid clamp type, 44x44px tap targets).

- [ ] **Step 6: Product Requirements Document (PRD)**
  - Skill: `/generate-prd`
  - Output: `docs/05-prd.md`
  - Konteks: `@docs/00-master-data.md` + `@docs/02-brand-identity.md` + `@docs/03-website-concept.md` + `@docs/design.md`.
  - Quality Armor: **`antislop-copywriting`** (User journey konkret tanpa jargon) + MoSCoW MVP ketat.

- [ ] **Step 7: Strategic Audit & Premium Differentiation**
  - Skill: `/audit-and-enhance-docs`
  - Output: `docs/06-strategic-audit.md`
  - Konteks: `@docs/00` s.d. `@docs/05`.
  - Quality Armor: Injeksi fitur diferensiasi interaktif (*frontend-only*) dan mekanisme trust building autentik (C-5 evidence over claims).

> [!IMPORTANT]
> **Tata Kelola SemVer Dokumen:** Setiap kali berkas `docs/` dibuat atau dimodifikasi, blok header Semantic Versioning (`MAJOR.MINOR.PATCH`) dan tabel Changelog WAJIB disertakan/diperbarui sesuai `.agents/rules/document-governance.md`.

---

### Implementation & Build Phase:

- [ ] **Phase A: Engineering Architecture Lock (Strict Rules Model)**
  - Skill: `/init-engineering-rules`
  - Target: `.agents/rules/engineering-architecture.md`
  - Deskripsi: Mengunci framework (Nuxt/Next/React/Astro/SvelteKit), styling engine, struktur folder, dan standar kode secara mengikat.

- [ ] **Phase B: Direct Build & Real-Time Visual QA**
  - Skill: `/direct-build`
  - Acuan Utama: `.agents/rules/engineering-architecture.md`, `docs/design.md`, dan **5-Pillar Quality Armor**.
  - Fitur Wajib: Smooth scroll (Lenis), dynamic bento grid, atmospheric backgrounds, kurasi Unsplash riil, keyboard focus ring `:focus-visible`, fluid clamp typography.
  - Quality Gate: Wajib validasi visual real-time menggunakan **Playwright MCP** (`browser_navigate` ke localhost dan `browser_take_screenshot` viewport desktop 1440px & mobile 390px) mengaudit:
    - *Zero horizontal overflow leak* pada resolusi sempit (`antislop-layoutmobile`).
    - Kontras teks & non-teks terbaca jelas di semua titik (`antislop-human`).
    - Dosis glow & glass terkontrol rapi tanpa over-decoration (`antislop-ui`).

---

### Mekanisme Respon:

1. Buat folder `docs/` jika belum ada.
2. Jalankan step aktif, tulis berkas target di `docs/`, lalu tampilkan status checklist ringkas.
3. Berikan instruksi jelas tindakan apa yang dibutuhkan dari pengguna untuk mengeksekusi step selanjutnya.
