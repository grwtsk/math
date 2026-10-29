-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Forward3.Variant8e9f74d69b7cfce5f9bf829c8f2f8a01ba3f71a96df87dfeffdee9f13d2ff4ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e9f74d69b7cfce5f9bf829c8f2f8a01ba3f71a96df87dfeffdee9f13d2ff4ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Forward3.Variant8e9f74d69b7cfce5f9bf829c8f2f8a01ba3f71a96df87dfeffdee9f13d2ff4ff","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8e9f74d69b7cfce5f9bf829c8f2f8a01ba3f71a96df87dfeffdee9f13d2ff4ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/Examples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CordTheory.Conjecture

/-!
# Bounded executable examples

These examples exercise the formal interfaces on finite fixtures.  They are not
corpus-wide conformance certificates and do not establish OI-4 or OI-5.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Forward3.Variant8e9f74d69b7cfce5f9bf829c8f2f8a01ba3f71a96df87dfeffdee9f13d2ff4ff

namespace Cord.Examples

open Cord

/-- Three-state forward dependency order. -/
def forward3 : OperationalRelation (Fin 3) where
  rel x y := x.val ≤ y.val
  refl x := Nat.le_refl x.val
  trans := by
    intro x y z hxy hyz
    exact Nat.le_trans hxy hyz

example : (0 : Fin 3) ∈ forward3.closure ({0} : Set (Fin 3)) := by
  refine ⟨0, by simp, ?_⟩
  change 0 ≤ 0
  decide

example : (2 : Fin 3) ∈ forward3.closure ({0} : Set (Fin 3)) := by
  refine ⟨0, by simp, ?_⟩
  change 0 ≤ 2
  decide

example : forward3.closure (∅ : Set (Fin 3)) = ∅ :=
  forward3.closure_empty

example : forward3.closure (forward3.closure ({0} : Set (Fin 3))) =
    forward3.closure ({0} : Set (Fin 3)) :=
  forward3.closure_idem _

/-- One probe that distinguishes all three fixture points. -/
def identityProbe : Unit → Fin 3 → Nat := fun _ x => x.val

example : PointSeparating identityProbe := by
  intro x y h
  apply Fin.ext
  exact h ()

example : ProbeEquivalent identityProbe (0 : Fin 3) (0 : Fin 3) := by
  intro probe
  rfl

/-- A finite function ideal defined by vanishing at point zero. -/
def zeroAtZero : FunctionIdeal (Fin 3) ℚ :=
  FunctionIdeal.vanishingIdeal ({0} : Set (Fin 3))

example :
    FunctionIdeal.vanishingIdeal (FunctionIdeal.zeroLocus zeroAtZero) = zeroAtZero :=
  zeroAtZero.finite_nullstellensatz

example : (FunctionIdeal.zeroLocus zeroAtZero).Nonempty := by
  refine ⟨0, ?_⟩
  intro f hf
  exact hf 0 (by simp)

/-- Extensional precision above evidence resolution is capped. -/
def p900 : ScoreMillionths := ⟨900000, by decide⟩
def p600 : ScoreMillionths := ⟨600000, by decide⟩

example : (normativePrecision p900 p600).value = 600000 := by
  rfl

example : 0 < precisionAccuracyTension p900 p600 := by
  decide

example :
    SemanticChangeClass.classify
      ({0, 1} : Finset Nat)
      ({0} : Finset Nat) = .strengthening := by
  native_decide

example :
    SemanticChangeClass.classify
      ({0} : Finset Nat)
      ({0, 1} : Finset Nat) = .weakening := by
  native_decide

example : currentOI4ConformanceClaimed = false := rfl
example : currentOI5ConformanceClaimed = false := rfl

end Cord.Examples
