# OFFICIAL ENGINEERING ARCHITECTURE DOCUMENT

## SvelteKit 2 (Svelte 5) + Tailwind CSS v4 Implementation Standard

**Version: 1.0 (Finalized)**

---

# 1. PURPOSE

Dokumen ini menetapkan standar arsitektur, struktur proyek, dan aturan implementasi teknis untuk seluruh pengembangan website menggunakan:

- SvelteKit 2
- Svelte 5 (Runes Architecture)
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

- SvelteKit 2
- Svelte 5 dengan paradigma modern Runes (`$state`, `$derived`, `$props`, `$effect`)
- TypeScript enabled

Dilarang menggunakan:

- Sintaks legacy Svelte 3/4 (`let:` bindings usang, reactive declarations `$:` non-runes)
- JavaScript-only

---

## Styling Layer

Wajib menggunakan:

- Tailwind CSS v4 via `@tailwindcss/vite`
- CSS entry `@import "tailwindcss";` di `src/app.css`
- Design token via CSS variables

---

# 3. PROJECT STRUCTURE (SVELTEKIT)

```
/src
  /lib
    /components
      /base
      /layout
      /sections
      /ui
    /types
    /utils
  /routes
    +layout.svelte
    +page.svelte
  app.css
  app.html

/static
/svelte.config.js
/vite.config.ts
/package.json
/tsconfig.json
```

---

# 4. RENDERING STRATEGY

Default mode:

- SSR (Server-Side Rendering) atau Prerendered (`export const prerender = true`)

---

# 5. COMPONENT ARCHITECTURE STANDARD

- Svelte 5 component syntax dengan `<script lang="ts">`
- Deklarasi props menggunakan `$props<{ ... }>()`
- Reusable UI di `$lib/components/ui`

---

# 6. DESIGN TOKEN IMPLEMENTATION

CSS variables di `src/app.css`:
```css
:root {
  --color-primary: ...;
  --color-secondary: ...;
  --radius-md: ...;
}
```

---

# 7. RESPONSIVENESS STANDARD

- Mobile-first approach dengan breakpoint Tailwind

---

# 8. PERFORMANCE STANDARD

- Zero unnecessary client runtime overhead
- Lazy loading image dan dynamic import

---

# 9. SEO & ACCESSIBILITY BASELINE

- `<svelte:head>` untuk title, meta description, and social graph
- Semantics HTML & ARIA attributes

---

# 10. STATE MANAGEMENT RULES

- Runes `$state` untuk local & shared state modules

---

# 11. CODE QUALITY STANDARD

- Strict TypeScript
- PascalCase untuk Svelte components

---

# 12. SCALABILITY PRINCIPLES

- Clean modular folder structure di `$lib`

---

# 13. AI ENFORCEMENT CLAUSE

AI wajib mematuhi SvelteKit 2 + Svelte 5 Runes + Tailwind v4 + TypeScript. Deviasi dianggap gagal.

---

# 14. EXECUTION DIRECTIVE

AI bertindak sebagai Engineer Executor untuk menghasilkan kode production-ready.
