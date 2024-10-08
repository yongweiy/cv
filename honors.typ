// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvEntry
#let metadata = toml("./metadata.toml")
#let cvSection = cvSection.with(metadata: metadata, highlighted: false)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Honors and Awards")

#list(
    [Merit Recognition Award 2024, Purdue University],
    [*OOPSLA 2023 Distinguished Paper Award*, ACM SIGPLAN],
    [*PLDI 2023 Distinguished Paper Award*, ACM SIGPLAN],
    [Honorable Mention, Mathematical Contest in Modeling 2017],
)
