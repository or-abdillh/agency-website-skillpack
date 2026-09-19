# OFFICIAL ENGINEERING ARCHITECTURE DOCUMENT

## React 19 + Vite + Tailwind CSS v4 Implementation Standard

**Version: 1.0 (Finalized)**

---

# 1. PURPOSE

Dokumen ini menetapkan standar arsitektur, struktur proyek, dan aturan implementasi teknis untuk seluruh pengembangan website menggunakan:

- React 19
- Vite (Build tool)
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

- React 19 (Functional Components)
- Vite dengan plugin `@vitejs/plugin-react`
- TypeScript strict mode enabled

Dilarang menggunakan:

- Create React App (CRA)
- Webpack manual tanpa alasan arsitektural khusus
- React Class Components
- JavaScript-only (non-TypeScript)

---

## Styling Layer

Wajib menggunakan:

- Tailwind CSS v4
- `@tailwindcss/vite` plugin
- Design token via CSS variables

Instalasi:
```bash
npm install tailwindcss @tailwindcss/vite
```

Konfigurasi Vite (`vite.config.ts`):
```typescript
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
  plugins: [
    react(),
    tailwindcss(),
  ],
});
```

CSS entry (`src/index.css`):
```css
@import "tailwindcss";
```

Dilarang:

- Tailwind v3
- CSS-in-JS runtime (styled-components)
- Hardcoded hex color di className
- Inline style berlebihan

---

# 3. PROJECT STRUCTURE

```
/src
  /assets
  /components
    /base
    /layout
    /sections
    /ui
  /hooks
  /lib
  /types
  App.tsx
  main.tsx
  index.css

/public
/index.html
/vite.config.ts
/package.json
/tsconfig.json
```

---

# 4. RENDERING STRATEGY

Default mode:

- Client-Side Rendering (SPA) atau SSG via Vite plugin jika dibutuhkan

---

# 5. COMPONENT ARCHITECTURE STANDARD

- Typed functional components: `export const Component: React.FC<Props> = (...)` atau `export function Component(props: Props) {}`
- Typed props via TypeScript interfaces
- Atomic classification: `/ui`, `/sections`, `/layout`, `/base`

---

# 6. DESIGN TOKEN IMPLEMENTATION

Token CSS Variables di `src/index.css`:
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
- Konsistensi Tailwind breakpoint scale

---

# 8. PERFORMANCE STANDARD

- Code-splitting menggunakan `React.lazy()` & `<Suspense>`
- Optimasi aset gambar (modern webp/svg)
- Minimal bundle footprint

---

# 9. SEO & ACCESSIBILITY BASELINE

- React Helmet / metadata management untuk SPA
- Semantic HTML (`<main>`, `<section>`, `<nav>`, `<header>`, `<footer>`)
- Accessible buttons & forms with visible focus states

---

# 10. STATE MANAGEMENT RULES

- Lokal: `useState`, `useReducer`, custom hooks
- Global: `zustand` (jika dibutuhkan)

---

# 11. CODE QUALITY STANDARD

- Strict typing, zero `any`
- Naming: PascalCase untuk komponen, camelCase untuk hooks & utilities

---

# 12. SCALABILITY PRINCIPLES

- Modular component structure
- Separation of UI presentation and business logic

---

# 13. AI ENFORCEMENT CLAUSE

AI wajib menggunakan React 19 + Vite + Tailwind v4 + TypeScript. Deviasi dari stack ini dianggap gagal.

---

# 14. EXECUTION DIRECTIVE

AI bertindak sebagai Engineer Executor untuk menghasilkan kode siap pakai.
