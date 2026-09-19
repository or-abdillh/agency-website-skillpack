---
name: generate-brand-identity
description: Mensintesis data bisnis dan design direction menjadi Brand Identity Document komprehensif untuk landing page MVP dengan standar ketat antislop-copywriting dan frontend-design.
---

Kamu bertindak sebagai Senior Product Designer & Brand Strategist.

Tujuan:
Menganalisis persepsi pelanggan, positioning pasar, dan narasi brand berbasis token visual yang sudah diekstraksi, mematuhi standar copywriting manusiawi bebas kata klise AI, lalu menyimpannya di file: `docs/02-brand-identity.md`.

Input Konteks:
- `@docs/00-master-data.md` (Data bisnis & riset pasar)
- `@docs/01-design-direction.md` (Palet warna & visual tokens)
- Aturan Tata Kelola: `.agents/rules/agency-design-standard.md` & `.agents/rules/document-governance.md`.

---

### Quality Armor Mandat (antislop-copywriting & frontend-design):

1. **Eliminasi Total Kosakata AI Kosong (antislop-copywriting):**
   - DILARANG menggunakan kata-kata: *unlock, elevate, empower, delve, showcase, testament, landscape, journey, robust, game-changer, next-level, seamless, cutting-edge, revolutionary*.
   - Gunakan bahasa lugas, spesifik, dan langsung menjelaskan aksi/solusi nyata untuk pelanggan.

2. **Larangan Fabrikasi & Signifikansi Berlebihan:**
   - Dilarang membuat klaim megah tanpa bukti: "the future of X", "marking a pivotal moment".
   - Dilarang mengarang testimoni fiktif atau angka statistik palsu. Pijakkan narasi pada data riil ulasan Google Maps di `docs/00-master-data.md`.

3. **Higiene Penulisan & Larangan Em Dash:**
   - DILARANG menggunakan karakter em dash (`—` atau `--`) sebagai penghubung kalimat. Gunakan tanda titik, koma, titik dua, atau tanda kurung.
   - Wajib menggunakan kalimat aktif dengan subjek/aktor yang jelas. Dilarang kalimat pasif tanpa aktor (*actorless passive*) atau memberi sifat manusia pada benda mati (*"the platform understands"*).

4. **Karakter Spesifik Subjek (frontend-design):**
   - Turunkan tone of voice dari industri riil bisnis klien (misal klinik gigi estetik: menenangkan, higienis, presisi; bukan generik korporat).

---

Format Output (02-brand-identity.md):

```markdown
# Brand Identity & Experience Strategy: [Nama Brand]

> **Document Version:** 1.0.0 | **Status:** Approved | **Last Updated:** YYYY-MM-DD  
> **Governing Agent/Role:** Senior Product Designer & Brand Strategist

### Revision Changelog
| Version | Date | Author / Role | Changes Summary |
|---|---|---|---|
| 1.0.0 | YYYY-MM-DD | Senior Brand Strategist | Inisialisasi identitas brand, positioning, dan tone of voice alami anti-slop |

---

## 1. Brand Core & Value Positioning

- **Primary Tagline/Hook:** (Slogan ringkas berbasis value proposition tanpa kata klise AI)
- **Brand Personality:** (3–5 pilar karakter brand, misal: *Approachable, Modern Artisanal, Trustworthy*)
- **Target Audience Profile:** (Demografi, motivasi utama berkunjung/membeli, dan ekspektasi mereka)
- **Tone of Voice & Copywriting Style:** (Pedoman gaya bahasa alami mematuhi antislop-copywriting)

## 2. Customer Sentiment & Emotional Resonance

- **Key Customer Emotions:** (Emosi dominan yang ingin dipicu: rasa aman, kenyamanan, kepraktisan)
- **Perceived Strengths to Amplify:** (Poin positif bisnis dari ulasan riil Google Maps)
- **Authentic Trust Factors:** (Sertifikasi, testimoni riil, garansi, kejelasan harga)

## 3. Visual-Driven Brand Architecture

- **Palette Mapping Reference:** (Merujuk token HEX dari `01-design-direction.md`)
  - *Primary Tone:* Digunakan untuk memicu action utama & anchoring visual
  - *Surface/Background Tone:* Membangun ambience dasar website
  - *Accent Tone:* Menarik perhatian pada momen fokus spesifik
- **Moodboard Direction:** (Panduan kurasi foto Unsplash dan visual hierarchy)

## 4. Copywriting & Design Guardrails (antislop-copywriting & antislop-ui)

- **Banned AI Words:** *unlock, elevate, empower, delve, showcase, seamless, cutting-edge, revolutionary*.
- **Punctuation Ban:** Nol karakter em dash (`—` / `--`) pada seluruh teks promosi dan landing page.
- **Dose Caps:** Glassmorphism dan ambient glow dibatasi maksimal 1–2 elemen prioritas.
```
