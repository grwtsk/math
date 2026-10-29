# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Checks.Positive.FinitePowerSum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9911860f608dd4541bd8d93aeb168c97379c7c6` · SHA-256 `b06d5c2308e828fefc4802cb5cbc5625fda7848207ec76af3a5a71c41b18a4c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum
import Lean

open Lean Elab Command
open GRWTSK.Analysis.Asymptotics.FinitePowerSum

example {β : ℝ} (hβ0 : 0 < β) (hβ1 : β ≤ 1) (N : ℕ) :
    (∑ k ∈ Finset.Icc 1 N, (k : ℝ) ^ (β - 1)) ≤
      (N : ℝ) ^ β / β :=
  sum_Icc_rpow_sub_one_le hβ0 hβ1 N

elab "#audit_finite_power_sum" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.Analysis.Asymptotics.FinitePowerSum
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty finite-power-sum source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"FINITE_POWER_SUM_COUNT::{declarations.length}"

#audit_finite_power_sum
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae6cc09a946c3e52439b10bba993057ec3dbb736b752df3db359c32321f47f25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Checks/Positive/FinitePowerSum__SourceOccurrencea2d05a01c43858e6eaa1e786.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
