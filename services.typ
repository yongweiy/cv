// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvEntry
#let metadata = toml("./metadata.toml")
#let cvSection = cvSection.with(metadata: metadata, highlighted: false)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Services")

#list(
    [PLDI 2024 Artifact Evaluation Committee]
)
