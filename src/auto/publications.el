;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "publications"
 (lambda ()
   (LaTeX-add-bibitems
    "chakarovFormallyVerifiedCloudscale2025"
    "weiConsolidatingSmartContracts2024"
    "yuanDerivativeGuidedSymbolicExecution2025"
    "yuanLivePatternMatching2023"
    "yuanTraceGuidedInductiveSynthesis2023")
   (LaTeX-add-environments
    '("btHighlight" LaTeX-env-args ["argument"] 0)))
 '(or :bibtex :latex))

