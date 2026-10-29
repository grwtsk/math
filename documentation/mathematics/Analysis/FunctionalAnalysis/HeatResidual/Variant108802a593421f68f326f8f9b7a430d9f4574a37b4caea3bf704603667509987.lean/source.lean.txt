-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.LiftedState.Variant1965a791827062af9067d74c9ef8054a9bc36c8c8df9bb4ed0d0460b4b5f3d1c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1965a791827062af9067d74c9ef8054a9bc36c8c8df9bb4ed0d0460b4b5f3d1c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LiftedState.Variant1965a791827062af9067d74c9ef8054a9bc36c8c8df9bb4ed0d0460b4b5f3d1c","mathematical_subject":"Foundations.Unclassified","original_sha256":"1965a791827062af9067d74c9ef8054a9bc36c8c8df9bb4ed0d0460b4b5f3d1c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Spectral/HeatResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Residual

/-!
# Folder.Theorem.Spectral.HeatResidual

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.heat_residual
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.LiftedState.Variant1965a791827062af9067d74c9ef8054a9bc36c8c8df9bb4ed0d0460b4b5f3d1c

namespace Folder
namespace Spectral

open Carrier

structure LiftedState (s : GridShape) (k : Nat) where
  visible : SpectralTensor s k
  fiber : SpectralTensor s k

def liftedHeat {s : GridShape} {k : Nat}
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    SpectralTensor s k × SpectralTensor s k :=
  (H.heat t X, heatResidual H t X)

def reconstructHeat {s : GridShape} {k : Nat}
    (Y R : SpectralTensor s k) :
    SpectralTensor s k :=
  Y + R

theorem reconstruct_liftedHeat {s : GridShape} {k : Nat}
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2 = X := by
  exact heat_add_residual H t X

end Spectral
end Folder
