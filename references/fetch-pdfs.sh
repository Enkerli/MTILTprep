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
    # some sites answer a consent/landing page with HTTP 200 — check we got a PDF
    if [ "$(file -b --mime-type "$out")" = "application/pdf" ]; then
      printf 'ok    %s\n' "$out"
    else
      printf 'NOT A PDF  %s  (got %s) — fetch by hand:\n           %s\n' \
        "$out" "$(file -b --mime-type "$out")" "$1"
      rm -f "$out"
    fi
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

# ── Open access found in the 2026-09-13 audit ────────────────────────────
get "Mullensiefen-2014-GoldMSI.pdf" \
  "https://journals.plos.org/plosone/article/file?id=10.1371/journal.pone.0089642&type=printable"
get "Wallmark-2019-semantic-crosstalk.pdf" \
  "https://journals.sagepub.com/doi/pdf/10.1177/2059204319846617"
get "Enkerli-2019-son-propre-son.pdf" \
  "https://www.erudit.org/en/journals/as/2019-v43-n1-as04933/1060871ar.pdf"

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

# ── Web pages worth archiving ────────────────────────────────────────────
# These are pages, not documents. curl gets the HTML but not the assets.
# For real single-file captures use Zotero's own snapshot (it does this well
# and keeps them beside the item) or `monolith` / SingleFile if you prefer
# files on disk. Left here as a floor, not a recommendation.
mkdir -p archive
arc() {
  local out="archive/$1"; shift
  if [ -s "$out" ]; then printf 'skip  %s\n' "$out"; return; fi
  curl -fsSL --max-time 60 -o "$out" "$1" && printf 'ok    %s\n' "$out" \
    || { printf 'FAIL  %s\n' "$out"; rm -f "$out"; }
}
arc "scott-tamildaa.html"        "http://home.pacifier.com/~ascott/they/tamildaa.htm"
arc "amta-competencies.html"     "https://www.musictherapy.org/about/competencies/"
arc "deep-listening-rpi.html"    "https://www.deeplistening.rpi.edu/deep-listening/"
arc "nime.html"                  "https://www.nime.org/"
arc "tenor-proceedings.html"     "https://www.tenor-conference.org/proceedings.html"
arc "gold-msi-goldsmiths.html"   "https://www.gold.ac.uk/music-mind-brain/gold-msi/"
arc "komus-bremen.html"          "https://www.uni-bremen.de/institut-fuer-musikwissenschaft-und-musikpaedagogik/forschung/musikpaedagogik/abgeschlossene-forschungsprojekte/komus-kompetenzmodell-im-fach-musik"
arc "recit-arts-musique.html"    "https://recitarts.ca/fr/musique/competences/"

echo
echo "Archives in archive/ — gitignored, like pdf/."

# ── pitch-ontology: open items with direct URLs ──────────────────────────
# Generated from references/works-pitch-ontology.bib. DOI-only items are
# handled by tools/fetch-open-access.sh, which resolves them via OpenAlex.

arc "po-arxiv-2025-iranian-pitch-histograms.html" \
  "https://arxiv.org/abs/2503.11956"
arc "po-beyond-1932-project.html" \
  "https://1932muscon.kcl.ac.uk/"
arc "po-bozkurt-2025-ord-cc32.html" \
  "https://arxiv.org/abs/2506.14503"
arc "po-cahiers-accordeon-diatonique.html" \
  "https://journals.openedition.org/ethnomusicologie/2686"
arc "po-cahiers-ethnomusicologie.html" \
  "https://journals.openedition.org/ethnomusicologie/"
arc "po-cimcim-resources.html" \
  "https://icom-music.mini.icom.museum/resources/"
arc "po-compmusic-project.html" \
  "https://compmusic.upf.edu/"
arc "po-contrechamps-afrique-centrale.html" \
  "https://books.openedition.org/contrechamps/1956"
arc "po-empirical-musicology-review.html" \
  "https://emusicology.org/index.php/EMR/"
arc "po-furniss-1993-systeme-pentatonique.html" \
  "https://www.persee.fr/doc/jafr\_0399-0346\_1993\_num\_63\_2\_2389\_t1\_0133\_0000\_1"
get "po-knight-hornbostel-sachs-2015.pdf" \
  "https://www2.oberlin.edu/faculty/rknight/Organology/KnightRev2015.pdf"
arc "po-lhomme-2004-experimenter-ethnomusicologie.html" \
  "https://journals.openedition.org/lhomme/24920"
arc "po-mbira-org-tuning.html" \
  "https://mbira.org/learn-mbira/how-to-tune-your-mbira/"
arc "po-mcbride-passmore-tlusty-2023.html" \
  "https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0284851"
arc "po-mimo.html" \
  "http://www.mimo-international.com/"
get "po-mimo-hornbostel-sachs-2011.pdf" \
  "http://www.mimo-international.com/documents/hornbostel\%20sachs.pdf"
arc "po-papaioannou-2026-cross-cultural-similarity.html" \
  "https://transactions.ismir.net/articles/10.5334/tismir.341"
arc "po-plos-2017-outliers-world-music.html" \
  "https://journals.plos.org/plosone/article?id=10.1371\%2Fjournal.pone.0189399"
arc "po-polak-2010-rhythmic-feel-as-meter.html" \
  "https://mtosmt.org/issues/mto.10.16.4/mto.10.16.4.polak.html"
arc "po-polak-london-2014-timing-meter-mande.html" \
  "https://mtosmt.org/issues/mto.14.20.1/mto.14.20.1.polak-london.html"
arc "po-qdl-cairo-congress-microtones.html" \
  "https://www.qdl.qa/en/microtones-piano-and-muhammad-al-qubanshi-\%E2\%80\%93-first-congress-arabic-music-and-early-recordings-iraq"
arc "po-saraga-datasets.html" \
  "https://repositori.upf.edu/items/d4721c01-e38d-490b-b2d1-889f6dcd211d"
arc "po-scala-scl-format.html" \
  "https://www.huygens-fokker.org/scala/scl\_format.html"
arc "po-temperley-ren-duan-2017-blue-notes-rock.html" \
  "https://mtosmt.org/issues/mto.17.23.1/mto.17.23.1.temperley.html"
arc "po-tismir-2023-carnatic-vocal-pitch.html" \
  "https://transactions.ismir.net/articles/10.5334/tismir.137"
arc "po-transposition-journal.html" \
  "https://journals.openedition.org/transposition/"
arc "po-unesco-ich-convention-2003.html" \
  "https://ich.unesco.org/en/convention"
