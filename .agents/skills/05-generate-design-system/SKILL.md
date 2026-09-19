---
name: generate-design-system
description: Menyusun Design System lintas-kepentingan (docs/04-design-system.md) serta dokumen spesifikasi teknikal mendalam (docs/design.md) sebagai acuan utama build AI dengan standar agensi anti-slop yang dilindungi antislop-ui, antislop-human, dan antislop-layoutmobile.
---

Kamu bertindak sebagai **Principal Design System Architect & Lead Frontend UI Specialist**.

Tujuan:
Menerjemahkan identitas brand dan konsep website menjadi dua dokumen desain komplementer:
1. **`docs/04-design-system.md`:** Dokumen sistem desain ramah pemangku kepentingan lintas divisi (*cross-functional stakeholders*).
2. **`docs/design.md`:** Dokumen spesifikasi teknis tingkat mendalam (*developer & AI-centric*) yang menjadi **acuan utama koding saat build**.

---

### Input Konteks Wajib:

- `@docs/01-design-direction.md` (Palet HEX asli & visual tokens dengan rasio WCAG AA)
- `@docs/02-brand-identity.md` (Tone of voice & pilar emosional alami)
- `@docs/03-website-concept.md` (Art direction, blueprint hero showstopper, & ritme storytelling)
- `.agents/rules/agency-design-standard.md` (Standar visual agensi v2.0 & 5-Pillar Quality Armor)
- `.agents/rules/document-governance.md` (Standar SemVer wajib)

---

### Quality Armor Mandat (antislop-ui, antislop-human, antislop-layoutmobile):

1. **Token Doses & Hierarki Geometri (antislop-ui):**
   - Batasi palet aktif: 2–3 warna inti + 1 aksen terarah.
   - Tetapkan hierarki border-radius terukur: kartu `rounded-2xl` atau `rounded-3xl`, tombol `rounded-full` atau `rounded-xl`, badge `rounded-full`. DILARANG membuat semua elemen berbentuk pill seragam.
   - Terapkan dose caps: Glassmorphism maks 1–2 elemen, ambient glow maks 1–2 titik fokus.

2. **Aksesibilitas & Kepatuhan Non-Teks (antislop-human):**
   - Komponen interaktif (border input, button boundary, status icon) wajib memiliki kontras minimal **3.0:1** terhadap background.
   - Wajib definisikan style `:focus-visible` dengan kontras tinggi (3:1) pada setiap kontrol interaktif; dilarang `outline: none` tanpa pengganti.
   - Sediakan spesifikasi UI states lengkap: *empty*, *loading*, dan *error*.

3. **Tipografi Fluid & Tap Targets Layar Sentuh (antislop-layoutmobile):**
   - Gunakan tipografi fluid `clamp()` agar ukuran font menyesuaikan lebar viewport secara kontinu.
   - DILARANG menggunakan `100vh` kaku pada mobile; wajib menggunakan unit `dvh` atau `auto`.
   - Tetapkan ukuran target sentuh (*tap targets*) minimal **44 × 44 px** dengan padding yang memadai.

4. **Kepatuhan Semantic Versioning:**
   - Kedua berkas wajib diawali blok SemVer (`MAJOR.MINOR.PATCH`) dan tabel Revision Changelog.

---

### Dokumen 1: `docs/04-design-system.md` (Cross-Functional Stakeholder Document)

Format terstruktur untuk komunikasi lintas divisi:
- Header SemVer
- 1. Design Foundations (Color Palette & Semantic Meaning, Typography Pairing & Hierarchy)
- 2. Layout & Spacing Philosophy (Grid rhythm, container max-width)
- 3. Component Visual Specifications (Buttons, Cards, Badges, Navigation)
- 4. Photography & Asset Curation Guidelines (Unsplash theme guidance)

---

### Dokumen 2: `docs/design.md` (Technical AI Implementation Specification)

Wajib memuat **8 Bab Teknis Baku** sebagai panduan koding AI:

```markdown
# Technical Design Specification: [Nama Brand]

> **Document Version:** 1.0.0 | **Status:** Approved | **Last Updated:** YYYY-MM-DD  
> **Governing Agent/Role:** Principal Design System Architect

### Revision Changelog
| Version | Date | Author / Role | Changes Summary |
|---|---|---|---|
| 1.0.0 | YYYY-MM-DD | Principal Design System Architect | Spesifikasi teknis implementasi desain agensi anti-slop dengan 5-Pillar Armor |

---

## 1. Overview & Creative Thesis
- **Aesthetic Stance:** (Ringkasan filosofi visual agensi kelas dunia berbasis frontend-design)
- **Tech & Styling Stack Alignment:** (Mapping ke Tailwind v4 CSS variables)
- **Target Experience:** (Sensasi taktil, kelancaran navigasi, dan bobot emosional)

## 2. Color System & CSS Variable Mapping
- **CSS Variables Definition (`:root`):**
  - `--color-primary`, `--color-secondary`, `--color-accent`
  - `--color-surface-base`, `--color-surface-card`, `--color-surface-ambient`
  - `--color-text-main`, `--color-text-muted`, `--color-text-inverse`
  - `--color-border-subtle`, `--color-border-accent`
- **WCAG Verification:** Konfirmasi rasio kontras teks >= 4.5:1 dan non-teks >= 3.0:1

## 3. Typography Architecture & Pairing Specs
- **Google Fonts Links & CDN Imports:** (Link font definitif)
- **Font Roles:** Display/Headline vs Body/Interface vs Data/Meta
- **Type Scale Matrix (Fluid Clamp & Responsive):**
  - H1 Display: `text-5xl md:text-7xl lg:text-8xl font-bold tracking-tighter leading-none`
  - H2 Section: `text-3xl md:text-5xl font-semibold tracking-tight`
  - H3 Subsection: `text-xl md:text-2xl font-medium`
  - Lead/Large: `text-lg md:text-xl leading-relaxed`
  - Body Base: `text-base font-normal leading-normal`
  - Micro Meta: `text-xs font-semibold tracking-widest uppercase`

## 4. Layout Engineering & Grid Blueprints
- **Dynamic Bento Grid Specification:** (CSS Grid columns, row spans, responsive breakpoints)
- **Pinterest / Masonry Flow Rules:** (Aturan multi-kolom asimetris untuk showcase produk/ulasan)
- **Multi-State Responsive Reflow:** (Ponsel <600px, Tablet 600-1024px, Desktop >1024px)
- **Section Height Cadence:** (Pola ritme vertikal, larangan 100vh kaku pada mobile)

## 5. Elevation, Depth & Ambient Lighting
- **Hairline Precision Borders:** (`border border-slate-200/60 dark:border-white/10`)
- **Ambient Light Glows Dose:** (`blur-3xl opacity-10 bg-radial-gradient`, maks 1-2 titik fokus)
- **Controlled Glassmorphism Dose:** (Maksimal 1–2 elemen prioritas: Navbar & Floating Hero Badge)
- **Tactile Surface Noise:** (SVG noise filter atau CSS grain overlay)
- **Multi-layered Ambient Shadows:** (Spesifikasi box-shadow berlapis fungsional)

## 6. Shapes, Radii & Geometry
- **Border Radius Hierarchy:**
  - Base Card: `rounded-2xl` atau `rounded-3xl`
  - Interactive Button: `rounded-full` (pill) atau `rounded-xl`
  - Badges & Tags: `rounded-full`
- **Geometry Rules:** Larangan memakai satu ukuran radius untuk semua elemen secara seragam.

## 7. Components, Micro-Interactions & Tap Targets
- **Smooth Scroll Standard:** Default Lenis Smooth Scroll configuration (`lerp: 0.1`, `smoothWheel: true`)
- **Touch Targets:** Minimal 44 × 44 px untuk seluruh tombol dan tautan pada mobile
- **Accessible Focus Ring:** Visible `:focus-visible` ring berkontras 3:1
- **Primary Magnetic CTA Button:** (Hover scale, shadow bloom, tactile click press)
- **Showcase Cards:** (Hover lift, subtle border glow tracking, image scale on hover)
- **Sticky Blur Navbar:** (Scroll transition trigger, backdrop blur, border reveal)
- **Floating WhatsApp CTA:** (Mobile-first floating action dengan padding aman)
- **Unsplash Curation Registry:** (Tabel URL Unsplash kurasi spesifik untuk hero, showcase, dan latar)

## 8. Do's and Don'ts Matrix (5-Pillar Quality Armor Checklist)
- Checklist kepatuhan ketat sebelum kode ditulis (Anti-slop, WCAG AA, dose caps, mobile zero leak, natural copy)
```
