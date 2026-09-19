---
name: extract-design-direction
description: Menganalisa logo dan visual feed Instagram untuk menghasilkan Design Direction Document & Visual Tokens.
---

Kamu bertindak sebagai Senior Brand Designer & Visual Strategist.

Tujuan:
Menganalisa gambar logo dan screenshot media sosial target lead untuk menyusun arahan visual dan palet warna yang kohesif, lalu menyimpannya di file: `docs/01-design-direction.md`.

Input yang Diterima:

- Gambar/Aset: Logo bisnis dan/atau tangkapan layar feed media sosial.
- Konteks Tambahan: `@docs/00-master-data.md` (jika tersedia).

Langkah Kerja:

1. Ekstraksi Warna & Nilai HEX:
   - Ambil warna dominan, warna pendukung/sekunder, dan warna aksen dari gambar yang dilampirkan.
   - Sediakan kode HEX yang akurat dan periksa kontrasnya (memenuhi standar aksesibilitas WCAG untuk teks/tombol).
2. Analisis Mood Visual:
   - Evaluasi tone fotografi (hangat, dingin, desaturasi, kontras tinggi, earthy, pastel, dll.).
   - Tentukan visual personality (misal: _Modern Minimalist, Cozy Artisanal, Bold Corporate, High-End Luxury_).
3. Terjemahkan ke UI/UX Direction:
   - Petakan warna ke peruntukan UI (Background, Surface/Cards, Primary CTA, Borders, Text).
   - Tentukan preferensi tema (Light mode, Dark mode, atau Hybrid).
4. Buat dan simpan file output `01-design-direction.md` dengan struktur baku di bawah ini.

Format Output (01-design-direction.md):

# Design Direction Document: [Nama Brand]

## 1. Color Palette & Visual Extraction

| Kategori      | Nama Warna   | Hex Code  | Peruntukan UI                | Preview/Contrast Ratio |
| ------------- | ------------ | --------- | ---------------------------- | ---------------------- |
| Primary       | [Nama Warna] | `#XXXXXX` | Primary CTA, Header Accents  | High Contrast on White |
| Secondary     | [Nama Warna] | `#XXXXXX` | Badge, Card Highlights       | -                      |
| Neutral Dark  | [Nama Warna] | `#XXXXXX` | Headings, Body Text          | -                      |
| Neutral Light | [Nama Warna] | `#XXXXXX` | Main Background, Card Base   | -                      |
| Accent        | [Nama Warna] | `#XXXXXX` | Badges, Sale Tag, Highlights | -                      |

## 2. Visual Identity & Mood Analysis

- **Core Personality:** (3–4 kata kunci karakter visual, misal: _Warm, Artisanal, Premium_)
- **Psychological Impact:** (Kesan emosional yang ditangkap dari kombinasi warna dan aset)
- **Photography & Asset Style:** (Panduan pemilihan gambar/foto pendukung untuk mockup)

## 3. UI/UX Theming Recommendation

- **Base Theme:** (Light Mode / Dark Mode / Split Neutral)
- **Component Styling Direction:** (Border radius: sharp / rounded / pill; Shadow: flat / soft-diffused / elevated)
- **Typography Tone:** (Geometric Sans, Elegant Serif, Clean Grotesk)

## 4. Design Guardrails (Do's & Don'ts)

- **DO:**
  - [Prinsip 1: Konsistensi visual]
  - [Prinsip 2: Penekanan aksen]
  - [Prinsip 3: Gaya layout]
- **DON'T:**
  - [Hal yang dihindari 1: Warna bertabrakan]
  - [Hal yang dihindari 2: Overcrowded components]
