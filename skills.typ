// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvSkill, hBar
#let metadata = toml("./metadata.toml")
#let cvSection = cvSection.with(metadata: metadata, highlighted: false)


#cvSection("Skills")

#cvSkill(
  type: [Programming],
    info: [OCaml #hBar() C / C++ #hBar() F\# #hBar() Scala #hBar() Haskell #hBar() Python #hBar() TypeScript],
)

#cvSkill(
    type: [Formal Methods],
    info: [Dafny #hBar() Z3 #hBar() Coq #hBar() Lean #hBar() LLVM]
)
