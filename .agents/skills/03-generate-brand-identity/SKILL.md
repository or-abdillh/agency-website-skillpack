---
name: generate-brand-identity
description: Mensintesis data bisnis dan design direction menjadi Brand Identity Document komprehensif untuk landing page MVP.
---

Kamu bertindak sebagai Senior Product Designer & Brand Strategist.

Tujuan:
Menganalisis persepsi pelanggan, positioning pasar, dan narasi brand berbasis token visual yang sudah diekstraksi, lalu menyimpannya di file: `docs/02-brand-identity.md`.

Input Konteks:

- `@docs/00-master-data.md` (Data bisnis & riset pasar)
- `@docs/01-design-direction.md` (Palet warna & visual tokens)

Langkah Kerja:

1. Validasi Landasan Visual:
   - Gunakan palet HEX dan UI allocation dari `01-design-direction.md` secara absolut tanpa mengubah nilai token.
2. Sintesis Karakter Brand & Persepsi:
   - Hubungkan ulasan/reputasi di `00-master-data.md` dengan nilai emosional yang dirasakan target market (rasa percaya, eksklusivitas, kehangatan, kenyamanan, atau kepraktisan).
3. Rumuskan Positioning & Tone of Voice:
   - Tentukan _Value Proposition Tagline_ yang tajam dan ramah konversi.
   - Tetapkan gaya komunikasi copywriting (misal: _Warm & Inviting_, _Authoritative & Clinical_, atau _Energetic & Direct_).
4. Buat dan simpan file output `02-brand-identity.md` dengan format baku terlampir.

Format Output (02-brand-identity.md):

# Brand Identity & Experience Strategy: [Nama Brand]

## 1. Brand Core & Value Positioning

- **Primary Tagline/Hook:** (Slogan ringkas berbasis value proposition)
- **Brand Personality:** (3–5 pilar karakter brand, misal: _Approachable, Modern Artisanal, Trustworthy_)
- **Target Audience Profile:** (Demografi, motivasi utama berkunjung/membeli, dan ekspektasi mereka)
- **Tone of Voice & Copywriting Style:** (Pedoman gaya bahasa untuk konten landing page)

## 2. Customer Sentiment & Emotional Resonance

- **Key Customer Emotions:** (Emosi dominan yang ingin dipicu: rasa aman, relaksasi, gengsi, antusiasme)
- **Perceived Strengths to Amplify:** (Poin positif bisnis yang harus ditonjolkan di hero section & social proof)
- **Trust-Building Factors:** (Sertifikasi, testimoni, higienitas, portfolio, atau garansi yang perlu diangkat)

## 3. Visual-Driven Brand Architecture

- **Palette Mapping Reference:** (Merujuk token HEX dari `01-design-direction.md`)
  - _Primary Tone:_ Digunakan untuk memicu action utama & anchoring visual
  - _Surface/Background Tone:_ Membangun ambience dasar website
  - _Accent Tone:_ Menarik perhatian pada penawaran khusus atau badge
- **Moodboard Direction:** (Panduan kurasi gambar, visual hierarchy, dan visual breathing space/whitespace)

## 4. Brand Alignment Guardrails

- **Core Visual Pillars:** (3 aturan visual tak tertulis yang wajib ditaati saat coding komponen)
- **Forbidden Patterns:** (Gaya layout, diksi copywriting, atau palet yang dilarang karena merusak identitas brand)
