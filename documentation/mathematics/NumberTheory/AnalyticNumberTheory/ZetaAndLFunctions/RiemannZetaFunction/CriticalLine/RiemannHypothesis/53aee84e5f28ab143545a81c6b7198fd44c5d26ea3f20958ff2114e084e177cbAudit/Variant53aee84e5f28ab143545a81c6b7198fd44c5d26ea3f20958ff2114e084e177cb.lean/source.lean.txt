import FormalResearch.RiemannHypothesis.SourceMangoldtRieszQuotientMean
import Lean.Util.CollectAxioms

open Lean Elab Command

run_elab do
  let env ← getEnv
  let targets := #[
    `FormalResearch.RiemannHypothesis.SourceMangoldtRieszReconstruction,
    `FormalResearch.RiemannHypothesis.SourceMangoldtRieszQuotientMean]
  let mut count : Nat := 0
  for (name, info) in env.constants.toList do
    if let some idx := env.getModuleIdxFor? name then
      if targets.contains env.header.modules[idx]!.module then
        let axioms ← collectAxioms name
        if axioms.contains `sorryAx then
          throwError "Admitted dependency in {name}"
        let allowed := #[`propext, `Classical.choice, `Quot.sound]
        if axioms.any (fun ax => !allowed.contains ax) then
          throwError "Unexpected axiom dependency in {name}: {axioms}"
        if info.isAxiom then
          throwError "New axiom declaration: {name}"
        logInfo m!"DECLARATION {name}\nTYPE {info.type}\nAXIOMS {axioms}"
        count := count + 1
  if count < 33 then
    throwError "Incomplete module declaration audit: only {count} declarations found"
  logInfo m!"AUDITED {count} declarations from both new modules"
