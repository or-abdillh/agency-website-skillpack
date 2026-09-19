# OFFICIAL ENGINEERING ARCHITECTURE DOCUMENT

## Next.js 15 + Tailwind CSS v4 Implementation Standard

**Version: 1.0 (Finalized)**

---

# 1. PURPOSE

Dokumen ini menetapkan standar arsitektur, struktur proyek, dan aturan implementasi teknis untuk seluruh pengembangan website menggunakan:

- Next.js 15 (App Router Architecture)
- React 19
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

- Next.js 15 (App Router `/app` atau `/src/app`)
- React 19 terbaru
- React Server Components (RSC) sebagai default
- `"use client"` hanya pada daun pohon komponen (leaf components) yang membutuhkan interaktivitas/hooks
- TypeScript strict mode enabled

Dilarang menggunakan:

- Next.js Pages Router (`/pages`)
- React Class Components
- JavaScript-only project
- `"use client"` di level layout utama atau root page tanpa alasan teknis interaktivitas nyata

---

## Styling Layer

Wajib menggunakan:

- Tailwind CSS v4
- Utility-first architecture
- Design token via CSS variables
- `@tailwindcss/postcss` atau plugin resmi Next.js

Instal Tailwind v4 menggunakan:
```bash
npm install tailwindcss @tailwindcss/postcss postcss
```

CSS entry (`src/app/globals.css`):
```css
@import "tailwindcss";
```

Dilarang:

- Tailwind v3
- CSS-in-JS runtime (styled-components, emotion)
- Hardcoded hex color di JSX
- CSS global tanpa mapping token
- Inline style berlebihan

---

# 3. PROJECT STRUCTURE (NEXT.JS APP ROUTER)

Struktur resmi berbasis `src/`:

```
/src
  /app
    /api
    layout.tsx
    page.tsx
    globals.css
    loading.tsx
    error.tsx

  /components
    /base
    /layout
    /sections
    /ui

  /hooks
  /lib
  /types

/public
/next.config.ts
/package.json
/tsconfig.json
```

### Rules:

- Routes & Pages → `/src/app/`
- Layouts & Root Providers → `/src/app/layout.tsx`
- Reusable UI Components → `/src/components/ui` & `/src/components/base`
- Sections / Page Blocks → `/src/components/sections`
- Layout wrappers → `/src/components/layout`
- Utilities & Client Helpers → `/src/lib`
- Custom Hooks → `/src/hooks`
- TypeScript Definitions → `/src/types`

Dilarang:

- Menaruh komponen UI di dalam root app router kecuali page/layout khusus rute tersebut
- Mencampur konvensi Pages router dengan App router

---

# 4. RENDERING STRATEGY

Default mode:

- React Server Components (Server-Side Rendering / Static Prerendering)

Interaktivitas:

- Gunakan Server Actions untuk mutasi data backend
- Batasi Client Components (`"use client"`) hanya untuk interaksi DOM, form input, dan state UI lokal

Dilarang:

- Menjadikan seluruh halaman sebagai Client Component (`"use client"` di baris 1 `page.tsx`)

---

# 5. COMPONENT ARCHITECTURE STANDARD

Semua komponen wajib:

- Menggunakan TypeScript functional component syntax: `export function ComponentName(props: Props) {}`
- Typed props interface (`interface Props { ... }`)
- Tidak hardcode warna atau typography
- Bersih dari inline style berlebihan

Struktur klasifikasi:

- `/ui` → Primitive/atomic reusable components (Button, Input, Card, Modal)
- `/sections` → Page-level sections (Hero, Features, Pricing, Testimonials, CTA)
- `/layout` → Layout wrappers (Navbar, Footer, Sidebar)
- `/base` → Typography wrappers, Icons, Container wrappers

---

# 6. DESIGN TOKEN IMPLEMENTATION

Semua style harus berasal dari Design System.

Token wajib didefinisikan sebagai CSS variables di `globals.css`:

```css
:root {
  --color-primary: ...;
  --color-secondary: ...;
  --radius-md: ...;
  --spacing-base: ...;
}
```

Dilarang:

- Menuliskan hex color langsung di className
- Spacing acak di luar kelipatan desain sistem

---

# 7. RESPONSIVENESS STANDARD

Wajib:

- Mobile-first approach (`className="text-base md:text-lg lg:text-xl"`)
- Tailwind breakpoint system (`sm:`, `md:`, `lg:`, `xl:`, `2xl:`)
- Konsistensi vertical rhythm

---

# 8. PERFORMANCE STANDARD

Wajib:

- Gunakan `next/image` (`<Image />`) untuk seluruh rendering visual gambar
- Gunakan `next/font` untuk zero-layout-shift Google Fonts
- Dynamic imports (`next/dynamic`) untuk komponen berat non-kritis

Dilarang:

- Menggunakan tag `<img>` biasa tanpa alasan teknis kuat
- Memuat library pihak ketiga raksasa untuk animasi sederhana

---

# 9. SEO & ACCESSIBILITY BASELINE

Wajib:

- `export const metadata: Metadata = { ... }` pada `layout.tsx` dan `page.tsx`
- Semantic HTML tags (`<header>`, `<nav>`, `<main>`, `<section>`, `<footer>`)
- Proper heading hierarchy (`h1` unik per halaman, `h2`, `h3`)
- Alt text deskriptif untuk setiap gambar

---

# 10. STATE MANAGEMENT RULES

Jika ringan:

- Gunakan React local state (`useState`, `useReducer`) atau custom hooks

Jika kompleks:

- Gunakan lightweight store (Zustand)

Dilarang:

- Global context berlebih yang menyebabkan re-render di seluruh subtree

---

# 11. CODE QUALITY STANDARD

Wajib:

- Strict typing (larangan penggunaan `any`)
- Bersih dari `console.log` di production
- Hapus unused imports

Naming Convention:

- Component & File Komponen → PascalCase (e.g., `HeroSection.tsx`)
- Hook → camelCase (e.g., `useScrollSpy.ts`)
- Utility / Helper → camelCase (e.g., `formatCurrency.ts`)

---

# 12. SCALABILITY PRINCIPLES

Arsitektur harus memungkinkan:

- Penambahan halaman/fitur baru tanpa mengganggu struktur eksisting
- Reusabilitas maksimal antar section dan halaman

---

# 13. AI ENFORCEMENT CLAUSE

AI wajib:

- Menggunakan Next.js 15 App Router
- Menggunakan React 19
- Menggunakan Tailwind CSS v4
- Menggunakan Server Components sebagai baseline

Jika AI menyimpang dari stack ini:
Output dianggap gagal dan harus diperbaiki sebelum diselesaikan.

---

# 14. EXECUTION DIRECTIVE

AI bertugas untuk:

> Membangun website production-ready sesuai dokumen ini.

AI bukan analis.
AI bukan konsultan.
AI adalah engineer executor.
