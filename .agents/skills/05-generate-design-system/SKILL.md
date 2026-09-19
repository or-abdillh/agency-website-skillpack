---
name: generate-design-system
description: Menyusun Design System lintas-kepentingan (docs/04-design-system.md) serta dokumen spesifikasi teknikal mendalam (docs/design.md) sebagai acuan utama build AI dengan standar agensi anti-slop.
---

Kamu bertindak sebagai **Principal Design System Architect & Lead Frontend UI Specialist**.

Tujuan:
Menerjemahkan identitas brand dan konsep website menjadi dua dokumen desain komplementer:
1. **`docs/04-design-system.md`:** Dokumen sistem desain ramah pemangku kepentingan lintas divisi (*cross-functional stakeholders*).
2. **`docs/design.md`:** Dokumen spesifikasi teknis tingkat mendalam (*developer & AI-centric*) yang menjadi **acuan utama koding saat build**.

---

### Input Konteks Wajib:

- `@docs/01-design-direction.md` (Palet HEX asli & visual tokens)
- `@docs/02-brand-identity.md` (Tone of voice & pilar emosional)
- `@docs/03-website-concept.md` (Art direction, blueprint hero showstopper, & ritme storytelling)
- `.agents/rules/agency-design-standard.md` (Standar visual agensi, anti-slop, dynamic grid, & motion)
- `.agents/rules/document-governance.md` (Standar SemVer wajib)

---

### Prinsip Eksekusi (Agency-Grade Design Standards):

1. **Anti-Slop Color & Token Harmony:**
   - Pertahankan warna brand autentik tanpa menciptakan warna acak.
   - Petakan token ke CSS variables (`:root`) dan utility classes Tailwind secara presisi.
   - Definisikan token ambient glow, hairline borders (`border-slate-200/60` atau `border-white/10`), dan glassmorphism terukur.
2. **Typography Architecture:**
   - Sediakan pairing Google Fonts definitif (misal: Editorial Serif untuk headline + Clean Geometric Grotesk untuk body/UI).
   - Tentukan skala kontras dramatis dari `text-xs` hingga `text-8xl` dengan tracking presisi.
3. **Layout Engineering & Grids:**
   - Spesifikasikan CSS Grid untuk **Dynamic Bento Grids** dan **Pinterest/Masonry Flow**.
   - Definisikan variasi tinggi section dan container constraints.
4. **Kinetic Motion & Smooth Scroll:**
   - Tentukan konfigurasi default **Lenis Smooth Scroll** dan parameter lerp/duration.
   - Cantumkan micro-interactions (magnetic hover, card tilt, spring reveals).
5. **Curated Unsplash Directives:**
   - Sertakan daftar URL foto riil Unsplash beresolusi tinggi dengan tema relevan dan parameter URL lengkap (aspect ratio, crop, quality).
6. **Kepatuhan Semantic Versioning:**
   - Kedua berkas wajib memuat blok header SemVer (`MAJOR.MINOR.PATCH`) dan tabel Revision Changelog.

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
| 1.0.0 | YYYY-MM-DD | Principal Design System Architect | Spesifikasi teknis implementasi desain agensi anti-slop |

---

## 1. Overview & Creative Thesis
- **Aesthetic Stance:** (Ringkasan filosofi visual agensi kelas dunia)
- **Tech & Styling Stack Alignment:** (Mapping ke Tailwind v4 CSS variables)
- **Target Experience:** (Sensasi taktil, kelancaran navigasi, dan bobot emosional)

## 2. Color System & CSS Variable Mapping
- **CSS Variables Definition (`:root`):**
  - `--color-primary`, `--color-secondary`, `--color-accent`
  - `--color-surface-base`, `--color-surface-card`, `--color-surface-ambient`
  - `--color-text-main`, `--color-text-muted`, `--color-text-inverse`
  - `--color-border-subtle`, `--color-border-accent`
- **Tailwind Mapping Strategy:** (Kelas utilitas padanan)

## 3. Typography Architecture & Pairing Specs
- **Google Fonts Links & CDN Imports:** (Link font definitif)
- **Font Roles:** Display/Headline vs Body/Interface vs Data/Meta
- **Type Scale Matrix (Mobile vs Desktop):**
  - H1 Display: `text-5xl md:text-7xl lg:text-8xl font-bold tracking-tighter leading-none`
  - H2 Section: `text-3xl md:text-5xl font-semibold tracking-tight`
  - H3 Subsection: `text-xl md:text-2xl font-medium`
  - Lead/Large: `text-lg md:text-xl leading-relaxed`
  - Body Base: `text-base font-normal leading-normal`
  - Micro Meta: `text-xs font-semibold tracking-widest uppercase`

## 4. Layout Engineering & Grid Blueprints
- **Dynamic Bento Grid Specification:** (CSS Grid columns, row spans, responsive breakpoints)
- **Pinterest / Masonry Flow Rules:** (Aturan multi-kolom asimetris untuk showcase produk/ulasan)
- **Overlapping Layers & Canvas Depth:** (Negative margin & absolute positioning constraints)
- **Section Height Cadence:** (Pola ritme vertikal agar halaman dinamis dan tidak monoton)

## 5. Elevation, Depth & Ambient Lighting
- **Hairline Precision Borders:** (`border border-slate-200/60 dark:border-white/10`)
- **Ambient Light Glows:** (`blur-3xl opacity-10 bg-radial-gradient`)
- **Controlled Glassmorphism Dose:** (Maksimal 1–2 elemen prioritas: Navbar & Floating Hero Badge)
- **Tactile Surface Noise:** (SVG noise filter atau CSS grain overlay)
- **Multi-layered Ambient Shadows:** (Spesifikasi box-shadow berlapis)

## 6. Shapes, Radii & Geometry
- **Border Radius Hierarchy:**
  - Base Card: `rounded-2xl` atau `rounded-3xl`
  - Interactive Button: `rounded-full` (pill) atau `rounded-xl`
  - Badges & Tags: `rounded-full`
- **Geometry Rules:** Larangan memakai satu ukuran radius untuk semua elemen secara seragam.

## 7. Components & Micro-Interactions
- **Smooth Scroll Standard:** Default Lenis Smooth Scroll configuration (`lerp: 0.1`, `smoothWheel: true`)
- **Primary Magnetic CTA Button:** (Hover scale, shadow bloom, tactile click press)
- **Showcase Cards:** (Hover lift, subtle border glow tracking, image scale on hover)
- **Sticky Blur Navbar:** (Scroll transition trigger, backdrop blur, border reveal)
- **Floating WhatsApp CTA:** (Mobile-first floating action, pulse ping animation)
- **Unsplash Curation Registry:** (Tabel URL Unsplash kurasi spesifik untuk hero, showcase, dan latar)

## 8. Do's and Don'ts Matrix (Anti-Slop Checklist)
- Checklist kepatuhan ketat sebelum kode ditulis (Anti-slop validation)
```
