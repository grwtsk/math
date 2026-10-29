-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteTubeFamily.Variantbd74f265b40273dc1a729bbac06f78a0415e681b565c774b08c383e28f131a82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd74f265b40273dc1a729bbac06f78a0415e681b565c774b08c383e28f131a82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteTubeFamily.Variantbd74f265b40273dc1a729bbac06f78a0415e681b565c774b08c383e28f131a82","mathematical_subject":"Foundations.Unclassified","original_sha256":"bd74f265b40273dc1a729bbac06f78a0415e681b565c774b08c383e28f131a82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Kakeya/Family.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Kakeya.Tube

/-!
# Finite Kakeya tube families

Finiteness is intrinsic: a family is indexed by `Fin count`.  It is not an
arbitrary proposition attached to an otherwise unconstrained list.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteTubeFamily.Variantbd74f265b40273dc1a729bbac06f78a0415e681b565c774b08c383e28f131a82

namespace Mathematics.Geometry.Kakeya

/-- A finite family of exact tubes in one fixed ambient dimension. -/
structure FiniteTubeFamily (dimension : Nat) where
  count : Nat
  tube : Fin count → Tube dimension

namespace FiniteTubeFamily

/-- The union of all exact tube carriers in the family. -/
def carrier {dimension : Nat} (family : FiniteTubeFamily dimension) :
    Set (AmbientPoint dimension) :=
  ⋃ index, (family.tube index).carrier

theorem mem_carrier_iff {dimension : Nat}
    (family : FiniteTubeFamily dimension)
    (point : AmbientPoint dimension) :
    point ∈ family.carrier ↔
      ∃ index : Fin family.count, (family.tube index).Contains point := by
  simp [carrier]

theorem carrier_nonempty_of_count_positive {dimension : Nat}
    (family : FiniteTubeFamily dimension)
    (positive : 0 < family.count) :
    family.carrier.Nonempty := by
  let index : Fin family.count := ⟨0, positive⟩
  refine ⟨(family.tube index).center, ?_⟩
  exact (family.mem_carrier_iff _).2 ⟨index, (family.tube index).center_mem⟩

end FiniteTubeFamily

end Mathematics.Geometry.Kakeya
