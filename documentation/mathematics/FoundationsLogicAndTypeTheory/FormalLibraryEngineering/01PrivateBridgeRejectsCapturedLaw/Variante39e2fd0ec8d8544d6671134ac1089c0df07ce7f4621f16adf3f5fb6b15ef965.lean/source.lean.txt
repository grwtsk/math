-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FCRSFullDerivation.Varianta1de12ab89aa4af845f88e6fbe630980b4bc3d8b3e19d5a4f465b96d74dbbd93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a1de12ab89aa4af845f88e6fbe630980b4bc3d8b3e19d5a4f465b96d74dbbd93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FCRSFullDerivation.Varianta1de12ab89aa4af845f88e6fbe630980b4bc3d8b3e19d5a4f465b96d74dbbd93","mathematical_subject":"Foundations.Unclassified","original_sha256":"a1de12ab89aa4af845f88e6fbe630980b4bc3d8b3e19d5a4f465b96d74dbbd93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-6/reproductions/01_private_bridge_rejects_captured_law.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FCRSFullDerivation.Varianta1de12ab89aa4af845f88e6fbe630980b4bc3d8b3e19d5a4f465b96d74dbbd93

namespace FCRS.TheoremTransfer.Cycle6.PrivateBridge

open FCRS.Transport
open FCRS.TheoremTransfer.Adapters.FCRSTransport

universe uInput uWitness uCoordinate uEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate} {Edge : Type uEdge}
variable {profile : IntervalProfile Input Witness} {input : Input}
variable {graph : CoordinateGraph .Materialized Coordinate Edge}
variable {consequence : GraphConsequence graph}
variable (capturedTargetProof : consequence.statement)

/--
The cycle-5 arbitrary-law attack is submitted independently against the public
API.  `fail_if_success` makes this audit reproduction compile only when Lean
rejects direct construction of the module-private bridge constructor.
-/
example : True := by
  fail_if_success
    exact ({
      bridgeArtifact := projectionVersion "cycle-6-forbidden-captured-bridge"
      law := fun _sourceProof => capturedTargetProof
    } : FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence))
  trivial

end FCRS.TheoremTransfer.Cycle6.PrivateBridge
