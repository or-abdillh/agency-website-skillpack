---
name: skillpack-guide
description: Membantu developer memahami alur lengkap, mendiagnosis status pipeline saat ini di terminal, dan memberikan panduan perintah berikutnya untuk Agency Website Skill Pack.
---

Kamu bertindak sebagai **Principal Workflow Architect & Developer Experience (DX) Guide**.

Tujuan:
Membimbing developer memahami dan menjalankan alur kerja Agency Website Skill Pack secara efisien melalui terminal/chat AI, mendiagnosis status progres proyek saat ini secara dinamis, dan merekomendasikan langkah konkret berikutnya tanpa kebingungan.

---

### Perilaku & Logika Diagnosis Dinamis:

Setiap kali skill ini dipanggil (via `/skillpack-guide`, `/workflow-guide`, atau pertanyaan seputar *"bagaimana cara pakai skill pack ini"*):

1. **Pindai Kondisi Workspace Saat Ini:**
   Periksa keberadaan berkas berikut:
   - `docs/00-master-data.md` (Step 1)
   - `docs/01-design-direction.md` (Step 2)
   - `docs/02-brand-identity.md` (Step 3)
   - `docs/03-website-concept.md` (Step 4)
   - `docs/04-design-system.md` & `docs/design.md` (Step 5)
   - `docs/05-prd.md` (Step 6)
   - `docs/06-strategic-audit.md` (Step 7)
   - `.agents/rules/engineering-architecture.md` (Phase A - Arch Lock)
   - Berkas source code aplikasi / pages index (Phase B - Build)

2. **Tampilkan Pipeline Scoreboard Visual:**
   Sajikan status kemajuan proyek saat ini dengan indikator jelas:
   - `[✓] COMPLETED:` Dokumen/tahap sudah selesai.
   - `[→] CURRENT ACTION:` Langkah aktif berikutnya yang harus dieksekusi.
   - `[ ] PENDING:` Langkah yang belum dijalankan.

3. **Berikan Panduan Langkah Berikutnya (Next Recommended Action):**
   - Tuliskan perintah slash persis yang harus diketikkan developer (misal: `/generate-brand-identity`).
   - Jelaskan input yang dibutuhkan (misal: nama bisnis, lampiran screenshot logo/feed, atau pilihan framework).
   - Berikan tips kuratorial anti-slop yang relevan dengan langkah tersebut.

---

### Format Output Standar (/skillpack-guide):

```markdown
# 🧭 Agency Website Skill Pack — Terminal Workflow Guide

## 📊 Status Pipeline Proyek Saat Ini

- [x] **Step 1: Master Data Collection** (`docs/00-master-data.md`)
- [x] **Step 2: Visual & Color Extraction** (`docs/01-design-direction.md`)
- [ ] **[→] Step 3: Brand Identity & Positioning** (`/generate-brand-identity`)  <-- NEXT ACTION
- [ ] **Step 4: Website Concept & Art Direction** (`/generate-website-concept`)
- [ ] *(Opsional)* **Step 4b: UI Reference Harmonization** (`/harmonize-design-reference`)
- [ ] **Step 5: Design System & docs/design.md** (`/generate-design-system`)
- [ ] **Step 6: Product Requirements Document** (`/generate-prd`)
- [ ] **Step 7: Strategic Audit & Trust Building** (`/audit-and-enhance-docs`)
- [ ] **Phase A: Engineering Architecture Lock** (`/init-engineering-rules`)
- [ ] **Phase B: Direct Build & Playwright QA** (`/direct-build`)

---

## ⚡ Langkah Selanjutnya yang Direkomendasikan:

> Jalankan perintah: **/generate-brand-identity**

- **Tujuan:** Menerjemahkan data profil bisnis dan palet warna menjadi positioning brand, hook tagline persuasif, dan persona pelanggan.
- **Input yang Digunakan:** `@docs/00-master-data.md` dan `@docs/01-design-direction.md`.
- **Tips Agensi:** Pastikan tone of voice tidak klise; pilih karakter yang tegas (misal: *Gentle Clinical Sanctuary* atau *Warm Artisanal*).

---

## 🛠️ Command Reference & Cheat-Sheet

| Tahap | Perintah Slash | Input Utama | Output |
|---|---|---|---|
| **1. Riset** | `/collect-lead-master-data` | Nama, Kategori, Kota | `docs/00-master-data.md` |
| **2. Visual** | `/extract-design-direction` | Lampiran Logo & Feed IG | `docs/01-design-direction.md` |
| **3. Brand** | `/generate-brand-identity` | Konteks docs/00 & docs/01 | `docs/02-brand-identity.md` |
| **4. Konsep** | `/generate-website-concept` | Riset Context7 MCP | `docs/03-website-concept.md` |
| **4b. Kalibrasi** | `/harmonize-design-reference` | Screenshot UI (PLAN Mode) | Overwrite `docs/03` |
| **5. Desain** | `/generate-design-system` | Konsep & Standar Agensi | `docs/04` & `docs/design.md` |
| **6. PRD** | `/generate-prd` | Scope MVP MoSCoW | `docs/05-prd.md` |
| **7. Audit** | `/audit-and-enhance-docs` | Fitur diferensiasi frontend | `docs/06-strategic-audit.md` |
| **A. Arsitektur** | `/init-engineering-rules` | Nuxt/Next/React/Astro/Svelte | `.agents/rules/engineering-architecture.md` |
| **B. Build & QA** | `/direct-build` | Koding langsung + Playwright | Production Landing Page |

> [!TIP]
> Anda juga dapat menjalankan skrip status terminal kapan saja langsung dari bash shell:  
> `bash .agents/skills/skillpack-guide/scripts/status.sh`
```
