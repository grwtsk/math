-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.HilbertEnd.Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.HilbertEnd.Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"df84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/OperatorOrder/Predicates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathematics.SemiLocalDefect.WP1.All

/-!
# Fixed-Hilbert operator predicate primitives
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.HilbertEnd.Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3

namespace Mathematics.SemiLocalDefect.SoninCore

open scoped InnerProductSpace

abbrev HilbertEnd
    (H : Type*)
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] :=
  H →L[ℂ] H

def OperatorSelfAdjoint
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  ∀ x y,
    ⟪A x, y⟫_ℂ =
    ⟪x, A y⟫_ℂ

def OperatorIdempotent
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  A.comp A = A

def OperatorNonnegative
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  ∀ x,
    0 ≤ Complex.re ⟪x, A x⟫_ℂ

def OperatorLE
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A B : HilbertEnd H) :
    Prop :=
  OperatorNonnegative (B - A)

end Mathematics.SemiLocalDefect.SoninCore
