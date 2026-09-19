---
description: Pipeline orkestrasi 6-step brainstorming & ideation MVP website khusus untuk repositori lead ini
---

---

name: lead-ideate-pipeline
description: Pipeline orkestrasi 6-step brainstorming & ideation MVP website khusus untuk repositori lead ini.

---

Kamu bertindak sebagai Lead Orchestrator untuk repositori MVP ini.

Tujuan:
Membimbing eksekusi bertahap (step-by-step) pembuatan 6 dokumen strategi dan spesifikasi teknis langsung ke direktori `docs/` repositori ini hingga siap masuk tahap development Nuxt 4.

Prinsip Kerja Pipeline:

1. EKSEKUSI SATU LANGKAH PADA SATU WAKTU (Step-by-Step).
2. Tunggu konfirmasi atau upload aset (terutama logo/feed) sebelum melangkah ke step berikutnya.
3. Seluruh output dokumen disimpan langsung di folder `docs/`.

---

### Pipeline Roadmap & File Mapping:

- [ ] **Step 1: Master Data Collection**
  - Skill: `/collect-lead-master-data`
  - Output: `docs/00-master-data.md`
  - Input: Nama Bisnis, Kategori, Kota.

- [ ] **Step 2: Colors & Visual Extraction**
  - Skill: `/extract-design-direction`
  - Output: `docs/01-design-direction.md`
  - Input: Attachment Logo & Screenshot Feed IG.

- [ ] **Step 3: Brand Identity & Positioning**
  - Skill: `/generate-brand-identity`
  - Output: `docs/02-brand-identity.md`
  - Konteks: `@docs/00-master-data.md` + `@docs/01-design-direction.md`.

- [ ] **Step 4: Website Concept & Art Direction (Agency-Grade)**
  - Skill: `/generate-website-concept`
  - Output: `docs/03-website-concept.md`
  - Konteks: `@docs/00-master-data.md` + `@docs/01-design-direction.md` + `@docs/02-brand-identity.md`.
  - Tooling: Gunakan Context7 MCP (`resolve-library-id` $\rightarrow$ `query-docs`) untuk meriset kompatibilitas pustaka interaktif/3D/motion.

- [ ] **Step 4b (Opsional): Visual Reference & UI Harmonization**
  - Skill: `/harmonize-design-reference`
  - Target: Overwrite `docs/03-website-concept.md`, sync `04-design-system.md` & `05-prd.md`
  - Input: Screenshot referensi UI/landing page inspirasi
  - Aturan: PLAN-First Mode (wajib konfirmasi sebelum overwrite, filter traffic light Green/Yellow/Red, bump SemVer)

- [ ] **Step 5: Design System & Technical Specification**
  - Skill: `/generate-design-system`
  - Output:
    - `docs/04-design-system.md` (Dokumen sistem desain untuk pemangku kepentingan lintas divisi)
    - `docs/design.md` (Spesifikasi teknikal 8-bab acuan koding AI: Grids, Depth, Unsplash, Motion)
  - Konteks: `@docs/01-design-direction.md` + `@docs/02-brand-identity.md` + `@docs/03-website-concept.md` + `.agents/rules/agency-design-standard.md`.

- [ ] **Step 6: Product Requirements Document (PRD)**
  - Skill: `/generate-prd`
  - Output: `docs/05-prd.md`
  - Konteks: `@docs/00-master-data.md` + `@docs/02-brand-identity.md` + `@docs/03-website-concept.md` + `@docs/design.md`.

- [ ] **Step 7: Strategic Audit & Premium Differentiation**
  - Skill: `/audit-and-enhance-docs`
  - Output: `docs/06-strategic-audit.md`
  - Konteks: `@docs/00` s.d. `@docs/05`.

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
  - Acuan Utama: `.agents/rules/engineering-architecture.md` & `docs/design.md`.
  - Fitur Wajib: Smooth scroll (Lenis), dynamic bento grid, atmospheric backgrounds, kurasi Unsplash riil.
  - Quality Gate: Wajib validasi visual real-time menggunakan **Playwright MCP** (`browser_navigate` ke localhost dan `browser_take_screenshot` viewport desktop & mobile).

---

### Mekanisme Respon:

1. Buat folder `docs/` jika belum ada.
2. Jalankan step aktif, tulis berkas target di `docs/`, lalu tampilkan status checklist ringkas.
3. Berikan instruksi jelas tindakan apa yang dibutuhkan dari pengguna untuk mengeksekusi step selanjutnya.
