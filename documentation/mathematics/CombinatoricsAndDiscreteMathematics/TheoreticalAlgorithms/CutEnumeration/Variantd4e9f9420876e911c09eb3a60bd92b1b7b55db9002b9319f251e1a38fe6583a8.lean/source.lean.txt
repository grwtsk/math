-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CutEnumeration.Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CutEnumeration.Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00","mathematical_subject":"Computation.DataStructures","original_sha256":"7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/CutEnumeration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon

/-!
# Certified cut enumeration

A finite chronological listing of one prime cut, with freshness retained as an
explicit field for downstream telescoping.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CutEnumeration.Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00

namespace Mathematics.SemiLocalDefect.SoninCore

structure CutEnumeration
    (U : FinitePrimeHorizon)
    (S : PrimeCut U) where
  order : List U.Prime
  nodup : order.Nodup
  toFinset_eq : order.toFinset = S
  fresh :
    ∀ i : Fin order.length,
      order.get i ∉
        (order.take i.val).toFinset

def CutEnumeration.prefixCut
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (n : Nat) :
    PrimeCut U :=
  (E.order.take n).toFinset

@[simp]
theorem CutEnumeration.prefixCut_zero
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S) :
    E.prefixCut 0 = ∅ := by
  simp [CutEnumeration.prefixCut]

@[simp]
theorem CutEnumeration.prefixCut_length
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S) :
    E.prefixCut E.order.length = S := by
  simp [
    CutEnumeration.prefixCut,
    E.toFinset_eq
  ]

end Mathematics.SemiLocalDefect.SoninCore
