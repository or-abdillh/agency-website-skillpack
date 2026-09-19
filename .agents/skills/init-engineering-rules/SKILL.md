---
name: init-engineering-rules
description: Menginisiasi dan menyesuaikan aturan arsitektur rekayasa (.agents/rules/engineering-architecture.md) secara ketat (strict rules model) sesuai framework, styling tool, dan arsitektur pilihan proyek.
---

Kamu bertindak sebagai Principal Engineering Architect & Technical Governance Lead.

Tujuan:
Menginisiasi, mengkustomisasi, dan mengunci berkas aturan arsitektur teknis di `.agents/rules/engineering-architecture.md` agar menjadi **strict rules model** (Single Source of Technical Truth) yang mengikat seluruh agen AI dan developer selama siklus pengembangan berlangsung.

---

### Prinsip Utama (Strict Rules Philosophy):

1. **Non-Negotiable & Mengikat:**
   Aturan arsitektur yang dihasilkan memiliki prioritas teknis tertinggi, mengesampingkan asumsi bawaan AI, dan memuat `trigger: always_on` di frontmatter.
2. **Definitif & Anti-Vague:**
   Dilarang keras menghasilkan aturan dengan placeholder generik (seperti `// tambahkan konfigurasi di sini` atau `...`). Semua bagian wajib memuat aturan spesifik, perintah instalasi konkret, pola folder nyata, dan larangan eksplisit ("Dilarang:").
3. **AI Enforcement Locked:**
   Setiap berkas wajib memiliki klausul penegakan AI yang menyatakan bahwa deviasi dari stack terkunci adalah kegagalan tugas.

---

### Langkah Kerja (Execution Flow):

#### 1. Deteksi atau Penentuan Stack Proyek
- **Mode Auto-Detect:** Periksa keberadaan berkas konfigurasi di root proyek:
  - `package.json` (cek `dependencies`, `devDependencies`, `type`, `scripts`)
  - `nuxt.config.ts` → Nuxt stack
  - `next.config.*` → Next.js stack
  - `vite.config.*` → Vite + React / Vue / Vanilla
  - `astro.config.*` → Astro stack
  - `svelte.config.*` → SvelteKit stack
- **Mode User-Input:** Jika proyek masih kosong atau user secara eksplisit menentukan stack (misal: "Inisiasi rule untuk Next.js 15 + Tailwind v4"), gunakan spesifikasi tersebut.
- **Mode Klarifikasi / Konfirmasi:** Jika belum ada indikator yang jelas, konfirmasi pilihan stack dengan opsi preset:
  1. `Nuxt 4 + Tailwind v4` (Vue 3 Composition API, SSR/SSG, Vite)
  2. `Next.js 15 + Tailwind v4` (React 19, App Router, Server/Client Components, SSR)
  3. `Vite + React 19 + Tailwind v4` (SPA/SSG, Component-driven, TypeScript)
  4. `Astro 5 + Tailwind v4` (Content/Islands architecture, Zero-JS baseline)
  5. `SvelteKit + Tailwind v4` (Svelte 5 Runes, SSR/SSG, Vite)
  6. `Custom Stack` (Spesifikasi mandiri dari user)

#### 2. Muat Reference Preset
Gunakan referensi preset yang tersedia di subdirektori `references/` sebagai basis struktur dan ketajaman aturan:
- `references/nuxt4-tailwind4.md`
- `references/nextjs-tailwind.md`
- `references/react-vite-tailwind.md`
- `references/astro-tailwind.md`
- `references/sveltekit-tailwind.md`
- `references/stack-schema-guide.md`

#### 3. Sintesis & Tulis Aturan ke `.agents/rules/engineering-architecture.md`
Tulis berkas `.agents/rules/engineering-architecture.md` dengan struktur standar 14 bab wajib:
1. **PURPOSE:** Pernyataan tujuan, stack yang dikunci, sifat mengikat, dan resolusi konflik.
2. **CORE STACK (LOCKED – NON NEGOTIABLE):** Framework layer & styling layer, package manager, versi minimum, install commands, entry files, serta daftar larangan eksplisit.
3. **PROJECT STRUCTURE:** Pohon direktori lengkap dan pemetaan tanggung jawab per folder (misal `/app` vs `/src`).
4. **RENDERING STRATEGY:** Mode rendering default (SSR / SSG / SPA / Islands / Hybrid) dan batasan teknisnya.
5. **COMPONENT ARCHITECTURE STANDARD:** Pola deklarasi komponen (misal `<script setup lang="ts">` atau TypeScript FC), typed props/emits, atomisasi folder (`ui`, `sections`, `layout`, `base`).
6. **DESIGN TOKEN IMPLEMENTATION:** Mekanisme CSS variables (`:root`) dan integrasi ke styling engine (Tailwind config/theme tokens).
7. **RESPONSIVENESS STANDARD:** Mobile-first directive, breakpoint scale, layout constraints.
8. **PERFORMANCE STANDARD:** Image optimization primitive, code-splitting, bundle control, minimal 3rd-party dependencies.
9. **SEO & ACCESSIBILITY BASELINE:** Metadata management, semantic tags, heading hierarchy, WCAG contrast & focus states.
10. **STATE MANAGEMENT RULES:** Solusi state ringan (composables/hooks) vs global store (Pinia/Zustand), larangan prop drilling ekstrem.
11. **CODE QUALITY STANDARD:** Strict typing (no loose `any`), linter rules, naming conventions (PascalCase, camelCase, kebab-case).
12. **SCALABILITY PRINCIPLES:** Modularity, anti-monolithic files, independent feature extensibility.
13. **AI ENFORCEMENT CLAUSE:** Mandat mutlak kepatuhan AI terhadap stack, konsekuensi diskualifikasi jika melanggar.
14. **EXECUTION DIRECTIVE:** AI bertindak sebagai Engineer Executor, bukan analis pasif.

Pastikan frontmatter wajib ada:
```yaml
---
trigger: always_on
---
```

#### 4. Validasi & Laporan Status
- Pastikan berkas `.agents/rules/engineering-architecture.md` berhasil ditulis tanpa syntax error.
- Tampilkan ringkasan stack yang terkunci, jalur berkas rule, dan petunjuk langkah selanjutnya (misal integrasi dengan pipeline ideasi atau eksekusi via `/direct-build`).
