-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeName.Variantf2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConeName.Variantf2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7","mathematical_subject":"Computation.DataStructures","original_sha256":"f2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Spectral/ConeIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeName.Variantf2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7

namespace Surface
namespace Spectral
namespace ConeIndex

/-! Audit-facing index for the finite-Hilbert spectral convergence cone. -/

def coneName : String := "FiniteHilbertSpectralConvergence"

def publicTheoremDeclarations : List String := [
  "FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence",
  "HilbertTraceEvidenceInput.finiteConvergence_present",
  "standardHilbertTraceBridge_no_evidenceInput"
]

def certificateOnlyDeclarations : List String := [
  "FiniteGraphLaplacianConvergenceCertificate",
  "HilbertTraceEvidenceInput",
  "AnalyticPDESpectralTheoremInput"
]

def hardInputDeclarations : List String := [
  "samplingHypothesis",
  "kernelScalingHypothesis",
  "boundaryCompatibility",
  "hilbertEmbeddingCompatibility",
  "traceOrResolventControl"
]

def forbiddenClaims : List String := [
  "finite graph as direct Hilbert evidence",
  "matrix dashboard as spectral theorem",
  "PDE data as spectral theorem without convergence"
]

end ConeIndex
end Spectral
end Surface
