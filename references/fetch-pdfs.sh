#!/usr/bin/env bash
# MTILT reference package — fetch the open-access PDFs.
#
# Run this on your own machine; the session that generated this package
# sits behind an egress policy that returned 403 for every one of these hosts.
# Everything here is open access: conference proceedings, institutional
# repositories, government documents, or author copies.
#
#   chmod +x fetch-pdfs.sh && ./fetch-pdfs.sh
#
set -u
cd "$(dirname "$0")"
mkdir -p pdf
get() {
  local out="pdf/$1"; shift
  if [ -s "$out" ]; then printf 'skip  %s\n' "$out"; return; fi
  if curl -fsSL --max-time 120 -o "$out" "$1"; then
    printf 'ok    %s\n' "$out"
  else
    printf 'FAIL  %s\n      %s\n' "$out" "$1"; rm -f "$out"
  fi
}

# ── Curricular ───────────────────────────────────────────────────────────
get "NCAS-music-processes.pdf" \
  "https://nationalartsstandards.org/sites/default/files/Music_resources/Definitions,%20EUs%20and%20EQs%20-%20Music%20Standards%20Final.pdf"
get "NCAS-music-at-a-glance.pdf" \
  "https://nationalartsstandards.org/sites/default/files/Music%20at%20a%20Glance%20rev%2010-2-14.pdf"
get "PFEQ-domaine-des-arts-ch8.pdf" \
  "https://www.education.gouv.qc.ca/fileadmin/site_web/documents/PFEQ/chapitre084v2.pdf"
get "PFEQ-musique.pdf" \
  "https://www.education.gouv.qc.ca/fileadmin/site_web/documents/dpse/formation_jeunes/8e-pfeq_musique.pdf"

# ── Professional / higher education ──────────────────────────────────────
get "AEC-Polifonia-learning-outcomes.pdf" \
  "https://aec-music.eu/userfiles/File/aec-polifonia-learning-outcomes-en.pdf"
get "AEC-curriculum-design-handbook.pdf" \
  "https://aec-music.eu/media/2021/05/AEC-Handbook-Curriculum-Design-and-Development-in-Higher-Music-Education-EN.pdf"

# ── Civic / cultural competence ──────────────────────────────────────────
get "CoE-RFCDC-20-competences-handout.pdf" \
  "https://erasmusplus.schule/fileadmin/Dateien/Dokumente/Veranstaltungen/2025/Europ%C3%A4ische_Konferenz/Dokumente/Pr%C3%A4sentationen/Handout_RFCDC_Council_of_Europe.pdf"
get "DARE-RFCDC-blue-lines.pdf" \
  "https://dare-network.eu/wp-content/uploads/2021/03/2021_DARE_BLUE-LINES_RFCDC.pdf"

# ── Critical literature ──────────────────────────────────────────────────
get "Mullen-2019-music-standards.pdf" \
  "https://act.maydaygroup.org/articles/Mullen18_1.pdf"

# ── Representation / notation ────────────────────────────────────────────
get "Skold-2020-notation-of-sound.pdf" \
  "https://www.tenor-conference.org/proceedings/2020/14_Skold_tenor20.pdf"
get "Seeger-1958-prescriptive-descriptive.pdf" \
  "https://www.amherst.edu/system/files/media/1770/Seeger%2520-%2520Prescriptive%2520and%2520Descriptive%2520Music-Writing.pdf"

# ── Timbre ───────────────────────────────────────────────────────────────
get "Thoresen-2007-spectromorphological.pdf" \
  "https://cccm.iem.at/wp-content/uploads/2019/11/thoresen2007.pdf"
get "Thoresen-EMS06-alternate.pdf" \
  "http://www.ems-network.org/IMG/EMS06-LThoresen.pdf"
get "Saitis-Weinzierl-semantics-of-timbre.pdf" \
  "https://comma.eecs.qmul.ac.uk/assets/pdf/Saitis_chap5.pdf"
get "Reymore-2020-timbre-trait-analysis.pdf" \
  "https://timbre2020.mus.auth.gr/assets/papers/8.Reymore.pdf"

# ── Psychometric ─────────────────────────────────────────────────────────
get "GoldMSI-Lima-et-al-validation.pdf" \
  "https://research.gold.ac.uk/id/eprint/24640/1/Limaetal_PortugueseGSMI.pdf"

# ── Heutagogy / self-determined learning ─────────────────────────────────
get "Blaschke-heutagogy-lifelong-learning.pdf" \
  "https://files.eric.ed.gov/fulltext/EJ979639.pdf"
get "Hase-Kenyon-heutagogy-since-2000.pdf" \
  "https://www.sit.ac.nz/Portals/0/upload/documents/sitjar/Heutagogy%20-%20One.pdf"

# ── Soundscape ───────────────────────────────────────────────────────────
get "Schafer-the-soundscape-excerpt.pdf" \
  "https://history2014.doingdh.org/wp-content/uploads/sites/2/2014/07/schafer_the_soundscape.pdf"

echo
echo "Done. Paywalled or book-length items are listed in README.md with links only:"
echo "  Wiggins et al. 1993 · Selfridge-Field 1997 · Green 2008 · Elliott 1995"
echo "  Swanwick 1979 · Small 1998 · Oliveros 2005 · Farnell 2010 · Attali 1977"
echo "  Schafer 1967/1992 · Lind & McKoy 2016 · Blum 2020 · Toussaint 2013"
echo
echo "Your own article is already local:  https://doi.org/10.7202/1060871ar"
