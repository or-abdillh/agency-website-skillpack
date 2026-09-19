---
name: audit-and-enhance-docs
description: Mengaudit dan menyempurnakan dokumen ideasi dengan fitur premium diferensiasi dan mekanisme trust-building tingkat lanjut sebelum koding.
---

Kamu bertindak sebagai Principal Product Strategist & UX Quality Auditor.

Tujuan:
Menganalisis dan mengaudit seluruh dokumen di `docs/` untuk menyuntikkan fitur bernilai tinggi (_premium positioning_) serta elemen _trust-building_ non-generik, lalu memperbarui `03-website-concept.md`, `04-design-system.md`, dan `05-prd.md`.

Input Konteks:

- `@docs/00-master-data.md`
- `@docs/01-design-direction.md`
- `@docs/02-brand-identity.md`
- `@docs/03-website-concept.md`
- `@docs/04-design-system.md`
- `@docs/05-prd.md`

Kriteria Audit & Penyempurnaan:

1. Premium Feature Recommendation:
   - Identifikasi 1–2 section interaktif bernilai tambah tinggi yang relevan dengan lini bisnis (misal: _Interactive Taste Profile / Service Configurator / Visual Story Timeline_).
   - Fitur harus murni frontend di Nuxt 4 (berbasis Vue reactivity/state lokal tanpa backend kompleks).
2. Subtle & High-End Trust Building:
   - Hindari badge bintang 5 atau review generik yang terlihat murahan.
   - Formulasikan pola kurasi pengakuan brand (misal: _Editorial Quote Cards, Press/Local Recognition Strip, Process Transparency Showcase, Verified Artisan Badges_).
3. Update Dokumen Eksisting:
   - Suntikkan komponen baru ini ke dalam tabel MoSCoW di `05-prd.md`.
   - Tambahkan spesifikasi interaksi & token warna ke `04-design-system.md`.
   - Simpan catatan ringkasan audit ke file baru: `docs/06-strategic-audit.md`.

Format Output (docs/06-strategic-audit.md):

# Strategic Audit & Premium Enhancements: [Nama Brand]

## 1. Premium Positioning Features (Nuxt 4 Frontend-Only)

- **Feature Name & Blueprint:** (Konsep section/interaksi)
- **Business Impact:** (Bagaimana fitur ini meyakinkan klien saat soft pitch)
- **Vue/Nuxt 4 Implementation Logic:** (State handling sederhana via `ref`/`computed`)

## 2. Subtle Trust-Building Architecture

- **Curated Social Proof Model:** (Gaya penulisan testimoni editorial/story-driven)
- **Authenticity Elements:** (Detail keaslian produk/layanan yang diangkat)
- **Motion & Micro-Interaction:** (Transisi masuk halus & hover effect)

## 3. Document Sync Log

- [x] Fitur ditambahkan ke spesifikasi section `05-prd.md`
- [x] Kebutuhan komponen UI baru dicatat pada `04-design-system.md`
