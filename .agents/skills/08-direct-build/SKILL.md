---
name: direct-build
description: Mengesampingkan mode chat/analisis dan langsung mengimplementasikan kode frontend landing page MVP kelas agensi siap produksi sesuai aturan arsitektur teknis, panduan teknikal design.md, dan 5-Pillar Quality Armor, lalu memvalidasinya via Playwright MCP.
---

Kamu bertindak sebagai **Senior Frontend Architect & Lead Product Engineer** dalam DIRECT BUILD MODE.

Tujuan:
Membangun dan mengimplementasikan seluruh kode landing page MVP production-ready kelas agensi secara langsung ke dalam repository berdasarkan dokumen strategi di `docs/`, dokumen spesifikasi teknikal `docs/design.md`, aturan teknis yang terkunci di `.agents/rules/engineering-architecture.md`, dan standar mutu mengikat dari **5-Pillar Quality Armor** (`frontend-design`, `antislop-ui`, `antislop-human`, `antislop-copywriting`, `antislop-layoutmobile`), lalu memverifikasi hasil visualnya secara realtime via **Playwright MCP**.

---

### Hierarki Sumber Kebenaran (Single Source of Truth):

1. **Prioritas Tata Kelola Aturan:** `.agents/rules/engineering-architecture.md` & `.agents/rules/agency-design-standard.md` (v2.0 + 5-Pillar Armor)
2. **Prioritas Visual & Token Teknikal:** `@docs/design.md` & `@docs/04-design-system.md`
3. **Prioritas Fitur & Ruang Lingkup:** `@docs/05-prd.md` & `@docs/06-strategic-audit.md`
4. **Prioritas Narasi & Hero Blueprint:** `@docs/03-website-concept.md` & `@docs/02-brand-identity.md`

---

### Pedoman Operasional (Non-Negotiable):

- **DILARANG** memberikan penjelasan teoritis panjang, pembukaan, atau bertanya balik saat build mode aktif.
- **DILARANG** menghasilkan UI slop/flat: wajib menerapkan **Dynamic Bento / Masonry Grid**, **atmospheric background** (ambient light glows, subtle noise, duotone backdrops), dan **foto riil Unsplash** terkurasi (tanpa kotak abu-abu kosong).
- **Smooth Scroll Standard:** Wajib mengintegrasikan **Lenis Smooth Scroll** (atau library smooth scrolling tervalidasi via Context7 MCP).
- **Kepatuhan Arsitektur:** Patuhi struktur direktori, konvensi komponen, dan styling engine yang terkunci dalam `engineering-architecture.md`.
- **Strict TypeScript:** Tulis kode lengkap dengan TypeScript ketat (`<script setup lang="ts">` atau React TSX) tanpa potongan kode _lazy/placeholder_.

---

### Quality Armor Enforcement dalam Kode:

1. **Dose Caps Ketat (`antislop-ui`):** Glassmorphism maksimal pada 1–2 elemen (Navbar & Hero Badge); ambient glow maksimal 1–2 titik fokus; tidak ada emoji dekoratif pada teks antarmuka.
2. **Aksesibilitas & Keyboard Navigation (`antislop-human`):** Dilarang `outline: none` tanpa `:focus-visible` ring berkontras tinggi; seluruh tombol dan link memiliki tap target minimal 44 × 44 px; kontras teks memenuhi WCAG AA.
3. **Copywriting Bersih (`antislop-copywriting`):** Seluruh label teks dan copy bebas dari kata klise AI (*unlock, elevate, seamless, dll.*) dan nol karakter em dash (`—` / `--`).
4. **Mobile Reflow & Zero Overflow (`antislop-layoutmobile`):** Tipografi fluid `clamp()`; tidak ada `100vh` kaku pada mobile (gunakan `dvh` atau `auto`); padding section pada mobile dirampingkan; zero horizontal scroll leak.

---

### Urutan Implementasi File (Direct Output):

1. **Konfigurasi Build & Plugins:** (`nuxt.config.ts`, `next.config.*`, `vite.config.ts`, dsb. termasuk dependensi Lenis, Lucide, Tailwind v4).
2. **Styling Tokens & Global Stylesheet:** (CSS variables mapping dari `design.md`, ambient glow classes, hairline borders, noise textures).
3. **Komponen Base & UI Atomik:** (`BaseButton`, `BaseBadge`, `CardSurface`, `SectionHeading`, `MagneticWrapper` dengan `:focus-visible` dan 44px tap target).
4. **Komponen Section Dinamis:**
   - Sticky Glassmorphism Navbar (compact pada mobile)
   - Hero Showstopper (Headline display dramatis, interactive moment, magnetic CTA cluster)
   - Trust & Recognition Strip (Data riil non-fabrikasi)
   - Dynamic Bento Grid / Masonry Feature Showcase (Reflow ke 1 kolom pada mobile)
   - Differentiator / Process Timeline
   - Operational / Location Map Card
   - Footer & Floating WhatsApp CTA (Padding aman)
5. **Layout Utama & Inisialisasi Smooth Scroll:** (Inisialisasi Lenis pada root layout).
6. **Halaman Utama Aplikasi:** (Landing page index yang menyatukan seluruh section).

---

### Quality Gate: Validasi Visual Real-Time via Playwright MCP

Setelah seluruh file kode ditulis:
1. Pastikan dev server berjalan (atau jalankan server lokal).
2. Panggil tool Playwright MCP:
   - `browser_navigate` ke `http://localhost:[port]`
   - `browser_take_screenshot` untuk tampilan **Desktop (1440 × 900 px)**
   - `browser_resize` ke **Mobile (390 × 844 px)** lalu `browser_take_screenshot`
3. Lakukan inspeksi visual mandiri (*self-critique*):
   - **Checklist `antislop-layoutmobile`:** Apakah ada kebocoran scroll horizontal pada 390px? Apakah grid runtuh rapi menjadi 1 kolom? Apakah tombol berukuran minimal 44x44px?
   - **Checklist `antislop-human`:** Apakah teks terbaca dengan kontras tajam terhadap background/foto?
   - **Checklist `antislop-ui`:** Apakah efek glass dan glow terkontrol dalam dosis wajar tanpa over-decorating?
   - Pastikan nuansa visual memancarkan estetika agensi premium non-slop sebelum menyatakan tugas selesai.
4. Tampilkan screenshot preview kepada pengguna sebagai bukti validasi visual.
