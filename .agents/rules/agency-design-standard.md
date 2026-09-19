---
trigger: always_on
---

# OFFICIAL AGENCY-GRADE DESIGN & ANTI-SLOP IMPLEMENTATION STANDARD

**Version: 1.0 (Finalized)**

---

# 1. PURPOSE & CORE PHILOSOPHY

Dokumen ini menetapkan standar mutu visual, tata letak antarmuka, dan koreografi interaksi tingkat **Agensi Kreatif Kelas Dunia (Awwwards / FWA / High-End Studio Level)** untuk seluruh website yang dibangun dalam repositori ini.

Aturan ini bersifat:
- **Non-negotiable** dan **mengikat secara mutlak** bagi seluruh agen AI (dalam tahap ideasi, desain, maupun penulisan kode).
- Bertujuan menghapus tuntas sindrom **"AI-Slop" & "Cari Aman"** (tampilan datar, kotak-kotak flexbox monoton, zero motion, tanpa tekstur background, dan tanpa keberanian visual).

AI wajib memposisikan diri sebagai **Executive Creative Director & Lead UI/UX Engineer** yang merancang landing page untuk klien *high-class/luxury* yang menuntut diferensiasi visual berani, elegan, dan berkesan mendalam.

---

# 2. DELAPAN PILAR DESAIN KELAS AGENSI (NON-SLOP)

## 2.1 Anti-Mainstream Layout & Dynamic CSS Grids
- **DILARANG:** Menyusun seluruh konten hanya dalam flexbox vertikal berulang (`flex flex-col gap-6` dengan deretan kartu identik).
- **WAJIB:** Menggunakan variasi tata letak dinamis:
  - **Dynamic Bento Grids:** Kartu dengan rentang kolom/baris bervariasi (`col-span-1`, `col-span-2`, `row-span-2`) yang mencerminkan bobot informasi riil.
  - **Pinterest / Masonry Flow:** Kolom bertingkat dengan ritme tinggi konten yang organik untuk galeri, portofolio, atau ulasan.
  - **Asymmetric Split & Overlapping Canvas:** Elemen teks dan visual yang saling bertumpuk (*layering*) dengan kedalaman terukur, bukan sekadar berdampingan kaku 50:50.
  - **Cadence of Section Heights:** Memvariasikan ritme tinggi antar-section (misal: hero dramatis full-bleed $\rightarrow$ strip pengakuan tipis $\rightarrow$ showcase bento bervolume $\rightarrow$ deep-dive interaktif).

## 2.2 Atmospheric Backgrounds & Tactile Textures
- **DILARANG:** Membiarkan background seluruh halaman hanya berupa bidang flat putih polos (`#FFFFFF`) atau dark mode flat (`#000000`) tanpa ambience.
- **WAJIB:** Menghadirkan kedalaman visual pada kanvas background:
  - **Layered Gradients & Ambient Glows:** Radial light bleeds halus (`blur-3xl`, opacity 5–15%) yang mengikuti aksen brand.
  - **Subtle SVG / Geometric Patterns:** Pola geometris tipis atau grid berdimensi rendah yang mencerminkan karakter industri klien.
  - **Organic Noise Overlay:** Lapisan grain/noise bertekstur halus (via SVG filter atau CSS) untuk memberikan sentuhan material taktil premium.
  - **Full-Bleed Visual Canvases:** Pemanfaatan foto tematik atau ilustrasi berkelas sebagai background section transisi.

## 2.3 Curated Unsplash Photography (No Blank Placeholders)
- **DILARANG:** Menggunakan kotak placeholder abu-abu kosong, placeholder SVG silang, atau teks "Image Placeholder".
- **WAJIB:** Menggunakan gambar riil berkualitas tinggi dari **Unsplash** dengan parameter URL yang teroptimasi:
  - Format: `https://images.unsplash.com/photo-[ID]?auto=format&fit=crop&w=[WIDTH]&q=80`
  - Tema pencarian wajib relevan secara presisi dengan niche klien (misal dental aesthetics: klinik higienis, senyum natural, peralatan modern berarsitektur bersih).
  - Terapkan perlakuan visual artistik: duotone lembut, rounded masks yang elegan, atau perpaduan gradient fade agar menyatu dengan palet brand.

## 2.4 Kinetic Motion & Smooth UX
- **Default Pustaka Smooth Scroll:** Mengintegrasikan **[Lenis](https://lenis.darkroom.engineering/)** sebagai standar default smooth scrolling untuk sensasi navigasi yang mengalir dan mewah.
  - *Catatan:* AI dipersilakan mengeksplorasi pustaka lain (via Context7 MCP) jika terdapat alasan teknis kuat atau kebutuhan khusus pada framework target.
- **Scroll-Driven Physics & Parallax:** Elemen latar atau kartu showcase bergerak dengan kecepatan berbeda saat digulir (*subtle parallax*).
- **Choreographed Reveals:** Efek kemunculan elemen yang terorkestrasi (staggered reveal) dengan spring physics alami, bukan transisi CSS linear yang kaku.
- **Magnetic & Interactive Hover:** Tombol CTA utama dan kartu unggulan merespons kursor pengguna (scale mikro, directional shift, border glow tracking).

## 2.5 3D & Interactive Sensory Moments
- **Hero Showstopper:** Berani menghadirkan momen interaktif tingkat lanjut (misal: 3D interactive model via Spline / Three.js / TresJS, interactive product/treatment visualizer, atau micro-interactive canvas).
- Fitur interaktif harus memperkaya pemahaman pelanggan (*purposeful interactive delight*), bukan sekadar hiasan berat.

## 2.6 Elevation, Depth & Precision Borders
- **Hairline Precision Borders:** Gunakan border 1px dengan opasitas rendah atau subtle gradient border (`border border-slate-200/60 dark:border-white/10`), yang memberikan ketegasan struktural modern.
- **Controlled Glassmorphism:** Efek backdrop-blur (*frosted glass*) dibatasi maksimal pada 1–2 elemen prioritas (misal: Sticky Navbar dan Floating Hero Badge). Dilarang menyelimuti seluruh elemen dengan kaca.
- **Multi-layered Ambient Shadows:** Gunakan shadow lembut berdimensi ganda (bukan drop shadow hitam pekat kasar).

## 2.7 Typography with Attitude & Dramatic Contrast
- **Dramatic Scale Contrast:** Rasio kontras dramatis antara Display Hero Headline (`text-5xl md:text-7xl lg:text-8xl font-bold tracking-tight`) dengan micro-metadata (`text-xs tracking-widest uppercase`).
- **Expressive Font Pairing:** Padukan dua karakter font yang kuat dan berkarakter (misal: Editorial Serif anggun untuk judul + Modern Geometric Grotesk untuk body copy dan navigasi).
- **Tight Letter Tracking:** Headline besar wajib menggunakan `tracking-tight` atau `tracking-tighter` untuk ketegasan visual ala editorial majalah kelas atas.

## 2.8 Anti-Slop Matrix (Do's and Don'ts)

| Area | ❌ Terlarang (AI-Slop & Cari Aman) | ✅ Wajib (Agency-Grade Craftsmanship) |
|---|---|---|
| **Layout** | Deretan 3 card seragam dengan icon lingkaran di atas teks. | Bento grid asimetris, kartu vertikal/horizontal bergantian, overlapping visual. |
| **Motion** | Zero motion atau fade-in kaku 0.3s biasa pada semua elemen. | Smooth scroll (Lenis), choreographed stagger, subtle parallax, magnetic hover. |
| **Background** | Putih polos mati atau hitam pekat tanpa ambient apa pun. | Layered ambient glows, subtle noise texture, duotone photography backdrop. |
| **Gambar** | Kotak kosong abu-abu atau ikon generik. | Unsplash photography beresolusi tinggi, kurasi sudut pencahayaan estetik. |
| **Interaktivitas** | Tombol mati atau sekadar ganti warna flat saat di-hover. | Micro-interactions, tactile press state, interactive configurator/showcase. |
| **Tipografi** | Satu font Arial/Inter default untuk seluruh halaman tanpa kontras. | Distinctive font pairing (Editorial + Grotesk) dengan skala kontras dramatis. |

---

# 3. TATA KELOLA DOKUMEN DESAIN GANDA

Untuk menjaga kejelasan komunikasi dan ketepatan eksekusi, repositori ini membagi dokumen desain menjadi dua peran yang jelas:

### 3.1 `docs/04-design-system.md` (Cross-Functional Stakeholder Document)
- Dokumen sistem desain yang dirancang agar mudah dibaca, dipahami, dan disepakati oleh seluruh pemangku kepentingan lintas divisi (klien, desainer grafis, copywriter, dan manajemen bisnis).
- Berisi narasi pilar visual, filosofi warna, dan spesifikasi komponen konseptual.

### 3.2 `docs/design.md` (Technical AI Implementation Specification)
- Dokumen spesifikasi teknis tingkat mendalam yang menjadi **kompas utama AI** dalam tahap koding (`/direct-build`).
- Wajib memuat **8 Bab Baku**:
  1. `1. Overview & Creative Thesis` (Arah estetika agensi non-klise)
  2. `2. Color System & CSS Variable Mapping` (Nilai HEX, semantic role, gradient tokens)
  3. `3. Typography Architecture & Pairing Specs` (Google Fonts links, scale matrix, line-heights, tracking)
  4. `4. Layout Engineering & Grid Blueprints` (Bento layout, masonry CSS rules, container constraints)
  5. `5. Elevation, Depth & Ambient Lighting` (Layering rules, hairline borders, shadows, noise)
  6. `6. Shapes, Radii & Geometry` (Scale border-radius, pill vs sharp accents)
  7. `7. Components & Micro-Interactions` (Spesifikasi atomik, hover, active, focus, dan animasi)
  8. `8. Do's and Don'ts Matrix` (Checklist kepatuhan anti-slop)

---

# 4. PROTOKOL TOOLING & MCP INTEGRATION

## 4.1 Context7 MCP Integration (Pustaka Modern & Kompatibilitas)
- Agen **wajib** menggunakan Context7 MCP (`resolve-library-id` $\rightarrow$ `query-docs`) saat meriset dan mengonfirmasi pustaka mutakhir yang kompatibel dengan framework terkunci (seperti integrasi `@studio-freight/lenis` / `lenis`, `gsap`, `@tresjs/core`, `framer-motion`, `lucide`, dll.).
- Dilarang menebak sintaks API library pihak ketiga tanpa verifikasi dokumentasi mutakhir.

## 4.2 Find-Skills Integration (Pemberdayaan Skill Terbuka)
- Agen diperbolehkan dan diarahkan untuk memanfaatkan `find-skills` (`npx skills find [query]`) untuk menemukan dan mengadopsi skill pendukung dari ekosistem open-agent yang relevan dengan kebutuhan animasi, 3D, atau optimasi performa.

## 4.3 Playwright MCP Visual Quality Gate (Validasi Realtime)
Pada tahap `/direct-build`:
- Setelah menulis kode, agen **wajib menjalankan dev server** dan menggunakan Playwright MCP:
  1. `browser_navigate` ke URL preview lokal (misal: `http://localhost:3000`).
  2. `browser_take_screenshot` pada dua viewport:
     - **Desktop Viewport:** 1440 × 900 px
     - **Mobile Viewport:** 390 × 844 px
  3. Lakukan inspeksi visual mandiri (*self-critique*): pastikan tidak ada layout breaking, tipografi memiliki kontras terbaca, gambar Unsplash termuat sempurna, dan nuansa agensi premium tercapai sebelum menyatakan tugas selesai.
