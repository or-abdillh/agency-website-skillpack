# OFFICIAL ENGINEERING ARCHITECTURE DOCUMENT

## Nuxt 4 + Tailwind 4 Implementation Standard

**Version: 1.0 (Finalized)**

---

# 1. PURPOSE

Dokumen ini menetapkan standar arsitektur, struktur proyek, dan aturan implementasi teknis untuk seluruh pengembangan website menggunakan:

- Nuxt JS 4
- Vue 3 (Composition API)
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

- Nuxt JS 4 (App Directory Architecture)
- Vue 3 terbaru
- `<script setup>`
- Composition API only
- TypeScript enabled

Dilarang menggunakan:

- Nuxt 2
- Nuxt 3
- Vue Options API
- JavaScript-only project
- Mixing Options API & Composition API

---

## Styling Layer

Wajib menggunakan:

- Tailwind CSS v4
- Utility-first architecture
- Design token via CSS variables
- Theme configuration terintegrasi

Instal Tailwind v4 menggunakan:
```bash
npm install tailwindcss @tailwindcss/vite
```

Gunakan Vite plugin di `nuxt.config.ts`:
```typescript
import tailwindcss from "@tailwindcss/vite";

export default defineNuxtConfig({  
  compatibilityDate: "2025-07-15",  
  devtools: { enabled: true },  
  css: ['./app/assets/styles/main.css'],  
  vite: {  
    plugins: [
      tailwindcss(),
    ],
  },
});
```

CSS entry (`app/assets/styles/main.css`):
```css
@import "tailwindcss";
```

Dilarang:

- Tailwind v3
- Bootstrap
- Chakra UI
- Hardcoded hex color
- CSS global tanpa token
- Inline style berlebihan
- Dilarang menggunakan metode PostCSS atau @nuxtjs/tailwindcss

---

# 3. PROJECT STRUCTURE (NUXT 4 APP DIRECTORY)

Nuxt 4 menggunakan App Directory-first architecture.

Semua application layer wajib berada di dalam `/app`.

Struktur resmi:

```
/app
  /assets
    /styles
    /images

  /components
    /base
    /layout
    /sections
    /ui

  /composables
  /layouts
  /pages
  /plugins
  /types
  /utils

/server
/public
/nuxt.config.ts
```

### Rules:

- Pages → `/app/pages`
- Layouts → `/app/layouts`
- Components → `/app/components`
- Composables → `/app/composables`
- Assets → `/app/assets`
- Plugins → `/app/plugins`

Folder root-level untuk:

- `/server` → Nitro backend routes
- `/public` → Static public files

Dilarang:

- Menggunakan struktur Nuxt 3 lama
- Meletakkan pages/components di root
- Menggunakan struktur Nuxt 2

Jika struktur tidak sesuai App Directory, output dianggap salah.

---

# 4. RENDERING STRATEGY

Default mode:

- SSR (Server-Side Rendering)

Jika dibutuhkan:

- Hybrid atau SSG diperbolehkan
- Harus ada alasan teknis

Dilarang:

- SPA-only tanpa alasan kuat

---

# 5. COMPONENT ARCHITECTURE STANDARD

Semua komponen wajib:

- Menggunakan `<script setup lang="ts">`
- Typed props (`defineProps<Type>()`)
- `defineEmits` jika perlu
- Tidak hardcode warna
- Tidak hardcode typography
- Tidak inline CSS berlebihan

Reusable philosophy:

- Modular
- Tidak tightly coupled
- Mudah diskalakan
- Tidak duplicated logic

Struktur klasifikasi:

- `/ui` → Atomic reusable components
- `/sections` → Page-level section
- `/layout` → Layout wrapper
- `/base` → Primitive base components

---

# 6. DESIGN TOKEN IMPLEMENTATION

Semua style harus berasal dari Design System.

Token wajib didefinisikan sebagai CSS variables:

```css
:root {
  --color-primary: ...;
  --color-secondary: ...;
  --radius-md: ...;
  --spacing-base: ...;
}
```

Tailwind config harus mapping ke token tersebut.

Dilarang:

- Hex color langsung di template
- Spacing random
- Typography tidak mengikuti system

---

# 7. RESPONSIVENESS STANDARD

Wajib:

- Mobile-first approach
- Tailwind breakpoint system
- Konsisten spacing scale
- Vertical rhythm terjaga

Dilarang:

- Desktop-only layout
- Breakpoint chaos
- Margin random tanpa scale

---

# 8. PERFORMANCE STANDARD

Wajib:

- Gunakan `<NuxtImg>` atau image optimization
- Lazy loading default
- Dynamic import jika perlu
- Minimal third-party dependency

Dilarang:

- Library UI berat tanpa alasan
- Over-animation
- Asset besar tidak teroptimasi

---

# 9. SEO & ACCESSIBILITY BASELINE

Wajib:

- `useHead()` untuk meta
- Semantic HTML
- Proper heading hierarchy
- Alt text untuk semua gambar
- Accessible button element

Minimal:

- Focus state visible
- ARIA jika diperlukan

---

# 10. STATE MANAGEMENT RULES

Jika ringan:

- Gunakan composables

Jika kompleks:

- Gunakan official state management (misalnya Pinia)

Dilarang:

- Global state tidak terkontrol
- Props drilling berlebihan

---

# 11. CODE QUALITY STANDARD

Wajib:

- Tidak ada console.log production
- Tidak ada unused imports
- Strict typing
- Clean composable abstraction

Naming Convention:

- Component → PascalCase
- Variable → camelCase
- Route → kebab-case

---

# 12. SCALABILITY PRINCIPLES

Arsitektur harus memungkinkan:

- Penambahan halaman tanpa refactor besar
- Penambahan fitur (blog, CMS, form)
- Reusability maksimal
- Maintainability jangka panjang

Tidak boleh:

- Struktur monolitik
- Hardcoded layout per halaman
- Code duplication

---

# 13. AI ENFORCEMENT CLAUSE

AI wajib:

- Menggunakan Nuxt 4
- Menggunakan App Directory
- Menggunakan Tailwind 4
- Menggunakan Composition API
- Menggunakan TypeScript

Jika AI menyimpang dari stack ini:

Output dianggap gagal dan harus diperbaiki sebelum diselesaikan.

AI tidak diperbolehkan menawarkan alternatif stack.

---

# 14. EXECUTION DIRECTIVE

AI bertugas untuk:

> Membangun website production-ready sesuai dokumen ini.

AI bukan analis.
AI bukan konsultan.
AI adalah engineer executor.
