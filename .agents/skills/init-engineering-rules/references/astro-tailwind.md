# OFFICIAL ENGINEERING ARCHITECTURE DOCUMENT

## Astro 5 + Tailwind CSS v4 Implementation Standard

**Version: 1.0 (Finalized)**

---

# 1. PURPOSE

Dokumen ini menetapkan standar arsitektur, struktur proyek, dan aturan implementasi teknis untuk seluruh pengembangan website menggunakan:

- Astro 5 (Islands Architecture)
- Tailwind CSS v4
- TypeScript

Dokumen ini bersifat:

- Non-negotiable
- Mengikat
- Prioritas tertinggi dalam keputusan teknis

Jika terjadi konflik dengan dokumen lain (Brand Identity, PRD, Design System, Website Concept), maka:

> Keputusan teknis harus mengikuti dokumen ini.

---

# 2. CORE STACK (LOCKED – NON NEGOTIABLE)

## Framework Layer

Wajib menggunakan:

- Astro 5 terbaru
- Zero-JavaScript baseline (HTML-first)
- Astro Components (`.astro`) sebagai default untuk semua halaman statis
- Interactive Islands hanya jika mutlak dibutuhkan interaktivitas (menggunakan direktif `client:load` / `client:visible`)
- TypeScript enabled

Dilarang menggunakan:

- Heavy SPA wrappers
- Rendering JavaScript client-side tanpa alasan

---

## Styling Layer

Wajib menggunakan:

- Tailwind CSS v4 via `@tailwindcss/vite`
- CSS entry `@import "tailwindcss";`
- Design token via CSS variables

---

# 3. PROJECT STRUCTURE (ASTRO 5)

```
/src
  /assets
  /components
    /base
    /layout
    /sections
    /ui
  /content
  /layouts
  /pages
  /styles
    global.css

/public
/astro.config.mjs
/package.json
/tsconfig.json
```

---

# 4. RENDERING STRATEGY

Default mode:

- Static Site Generation (SSG) atau Prerendered Islands

---

# 5. COMPONENT ARCHITECTURE STANDARD

- Komponen `.astro` menggunakan code fence `---` untuk logika server-side
- Typed Props interface (`interface Props { ... }`)
- Modular separation: `/ui`, `/sections`, `/layout`, `/base`

---

# 6. DESIGN TOKEN IMPLEMENTATION

CSS variables di `/src/styles/global.css`:
```css
:root {
  --color-primary: ...;
  --color-secondary: ...;
  --radius-md: ...;
}
```

---

# 7. RESPONSIVENESS STANDARD

- Mobile-first approach
- Breakpoints Tailwind CSS standar

---

# 8. PERFORMANCE STANDARD

- Zero-JS by default (hanya kirim HTML/CSS ke browser)
- Komponen bawaan `<Image />` dari `astro:assets`
- Target Core Web Vitals score 95+

---

# 9. SEO & ACCESSIBILITY BASELINE

- Canonical tags, OpenGraph, dan semantic meta tags via layout
- Semantic HTML5 elements

---

# 10. STATE MANAGEMENT RULES

- Untuk interaktivitas islands: Nanostores atau custom events

---

# 11. CODE QUALITY STANDARD

- Strict typing via TypeScript
- Pembersihan unused code

---

# 12. SCALABILITY PRINCIPLES

- Dukungan Content Collections untuk kemudahan penambahan artikel/konten

---

# 13. AI ENFORCEMENT CLAUSE

AI wajib mematuhi Astro 5 + Tailwind v4 + TypeScript. Deviasi dianggap gagal.

---

# 14. EXECUTION DIRECTIVE

AI bertindak sebagai Engineer Executor untuk menghasilkan markup & styling production-ready.
