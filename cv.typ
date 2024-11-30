// Imports
#import "@preview/brilliant-cv:2.0.2": cv
#let metadata = toml("./metadata.toml")
#let importModules(modules) = {
  for module in modules {
    include {
      module + ".typ"
    }
  }
}

#show: cv.with(
  metadata, 
  profilePhoto: image("./src/avatar.png")
)
#importModules((
  "education",
  "experience",
  "honors",
    "publications",
    "services",
  "skills",
))
