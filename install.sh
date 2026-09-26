#!/usr/bin/env bash
# ==============================================================================
# Agency Website Skill Pack — Interactive Installer
# Transforms any project into an agency-grade, anti-slop landing page workspace.
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/or-abdillh/agency-website-skillpack/main/install.sh | bash
# ==============================================================================

set -eo pipefail

# --- Color Definitions ---
BOLD='\033[1m'
DIM='\033[2m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# --- Safe Input Reader (Interactive TTY & Piped Safe) ---
read_input() {
  local prompt="$1"
  local varname="$2"
  local default_val="$3"
  local val=""

  # 1. If data is waiting on stdin (e.g. piped or redirected)
  if read -t 0 2>/dev/null; then
    read -r val || true
  # 2. If stdin is directly an interactive terminal
  elif [ -t 0 ]; then
    read -r -p "$prompt" val || true
  # 3. If running via curl | bash with an interactive controlling terminal
  elif [ -e /dev/tty ] && [ -r /dev/tty ]; then
    read -r -p "$prompt" val < /dev/tty || true
  else
    val="$default_val"
  fi

  eval "$varname=\"${val:-$default_val}\""
}

# --- Cleanup Trap ---
TMP_DIR=""
cleanup() {
  if [ -n "$TMP_DIR" ] && [ -d "$TMP_DIR" ]; then
    rm -rf "$TMP_DIR"
  fi
}
trap cleanup EXIT

# --- Banner ---
clear 2>/dev/null || true
echo -e "${CYAN}${BOLD}"
cat << 'EOF'
     ___                                   _   _     _ 
    / _ \                                 | | | |   | |
   / /_\ \ __ _  ___ _ __   ___ _   _ ____| | | |___| |
   |  _  |/ _` |/ _ \ '_ \ / __| | | |____| | | / __| |
   | | | | (_| |  __/ | | | (__| |_| |    | |_| \__ \_|
   \_| |_/\__, |\___|_| |_|\___|\__, |     \___/|___(_)
           __/ |                 __/ |                 
          |___/                 |___/                  
EOF
echo -e "${NC}${BOLD}       Agency Website Skill Pack — Interactive Installer${NC}"
echo -e "${DIM}  High-Converting, Anti-Slop Landing Page Engine for AI Agents${NC}"
echo -e "──────────────────────────────────────────────────────────────────"
echo ""

TARGET_DIR="$PWD"
echo -e "${BLUE}ℹ${NC} Target Installation Directory: ${BOLD}${TARGET_DIR}${NC}"
echo ""

# --- Auto-detect existing project stack ---
DETECTED_STACK=""
DETECTED_NAME=""

if [ -f "$TARGET_DIR/package.json" ]; then
  if grep -q '"nuxt"' "$TARGET_DIR/package.json" 2>/dev/null || [ -f "$TARGET_DIR/nuxt.config.ts" ] || [ -f "$TARGET_DIR/nuxt.config.js" ]; then
    DETECTED_STACK="nuxt4"
    DETECTED_NAME="Nuxt 4 + Tailwind CSS v4"
  elif grep -q '"next"' "$TARGET_DIR/package.json" 2>/dev/null || [ -f "$TARGET_DIR/next.config.js" ] || [ -f "$TARGET_DIR/next.config.ts" ] || [ -f "$TARGET_DIR/next.config.mjs" ]; then
    DETECTED_STACK="next15"
    DETECTED_NAME="Next.js 15 + Tailwind CSS v4"
  elif grep -q '"astro"' "$TARGET_DIR/package.json" 2>/dev/null || [ -f "$TARGET_DIR/astro.config.mjs" ]; then
    DETECTED_STACK="astro5"
    DETECTED_NAME="Astro 5 + Tailwind CSS v4"
  elif grep -q '"@sveltejs/kit"' "$TARGET_DIR/package.json" 2>/dev/null || [ -f "$TARGET_DIR/svelte.config.js" ]; then
    DETECTED_STACK="sveltekit"
    DETECTED_NAME="SvelteKit 2 + Tailwind CSS v4"
  elif grep -q '"react"' "$TARGET_DIR/package.json" 2>/dev/null && grep -q '"vite"' "$TARGET_DIR/package.json" 2>/dev/null; then
    DETECTED_STACK="react19"
    DETECTED_NAME="React 19 + Vite + Tailwind CSS v4"
  fi
fi

if [ -n "$DETECTED_STACK" ]; then
  echo -e "${GREEN}✓${NC} Auto-detected project framework: ${BOLD}${DETECTED_NAME}${NC}"
  echo ""
fi

# --- Interactive Menu: Framework Selection ---
echo -e "${BOLD}Pilih target framework untuk mengunci Strict Architecture Rules:${NC}"
echo -e "  ${CYAN}1)${NC} Nuxt 4 + Tailwind CSS v4 ${DIM}(Vue 3 Composition API, App Directory)${NC}"
echo -e "  ${CYAN}2)${NC} Next.js 15 + Tailwind CSS v4 ${DIM}(React 19, App Router, Server Components)${NC}"
echo -e "  ${CYAN}3)${NC} React 19 + Vite + Tailwind CSS v4 ${DIM}(Modern Component-Driven SPA/SSG)${NC}"
echo -e "  ${CYAN}4)${NC} Astro 5 + Tailwind CSS v4 ${DIM}(Islands Architecture, zero-JS baseline)${NC}"
echo -e "  ${CYAN}5)${NC} SvelteKit 2 + Tailwind CSS v4 ${DIM}(Svelte 5 Runes, SSR/SSG)${NC}"
echo -e "  ${CYAN}6)${NC} Custom / Inisiasi Nanti ${DIM}(Menggunakan generic blueprint)${NC}"
echo ""

DEFAULT_CHOICE="1"
if [ "$DETECTED_STACK" = "nuxt4" ]; then DEFAULT_CHOICE="1"; fi
if [ "$DETECTED_STACK" = "next15" ]; then DEFAULT_CHOICE="2"; fi
if [ "$DETECTED_STACK" = "react19" ]; then DEFAULT_CHOICE="3"; fi
if [ "$DETECTED_STACK" = "astro5" ]; then DEFAULT_CHOICE="4"; fi
if [ "$DETECTED_STACK" = "sveltekit" ]; then DEFAULT_CHOICE="5"; fi

CHOICE=""
read_input "Pilihan Anda [1-6, default: $DEFAULT_CHOICE]: " CHOICE "$DEFAULT_CHOICE"

SELECTED_REF="nuxt4-tailwind4.md"
case "$CHOICE" in
  1) SELECTED_REF="nuxt4-tailwind4.md" ;;
  2) SELECTED_REF="nextjs-tailwind.md" ;;
  3) SELECTED_REF="react-vite-tailwind.md" ;;
  4) SELECTED_REF="astro-tailwind.md" ;;
  5) SELECTED_REF="sveltekit-tailwind.md" ;;
  6) SELECTED_REF="" ;;
  *) SELECTED_REF="nuxt4-tailwind4.md" ;;
esac

echo ""
echo -e "${YELLOW}⚡ Memulai proses instalasi...${NC}"

# --- Download / Source Resolution ---
TMP_DIR=$(mktemp -d 2>/dev/null || mktemp -d -t 'skillpack')
SOURCE_DIR=""

# Check if running locally inside the skill pack repository itself
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd || echo "")"
if [ -n "$SCRIPT_DIR" ] && [ -d "$SCRIPT_DIR/.agents/skills/init-engineering-rules" ] && [ "$SCRIPT_DIR" != "$TARGET_DIR" ]; then
  echo -e "${DIM}Menggunakan sumber paket lokal dari: $SCRIPT_DIR${NC}"
  SOURCE_DIR="$SCRIPT_DIR"
else
  REPO_URL="https://github.com/or-abdillh/agency-website-skillpack"
  TARBALL_URL="$REPO_URL/archive/refs/heads/main.tar.gz"

  echo -e "${DIM}Mengunduh paket dari GitHub ($REPO_URL)...${NC}"
  if curl -fsSL "$TARBALL_URL" -o "$TMP_DIR/pack.tar.gz" 2>/dev/null; then
    tar -xzf "$TMP_DIR/pack.tar.gz" -C "$TMP_DIR"
    SOURCE_DIR="$TMP_DIR/agency-website-skillpack-main"
  else
    echo -e "${DIM}Tarball tidak dapat diakses, mencoba fallback via git clone...${NC}"
    git clone --depth 1 "$REPO_URL.git" "$TMP_DIR/repo" >/dev/null 2>&1
    SOURCE_DIR="$TMP_DIR/repo"
  fi
fi

if [ ! -d "$SOURCE_DIR/.agents" ]; then
  echo -e "${RED}❌ Gagal mengunduh berkas sumber skill pack. Pastikan koneksi internet aktif.${NC}"
  exit 1
fi

# --- Copying Files (Direct Overwrite Mode) ---
echo -e "${DIM}Memasang aturan, skill, dan workflow ke proyek...${NC}"

mkdir -p "$TARGET_DIR/.agents/rules"
mkdir -p "$TARGET_DIR/.agents/skills"
mkdir -p "$TARGET_DIR/.agents/workflows"
mkdir -p "$TARGET_DIR/docs"

# Copy .agents structure
cp -rf "$SOURCE_DIR/.agents/"* "$TARGET_DIR/.agents/"

# Copy AGENTS.md
if [ -f "$SOURCE_DIR/AGENTS.md" ]; then
  cp -f "$SOURCE_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
fi

# Lock selected architecture rules into .agents/rules/engineering-architecture.md
if [ -n "$SELECTED_REF" ] && [ -f "$TARGET_DIR/.agents/skills/init-engineering-rules/references/$SELECTED_REF" ]; then
  echo -e "${DIM}Mengunci standar arsitektur ke: $SELECTED_REF...${NC}"
  echo "---" > "$TARGET_DIR/.agents/rules/engineering-architecture.md"
  echo "trigger: always_on" >> "$TARGET_DIR/.agents/rules/engineering-architecture.md"
  echo "---" >> "$TARGET_DIR/.agents/rules/engineering-architecture.md"
  echo "" >> "$TARGET_DIR/.agents/rules/engineering-architecture.md"
  cat "$TARGET_DIR/.agents/skills/init-engineering-rules/references/$SELECTED_REF" >> "$TARGET_DIR/.agents/rules/engineering-architecture.md"
fi

# Ensure scripts are executable
chmod +x "$TARGET_DIR/.agents/skills/skillpack-guide/scripts/status.sh" 2>/dev/null || true

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}${BOLD}  🎉 AGENCY WEBSITE SKILL PACK BERHASIL DIPASANG!${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${BOLD}Komponen yang Terpasang di Proyek:${NC}"
echo -e "  ${GREEN}✓${NC} ${CYAN}.agents/rules/${NC} (Strict Governance: agency-design v2.0, document-governance, engineering-architecture)"
echo -e "  ${GREEN}✓${NC} ${CYAN}.agents/skills/${NC} (12 Skill Agensi + 5-Pillar Armor + Cold Outreach Engine + Terminal Guide)"
echo -e "  ${GREEN}✓${NC} ${CYAN}.agents/workflows/${NC} (build-site.md — Autonomous End-to-End Workflow)"
echo -e "  ${GREEN}✓${NC} ${CYAN}AGENTS.md${NC} (Instruksi operasional global agen AI)"
echo -e "  ${GREEN}✓${NC} ${CYAN}docs/${NC} (Direktori luaran strategi, spesifikasi design.md & cold outreach)"
echo ""
echo -e "${BOLD}Langkah Selanjutnya (Buka Chat AI / Antigravity):${NC}"
echo -e "  ${YELLOW}🚀${NC} ${BOLD}Full-Auto Delivery:${NC}             ${CYAN}/build-site [Nama Bisnis, Kategori, Kota]${NC}"
echo -e "  ${YELLOW}🧭${NC} Cek panduan alur & status:        ${BOLD}/skillpack-guide${NC} (atau: ${DIM}bash .agents/skills/skillpack-guide/scripts/status.sh${NC})"
echo -e "  ${YELLOW}🛠️${NC} Eksekusi modular per-tahap:       ${BOLD}/collect-lead-master-data${NC} (lalu /extract-design-direction, dst.)"
echo -e "  ${YELLOW}✉️${NC} ${BOLD}Client Acquisition & Pitch:${NC}     ${CYAN}/cold-outreach${NC} (Playbook Cold Email & IG DM 2-Tahap)"
echo ""
echo -e "${DIM}Dokumentasi lengkap: https://github.com/or-abdillh/agency-website-skillpack${NC}"
echo -e "${GREEN}Siap berkreasi dengan standar visual agensi kelas dunia!${NC}"
echo ""
