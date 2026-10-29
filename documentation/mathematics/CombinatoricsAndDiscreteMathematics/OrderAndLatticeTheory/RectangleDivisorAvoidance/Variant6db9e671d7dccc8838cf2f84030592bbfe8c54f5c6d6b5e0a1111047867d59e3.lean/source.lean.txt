-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ExistsHeightAvoidingFinite.Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ExistsHeightAvoidingFinite.Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ComplexAnalysis/RectangleDivisorAvoidance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.ComplexAnalysis.MeromorphicOrder
public import Mathlib.Order.Interval.Set.Infinite
import Mathlib.Tactic

/-!
# Rectangle coordinates avoiding a finite divisor

Compact meromorphic divisors have finite support.  Hence horizontal and
vertical contour coordinates can be selected in any nonempty open interval
while avoiding every zero or pole in that support.

These selection lemmas are geometric bookkeeping only.  They do not assert
circle integrability, pole excision, a residue theorem, or a contour shift
through singularities.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ExistsHeightAvoidingFinite.Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex

/-- Every nonempty real interval contains a height different from the
imaginary coordinate of every point in a prescribed finite complex set. -/
theorem exists_height_avoiding_finite
    {S : Set ℂ} (hS : S.Finite) {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b, ∀ z ∈ S, z.im ≠ t := by
  obtain ⟨t, htI, htNot⟩ :=
    (Set.Ioo_infinite hab).exists_notMem_finite (hS.image Complex.im)
  refine ⟨t, htI, ?_⟩
  intro z hz hzt
  exact htNot ⟨z, hz, hzt⟩

/-- Real-coordinate counterpart of `exists_height_avoiding_finite`. -/
theorem exists_real_avoiding_finite
    {S : Set ℂ} (hS : S.Finite) {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b, ∀ z ∈ S, z.re ≠ t := by
  obtain ⟨t, htI, htNot⟩ :=
    (Set.Ioo_infinite hab).exists_notMem_finite (hS.image Complex.re)
  refine ⟨t, htI, ?_⟩
  intro z hz hzt
  exact htNot ⟨z, hz, hzt⟩

/-- Select a horizontal contour coordinate avoiding the divisor support on a
compact rectangle. -/
theorem exists_height_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.im ≠ t := by
  obtain ⟨t, ht, hav⟩ :=
    exists_height_avoiding_finite (rectangleDivisor_support_finite hf) hab
  refine ⟨t, ht, ?_⟩
  intro p hp
  exact hav p ((mem_rectangleDivisorSupportFinset hf).mp hp)

/-- Select a vertical contour coordinate avoiding the divisor support on a
compact rectangle. -/
theorem exists_real_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.re ≠ t := by
  obtain ⟨t, ht, hav⟩ :=
    exists_real_avoiding_finite (rectangleDivisor_support_finite hf) hab
  refine ⟨t, ht, ?_⟩
  intro p hp
  exact hav p ((mem_rectangleDivisorSupportFinset hf).mp hp)

end

end Surface.Core.ComplexAnalysis
