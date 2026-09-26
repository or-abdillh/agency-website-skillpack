---
description: Workflow end-to-end otomatis untuk membangun landing page bisnis lokal berkualitas agensi dari riset, identitas, konsep, design system, hingga eksekusi koding dan Playwright QA
---

name: build-site
description: Workflow end-to-end otomatis untuk membangun landing page bisnis lokal berkualitas agensi dari riset, identitas, konsep, design system, hingga eksekusi koding dan Playwright QA.

---

Kamu bertindak sebagai **Principal Agency Lead & Autonomous Project Orchestrator**.

Tujuan:
Mengeksekusi pembuatan website bisnis lokal berkualitas agensi kelas dunia secara **berkesinambungan (end-to-end autonomous chained execution)** dari pengumpulan data awal, perumusan brand, konsep visual anti-slop, design system teknikal, penguncian arsitektur, hingga implementasi kode frontend siap produksi dan validasi visual via Playwright MCP.

---

### Prinsip Operasional Workflow (Autonomous & Zero-Halt Execution):

1. **Continuous Chained Execution (Autopilot Mode):**
   - Agen **DILARANG** menghentikan sesi setelah menyelesaikan satu tahap untuk sekadar menyuruh pengguna mengetikkan perintah slash berikutnya secara manual.
   - Begitu alur kerja dipicu via `/build-site`, agen wajib mengeksekusi setiap tahap secara berurutan dalam satu aliran kerja kontinu:
     `Step 1 (Master Data)` $\rightarrow$ `Step 2 (Colors & WCAG)` $\rightarrow$ `Step 3 (Brand Identity)` $\rightarrow$ `Step 4 (Website Concept)` $\rightarrow$ `Step 5 (Design System & design.md)` $\rightarrow$ `Step 6 (PRD)` $\rightarrow$ `Step 7 (Strategic Audit)` $\rightarrow$ `Phase A (Architecture Lock)` $\rightarrow$ `Phase B (Direct Build & Visual QA)`.

2. **In-Line Interactive Decision Gates (Zero Workflow Disruption):**
   - Jika terdapat informasi atau aset yang mutlak dibutuhkan dari pengguna, agen **wajib bertanya langsung secara in-line di sesi aktif** (menggunakan pertanyaan ramah atau tool `ask_question`) tanpa menutup workflow.
   - Begitu pengguna memberikan jawaban atau mengunggah aset, agen **wajib langsung melanjutkan seluruh tahapan yang tersisa secara otomatis** hingga tuntas.
   - Jika informasi sudah tersedia atau dapat diturunkan dari tahap sebelumnya, agen dilarang meminta konfirmasi basa-basi yang memperlambat eksekusi.

3. **Smart Fallback & Skip Logic:**
   - **Aset Visual (Step 2):** Jika pengguna belum melampirkan logo atau screenshot feed IG, tanyakan secara in-line: apakah ingin melampirkannya sekarang, atau mengizinkan AI mengekstrak dan merumuskan palet warna autentik berbasis kategori industri dan profil kompetitor di `docs/00-master-data.md`.
   - **Screenshot Referensi UI (Step 4b):** Tahap ini bersifat opsional. Jika pengguna tidak melampirkan gambar referensi UI, lewati (*skip*) otomatis dan langsung masuk ke Step 5 (`docs/design.md`).
   - **Arsitektur Teknis (Phase A):** Periksa `.agents/rules/engineering-architecture.md`. Jika sudah terkunci, langsung lanjut ke Phase B (`/direct-build`). Jika belum ada, ajukan pilihan framework preset secara in-line, kunci aturan, lalu segera eksekusi build.

4. **Kepatuhan 5-Pillar Quality Armor:**
   - Seluruh tahapan wajib mematuhi aturan baku `.agents/rules/agency-design-standard.md` (v2.0):
     - `frontend-design`: Estetika subjek otentik, no AI clichés, *Spend Boldness in One Place*.
     - `antislop-ui`: Dose caps ketat (glass & glow maks 1–2 elemen), no decorative emoji pada teks UI.
     - `antislop-human`: Validasi rasio kontras WCAG AA (4.5:1 teks, 3:1 non-teks) via `contrast-check.py`, navigasi keyboard `:focus-visible`.
     - `antislop-copywriting`: Bebas kosakata klise AI (*unlock, elevate, seamless, dll.*), nol em dash (`—`), kalimat aktif dengan aktor jelas.
     - `antislop-layoutmobile`: Mobile reflow mandiri, fluid clamp typography, tap targets 44x44px, zero horizontal overflow leak.

---

### Alur Eksekusi Pipeline Terpadu:

#### Step 1: Master Data Collection (`docs/00-master-data.md`)
- Periksa apakah nama bisnis, kategori, dan kota sudah diberikan oleh user. Jika belum, tanyakan langsung.
- Kumpulkan data profil, ulasan Google Maps riil, dan celah kompetitor lokal terdekat.
- Tulis `docs/00-master-data.md` dengan header SemVer dan langsung lanjut ke Step 2.

#### Step 2: Visual & Color Extraction (`docs/01-design-direction.md`)
- Periksa apakah ada attachment logo/feed. Jika tidak ada, jalankan mekanisme *Smart Fallback* di atas.
- Uji pasangan warna terhadap standar WCAG AA menggunakan `python3 .agents/skills/antislop-human/contrast-check.py`.
- Tulis `docs/01-design-direction.md` dan langsung lanjut ke Step 3.

#### Step 3: Brand Identity & Positioning (`docs/02-brand-identity.md`)
- Rumuskan value proposition, hook tagline persuasif, dan tone of voice alami mematuhi checklist `antislop-copywriting`.
- Tulis `docs/02-brand-identity.md` dan langsung lanjut ke Step 4.

#### Step 4: Website Concept & Art Direction (`docs/03-website-concept.md`)
- Rancang blueprint hero showstopper anti-slop, ritme storytelling, dan interaktivitas tingkat lanjut.
- Riset pustaka animasi/smooth scroll via Context7 MCP jika diperlukan.
- Tulis `docs/03-website-concept.md` dan langsung lanjut ke Step 5 (atau jalankan Step 4b jika ada screenshot referensi).

#### Step 5: Design System & Technical Specification (`docs/04-design-system.md` & `docs/design.md`)
- Susun dokumen panduan pemangku kepentingan (`04-design-system.md`) dan spesifikasi teknis 8-bab baku (`design.md`).
- Petakan token CSS variables, fluid clamp typography, dan tap targets 44x44px.
- Tulis kedua berkas dan langsung lanjut ke Step 6.

#### Step 6: Product Requirements Document (`docs/05-prd.md`)
- Susun batasan MoSCoW, spesifikasi NFR (Lighthouse 90+), dan acceptance criteria MVP siap pitch.
- Tulis `docs/05-prd.md` dan langsung lanjut ke Step 7.

#### Step 7: Strategic Audit & Differentiation (`docs/06-strategic-audit.md`)
- Evaluasi diferensiasi dan suntikkan 1–2 fitur interaktif diferensiasi (*frontend-only*) serta mekanisme trust building autentik.
- Tulis `docs/06-strategic-audit.md` dan langsung lanjut ke Phase A.

#### Phase A: Engineering Architecture Lock (`.agents/rules/engineering-architecture.md`)
- Jika belum terkunci, tampilkan pilihan framework (Nuxt 4 / Next 15 / React Vite / Astro / SvelteKit).
- Tulis aturan 14 bab lengkap ke `.agents/rules/engineering-architecture.md` (`trigger: always_on`) dan langsung lanjut ke Phase B.

#### Phase B: Direct Build & Playwright Visual QA
- Implementasikan seluruh kode frontend produksi (konfigurasi, styles token, base UI, dynamic bento sections, layout, pages).
- Jalankan dev server lokal dan lakukan inspeksi visual via Playwright MCP:
  - `browser_navigate` ke localhost.
  - `browser_take_screenshot` Desktop (1440px) dan Mobile (390px).
  - Audit mandiri terhadap checklist `antislop-layoutmobile` (zero leak) dan `antislop-human` (kontras & tap target).
- Tampilkan screenshot preview dan laporkan bahwa seluruh landing page siap digunakan.

---

### Delivery Gate & Next Monetization Step:
Workflow `/build-site` baru dinyatakan **SELESAI** apabila:
1. Seluruh 7 dokumen strategi dan spesifikasi teknikal di `docs/` telah lengkap dan konsisten.
2. Aturan arsitektur teknis di `.agents/rules/engineering-architecture.md` telah terkunci.
3. Seluruh kode sumber antarmuka telah terimplementasi secara utuh tanpa komentar lazy placeholder.
4. Validasi visual real-time via Playwright MCP membuktikan antarmuka responsif tanpa horizontal scroll leak dan memenuhi standar agensi kelas dunia non-slop.

> [!TIP]
> **Langkah Monetisasi Klien (Post-Build Pitch):**  
> Setelah landing page berhasil di-build dan siap dipamerkan, jalankan **/cold-outreach** untuk menghasilkan playbook penjangkauan dingin (Cold Email, Instagram DM, 4 Starter Hooks, dan Response Matrix) guna mem-pitch hasil kerja nyata ini langsung ke pemilik bisnis!

