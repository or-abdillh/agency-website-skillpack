#!/usr/bin/env bash
# ==============================================================================
# Agency Website Skill Pack — Terminal Pipeline Status Diagnoser
# ==============================================================================

# ANSI Color Codes
BOLD="\033[1m"
GREEN="\033[1;32m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
GRAY="\033[0;90m"
WHITE="\033[1;37m"
MAGENTA="\033[1;35m"
BLUE="\033[1;34m"
RESET="\033[0m"

echo ""
echo -e "${MAGENTA}======================================================================${RESET}"
echo -e "${BOLD}${WHITE}   🧭 AGENCY WEBSITE SKILL PACK — TERMINAL WORKFLOW STATUS            ${RESET}"
echo -e "${GRAY}   Protected by 5-Pillar Anti-Slop Quality Armor (WCAG + Dose Caps)   ${RESET}"
echo -e "${MAGENTA}======================================================================${RESET}"
echo ""

# Pipeline Items & Status Check
NEXT_STEP=""
NEXT_DESC=""
NEXT_CMD=""

check_file() {
    local file="$1"
    if [ -f "$file" ]; then
        return 0
    else
        return 1
    fi
}

print_item() {
    local step_num="$1"
    local name="$2"
    local file="$3"
    local cmd="$4"
    local desc="$5"
    local armor="$6"
    local is_optional="${7:-false}"

    if check_file "$file"; then
        echo -e "  ${GREEN}[✓] Step ${step_num}:${RESET} ${WHITE}${name}${RESET} ${GRAY}(${file})${RESET}"
    else
        if [ -z "$NEXT_STEP" ] && [ "$is_optional" = "false" ]; then
            NEXT_STEP="Step ${step_num}: ${name}"
            NEXT_CMD="${cmd}"
            NEXT_DESC="${desc}"
            echo -e "  ${CYAN}[→] Step ${step_num}:${RESET} ${BOLD}${WHITE}${name}${RESET} ${YELLOW}<- NEXT ACTION${RESET} ${GRAY}(perintah: ${cmd})${RESET}"
            if [ -n "$armor" ]; then
                echo -e "      ${BLUE}↳ Quality Armor:${RESET} ${GRAY}${armor}${RESET}"
            fi
        else
            if [ "$is_optional" = "true" ]; then
                echo -e "  ${GRAY}[ ] (Opsional) Step ${step_num}: ${name} (${cmd})${RESET}"
            else
                echo -e "  ${GRAY}[ ] Step ${step_num}: ${name} (${cmd})${RESET}"
            fi
        fi
    fi
}

echo -e "${BOLD}--- Fase 1: Discovery & Strategy (docs/) ---${RESET}"

print_item "1" "Master Data Collection" "docs/00-master-data.md" "/collect-lead-master-data" "Mengumpulkan profil bisnis, ulasan Google Maps, dan katalog produk lokal." "Data riil Google Maps, no sintetis"
print_item "2" "Visual & Color Extraction" "docs/01-design-direction.md" "/extract-design-direction" "Mengekstrak visual moodboard, palet warna, dan estetika dari logo & feed IG." "antislop-human (WCAG AA via contrast-check.py) + antislop-ui"
print_item "3" "Brand Identity & Positioning" "docs/02-brand-identity.md" "/generate-brand-identity" "Menyusun positioning brand, headline hook emosional, dan persona pelanggan." "antislop-copywriting (no AI buzzwords, no em-dash, kalimat aktif)"
print_item "4" "Website Concept & Art Direction" "docs/03-website-concept.md" "/generate-website-concept" "Menyusun blueprint hero showstopper anti-slop, storytelling, dan ritme section." "frontend-design (subject grounding) + antislop-ui (glass & glow maks 1-2)"
print_item "4b" "UI Reference Harmonization" "docs/03-website-concept.md" "/harmonize-design-reference" "Menyelaraskan screenshot referensi UI ke website concept secara aman (PLAN Mode)." "PLAN Mode Traffic Light" "true"
print_item "5" "Design System (Stakeholder & Technical)" "docs/design.md" "/generate-design-system" "Menyusun docs/04-design-system.md dan spesifikasi teknikal docs/design.md." "antislop-ui (dose caps) + antislop-layoutmobile (fluid clamp)"
print_item "6" "Product Requirements Document (PRD)" "docs/05-prd.md" "/generate-prd" "Menyusun tabel MoSCoW, user journey, dan acceptance criteria landing page." "antislop-copywriting (konkret & no jargon)"
print_item "7" "Strategic Audit & Differentiation" "docs/06-strategic-audit.md" "/audit-and-enhance-docs" "Mengaudit diferensiasi visual dan menginjeksi fitur interaktif premium." "Authentic trust architecture"

echo ""
echo -e "${BOLD}--- Fase 2: Architecture & Engineering Lock ---${RESET}"

ARCH_FILE=".agents/rules/engineering-architecture.md"
if check_file "$ARCH_FILE"; then
    echo -e "  ${GREEN}[✓] Phase A: Engineering Architecture Locked${RESET} ${GRAY}(${ARCH_FILE})${RESET}"
else
    if [ -z "$NEXT_STEP" ]; then
        NEXT_STEP="Phase A: Engineering Architecture Lock"
        NEXT_CMD="/init-engineering-rules"
        NEXT_DESC="Mengunci framework dan konvensi koding ketat di .agents/rules/engineering-architecture.md."
        echo -e "  ${CYAN}[→] Phase A: Engineering Architecture Lock${RESET} ${YELLOW}<- NEXT ACTION${RESET} ${GRAY}(perintah: /init-engineering-rules)${RESET}"
    else
        echo -e "  ${GRAY}[ ] Phase A: Engineering Architecture Lock (/init-engineering-rules)${RESET}"
    fi
fi

echo ""
echo -e "${BOLD}--- Fase 3: Production Implementation & Visual QA ---${RESET}"

# Check for build artifacts / source page
HAS_CODE=false
for src in "app/pages/index.vue" "src/App.tsx" "src/App.vue" "src/pages/index.tsx" "app/page.tsx" "src/routes/+page.svelte"; do
    if [ -f "$src" ]; then
        HAS_CODE=true
        break
    fi
done

if [ "$HAS_CODE" = true ]; then
    echo -e "  ${GREEN}[✓] Phase B: Landing Page Built & Implemented${RESET}"
else
    if [ -z "$NEXT_STEP" ]; then
        NEXT_STEP="Phase B: Direct Build & Playwright QA"
        NEXT_CMD="/direct-build"
        NEXT_DESC="Eksekusi koding langsung + Playwright Visual QA (audit zero overflow leak & contrast)."
        echo -e "  ${CYAN}[→] Phase B: Direct Build & Playwright QA${RESET} ${YELLOW}<- NEXT ACTION${RESET} ${GRAY}(perintah: /direct-build)${RESET}"
        echo -e "      ${BLUE}↳ Quality Armor:${RESET} ${GRAY}5-Pillar Full Compliance + Playwright Realtime Visual Gate${RESET}"
    else
        echo -e "  ${GRAY}[ ] Phase B: Direct Build & Playwright QA (/direct-build)${RESET}"
    fi
fi

echo ""
echo -e "${MAGENTA}----------------------------------------------------------------------${RESET}"

if [ -n "$NEXT_STEP" ]; then
    echo -e "${BOLD}${CYAN}⚡ REKOMENDASI EKSEKUSI:${RESET}"
    echo -e "   ${BOLD}${WHITE}Opsi A (Full Auto):${RESET} Ketik ${YELLOW}/build-site${RESET} ${GRAY}(eksekusi end-to-end tanpa henti)${RESET}"
    echo -e "   ${BOLD}${WHITE}Opsi B (Modular)  :${RESET} Target: ${WHITE}${NEXT_STEP}${RESET}"
    echo -e "                       Perintah AI : ${YELLOW}${NEXT_CMD}${RESET}"
    echo -e "                       Keterangan  : ${GRAY}${NEXT_DESC}${RESET}"
else
    echo -e "${BOLD}${GREEN}🎉 SELURUH PIPELINE TELAH SELESAI!${RESET}"
    echo -e "   Landing page telah dibangun dan siap untuk validasi produksi/deployment."
fi

echo -e "${MAGENTA}======================================================================${RESET}"
echo ""
