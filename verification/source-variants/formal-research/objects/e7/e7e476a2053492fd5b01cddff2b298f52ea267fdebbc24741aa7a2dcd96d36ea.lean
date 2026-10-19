import CordTheory

open Cord

/-- A small interpreted receipt that the formalization import surface elaborated. -/
def main : IO Unit := do
  IO.println s!"{theoryIdentifier} {theoryVersion}"
  IO.println s!"{cpccTheoryIdentifier} {cpccTheoryVersion}"
  IO.println s!"{nsrdTheoryIdentifier} {nsrdTheoryVersion}"
  IO.println s!"{interpreterExactnessTheoryIdentifier} {interpreterExactnessTheoryVersion}"
  IO.println s!"{globalReflectionTheoryIdentifier} {globalReflectionTheoryVersion}"
  IO.println s!"{repositoryProbeCoverageProfile} {repositoryProbeCoverageTheoryVersion}"
  IO.println "CORD-THEORY-1 Lean formalization loaded."
  IO.println "CPCC-CST-2 bounded coordination formalization loaded."
  IO.println "CORD-NSRD-1 neural-symbolic reflective construction loaded."
  IO.println "CORD-INTERPRETER-EXACTNESS-1@0.2.0 causal reification exactness formalization loaded."
  IO.println "CORD-GLOBAL-REFLECTION-1@0.3.0-rc.3 finite formalization loaded."
  IO.println "CORD-ONTOLOGY-REPOSITORY-PROBE-COVERAGE-1@1.0.0 finite coverage formalization loaded."
  IO.println "Unbounded or self-authorizing reflection claimed: false"
  IO.println "OI-4 claimed: false"
  IO.println "OI-5 claimed: false"
