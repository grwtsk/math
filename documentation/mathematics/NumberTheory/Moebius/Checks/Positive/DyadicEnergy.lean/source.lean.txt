import GRWTSK.NumberTheory.Moebius.DyadicEnergy
import GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation
import Lean
open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open scoped BigOperators

example (C : ℝ) (r : ℕ) : RecordingScaleBound C r ↔
    ∀ T : ℝ, 1 ≤ T → recordingInnovation T ≤
      ((2:ℝ)^(r+1)-1)*pickupEnergy T+C*(2:ℝ)^r*T^r := Iff.rfl
example {C : ℝ} {r : ℕ} (hC : 0 ≤ C) (h : RecordingScaleBound C r) :
    _root_.RiemannHypothesis := riemannHypothesis_of_recordingScaleBound hC h
example {T : ℝ} (hT : 0 ≤ T) : pickupEnergy (2*T) = pickupEnergy T+recordingInnovation T :=
  pickupEnergy_double_eq hT
example {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ 2*T) (hT : 0 ≤ T) :
    wholePickup u = primeNoteCascade (pickupPrimes T) u-recordingEcho T u :=
  pickup_eq_recording_core_sub_echo hu huT hT
example {T u : ℝ} (hu : u ≤ 2*T) : recordingEcho T u =
    ∑ p ∈ recordingPrimeBlock T, (Real.sqrt p)⁻¹ * causalShift (Real.log p) wholePickup u :=
  recordingEcho_eq_actual hu
example : noteCorrelation (primeNoteCascade (primePrefix 11)) (Real.log 11) (Real.log 12) < 0 :=
  primePrefix_eleven_negative_correlation
example {P B : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime)
    (hd : Disjoint P B) {T u : ℝ} (huT : u ≤ T)
    (hpair : ∀ p ∈ B, ∀ q ∈ B, p ≠ q → T ≤ Real.log p+Real.log q) :
    primeNoteCascade (P ∪ B) u = primeNoteCascade P u-primeBlockEcho P B u :=
  cascade_union_eq_sub_echo hP hB hd huT hpair
example {A B q : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B) (hq : 0 ≤ q)
    (h : PrimePrefixReverberation A B q) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_prefix_reverberation hA hB hq h
example : (∃ C : ℝ, ∃ r : ℕ, 0 ≤ C ∧ RecordingScaleBound C r) ↔ PickupCrossPoly :=
  exists_recordingScaleBound_iff_p04

elab "#audit_ccc_recording_scale" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if #[`GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy,
          `GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth,
          `GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation,
          `GRWTSK.NumberTheory.Moebius.DyadicEnergy].contains owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty recording source family"
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
    let owner := moduleNames[(env.getModuleIdxFor? n).get!]!
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | _ => "generated"
    let entry := Json.mkObj [
      ("module", toJson owner.toString), ("name", toJson n.toString),
      ("kind", toJson kind), ("type", toJson type.pretty),
      ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"RECORDING_DECL::{entry.compress}"
  logInfo m!"RECORDING_COUNT::{declarations.length}"

#audit_ccc_recording_scale
