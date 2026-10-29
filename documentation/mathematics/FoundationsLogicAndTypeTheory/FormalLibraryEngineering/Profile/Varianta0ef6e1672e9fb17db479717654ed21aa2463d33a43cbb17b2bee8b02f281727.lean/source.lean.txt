import Mathematics.Projects.Profile

/-! # Mathlib sovereign-source profile -/

namespace Mathematics.Projects.Mathlib

/-- Mathlib-specific complete-snapshot requirements. -/
structure Profile where
  base : Projects.ProjectProfile
  rootModuleRequired : Bool := true
  tacticsRequired : Bool := true
  metaprogrammingRequired : Bool := true
  documentationRequired : Bool := true
  testsRequired : Bool := true
  lintersRequired : Bool := true
  generatorsRequired : Bool := true
  workflowsRequired : Bool := true
  dependencyStateRequired : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Mathlib
