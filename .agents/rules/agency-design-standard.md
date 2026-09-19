---
trigger: always_on
---

# OFFICIAL AGENCY-GRADE DESIGN & ANTI-SLOP IMPLEMENTATION STANDARD

> **Document Version:** 2.0.0 | **Status:** Approved | **Last Updated:** 2026-09-19  
> **Governing Agent/Role:** Executive Creative Director & Lead UI/UX Architect

### Revision Changelog
| Version | Date | Author / Role | Changes Summary |
|---|---|---|---|
| 2.0.0 | 2026-09-19 | Executive Creative Director | Mengintegrasikan 5 skill pihak ketiga (antislop-ui, antislop-human, antislop-copywriting, antislop-layoutmobile, frontend-design) sebagai 5-Pillar Quality Armor mengikat |
| 1.0.0 | 2026-09-19 | Executive Creative Director | Inisialisasi 8 pilar desain kelas agensi, anti-slop visual, Lenis, dual design docs, dan Playwright QA |

---

# 1. PURPOSE & CORE PHILOSOPHY

Dokumen ini menetapkan standar mutu visual, tata letak antarmuka, dan koreografi interaksi tingkat **Agensi Kreatif Kelas Dunia (Awwwards / FWA / High-End Studio Level)** untuk seluruh website yang dibangun dalam repositori ini.

Aturan ini bersifat:
- **Non-negotiable** dan **mengikat secara mutlak** bagi seluruh agen AI (dalam tahap ideasi, desain, penulisan copy, maupun penulisan kode).
- Bertujuan menghapus tuntas sindrom **"AI-Slop" & "Cari Aman"** (tampilan datar, kotak-kotak flexbox monoton, zero motion, tanpa tekstur background, copy artifisial, dan tanpa keberanian visual).

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

# 3. THE 5-PILLAR QUALITY ARMOR (MANDATORY EXTERNAL SKILLS INTEGRATION)

Repositori ini memperkuat standar agensi dengan **5 Skill Pihak Ketiga Spesialis** yang bertindak sebagai **Layer Perlindungan Mutu Utama (*Primary Quality & Compliance Layer*)**. Seluruh agen AI **wajib mematuhi checklist dan batasan teknis dari kelima skill ini**:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    THE 5-PILLAR ANTI-SLOP QUALITY ARMOR                     │
├─────────────────────────────────────────────────────────────────────────────┤
│ 1. frontend-design          → Arah estetika spesifik subjek & no-cliché AI  │
│ 2. antislop-ui              → Visual & layout dose caps (glass, glow, font) │
│ 3. antislop-human           → Validasi kontras WCAG AA via Python & a11y    │
│ 4. antislop-copywriting     → Eliminasi buzzwords AI, no em-dash, real tone │
│ 5. antislop-layoutmobile    → Mobile-first reflow, fluid clamp, no-leak     │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 3.1 Layer 1: Estetika Subjek & Anti-Cliché (`.agents/skills/frontend-design`)
- **Grounded in Subject Matter:** Estetika, palet, dan layout wajib diturunkan dari industri dan material riil klien, bukan selera acak AI.
- **Haram Menggunakan Klise Populer AI:**
  - *Warm cream background* (`#F4F1EA`) dipadu *terracotta/warm-clay* (`#D97757`).
  - *Near-black background* dengan aksen *acid-green* atau *vermilion* menyala.
  - *SaaS-card kit:* memotong konten menjadi kartu-kartu rounded seragam dengan drop shadow identik.
  - Eyebrow all-caps berlebihan di atas setiap heading dan string meta bertitik tengah (`A · B · C`).
- **Prinsip "Spend Boldness in One Place":** Pusatkan keberanian visual pada satu elemen memukau (*Hero Showstopper / Interactive Centerpiece*), lalu jaga elemen pendukung di sekitarnya tetap tenang dan disiplin.

### 3.2 Layer 2: Visual & Dose Caps Enforcement (`.agents/skills/antislop-ui`)
- **Dose Caps Ketat:**
  - **Glassmorphism:** Maksimal 1–2 elemen (Navbar & Hero Badge).
  - **Ambient Glow:** Maksimal 1–2 titik fokus aksen. Dilarang menaruh glow di semua kartu/border.
  - **Shadows:** Hanya sebagai penanda elevasi fungsional, bukan membuat seluruh halaman mengambang.
  - **Border Radius:** Gunakan hierarki terukur (kartu `rounded-2xl/3xl`, tombol `rounded-full/xl`), dilarang membuat semua elemen berbentuk pill seragam.
- **Batasan Warna & Dekorasi:**
  - Palet aktif dibatasi pada 2–3 warna inti + 1 aksen terarah. Dilarang menggunakan gradient biru-ke-ungu generik.
  - Dilarang menaburkan emoji dekoratif pada teks antarmuka, heading, atau tombol (misal: 🚀, 🔥, ✅).
  - Ikon wajib relevan secara fungsional; tolak ikon AI generik (sparkle, bintang sihir, robot).
  - Dilarang membuat capsule badge ("AI Powered") atau status dot pulsing tanpa status sistem riil.

### 3.3 Layer 3: Human & WCAG Contrast Verification (`.agents/skills/antislop-human`)
- **Standar Rasio Kontras WCAG AA (R-25):**
  - Teks normal: minimal **4.5:1** terhadap background.
  - Teks besar (18px+ / bold 14px+) & elemen UI non-teks: minimal **3.0:1**.
- **Wajib Validasi Menggunakan Tool Kontras:**
  - Dilarang mengasumsikan atau menebak kontras visual.
  - Agen **wajib menjalankan skrip Python penguji kontras**:
    ```bash
    python3 .agents/skills/antislop-human/contrast-check.py "<HEX_TEKS>" "<HEX_BG>"
    ```
  - Jika teks berada di atas foto Unsplash atau gradient, wajib menambahkan scrim/overlay gelap dan menguji titik terburuk (*worst spot*).
- **Aksesibilitas Keyboard & State:**
  - Dilarang `outline: none` tanpa pengganti `:focus-visible` berkontras tinggi (3:1).
  - Seluruh elemen interaktif wajib dapat diakses via Tab/Enter/Space dan modal dapat ditutup via Escape.
  - Setiap data view wajib memiliki state yang informatif: *loading*, *empty*, dan *error*.

### 3.4 Layer 4: Natural Human Copywriting & Anti-AI Buzzwords (`.agents/skills/antislop-copywriting`)
- **Eliminasi Total Kosakata AI Kosong:**
  - DILARANG menggunakan kata-kata klise: *unlock, elevate, empower, delve, showcase, testament, landscape (abstrak), journey, robust, game-changer, next-level, seamless, cutting-edge, revolutionary*.
  - Ganti dengan bahasa konkret, sederhana, dan langsung menjelaskan manfaat produk.
- **Larangan Signifikansi Berlebihan & Fabrikasi:**
  - Dilarang mengklaim "the future of X", "marking a pivotal moment", atau "ushering in a new era".
  - Dilarang mengarang angka statistik, kutipan testimoni palsu, atau nama klien yang tidak terverifikasi. Jika belum ada data riil, jelaskan produk secara jujur tanpa klaim palsu.
- **Higiene Teks & Larangan Em Dash:**
  - Dilarang menggunakan em dash (`—` atau `--`) sebagai penghubung kalimat. Gunakan tanda titik, koma, titik dua, atau kurung.
  - Gunakan kalimat aktif dengan pelaku (*actor*) yang jelas. Hindari kalimat pasif tanpa subjek (*actorless passive*) atau memberi kata kerja manusiawi pada benda mati (*"dashboard understands"*).

### 3.5 Layer 5: Mobile Layout Architecture & Zero-Leak Reflow (`.agents/skills/antislop-layoutmobile`)
- **Filosofi Mobile Reflow:** Tampilan mobile adalah **desain berbeda yang di-reflow dengan intensi**, bukan sekadar tampilan desktop yang diperkecil secara kaku.
- **Arsitektur Multi-State:**
  - Definisikan layout minimal pada 3 state kontinu (Ponsel <600px, Tablet/Laptop Kecil 600–1024px, Desktop >1024px).
  - Kolom grid wajib runtuh (*collapse*) secara anggun menjadi 1 kolom pada ponsel.
- **Dimensi & Spacing Layar Sentuh:**
  - Gunakan tipografi fluid `clamp()` agar ukuran font menyesuaikan lebar viewport secara mulus.
  - Dilarang menggunakan `100vh` kaku pada mobile; gunakan unit `dvh` atau `auto` untuk mencegah benturan browser chrome.
  - Pangkas padding section desktop (96-128px) menjadi sekitar setengahnya pada mobile agar layar tidak penuh ruang kosong.
  - Target sentuh (*tap targets*) minimal **44 × 44 px** dengan jarak aman antar-tombol.
  - **Zero Horizontal Overflow Leak:** Halaman ponsel dilarang keras memiliki kebocoran scroll horizontal pada resolusi sempit (360px–390px).

---

# 4. TATA KELOLA DOKUMEN DESAIN GANDA

Untuk menjaga kejelasan komunikasi dan ketepatan eksekusi, repositori ini membagi dokumen desain menjadi dua peran yang jelas:

### 4.1 `docs/04-design-system.md` (Cross-Functional Stakeholder Document)
- Dokumen sistem desain yang dirancang agar mudah dibaca, dipahami, dan disepakati oleh seluruh pemangku kepentingan lintas divisi (klien, desainer grafis, copywriter, dan manajemen bisnis).
- Berisi narasi pilar visual, filosofi warna, dan spesifikasi komponen konseptual.

### 4.2 `docs/design.md` (Technical AI Implementation Specification)
- Dokumen spesifikasi teknis tingkat mendalam yang menjadi **kompas utama AI** dalam tahap koding (`/direct-build`).
- Wajib memuat **8 Bab Baku**:
  1. `1. Overview & Creative Thesis` (Arah estetika agensi non-klise dari `frontend-design`)
  2. `2. Color System & CSS Variable Mapping` (Nilai HEX lolos uji `antislop-human` contrast checker)
  3. `3. Typography Architecture & Pairing Specs` (Fluid type `clamp()` & skala kontras tinggi)
  4. `4. Layout Engineering & Grid Blueprints` (Dynamic Bento, Masonry, responsive multi-state `antislop-layoutmobile`)
  5. `5. Elevation, Depth & Ambient Lighting` (Dose caps `antislop-ui`: hairline borders, max 1-2 glow/glass)
  6. `6. Shapes, Radii & Geometry` (Hierarki border-radius terarah)
  7. `7. Components & Micro-Interactions` (Lenis config, tap targets 44px, interactive states)
  8. `8. Do's and Don'ts Matrix` (Checklist kepatuhan 5-Pillar Quality Armor)

---

# 5. PROTOKOL TOOLING & MCP INTEGRATION

## 5.1 Context7 MCP Integration (Pustaka Modern & Kompatibilitas)
- Agen **wajib** menggunakan Context7 MCP (`resolve-library-id` $\rightarrow$ `query-docs`) saat meriset dan mengonfirmasi pustaka mutakhir yang kompatibel dengan framework terkunci (seperti integrasi `@studio-freight/lenis` / `lenis`, `gsap`, `@tresjs/core`, `framer-motion`, `lucide`, dll.).
- Dilarang menebak sintaks API library pihak ketiga tanpa verifikasi dokumentasi mutakhir.

## 5.2 Find-Skills Integration (Pemberdayaan Skill Terbuka)
- Agen diperbolehkan dan diarahkan untuk memanfaatkan `find-skills` (`npx skills find [query]`) untuk menemukan dan mengadopsi skill pendukung dari ekosistem open-agent yang relevan dengan kebutuhan animasi, 3D, atau optimasi performa.

## 5.3 Playwright MCP Visual Quality Gate (Validasi Realtime)
Pada tahap `/direct-build`:
- Setelah menulis kode, agen **wajib menjalankan dev server** dan menggunakan Playwright MCP:
  1. `browser_navigate` ke URL preview lokal (misal: `http://localhost:3000`).
  2. `browser_take_screenshot` pada dua viewport:
     - **Desktop Viewport:** 1440 × 900 px
     - **Mobile Viewport:** 390 × 844 px
  3. Lakukan inspeksi visual mandiri (*self-critique*):
     - Uji terhadap checklist `antislop-layoutmobile`: pastikan **zero horizontal overflow**, tombol sentuh mudah ditekan, dan nav tertata rapi.
     - Uji terhadap checklist `antislop-human`: pastikan kontras terbaca jelas dan teks tidak terpotong.
     - Pastikan gambar Unsplash termuat sempurna dan nuansa agensi premium non-slop tercapai sebelum menyatakan tugas selesai.
