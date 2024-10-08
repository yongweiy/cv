// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvEntry
#let metadata = toml("./metadata.toml")
#let cvSection = cvSection.with(metadata: metadata, highlighted: false)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Experience")

#cvEntry(
  title: [Applied Scientist Intern],
    society: [Automated Reasoning Group \@Amazon, Inc],
  // logo: image("../src/logos/xyz_corp.png"),
  date: [Summer 2023],
  location: [Seattle, WA, USA],
  description: list(
      [Devised and implemented algorithmic optimization for policy evaluation in Identity and Access Management (1 billion calls per second).],
      [Profiled the policy evaluation engine, discovered mutiple unusual patterns, and turned them into optimization opportunities.],
      [Proved the correctness of all these optimizations in Dafny and improved the performance of the policy evaluation engine by about 10%.],
  ),
  // tags: ("Dafny", "Java", "Scala", "TypeScript"),
)

#cvEntry(
  title: [Applied Scientist Intern],
    society: [Automated Reasoning Group \@Amazon, Inc],
  // logo: image("../src/logos/xyz_corp.png"),
  date: [Summer 2022],
  location: [Seattle, WA, USA],
  description: list(
      [Proved the correctness of IP address parsing in Dafny, which is a critical component of Identity and Access Management.],
      [Identified Dafny's limitation in bitvector reasoning and devised an effective workaround for it, enabling sound analysis of IP addresses.],
      [Implemented a Dafny-to-Java transpilation pass to generate idiomatic bitvector manipulation code.],
      [Adopted the Checker Framework to enable various safety checks in the generated Java code, providing future proof to developers.]
  ),
  // tags: ("Dafny", "F#", "Java"),
)

#cvEntry(
    title: [Graduate Research Assistant],
    society: [Purdue University],
    date: [2023 - now],
    location: [West Lafayette, IN, USA],
    description: [Under the supervision of Dr. Suresh Jagannathan.],
)

#cvEntry(
    title: [Graduate Research Assistant],
    society: [Purdue University],
    date: [2020 - 2023],
    location: [West Lafayette, IN, USA],
    description: [Under the supervision of Dr. Roopsha Samanta.],
)
