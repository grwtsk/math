-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ScanOrder.Variantaf4cbfe8a8246c65c7458d7510d0d58a828a0adca18c0d942dc974508741b7fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af4cbfe8a8246c65c7458d7510d0d58a828a0adca18c0d942dc974508741b7fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ScanOrder.Variantaf4cbfe8a8246c65c7458d7510d0d58a828a0adca18c0d942dc974508741b7fd","mathematical_subject":"Logic.Foundations","original_sha256":"af4cbfe8a8246c65c7458d7510d0d58a828a0adca18c0d942dc974508741b7fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Cellular/ScanOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Cellular.Adjacency

/-!
# Folder.Cellular.ScanOrder

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.scan_order
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: phase
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ScanOrder.Variantaf4cbfe8a8246c65c7458d7510d0d58a828a0adca18c0d942dc974508741b7fd

namespace Folder
namespace Cellular

structure ScanOrder (d k : Nat) where
  rank : CubeAddress d k → Nat
  injective : Function.Injective rank

structure OrientedEdge (d k : Nat) where
  source : CubeAddress d k
  target : CubeAddress d k
  adjacent : CubeAdjacent source target

def scanForward
    (S : ScanOrder d k)
    (e : OrientedEdge d k) : Prop :=
  S.rank e.source < S.rank e.target

structure ScanTwist (d k m : Nat) where
  value : OrientedEdge d k → ZMod m

end Cellular
end Folder
