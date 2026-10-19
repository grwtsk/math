import FormalResearch.PositiveAtlas.FiniteAtlasTransport
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
set_option pp.maxSteps 1000000
run_cmd do
  let env ← getEnv
  let modules := env.allImportedModuleNames
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if modules[idx]! == `FormalResearch.PositiveAtlas.FiniteAtlasTransport then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  for n in names.filter (fun n => (env.find? n).isNone) do
    unless (n.toString.splitOn ".").any (fun p => p.startsWith "_") do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axioms ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axioms}"
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} declarations, including generated/private declarations"
