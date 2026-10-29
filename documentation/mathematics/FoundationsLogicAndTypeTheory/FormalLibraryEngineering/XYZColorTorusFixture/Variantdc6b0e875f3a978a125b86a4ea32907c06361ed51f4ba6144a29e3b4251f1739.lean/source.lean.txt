-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StandardPresentationRadii.Variantc8ce126a238feb2967a91425f9d58bf9a6a936f5559306585ed0429eb9f4adbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8ce126a238feb2967a91425f9d58bf9a6a936f5559306585ed0429eb9f4adbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StandardPresentationRadii.Variantc8ce126a238feb2967a91425f9d58bf9a6a936f5559306585ed0429eb9f4adbe","mathematical_subject":"Foundations.Unclassified","original_sha256":"c8ce126a238feb2967a91425f9d58bf9a6a936f5559306585ed0429eb9f4adbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/Generated/XYZColorTorusFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Generated.XYZRouteFixture
public import Presentation.XYZColorTorus

/-!
# Finite XYZ color-torus presentation fixture

This generated fixture exercises the explicit presentation adapter at the
equal-energy golden value.  It is finite compilation evidence only.  It does
not certify browser rendering, Rust generally, an elliptic uniformization,
torsion, a classical Hecke action, or an analytic statement.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StandardPresentationRadii.Variantc8ce126a238feb2967a91425f9d58bf9a6a936f5559306585ed0429eb9f4adbe

public section

namespace Generated.XYZColorTorusFixture

noncomputable section

open Surface.Core.XYZ
open Generated.XYZRouteFixture
open Presentation.XYZColorTorus

@[surface_candidate]
def standardPresentationRadii : FlatColorTorusRadii where
  majorRadius := 2
  minorRadius := 1
  minorRadius_pos := by norm_num
  minorRadius_lt_majorRadius := by norm_num

@[surface_candidate]
def equalEnergyAt0 : RevisionedXYZ xyzFormatV1 where
  revision := ⟨0, by decide⟩
  value := equalEnergyWhite

@[surface_candidate]
def equalEnergyColorTorusView : ColorTorusView where
  xyz := equalEnergyAt0
  invariant := equal_energy_normalized_invariant

@[surface_candidate]
def equalEnergyColorTorusFrame : ColorTorusRenderFrame :=
  colorTorusRenderFrame standardPresentationRadii equalEnergyColorTorusView

@[surface_candidate]
theorem equalEnergyColorTorusView_preserves_source :
    equalEnergyColorTorusView.xyz = equalEnergyAt0 ∧
      equalEnergyColorTorusView.xyz.revision = equalEnergyAt0.revision ∧
      equalEnergyColorTorusView.xyz.value = equalEnergyAt0.value := by
  exact ⟨rfl, rfl, rfl⟩

@[surface_candidate]
theorem equalEnergyColorTorusView_uses_canonical_adapter :
    equalEnergyColorTorusView.flatCoordinates =
      xyzToFlatColorTorus equalEnergyColorTorusView.normalizedPoint ∧
      equalEnergyColorTorusView.mapId = flatColorTorusMapIdV1 := by
  exact ⟨rfl, rfl⟩

@[surface_candidate]
theorem equalEnergyColorTorusFrame_preserves_source :
    equalEnergyColorTorusFrame.sourceRevision = equalEnergyAt0.revision ∧
      equalEnergyColorTorusFrame.sourceValue = equalEnergyAt0.value ∧
      equalEnergyColorTorusFrame.authority = .presentationOnly := by
  exact ⟨rfl, rfl, rfl⟩

@[surface_candidate]
theorem equalEnergyColorTorusEmbedding_periodic_u :
    flatColorTorusEmbedding standardPresentationRadii
        (equalEnergyColorTorusView.u + 2 * Real.pi)
        equalEnergyColorTorusView.v =
      flatColorTorusEmbedding standardPresentationRadii
        equalEnergyColorTorusView.u equalEnergyColorTorusView.v := by
  exact flatColorTorusEmbedding_periodic_u _ _ _

@[surface_candidate]
theorem equalEnergyColorTorusEmbedding_periodic_v :
    flatColorTorusEmbedding standardPresentationRadii
        equalEnergyColorTorusView.u
        (equalEnergyColorTorusView.v + 2 * Real.pi) =
      flatColorTorusEmbedding standardPresentationRadii
        equalEnergyColorTorusView.u equalEnergyColorTorusView.v := by
  exact flatColorTorusEmbedding_periodic_v _ _ _

@[surface_candidate]
theorem equalEnergyColorTorus_has_no_torsion_authority :
    ¬ Presentation.XYZElliptic.ProvesArithmeticTorsion
      (Presentation.XYZElliptic.xyzToEllipticPresentationV1
        equalEnergyColorTorusView.xyz.value) := by
  exact colorTorusView_has_no_torsion_authority equalEnergyColorTorusView

@[surface_candidate]
theorem equalEnergyColorTorus_has_no_grh_authority :
    ¬ ProvesForbiddenAnalyticAuthority .dirichletGRH := by
  exact colorTorusView_has_no_grh_authority equalEnergyColorTorusView

end


end Generated.XYZColorTorusFixture
