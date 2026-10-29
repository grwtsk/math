# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.VerticalLineCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e804f70e17e8a8253794b2e5f286a1a1dfddd182` · SHA-256 `f27ac1796085b7b83fe75a081874542a1676cefbd374693f7d46d206320da78e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion

example : CompletedVerticalLineUniform ↔ PickupWeightedEnergyAll :=
  completedVerticalLineUniform_iff_weightedEnergyAll

example : CompletedVerticalLineUniform ↔ pickupEnergyAbscissa = 0 :=
  completedVerticalLineUniform_iff_energyAbscissa_zero

example {σ : ℝ} (hσ : 1 / 2 < σ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T → verticalLineMass σ T ≤ C :=
  verticalLineMass_uniform_above_half hσ

example (h : CompletedVerticalLineUniform) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_completedVerticalLineUniform h

elab "#audit_vertical_line_criterion" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty vertical-line criterion source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"VERTICAL_LINE_CRITERION_COUNT::{declarations.length}"

#audit_vertical_line_criterion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29c6649276290f10435eb6e25de23373c0a6783bdd817f85535be48bf61b1929 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/Positive/VerticalLineCriterion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
