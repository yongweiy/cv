// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvPublication
#let metadata = toml("./metadata.toml")
#let cvSection = cvSection.with(metadata: metadata, highlighted: false)


#cvSection("Publications")


#let cvPublication(bib: "", keyList: list(), refFull: true, authorName: "Yongwei Yuan") = {
    let publicationStyle(str) = {
        show authorName: strong
    text(str)
  }
  show bibliography: it => publicationStyle(it)
  set bibliography(title: none, full: refFull)
  bib
}

#cvPublication(
    bib: bibliography("./src/publications.bib", style: "./association-for-computing-machinery.csl"),
    // refStyle: "./cv.csl",
    // refStyle: "association-for-computing-machinery",
    refFull: true,
)
