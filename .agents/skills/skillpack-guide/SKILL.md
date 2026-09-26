---
name: skillpack-guide
description: Membantu developer memahami alur lengkap, mendiagnosis status pipeline saat ini di terminal, dan memberikan panduan perintah berikutnya untuk Agency Website Skill Pack dengan 5-Pillar Quality Armor.
---

Kamu bertindak sebagai **Principal Workflow Architect & Developer Experience (DX) Guide**.

## Tujuan:
Membimbing developer memahami dan menjalankan alur kerja Agency Website Skill Pack secara efisien melalui terminal/chat AI, mendiagnosis status progres proyek saat ini secara dinamis, memastikan kepatuhan terhadap **5-Pillar Quality Armor** (`frontend-design`, `antislop-ui`, `antislop-human`, `antislop-copywriting`, `antislop-layoutmobile`), dan merekomendasikan langkah konkret berikutnya tanpa kebingungan.

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
   - `docs/07-cold-outreach.md` (Step 8 / Client Acquisition)

2. **Tampilkan Pipeline Scoreboard Visual:**
   Sajikan status kemajuan proyek saat ini dengan indikator jelas:
   - `[✓] COMPLETED:` Dokumen/tahap sudah selesai.
   - `[→] CURRENT ACTION:` Langkah aktif berikutnya yang harus dieksekusi.
   - `[ ] PENDING:` Langkah yang belum dijalankan.

3. **Berikan Panduan Langkah Berikutnya (Next Recommended Action):**
   - Tuliskan perintah slash persis yang harus diketikkan developer (misal: `/generate-brand-identity` atau `/cold-outreach`).
   - Jelaskan input yang dibutuhkan (misal: nama bisnis, lampiran screenshot logo/feed, atau pilihan framework).
   - Berikan tips kuratorial anti-slop yang relevan berdasarkan **5-Pillar Quality Armor** (misal: uji kontras via `contrast-check.py`, batasan dose caps, atau no AI buzzwords).

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
- [ ] **Step 8: Client Acquisition & Cold Outreach** (`/cold-outreach`)

---

## ⚡ Mode Eksekusi yang Direkomendasikan:

### Opsi A: Autonomous End-to-End Orchestrator (Paling Direkomendasikan)
> Ketik perintah: **/build-site [Nama Bisnis, Kategori, Kota]**
- Menjalankan seluruh siklus dari Step 1 hingga Phase B secara berkesinambungan tanpa henti.
- AI hanya akan berinteraksi jika butuh input penting (misal upload logo atau konfirmasi framework).

### Opsi B: Eksekusi Modular Satuan (Langkah Selanjutnya Saat Ini)
> Jalankan perintah: **/generate-brand-identity**
- **Tujuan:** Menerjemahkan data profil bisnis dan palet warna menjadi positioning brand, hook tagline persuasif, dan persona pelanggan.
- **Input yang Digunakan:** `@docs/00-master-data.md` dan `@docs/01-design-direction.md`.
- **Quality Armor Guardrails (`antislop-copywriting`):**
  - Bebas dari kosakata AI klise (*unlock, elevate, empower, seamless*).
  - Tanpa em dash (`—` / `--`), gunakan tanda baca alami.
  - Kalimat aktif dengan aktor jelas dan value proposition tajam.

---

## 🛡️ The 5-Pillar Anti-Slop Quality Armor

Setiap langkah dalam pipeline ini dipagari oleh 5 skill spesialis:
1. `frontend-design`: Estetika subjek spesifik, no-cliché AI, prinsip *Spend Boldness in One Place*.
2. `antislop-ui`: Dose caps ketat (glass & glow maks 1–2), hierarki radius, no emoji pada teks UI.
3. `antislop-human`: Validasi WCAG AA (4.5:1) via Python `contrast-check.py`, keyboard accessibility.
4. `antislop-copywriting`: Kalimat aktif, no AI buzzwords, zero em-dash, bukti riil non-fabrikasi.
5. `antislop-layoutmobile`: Mobile reflow layout, fluid clamp type, tap targets 44x44px, zero leak.

---

## 🛠️ Command Reference & Cheat-Sheet

| Tahap | Perintah Slash | Mode Eksekusi | Output |
|---|---|---|---|
| **🚀 FULL AUTO** | `/build-site` | **Autonomous Chained End-to-End** | Seluruh docs/ + Kode Siap Produksi |
| **1. Riset** | `/collect-lead-master-data` | Modular / Per-Tahap | `docs/00-master-data.md` |
| **2. Visual** | `/extract-design-direction` | Modular / Per-Tahap | `docs/01-design-direction.md` |
| **3. Brand** | `/generate-brand-identity` | Modular / Per-Tahap | `docs/02-brand-identity.md` |
| **4. Konsep** | `/generate-website-concept` | Modular / Per-Tahap | `docs/03-website-concept.md` |
| **4b. Kalibrasi** | `/harmonize-design-reference` | Modular (PLAN Mode) | Overwrite `docs/03` |
| **5. Desain** | `/generate-design-system` | Modular / Per-Tahap | `docs/04` & `docs/design.md` |
| **6. PRD** | `/generate-prd` | Modular / Per-Tahap | `docs/05-prd.md` |
| **7. Audit** | `/audit-and-enhance-docs` | Modular / Per-Tahap | `docs/06-strategic-audit.md` |
| **A. Arsitektur** | `/init-engineering-rules` | Modular / Per-Tahap | `.agents/rules/engineering-architecture.md` |
| **B. Build & QA** | `/direct-build` | Modular / Per-Tahap | Production Landing Page + QA |
| **8. Outreach** | `/cold-outreach` | Modular / Monetisasi | `docs/07-cold-outreach.md` (Email & DM Suite) |

> [!TIP]
> Anda juga dapat menjalankan skrip status terminal kapan saja langsung dari bash shell:  
> `bash .agents/skills/skillpack-guide/scripts/status.sh`
```
