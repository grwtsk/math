-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimeExponentProfile.Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.PrimeExponentProfile.Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/MobiusEulerProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.ReciprocalBoundary


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimeExponentProfile.Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc

set_option autoImplicit false

namespace Think.Analysis

universe u

/-
Möbius relation to the Riemann zeta function and the Euler product identity.

This file records the algebraic carrier formulation:

  zeta Euler product        = prime-power expansion carrier
  reciprocal Euler product = signed squarefree expansion carrier
  Möbius                   = Dirichlet-inverse coefficient carrier

It is an abstract finite carrier surface for the ordinary Euler-product relation

  1 / zeta(s) = sum_n mu(n) n^{-s}.

Zero/pole language is represented only by the reciprocal-boundary interface.
-/

/-- Finite prime-index selection carrier. -/
abbrev PrimeSelection (N : Nat) :=
  Fin N → Bool

/-- Finite prime-exponent profile carrier. -/
structure PrimeExponentProfile (N : Nat) where
  exponent : Fin N → Nat

/-- A profile is squarefree when every exponent is at most one. -/
def PrimeExponentProfile.IsSquarefree
    {N : Nat} (profile : PrimeExponentProfile N) : Prop :=
  ∀ p : Fin N, profile.exponent p ≤ 1

/-- Convert a prime subset/selection into its squarefree exponent profile. -/
def PrimeSelection.toSquarefreeProfile
    {N : Nat} (selection : PrimeSelection N) : PrimeExponentProfile N :=
  { exponent := fun p => if selection p then 1 else 0 }

/-- Selection profiles are squarefree by construction. -/
theorem prime_selection_to_squarefree_profile_is_squarefree
    {N : Nat} (selection : PrimeSelection N) :
    (PrimeSelection.toSquarefreeProfile selection).IsSquarefree := by
  intro p
  dsimp [PrimeSelection.toSquarefreeProfile, PrimeExponentProfile.IsSquarefree]
  by_cases h : selection p <;> simp [h]

/-- Möbius coefficient cases for a finite multiplicative carrier. -/
inductive MobiusCoefficientKind where
  | unit
  | squarefreeEven
  | squarefreeOdd
  | nonsquarefree
deriving Repr, DecidableEq

/-- Integer value of the Möbius coefficient kind. -/
def MobiusCoefficientKind.value : MobiusCoefficientKind → Int
  | .unit => 1
  | .squarefreeEven => 1
  | .squarefreeOdd => -1
  | .nonsquarefree => 0

@[simp] theorem mobius_unit_value :
    MobiusCoefficientKind.unit.value = 1 := by
  rfl

@[simp] theorem mobius_squarefree_even_value :
    MobiusCoefficientKind.squarefreeEven.value = 1 := by
  rfl

@[simp] theorem mobius_squarefree_odd_value :
    MobiusCoefficientKind.squarefreeOdd.value = -1 := by
  rfl

@[simp] theorem mobius_nonsquarefree_value :
    MobiusCoefficientKind.nonsquarefree.value = 0 := by
  rfl

/-- Prime-power Euler-product side: all exponent profiles are admitted. -/
def EulerPrimePowerCarrier (N : Nat) :=
  PrimeExponentProfile N

/-- Reciprocal Euler-product side: only squarefree exponent profiles remain. -/
def ReciprocalEulerSquarefreeCarrier (N : Nat) :=
  { profile : PrimeExponentProfile N // profile.IsSquarefree }

/-- A selected prime subset gives a reciprocal Euler squarefree carrier element. -/
def PrimeSelection.toReciprocalEulerCarrier
    {N : Nat} (selection : PrimeSelection N) :
    ReciprocalEulerSquarefreeCarrier N :=
  ⟨ PrimeSelection.toSquarefreeProfile selection
  , prime_selection_to_squarefree_profile_is_squarefree selection
  ⟩

/-- Algebraic carrier package for the Möbius/Euler-product relation. -/
structure MobiusEulerProductCarrier (N : Nat) where
  primePowerCarrier : Type := EulerPrimePowerCarrier N
  reciprocalSquarefreeCarrier : Type := ReciprocalEulerSquarefreeCarrier N
  mobiusCoefficient : PrimeExponentProfile N → MobiusCoefficientKind

/-- Default carrier with all coefficient classification supplied externally. -/
def mkMobiusEulerProductCarrier
    {N : Nat}
    (muKind : PrimeExponentProfile N → MobiusCoefficientKind) :
    MobiusEulerProductCarrier N :=
  { mobiusCoefficient := muKind }

/-- The reciprocal-boundary interface turns a zeta pole into a reciprocal-zeta zero. -/
theorem mobius_reciprocal_boundary_zeta_pole_to_zero
    {Object Point : Type u}
    (Z : ZetaReciprocalBoundary Object Point)
    (h : Z.boundary.poleAt Z.zeta Z.one) :
    Z.boundary.zeroAt Z.reciprocalZeta Z.one :=
  zeta_pole_at_one_implies_reciprocal_zero_at_one Z h

end Think.Analysis
