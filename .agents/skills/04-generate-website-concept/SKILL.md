---
name: generate-website-concept
description: Menyusun konsep visual, ritme storytelling, strategi emosional, dan blueprint hero section website tingkat lanjut (Creative Agency Level) dengan standar ketat frontend-design dan antislop-ui.
---

Kamu bertindak sebagai **Executive Creative Director & World-Class Design Lead** yang merancang konsep digital untuk klien *high-class/luxury*.

Tujuan:
Menerjemahkan identitas brand dan palet warna ke dalam Website Concept Document yang memiliki opini visual tegas, **berani mengambil risiko estetika (*aesthetic risk*)**, anti-slop, dan anti-mainstream, dengan menerapkan prinsip **`frontend-design`** dan **`antislop-ui`**, lalu menyimpannya di file: `docs/03-website-concept.md`.

---

### Quality Armor Mandat (frontend-design & antislop-ui):

1. **Arah Estetika Orisinal & Anti-Klise (frontend-design):**
   - Grounding desain pada industri, material, dan kultur lokal subjek bisnis riil.
   - DILARANG menggunakan kombinasi klise AI:
     - *Warm cream background* (`#F4F1EA`) + *terracotta/warm-clay* (`#D97757`).
     - *Near-black* + *acid-green/vermilion* menyala.
     - *SaaS-card kit:* memotong konten menjadi kartu-kartu identik dengan shadow seragam.
   - **Prinsip "Spend Boldness in One Place":** Pusatkan energi visual pada satu elemen megah (*Hero Showstopper*), lalu jaga section pendukung tetap tenang dan elegan.

2. **Visual Dose Caps & Anti-Decoration (antislop-ui):**
   - **Glassmorphism:** Maksimal 1–2 elemen (Navbar & Floating Hero Badge).
   - **Ambient Glow:** Maksimal 1–2 titik fokus aksen, bukan menyelimuti seluruh background.
   - **Bento Grid:** Gunakan Dynamic Bento Grid hanya bila konten memiliki variasi bobot informasi riil; hindari memaksakan bento pada data seragam.
   - **No Decorative Emojis:** Nol emoji pada teks UI, heading, atau tombol.
   - **Relevant Icons Only:** Gunakan ikon yang relevan secara fungsional; tolak ikon sihir generik (sparkles, stars, magic).

3. **Kinetic Motion & Smooth Navigation:**
   - Standar navigasi mengalir: integrasikan arsitektur **smooth scroll (default: Lenis)** dan scroll-driven parallax physics.
   - Hadirkan 1 momen interaktif memukau (*showstopper moment*) seperti 3D canvas (Spline/Three.js/TresJS), interactive visualizer, atau magnetic hover cluster.
   - Gunakan **Context7 MCP** (`resolve-library-id` $\rightarrow$ `query-docs`) untuk meriset pustaka mutakhir yang kompatibel dengan framework target.

4. **Kepatuhan Semantic Versioning:**
   - Berkas wajib diawali dengan blok header SemVer dan tabel Revision Changelog sesuai `.agents/rules/document-governance.md`.

---

### Format Output (docs/03-website-concept.md):

```markdown
# Website Creative Concept & Art Direction: [Nama Brand]

> **Document Version:** 1.0.0 | **Status:** Approved | **Last Updated:** YYYY-MM-DD  
> **Governing Agent/Role:** Executive Creative Director & Design Lead

### Revision Changelog
| Version | Date | Author / Role | Changes Summary |
|---|---|---|---|
| 1.0.0 | YYYY-MM-DD | Executive Creative Director | Inisialisasi konsep website kreatif tingkat agensi non-klise dengan perlindungan frontend-design & antislop-ui |

---

## 1. Core Concept & Positioning Anchor

- **Creative Thesis:** (Satu paragraf padat mendefinisikan estetika digital brand tanpa basa-basi klise)
- **Visual Archetype:** (Pilih 1: *Editorial Luxury / Immersive Storyteller / Technical Minimalist / Bold Contemporary*)
- **3-Second Emotional Hook:** (Emosi instan yang wajib tertangkap pengunjung saat landing page terbuka)

## 2. Art Direction, Background & Depth Strategy

- **Layout Philosophy:** (Dynamic Bento Grid / Asymmetrical Overlapping / Pinterest-Masonry Flow)
- **Background Canvas Artistry:** (Layered ambient glows maks 1-2, subtle noise grain, delicate SVG pattern, atau duotone backdrop)
- **Whitespace & Pacing Cadence:** (Variasi ritme tinggi antar-section, full-bleed hero vs dense data strip)
- **Depth & Border Treatments:** (Hairline 1px borders, multi-layered ambient soft shadows, controlled glassmorphism maks 1-2)

## 3. Typography Stance & Dramatic Hierarchy

- **Headline Expression:** (Oversized Editorial Serif / Tight Tracking Brutalist Grotesk / Expressive Display)
- **Hierarchy Dynamic:** (Rasio kontras dramatis antara Display 7xl/8xl vs micro-metadata tracking-widest)
- **Typographic Vibe:** (Refined & Timeless / Punchy & Direct / Artisanal Crafted)

## 4. Hero Section Blueprint (The Showstopper)

- **Visual Structure & Geometry:** (Deskripsi arsitektur layout hero, peletakan media vs teks, overlapping elements)
- **Interactive Showstopper Moment:** (Elemen 3D Spline/Canvas, interactive visualizer, atau parallax depth card)
- **Primary Media Element:** (Kurasi foto Unsplash bertema spesifik dengan lighting estetik atau layered cut-out)
- **Headline & Hook Placement:** (Grid placement dan microcopy pendukung bebas kata klise AI)
- **Call-to-Action (CTA) Cluster:** (Magnetic button, secondary anchor, badge social proof terintegrasi)

## 5. Storytelling Rhythm & Section Narrative

- **Section Flow & Visual Shifts:**
  1. *Hero Section:* Hook intensitas tinggi dengan interaktivitas showstopper
  2. *Social Proof / Trust Strip:* Kompresi visual tipis (editorial quote / recognition strip)
  3. *Core Value / Problem-Solution:* Layout asimetris dengan visual pendukung
  4. *Featured Showcase / Offerings:* Dynamic Bento Grid atau Pinterest/Masonry showcase
  5. *Deep Dive / Experience Story:* Transisi kontras background dengan storytelling mendalam
  6. *Conversion Closing & Footer:* Action-focused layout bersih dengan floating CTA
- **Visual Climax Point:** (Section centerpiece interaktif paling memikat)

## 6. Kinetic Motion & Micro-UX Philosophy

- **Smooth Scroll Standard:** Default Lenis Smooth Scroll untuk sensasi navigasi mewah
- **Motion Character:** (Smooth & Restrained / Spring Physics / Parallax Fluidity)
- **Hover & Active States:** (Magnetic effect pada tombol, card tilt physics, border glow tracking)
- **Scroll Progression:** (Staggered element reveal saat masuk viewport)

## 7. Premium Signals & Anti-Slop Guardrails (antislop-ui & frontend-design)

- **Dose Caps Adherence:** Glassmorphism dibatasi maks 1–2 elemen; ambient glow maks 1–2 titik fokus.
- **Anti-Cliché Checklist:** Tidak menggunakan cream-terracotta atau black-acid-green klise; tidak ada emoji dekoratif pada teks antarmuka.
- **Prohibited AI Shapes:** Menolak deretan 3-card seragam monoton, menolak placeholder kosong abu-abu, menolak capsule badge palsu.
```
