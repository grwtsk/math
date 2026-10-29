-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.PhasePoleDistance.Variant8df507b584053f70006649731e659ed3dcbd7553972d05ee2030fe3dfb761d75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8df507b584053f70006649731e659ed3dcbd7553972d05ee2030fe3dfb761d75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.PhasePoleDistance.Variant8df507b584053f70006649731e659ed3dcbd7553972d05ee2030fe3dfb761d75","mathematical_subject":"Topology.MetricSpaces","original_sha256":"8df507b584053f70006649731e659ed3dcbd7553972d05ee2030fe3dfb761d75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryMedoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Pipeline.Center.KakeyaMedoid
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryAlgebra


namespace GRWTSK.Topology.MetricTopology.PhasePoleDistance.Variant8df507b584053f70006649731e659ed3dcbd7553972d05ee2030fe3dfb761d75

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryMedoid

abbrev Phase := Think.PhaseId
abbrev MemoryVertex := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex
abbrev WeightedMemory := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory
abbrev ResidueAtom := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom

structure PhasePoleDistance where
  dist : Nat -> Phase -> Nat

def projectedDistance
    (projection : MemoryVertex -> Nat)
    (D : PhasePoleDistance)
    (v : MemoryVertex)
    (p : Phase) : Nat :=
  D.dist (projection v) p

def medoidOverProjectedSupport
    (projection : MemoryVertex -> Nat)
    (D : PhasePoleDistance)
    (M : WeightedMemory)
    (support : List MemoryVertex) : Phase :=
  Think.Pipeline.Center.KakeyaMedoid.medoidK
    (projectedDistance projection D)
    M
    support

def medoidProjectionResidues : List ResidueAtom :=
  Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues ++
    Think.Pipeline.Center.KakeyaMedoid.medoidResidues

theorem medoidProjectionResidues_mark_projection :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.sourceTreeProjectionMayEraseEdges ∈
      medoidProjectionResidues := by
  simp
    [medoidProjectionResidues,
      Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues,
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues]

theorem medoidProjectionResidues_mark_nonTheorem :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem ∈
      medoidProjectionResidues := by
  simp
    [medoidProjectionResidues,
      Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues,
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues]

end Think.RadoProjectedModularHeatflow.MemoryMedoid
