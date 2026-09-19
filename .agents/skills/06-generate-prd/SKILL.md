---
name: generate-prd
description: Menyusun Product Requirements Document (PRD) operasional dan terstruktur untuk implementasi landing page/MVP di Nuxt 4 + Vue.
---

Kamu bertindak sebagai Senior Product Manager teknis yang berkolaborasi erat dengan Tim Frontend Engineering.

Tujuan:
Menerjemahkan Brand Identity, Website Concept, dan Design System ke dalam PRD operasional yang menetapkan batasan scope, spesifikasi section/fitur, user flow, dan kriteria MVP siap pitch, lalu menyimpannya di file: `docs/05-prd.md`.

Input Konteks:

- `@docs/00-master-data.md`
- `@docs/02-brand-identity.md`
- `@docs/03-website-concept.md`
- `@docs/04-design-system.md`

Prinsip Pengerjaan:

- DILARANG menambah fitur kompleks di luar kebutuhan MVP soft-pitching (prioritaskan fast-loading, visual impact, dan direct conversion).
- Petakan kebutuhan halaman menjadi struktur section Nuxt 4 yang modular.
- Spesifikasikan metrik konversi dan batasan _Out of Scope_ dengan tegas.

Format Output (05-prd.md):

# Product Requirements Document (PRD): [Nama Brand] MVP Website

## 1. Product Overview & Executive Summary

- **Product Name / Type:** [Nama Brand] — High-Converting Showcase / Landing Page
- **Primary Objective:** Menghadirkan representasi digital premium yang meningkatkan kepercayaan prospek dan mendorong direct action (WhatsApp / Booking / Walk-in).
- **Core Value Proposition:** (Diambil dari `02-brand-identity.md`)

## 2. Target Users & Core Scenarios

- **Primary Persona:** (Karakteristik calon pelanggan, kebutuhan mendesak, kebiasaan akses via mobile).
- **Core User Journey:**
  1. _Discovery & Hook:_ Mendarat di Hero section $\rightarrow$ terkesan dengan visual & value proposition (< 3 detik).
  2. _Validation & Trust:_ Membaca social proof, highlight ulasan, dan keunggulan spesifik.
  3. _Exploration:_ Melihat katalog menu/layanan/portofolio unggulan dengan harga/detail jelas.
  4. _Conversion:_ Mengklik CTA utama (WhatsApp link dengan pre-filled text / booking form ringan).

## 3. Section & Functional Specifications (MoSCoW Matrix)

| ID     | Section / Feature Name            | Priority    | Deskripsi Fungsional & Kebutuhan Copy                                                                     | Acuan Desain / Component                    |
| ------ | --------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| SEC-01 | **Sticky Dynamic Navbar**         | Must Have   | Logo brand, tautan navigasi section cepat, CTA button ringkas. Blur background on scroll.                 | `TheNavbar.vue` (`04-design-system.md`)     |
| SEC-02 | **Hero Section (Showstopper)**    | Must Have   | Headline dramatis, subheadline persuasif, badge social proof, primary CTA, visual showcase produk/tempat. | Section Blueprint (`03-website-concept.md`) |
| SEC-03 | **Trust & Social Proof Strip**    | Must Have   | Rating Google Maps, kutipan ulasan riil pelanggan, highlight jam terbang/keunggulan higienitas/kualitas.  | `BaseBadge.vue` + Testimonial cards         |
| SEC-04 | **Core Offerings / Showcase**     | Must Have   | Card grid/slider produk unggulan beserta deskripsi singkat dan indikator harga.                           | `FeatureCard.vue`                           |
| SEC-05 | **Brand Story / Differentiator**  | Should Have | Section transisi ritme dengan background kontras menceritakan standar kualitas & proses brand.            | Narrative Flow (`03-website-concept.md`)    |
| SEC-06 | **Location & Operational Info**   | Must Have   | Jam operasional terstruktur, embed Google Maps atau direct map button, info kontak & alamat lengkap.      | `00-master-data.md`                         |
| SEC-07 | **Conversion Footer & Float CTA** | Must Have   | Footer bersih + Floating WhatsApp CTA button di mobile view untuk akses instan.                           | Mobile-First Action Rule                    |

## 4. Technical & Non-Functional Requirements (NFR)

- **Tech Stack Baseline:** Nuxt 4 (SSR/SSG), Vue 3 Composition API, Tailwind CSS, Lucide Icons.
- **Responsiveness:** Mobile-first approach (100% responsive tanpa layout break di viewport 360px hingga 4K).
- **Performance Budget:**
  - Lighthouse Performance Score $\ge 90$ di mobile.
  - Core Web Vitals (LCP < 2.5s, CLS < 0.1).
  - Optimasi gambar otomatis via `@nuxt/image` (WebP/AVIF format).
- **SEO & Meta Baseline:** Dynamic OpenGraph tags, semantic HTML (`h1`, `h2`, `article`, `nav`, `footer`), schema markup LocalBusiness.

## 5. Explicit Out of Scope (Untuk Fase MVP Pitch)

- Sistem pembayaran gateway (payment gateway) kompleks (gunakan direct message / invoice manual).
- Sistem manajemen user login / multi-role authentication.
- Backend database mandiri (gunakan data statis / headless config / mock JSON lokal).

## 6. Pitch Readiness & Soft-Selling Checklist

- [ ] Apakah headline hero langsung menjawab masalah/kebutuhan pelanggan bisnis ini?
- [ ] Apakah nomor WhatsApp di CTA sudah menggunakan nomor bisnis riil dari Master Data?
- [ ] Apakah palet warna dan foto placeholder terasa 100% menyatu dengan identitas brand asli mereka?
