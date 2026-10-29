-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReciprocalBoundary.Variant0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReciprocalBoundary.Variant0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/ReciprocalBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReciprocalBoundary.Variant0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de

set_option autoImplicit false

namespace Think.Analysis

universe u

/-
Reciprocal boundary.

This is the natural zero/pole interface used by the zeta, reciprocal-zeta,
Möbius, and Euler-product surfaces. It contains no terminology enum, no Boolean
claim ledger, and no repository-specific vocabulary layer.

A pole is represented by the reciprocal zero predicate supplied by the context.
A zero/pole relation is just the reciprocal relation between `zeroAt` and
`poleAt`.
-/

/-- A reciprocal boundary structure with zero and pole predicates. -/
structure ReciprocalBoundary (Object Point : Type u) where
  reciprocal : Object → Object
  zeroAt : Object → Point → Prop
  poleAt : Object → Point → Prop
  zero_iff_pole_reciprocal :
    ∀ (F : Object) (x : Point), zeroAt F x ↔ poleAt (reciprocal F) x
  pole_iff_zero_reciprocal :
    ∀ (F : Object) (x : Point), poleAt F x ↔ zeroAt (reciprocal F) x

/-- A zero of an object is a pole of its reciprocal. -/
theorem zero_iff_pole_reciprocal
    {Object Point : Type u}
    (B : ReciprocalBoundary Object Point)
    (F : Object) (x : Point) :
    B.zeroAt F x ↔ B.poleAt (B.reciprocal F) x :=
  B.zero_iff_pole_reciprocal F x

/-- A pole of an object is a zero of its reciprocal. -/
theorem pole_iff_zero_reciprocal
    {Object Point : Type u}
    (B : ReciprocalBoundary Object Point)
    (F : Object) (x : Point) :
    B.poleAt F x ↔ B.zeroAt (B.reciprocal F) x :=
  B.pole_iff_zero_reciprocal F x

/-- A pole gives a reciprocal zero. -/
theorem pole_implies_reciprocal_zero
    {Object Point : Type u}
    (B : ReciprocalBoundary Object Point)
    {F : Object} {x : Point}
    (h : B.poleAt F x) :
    B.zeroAt (B.reciprocal F) x :=
  (B.pole_iff_zero_reciprocal F x).mp h

/-- A zero gives a reciprocal pole. -/
theorem zero_implies_reciprocal_pole
    {Object Point : Type u}
    (B : ReciprocalBoundary Object Point)
    {F : Object} {x : Point}
    (h : B.zeroAt F x) :
    B.poleAt (B.reciprocal F) x :=
  (B.zero_iff_pole_reciprocal F x).mp h

/-- Zeta and reciprocal-zeta as a reciprocal boundary instance at a distinguished point. -/
structure ZetaReciprocalBoundary (Object Point : Type u) where
  boundary : ReciprocalBoundary Object Point
  zeta : Object
  reciprocalZeta : Object
  one : Point
  reciprocalZeta_eq : reciprocalZeta = boundary.reciprocal zeta

/-- If zeta has a pole at one, reciprocal-zeta has a zero at one. -/
theorem zeta_pole_at_one_implies_reciprocal_zero_at_one
    {Object Point : Type u}
    (Z : ZetaReciprocalBoundary Object Point)
    (h : Z.boundary.poleAt Z.zeta Z.one) :
    Z.boundary.zeroAt Z.reciprocalZeta Z.one := by
  rw [Z.reciprocalZeta_eq]
  exact pole_implies_reciprocal_zero Z.boundary h

end Think.Analysis
