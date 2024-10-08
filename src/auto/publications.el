;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "publications"
 (lambda ()
   (LaTeX-add-bibitems
    "weiConsolidatingSmartContracts2024"
    "yuanLivePatternMatching2023a"
    "yuanTraceGuidedInductiveSynthesis2023a"))
 '(or :bibtex :latex))

