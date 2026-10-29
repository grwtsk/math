-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.TorsionResidueHeatNonnegative.Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.TorsionResidueHeatNonnegative.Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e","mathematical_subject":"Topology.MetricSpaces","original_sha256":"3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.think/Think/Kakeya/HasseWeil/K128Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kakeya.HasseWeil.Torsion


namespace GRWTSK.Topology.MetricTopology.TorsionResidueHeatNonnegative.Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e

namespace Think.Kakeya.HasseWeil

theorem torsion_residue_heat_nonnegative
  (eps dist : ℝ) :
  0 ≤ TorsionResidueHeat eps dist := by
  unfold TorsionResidueHeat
  split
  · decide
  · exact Rat.not_lt.mp ‹¬dist - eps < 0›

def k128_torsion_iff_zero_residue : String :=
  "proof-pending: KTorsionClaim eps dist iff TorsionResidueHeat eps dist = 0 under nonnegative epsilon and distance"

theorem exact_torsion_transports_to_k128
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (dist_nP_O : ℝ)
  (hExactDistZero : dist_nP_O = 0) :
  KTorsionClaim eps dist_nP_O := by
  unfold KTorsionClaim KEqual
  rw [hExactDistZero]
  exact heps

end Think.Kakeya.HasseWeil
