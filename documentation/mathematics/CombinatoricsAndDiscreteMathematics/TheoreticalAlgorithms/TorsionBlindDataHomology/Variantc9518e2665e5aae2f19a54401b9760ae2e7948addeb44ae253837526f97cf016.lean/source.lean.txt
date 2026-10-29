-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TorsionFactor.Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TorsionFactor.Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641","mathematical_subject":"Computation.DataStructures","original_sha256":"3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/TorsionBlindDataHomology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.ListTools

/-!
# Torsion-Blind Data Homology

This module corrects the proposed "torsion-blindness" theory and rebuilds it
in the same certificate-gated style as the Boolean cube library.

Corrected mathematical content:

* Field-coefficient homology is not simply "torsion erasure".  Over `F_p`,
  the universal coefficient theorem sees p-primary torsion only as vector-space
  dimensions, and imports p-primary torsion from the previous degree through the
  Tor term.

* The exponent data of a cyclic factor `Z / p^e Z` is flattened to one
  `F_p`-dimension.  Torsion at primes `q ≠ p` is invisible to `F_p`.

* Arithmetic torsion of an elliptic curve, such as `E(Q)_tors`, is not the same
  object as topological homology torsion of a sampled space.  Field-coefficient
  TDA barcodes can at best observe topological field homology of the sampled
  complex.  They do not determine the Mordell-Weil torsion subgroup without
  extra arithmetic structure.

* The right impossibility statement is non-identifiability from the observation
  channel, not Turing undecidability.  If two arithmetic models have the same
  field-homology observation but different rational torsion, then no algorithm
  using only that observation can recover both torsion groups correctly.

What is formalized here:

* a finitely generated abelian homology profile by rank plus prime-power torsion
  factors;
* a UCT-style field observation `dim H_n(-; F_p) = rank + p-torsion_n +
  p-torsion_{n-1}`;
* the theorem that field observations are invariant under forgetting torsion
  exponents;
* a formal collision theorem: equal field observations and different arithmetic
  torsion rule out universal recovery from field TDA alone.

Certificate-gated, not proved here:

* actual simplicial homology, persistent modules, Smith normal form, elliptic
  curves, Mordell-Weil, Mazur, or computability theory.  These are represented
  by typed interfaces and collision certificates.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TorsionFactor.Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641

namespace Boolean
namespace Cube
namespace TorsionBlindDataHomology

/-- A formal prime-power torsion factor, intended as `Z / prime^exponent Z`. -/
structure TorsionFactor where
  prime : Nat
  exponent : Nat
deriving Repr, DecidableEq

namespace TorsionFactor

/-- Forget the exponent of a prime-power torsion factor. -/
def forgetExponent (f : TorsionFactor) : TorsionFactor where
  prime := f.prime
  exponent := 1

/-- Count factors whose stored prime is `p`. -/
def countByPrime (p : Nat) : List TorsionFactor → Nat
  | [] => 0
  | f :: fs =>
      (if f.prime = p then 1 else 0) + countByPrime p fs

@[simp] theorem countByPrime_nil (p : Nat) :
    countByPrime p [] = 0 := rfl

@[simp] theorem countByPrime_cons (p : Nat) (f : TorsionFactor)
    (fs : List TorsionFactor) :
    countByPrime p (f :: fs) =
      (if f.prime = p then 1 else 0) + countByPrime p fs := rfl

/-- Forgetting exponents preserves the p-primary factor count. -/
theorem countByPrime_map_forgetExponent (p : Nat)
    (fs : List TorsionFactor) :
    countByPrime p (fs.map forgetExponent) = countByPrime p fs := by
  induction fs with
  | nil => rfl
  | cons f fs ih =>
      simp [countByPrime, forgetExponent, ih]

end TorsionFactor

/-- A finitely generated abelian group represented by rank and torsion factors. -/
structure IntegralHomology where
  rank : Nat
  torsion : List TorsionFactor
deriving Repr, DecidableEq

namespace IntegralHomology

/-- The zero abelian group. -/
def zero : IntegralHomology where
  rank := 0
  torsion := []

/-- Forget all torsion exponents while retaining the prime support and factor count. -/
def forgetExponents (G : IntegralHomology) : IntegralHomology where
  rank := G.rank
  torsion := G.torsion.map TorsionFactor.forgetExponent

/-- Number of p-primary cyclic summands in the stored decomposition. -/
def pPrimaryCount (p : Nat) (G : IntegralHomology) : Nat :=
  TorsionFactor.countByPrime p G.torsion

@[simp] theorem zero_rank : zero.rank = 0 := rfl

@[simp] theorem zero_torsion : zero.torsion = [] := rfl

@[simp] theorem pPrimaryCount_zero (p : Nat) :
    pPrimaryCount p zero = 0 := rfl

@[simp] theorem forgetExponents_rank (G : IntegralHomology) :
    (forgetExponents G).rank = G.rank := rfl

/-- Field linearization preserves only the p-primary factor count, not exponents. -/
theorem pPrimaryCount_forgetExponents (p : Nat)
    (G : IntegralHomology) :
    pPrimaryCount p (forgetExponents G) = pPrimaryCount p G := by
  simp [pPrimaryCount, forgetExponents,
    TorsionFactor.countByPrime_map_forgetExponent]

/-- A single cyclic p-primary torsion factor. -/
def cyclicPTorsion (p exponent : Nat) : IntegralHomology where
  rank := 0
  torsion := [{ prime := p, exponent := exponent }]

/-- Exact prime-power factor membership.  This is stronger than field visibility. -/
def HasExactPrimePowerFactor (p exponent : Nat)
    (G : IntegralHomology) : Prop :=
  { prime := p, exponent := exponent } ∈ G.torsion

@[simp] theorem pPrimaryCount_cyclic_same (p exponent : Nat) :
    pPrimaryCount p (cyclicPTorsion p exponent) = 1 := by
  simp [pPrimaryCount, cyclicPTorsion, TorsionFactor.countByPrime]

/-- `F_p` cannot distinguish the exponents of `Z/p^e`. -/
theorem pPrimaryCount_cyclic_exponent_blind
    (p e₁ e₂ : Nat) :
    pPrimaryCount p (cyclicPTorsion p e₁) =
      pPrimaryCount p (cyclicPTorsion p e₂) := by
  rw [pPrimaryCount_cyclic_same, pPrimaryCount_cyclic_same]

@[simp] theorem cyclic_has_exact_factor (p exponent : Nat) :
    HasExactPrimePowerFactor p exponent (cyclicPTorsion p exponent) := by
  simp [HasExactPrimePowerFactor, cyclicPTorsion]

/-- Exact exponent predicates can differ while p-field visibility stays identical. -/
theorem cyclic_not_has_other_exact_factor
    (p e₁ e₂ : Nat) (h : e₁ ≠ e₂) :
    ¬ HasExactPrimePowerFactor p e₂ (cyclicPTorsion p e₁) := by
  have hs : e₂ ≠ e₁ := fun hEq => h hEq.symm
  simp [HasExactPrimePowerFactor, cyclicPTorsion, hs]

end IntegralHomology

/-- Integral homology in every degree. -/
structure IntegralHomologyProfile where
  group : Nat → IntegralHomology

namespace IntegralHomologyProfile

/-- Pointwise exponent-forgetting of an integral homology profile. -/
def forgetExponents (P : IntegralHomologyProfile) :
    IntegralHomologyProfile where
  group := fun n => (P.group n).forgetExponents

/-- The previous degree, with degree `0` using the zero group. -/
def previousGroup (P : IntegralHomologyProfile) : Nat → IntegralHomology
  | 0 => IntegralHomology.zero
  | n + 1 => P.group n

/-- UCT summary for homology with field coefficients over characteristic `p`. -/
structure UCTSummary where
  rankPart : Nat
  sameDegreePTorsion : Nat
  previousDegreePTorsion : Nat
  totalDimension : Nat
deriving Repr, DecidableEq

/-- The UCT-style vector-space dimension observed over `F_p`. -/
def modPDimension (P : IntegralHomologyProfile) (p n : Nat) : Nat :=
  (P.group n).rank +
    IntegralHomology.pPrimaryCount p (P.group n) +
    IntegralHomology.pPrimaryCount p (previousGroup P n)

/-- The same content with named UCT components. -/
def uctSummary (P : IntegralHomologyProfile) (p n : Nat) : UCTSummary where
  rankPart := (P.group n).rank
  sameDegreePTorsion := IntegralHomology.pPrimaryCount p (P.group n)
  previousDegreePTorsion := IntegralHomology.pPrimaryCount p (previousGroup P n)
  totalDimension := modPDimension P p n

@[simp] theorem uctSummary_totalDimension
    (P : IntegralHomologyProfile) (p n : Nat) :
    (uctSummary P p n).totalDimension = modPDimension P p n := rfl

/-- Forgetting exponents commutes with the previous-degree operation. -/
theorem previousGroup_forgetExponents
    (P : IntegralHomologyProfile) (n : Nat) :
    previousGroup (forgetExponents P) n =
      (previousGroup P n).forgetExponents := by
  cases n <;> rfl

/-- Field observations cannot see torsion exponents. -/
theorem modPDimension_forgetExponents
    (P : IntegralHomologyProfile) (p n : Nat) :
    modPDimension (forgetExponents P) p n = modPDimension P p n := by
  cases n with
  | zero =>
      simp [modPDimension, forgetExponents, previousGroup,
        IntegralHomology.pPrimaryCount_forgetExponents]
  | succ n =>
      simp [modPDimension, forgetExponents, previousGroup,
        IntegralHomology.pPrimaryCount_forgetExponents]

end IntegralHomologyProfile

/-- Field-coefficient information retained by a linearized TDA pipeline. -/
structure FieldCoefficientObservation where
  dim : Nat → Nat → Nat

namespace FieldCoefficientObservation

/-- Extensional equality for field observations. -/
theorem extensional {O₁ O₂ : FieldCoefficientObservation}
    (h : ∀ p n, O₁.dim p n = O₂.dim p n) :
    O₁ = O₂ := by
  cases O₁ with
  | mk dim₁ =>
    cases O₂ with
    | mk dim₂ =>
      have hdim : dim₁ = dim₂ := by
        funext p n
        exact h p n
      cases hdim
      rfl

/-- Two field observations agree pointwise. -/
def Equivalent (O₁ O₂ : FieldCoefficientObservation) : Prop :=
  ∀ p n, O₁.dim p n = O₂.dim p n

end FieldCoefficientObservation

/-- Produce the field-coefficient observation associated to an integral profile. -/
def fieldObservation (P : IntegralHomologyProfile) :
    FieldCoefficientObservation where
  dim := fun p n => P.modPDimension p n

@[simp] theorem fieldObservation_dim
    (P : IntegralHomologyProfile) (p n : Nat) :
    (fieldObservation P).dim p n = P.modPDimension p n := rfl

/-- The whole field-observation channel is invariant under exponent-forgetting. -/
theorem fieldObservation_forgetExponents_eq
    (P : IntegralHomologyProfile) :
    fieldObservation (P.forgetExponents) = fieldObservation P := by
  apply FieldCoefficientObservation.extensional
  intro p n
  exact P.modPDimension_forgetExponents p n

/-- A finite list of fields used by a practical TDA run. -/
structure FiniteFieldSchedule where
  characteristics : List Nat
deriving Repr, DecidableEq

/-- Restrict an observation to a finite list of field characteristics and degrees. -/
def scheduledObservation
    (S : FiniteFieldSchedule)
    (degrees : List Nat)
    (O : FieldCoefficientObservation) : List Nat :=
  S.characteristics.flatMap
    (fun p => degrees.map (fun n => O.dim p n))

/-- Scheduled field observations are also blind to torsion exponents. -/
theorem scheduledObservation_forgetExponents
    (S : FiniteFieldSchedule)
    (degrees : List Nat)
    (P : IntegralHomologyProfile) :
    scheduledObservation S degrees (fieldObservation P.forgetExponents) =
      scheduledObservation S degrees (fieldObservation P) := by
  rw [fieldObservation_forgetExponents_eq]

/-- Placeholder for a finite metric data set. -/
structure MetricData where
  pointCount : Nat
deriving Repr, DecidableEq

/-- Placeholder for a simplicial complex extracted from metric data. -/
structure SimplicialComplex where
  simplexCount : Nat
deriving Repr, DecidableEq

/-- A certificate-gated TDA extraction from data to integral and field homology. -/
structure DataHomologyPipeline where
  data : MetricData
  complex : SimplicialComplex
  integralProfile : IntegralHomologyProfile
  fieldProfile : FieldCoefficientObservation
  fieldProfile_sound : fieldProfile = fieldObservation integralProfile

/-- The pipeline's field profile is blind to exponent-forgetting of its integral profile. -/
theorem DataHomologyPipeline.fieldProfile_forgetExponent_equivalent
    (P : DataHomologyPipeline) :
    FieldCoefficientObservation.Equivalent
      P.fieldProfile
      (fieldObservation P.integralProfile.forgetExponents) := by
  intro p n
  rw [P.fieldProfile_sound]
  rw [fieldObservation_forgetExponents_eq]

/-- A formal Mordell-Weil torsion group, represented by prime-power factors. -/
structure MordellWeilTorsion where
  factors : List TorsionFactor
deriving Repr, DecidableEq

/-- Arithmetic model whose topological observation and rational torsion are separate data. -/
structure EllipticArithmeticModel where
  topologicalProfile : IntegralHomologyProfile
  rationalTorsion : MordellWeilTorsion

namespace EllipticArithmeticModel

/-- What field-coefficient TDA can observe from the topological side. -/
def fieldTDAObservation (E : EllipticArithmeticModel) :
    FieldCoefficientObservation :=
  fieldObservation E.topologicalProfile

end EllipticArithmeticModel

/-- An algorithm that is allowed to inspect only field-coefficient TDA output. -/
abbrev FieldOnlyArithmeticAlgorithm :=
  FieldCoefficientObservation → MordellWeilTorsion

/-- Correctness of a field-only arithmetic recovery algorithm on one model. -/
def CorrectArithmeticRecovery
    (A : FieldOnlyArithmeticAlgorithm)
    (E : EllipticArithmeticModel) : Prop :=
  A E.fieldTDAObservation = E.rationalTorsion

/-- A collision: same field-homology observation, different arithmetic torsion. -/
structure ArithmeticCollision where
  left : EllipticArithmeticModel
  right : EllipticArithmeticModel
  sameObservation : left.fieldTDAObservation = right.fieldTDAObservation
  distinctArithmeticTorsion : left.rationalTorsion ≠ right.rationalTorsion

/--
If the observation channel has a collision, no field-only algorithm can recover
arithmetic torsion correctly on both sides of the collision.
-/
theorem no_field_only_recovery_from_collision
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    ¬ (CorrectArithmeticRecovery A C.left ∧
        CorrectArithmeticRecovery A C.right) := by
  intro h
  rcases h with ⟨hLeft, hRight⟩
  have hTor : C.left.rationalTorsion = C.right.rationalTorsion := by
    calc
      C.left.rationalTorsion = A C.left.fieldTDAObservation := hLeft.symm
      _ = A C.right.fieldTDAObservation := by rw [C.sameObservation]
      _ = C.right.rationalTorsion := hRight
  exact C.distinctArithmeticTorsion hTor

/-- Non-identifiability, rather than undecidability, is the corrected obstruction. -/
def ArithmeticTorsionNonIdentifiable : Prop :=
  ∃ _ : ArithmeticCollision, True

/-- A field-only universal recovery claim. -/
def UniversalFieldOnlyRecovery (A : FieldOnlyArithmeticAlgorithm) : Prop :=
  ∀ E : EllipticArithmeticModel, CorrectArithmeticRecovery A E

/-- Any collision refutes a universal field-only recovery claim. -/
theorem collision_refutes_universal_field_only_recovery
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    ¬ UniversalFieldOnlyRecovery A := by
  intro h
  exact no_field_only_recovery_from_collision C A ⟨h C.left, h C.right⟩

/-- Corrected summary theorem for the torsion-blindness mechanism. -/
theorem torsion_blindness_summary
    (P : IntegralHomologyProfile)
    (S : FiniteFieldSchedule)
    (degrees : List Nat) :
    fieldObservation P.forgetExponents = fieldObservation P ∧
      scheduledObservation S degrees (fieldObservation P.forgetExponents) =
        scheduledObservation S degrees (fieldObservation P) := by
  exact ⟨fieldObservation_forgetExponents_eq P,
    scheduledObservation_forgetExponents S degrees P⟩

end TorsionBlindDataHomology
end Cube
end Boolean
