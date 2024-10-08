// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvEntry, hBar
#let metadata = toml("./metadata.toml")
#let cvSection = cvSection.with(metadata: metadata, highlighted: false)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Education")

#cvEntry(
    title: [Ph.D. in Computer Science],
    society: [Purdue University],
    date: [2020 - now (expected Aug 2025)],
    location: [West Lafayette, IN, USA],
    // logo: image("../src/logos/ucla.png"),
    description: list(
        [Thesis: Trace-Guided Reasoning of Functional Programs (tentative)],
        [Selected Courses: Programming Languages #hBar() Compiling and Programming Systems #hBar() Neurosymbolic Program Synthesis],
    ),
)

#cvEntry(
    title: [B.S. in Computer Science],
  society: [University of Michigan],
  date: [2018 - 2020],
  location: [Ann Arbor, MI, USA],
  // logo: image("../src/logos/ucla.png"),
  description: list(
    // [Thesis: Exploring the Use of Machine Learning Algorithms for Predicting Stock Prices: A Comparative Study of Regression and Time-Series Models],
    [Selected Courses: Operating System #hBar() Introduction to Machine Learning #hBar() Conversational Artificial Intelligence],
  ),
)

#cvEntry(
    title: [B.S. in Electrical and Computer Engineering],
    society: [Shanghai Jiao Tong University],
    date: [2016 - 2020],
    location: [Shanghai, China],
    description: list(),
)

// Local Variables:
// tp--master-file: "/home/slark/Desktop/brilliant-cv/cv.typ"
// End:
