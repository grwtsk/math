-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DagIndex.Variant5416793712a17e5793879959c554bf13612bc32b2b583c3873ea4fc95c6e45db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5416793712a17e5793879959c554bf13612bc32b2b583c3873ea4fc95c6e45db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DagIndex.Variant5416793712a17e5793879959c554bf13612bc32b2b583c3873ea4fc95c6e45db","mathematical_subject":"Computation.DataStructures","original_sha256":"5416793712a17e5793879959c554bf13612bc32b2b583c3873ea4fc95c6e45db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/DAGIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DagIndex.Variant5416793712a17e5793879959c554bf13612bc32b2b583c3873ea4fc95c6e45db

namespace SpectralProof

/--
A static index of core definitions and theorems used in the DAG-based proof.
Useful for CLI inspection (`lake run spectralProof`).
-/
def dagIndex : List (String × String) :=
  [ ("def:tracePower", "tracePower")
  , ("def:zetaDet", "zetaDet")
  , ("def:spectralMap", "spectralMap")
  , ("def:inverseSpectralMap", "inverseSpectralMap")
  , ("thm:canonical_det_identity", "canonical_det_identity")
  , ("thm:zero_maps_to_spectrum", "zero_maps_to_spectrum")
  , ("thm:trace_class_Lsym_pi", "trace_class_Lsym_pi")
  , ("thm:self_adjoint_Lsym_pi", "self_adjoint_Lsym_pi")
  , ("thm:GRH_iff_spec_real", "GRH_iff_spec_real")
  , ("thm:GRH_spectral_closure", "GRH_spectral_closure")
  ]

end SpectralProof
