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
