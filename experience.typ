// Imports
#import "@preview/brilliant-cv:2.0.2": cvSection, cvEntry, setAccentColor, awesomeColors, regularColors
#let metadata = toml("./metadata.toml")
#let cvSection = cvSection.with(metadata: metadata, highlighted: false)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Experience")

#{
  let accentColor = setAccentColor(awesomeColors, metadata)
  let beforeEntrySkip = eval(
    metadata.layout.at("before_entry_skip", default: 1pt),
  )
  let beforeEntryDescriptionSkip = eval(
    metadata.layout.at("before_entry_description_skip", default: 1pt),
  )

  let entryA1Style(str) = {
    text(size: 10pt, weight: "bold", str)
  }
  let entryA2Style(str) = {
    align(
      right,
      text(weight: "medium", fill: accentColor, style: "oblique", str),
    )
  }
  let entryB1Style(str) = {
    text(size: 8pt, fill: accentColor, weight: "medium", smallcaps(str))
  }
  let entryB2Style(str) = {
    align(
      right,
      text(size: 8pt, weight: "medium", fill: gray, style: "oblique", str),
    )
  }
  let entryDescriptionStyle(str) = {
    text(
      fill: regularColors.lightgray,
      {
        v(beforeEntryDescriptionSkip)
        str
      },
    )
  }
  let entryTagStyle(str) = {
    align(center, text(size: 8pt, weight: "regular", str))
  }
  let entryTagListStyle(tags) = {
    for tag in tags {
      box(
        inset: (x: 0.25em),
        outset: (y: 0.25em),
        fill: regularColors.subtlegray,
        radius: 3pt,
        entryTagStyle(tag),
      )
      h(5pt)
    }
  }

    let makeTable(..content) = {
        table(
            columns: (0%, 1fr),
            inset: 0pt,
            stroke: none,
            align: horizon,
            column-gutter: 0pt,
            [],
            table(
                columns: (1fr, auto),
                inset: 0pt,
                stroke: none,
                row-gutter: 6pt,
                align: auto,
                ..content
            ),
        )        
    }
    v(beforeEntrySkip)
    makeTable(
        {entryA1Style([Automated Reasoning Group \@Amazon])},
        {entryA2Style([Seattle, WA, USA])}
    )
    makeTable(
        {entryB1Style([Applied Scientist Intern])},
        {entryB2Style([Summer 2023])}
    )
    entryDescriptionStyle(list(
        [Devised and implemented algorithmic optimization for policy evaluation in Identity and Access Management (1 billion calls per second).],
        [Profiled the policy evaluation engine, discovered mutiple unusual patterns, and turned them into optimization opportunities.],
        [Proved the correctness of all these optimizations in Dafny and improved the performance of the policy evaluation engine by about 10%.],
    ))
    makeTable(
        {entryB1Style([Applied Scientist Intern])},
        {entryB2Style([Summer 2022])}
    )
    entryDescriptionStyle(list(
      [Proved the correctness of IP address parsing in Dafny, which is a critical component of Identity and Access Management.],
      [Identified Dafny's limitation in bitvector reasoning and devised an effective workaround for it, enabling sound analysis of IP addresses.],
      [Implemented a Dafny-to-Java transpilation pass to generate idiomatic bitvector manipulation code.],
      [Adopted the Checker Framework to enable various safety checks in the generated Java code, providing future proof to developers.]
    ))

    v(beforeEntrySkip)
    makeTable(
        {entryA1Style([Purdue University])},
        {entryA2Style([West Lafayette, IN, USA])}
    )
    makeTable(
        {entryB1Style([Graduate Research Assistant])},
        {entryB2Style([2023 - now])}
    )
    entryDescriptionStyle(list([Under the supervision of Dr. Suresh Jagannathan.]))
    makeTable(
        {entryB1Style([Graduate Research Assistant])},
        {entryB2Style([2020 - 2023])}
    )
    entryDescriptionStyle(list([Under the supervision of Dr. Roopsha Samanta.]))
}

// #cvEntry(
//   title: [Applied Scientist Intern],
//     society: [Automated Reasoning Group \@Amazon, Inc],
//   // logo: image("../src/logos/xyz_corp.png"),
//   date: [Summer 2023],
//   location: [Seattle, WA, USA],
//   description: list(
//       [Devised and implemented algorithmic optimization for policy evaluation in Identity and Access Management (1 billion calls per second).],
//       [Profiled the policy evaluation engine, discovered mutiple unusual patterns, and turned them into optimization opportunities.],
//       [Proved the correctness of all these optimizations in Dafny and improved the performance of the policy evaluation engine by about 10%.],
//   ),
//   // tags: ("Dafny", "Java", "Scala", "TypeScript"),
// )

// #cvEntry(
//   title: [Applied Scientist Intern],
//     society: [Automated Reasoning Group \@Amazon, Inc],
//   // logo: image("../src/logos/xyz_corp.png"),
//   date: [Summer 2022],
//   location: [Seattle, WA, USA],
//   description: list(
//       [Proved the correctness of IP address parsing in Dafny, which is a critical component of Identity and Access Management.],
//       [Identified Dafny's limitation in bitvector reasoning and devised an effective workaround for it, enabling sound analysis of IP addresses.],
//       [Implemented a Dafny-to-Java transpilation pass to generate idiomatic bitvector manipulation code.],
//       [Adopted the Checker Framework to enable various safety checks in the generated Java code, providing future proof to developers.]
//   ),
//   // tags: ("Dafny", "F#", "Java"),
// )

// #cvEntry(
//     title: [Graduate Research Assistant],
//     society: [Purdue University],
//     date: [2023 - now],
//     location: [West Lafayette, IN, USA],
//     description: [Under the supervision of Dr. Suresh Jagannathan.],
// )

// #cvEntry(
//     title: [Graduate Research Assistant],
//     society: [Purdue University],
//     date: [2020 - 2023],
//     location: [West Lafayette, IN, USA],
//     description: [Under the supervision of Dr. Roopsha Samanta.],
// )
