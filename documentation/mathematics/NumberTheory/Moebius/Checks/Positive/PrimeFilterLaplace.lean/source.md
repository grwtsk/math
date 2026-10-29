# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.PrimeFilterLaplace

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8e33cac2901aa64ec406b110001f81c77e4cee4` · SHA-256 `b868bc78c1edf189fedcf9d428e7653cbd7d70526cf78d75b44892d7b3ca0273`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace
import Lean
open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC

example (f : ℝ → ℝ) (z : ℂ) (T : ℝ) : noteWindowLaplace f z T =
    ∫ u in (0:ℝ)..max 0 T, Complex.exp (-z*u)*(f u : ℂ) := rfl
example {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0) (z : ℂ)
    {p : ℕ} (hp : p.Prime) {T : ℝ} (hpT : Real.log p ≤ T) :
    noteWindowLaplace (primeNoteFilter p f) z T =
      (1-primeLaplaceWeight p z)*noteWindowLaplace f z T +
        primeLaplaceWeight p z*noteLaplaceTail f z (Real.log p) T :=
  noteWindowLaplace_primeFilter hf hf0 z hp hpT
example (z : ℂ) {T : ℝ} (hT : 0 ≤ T) :
    noteWindowLaplace wholePickup z T = noteWindowLaplace (primeNoteCascade (pickupPrimes T)) z T :=
  noteWindowLaplace_actual_cascade z hT
example : noteWindowLaplace (primeNoteCascade {2}) 1 (Real.log 2) ≠
    (1-primeLaplaceWeight 2 1)*noteWindowLaplace baseNote 1 (Real.log 2) :=
  first_prime_window_not_multiplier

elab "#audit_ccc_prime_window" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if owner == `GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty finite-window source family"
  for (n, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {n}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {n}"
    | _ => pure ()
    let axioms ← collectAxioms n
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | _ => "generated"
    let entry := Json.mkObj [
      ("module", toJson "GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace"),
      ("name", toJson n.toString), ("kind", toJson kind),
      ("type", toJson type.pretty), ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"PRIME_WINDOW_DECL::{entry.compress}"
  logInfo m!"PRIME_WINDOW_COUNT::{declarations.length}"

#audit_ccc_prime_window
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c665ed63f01920bf58e80f52794cb087de6e52b2791d1ca68a7c3424ca05821 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/Positive/PrimeFilterLaplace.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
