-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Code.Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Code.Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed","mathematical_subject":"Foundations.Unclassified","original_sha256":"ed0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/Generated/NetworkSurgeryGame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.NetworkSurgery
import Generated.TopologySurgeryGame

/-!
# Quarantined adapter from the octahedral fixture to the finite ledger interface

The adapter records an already-proved coefficientwise cancellation as a
discharged finite ledger.  It does not identify repository surgery with a
simplicial cut and proves no topological or semantic equivalence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Code.Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed

namespace Generated.NetworkSurgeryGame

open Surface.Core.Transport
open Surface.Core.NetworkSurgery

private def code (value : Nat) : StableCode :=
  ⟨value % revisionModulus, Nat.mod_lt _ (by simp [revisionModulus])⟩

def octahedralCutAtom (cut : Nat) : InterfaceAtom :=
  ⟨.delimiter, code cut, code (cut + 1), code (cut + 2)⟩

def dischargedOctahedralLedger (cut : Nat) : PreparedBoundaryLedger where
  excision := [⟨octahedralCutAtom cut, -1⟩]
  graft := [⟨octahedralCutAtom cut, 1⟩]
  rewrite := []

@[surface_candidate]
theorem dischargedOctahedralLedger_is_nonempty (cut : Nat) :
    (dischargedOctahedralLedger cut).totalBoundary ≠ [] := by
  simp [PreparedBoundaryLedger.totalBoundary, BoundaryLedger.add,
    dischargedOctahedralLedger]

@[surface_candidate]
theorem octahedralSplit_is_finite_boundaryLedger_example (cut : Nat)
    (_sound : Generated.TopologySurgeryGame.OctahedralCapSurgerySound cut) :
    BoundaryBalanced (dischargedOctahedralLedger cut) := by
  simp [BoundaryBalanced, PreparedBoundaryLedger.totalBoundary,
    BoundaryLedger.IsZero, BoundaryLedger.coefficient, BoundaryLedger.add,
    dischargedOctahedralLedger]

end Generated.NetworkSurgeryGame
