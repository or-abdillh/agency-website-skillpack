# Universal Strict Rules Model Blueprint

Dokumen ini adalah skema panduan baku 14-bab yang wajib dipenuhi ketika menghasilkan `.agents/rules/engineering-architecture.md` untuk framework atau toolchain apa pun.

---

## Aturan Frontmatter Wajib

```yaml
---
trigger: always_on
---
```

Frontmatter ini memastikan aturan dimuat secara persisten pada sistem agent di setiap interaksi pengembangan.

---

## 14-Section Blueprint Specification

### 1. PURPOSE
- Sebutkan secara eksplisit Framework, Bahasa (TypeScript wajib diutamakan), Styling Engine, dan Target Output.
- Tegaskan sifat dokumen: Non-negotiable, mengikat, prioritas teknis tertinggi.
- Aturan resolusi konflik: Jika ada benturan dengan dokumen bisnis/desain, keputusan teknis wajib merujuk ke dokumen ini.

### 2. CORE STACK (LOCKED – NON NEGOTIABLE)
- **Framework Layer:** Versi pasti, paradigma komponen wajib (misal: Composition API / React Server Components / Svelte 5 Runes), serta larangan versi lawas/paradigma usang.
- **Styling Layer:** Tool styling resmi (misal Tailwind v4 via Vite plugin), perintah instalasi CLI pasti, file konfigurasi, dan CSS entry point.
- **Daftar Larangan (Hard Prohibitions):** Larangan pemakaian CSS-in-JS tanpa izin, framework UI berat tak berizin, hardcoded hex colors, dan inline styles berlebih.

### 3. PROJECT STRUCTURE
- Tuliskan pohon direktori (ASCII tree) secara komprehensif.
- Tentukan letak pasti untuk komponen (`ui`, `sections`, `layout`, `base`), pages/routes, styling, state/composables/hooks, server endpoints, types, dan public static assets.
- Nyatakan larangan struktur lama atau penempatan file yang melanggar konvensi framework.

### 4. RENDERING STRATEGY
- Tetapkan mode default: SSR (Server-Side Rendering), SSG (Static Site Generation), SPA (Single Page App), atau Islands/Hybrid.
- Definisikan kriteria kapan mode hybrid/client-side boleh digunakan.

### 5. COMPONENT ARCHITECTURE STANDARD
- Format deklarasi komponen (TypeScript typing, typed props, emitted events).
- Filosofi reusabilitas: modularitas, low coupling, no business logic leak pada base UI.
- Klasifikasi folder komponen (`/ui`, `/sections`, `/layout`, `/base`).

### 6. DESIGN TOKEN IMPLEMENTATION
- Sintaks CSS Variables wajib (`:root { --color-...: ...; }`).
- Pemetaan ke konfigurasi theme framework/styling.
- Larangan penulisan warna HEX langsung di dalam template/markup.

### 7. RESPONSIVENESS STANDARD
- Paradigma wajib: Mobile-first.
- Skala breakpoint standar (misal: sm, md, lg, xl, 2xl).
- Konsistensi vertical rhythm dan fluid typography/spacing.

### 8. PERFORMANCE STANDARD
- Komponen optimasi gambar (misal `<NuxtImg>`, `next/image`, atau `<Image />`).
- Lazy loading & code-splitting default.
- Batasan dependensi pihak ketiga.

### 9. SEO & ACCESSIBILITY BASELINE
- Head/Meta management primitive (misal `useHead`, `generateMetadata`, Astro SEO).
- Semantic HTML tags (`header`, `main`, `nav`, `section`, `footer`).
- Aksesibilitas: ARIA label jika interaktif, keyboard navigability, visible focus ring, WCAG color contrast.

### 10. STATE MANAGEMENT RULES
- Kapan menggunakan state lokal vs state global.
- Library/pola resmi (Composables, React Context/Zustand, Pinia, Svelte Stores/Runes).
- Larangan antipattern: props drilling berlebih, state global tak terkontrol.

### 11. CODE QUALITY STANDARD
- Strict TypeScript (`strict: true`, no unnecessary `any`).
- Kebersihan kode: larangan `console.log` di production, penghapusan unused imports.
- Konvensi penamaan (Component PascalCase, variable/function camelCase, routes kebab-case).

### 12. SCALABILITY PRINCIPLES
- Desain arsitektur yang memungkinkan penambahan rute/fitur tanpa refactoring struktural.
- Anti-monolithic principle (pecah file yang melebihi batas kewajaran).

### 13. AI ENFORCEMENT CLAUSE
- Klausul wajib: AI dilarang mengubah stack atau menawarkan alternatif tanpa instruksi tertulis pengguna.
- Output yang menyimpang dari stack dinyatakan cacat dan wajib dibatalkan/diperbaiki.

### 14. EXECUTION DIRECTIVE
- Peran AI: AI adalah Engineer Executor, bukan analis pasif atau konsultan teoritis.
- Output yang dihasilkan harus langsung berupa kode production-ready.
