-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KarnaughMapRowAxisAdjacentPath.Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KarnaughMapRowAxisAdjacentPath.Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f","mathematical_subject":"Foundations.Unclassified","original_sha256":"30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/KarnaughMap/Traversal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.KarnaughMap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KarnaughMapRowAxisAdjacentPath.Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f

namespace Boolean.Cube

/-!
# Karnaugh-map traversals

Adjacency and table-size optimality facts for the Gray-ordered row and column
axes used by Karnaugh maps.
-/

@[simp] theorem KarnaughMap.rowAxis_length (rowBits : Nat) :
    (KarnaughMap.rowAxis rowBits).length = 2 ^ rowBits := by
  simp [KarnaughMap.rowAxis]

@[simp] theorem KarnaughMap.colAxis_length (colBits : Nat) :
    (KarnaughMap.colAxis colBits).length = 2 ^ colBits := by
  simp [KarnaughMap.colAxis]

/-- Consecutive row-axis vertices are adjacent cube vertices. -/
theorem KarnaughMap.rowAxis_adjacentPath (rowBits : Nat) :
    Hypercube.AdjacentPath (KarnaughMap.rowAxis rowBits) := by
  simp [KarnaughMap.rowAxis, Hypercube.grayTraversal_adjacentPath]

/-- Consecutive column-axis vertices are adjacent cube vertices. -/
theorem KarnaughMap.colAxis_adjacentPath (colBits : Nat) :
    Hypercube.AdjacentPath (KarnaughMap.colAxis colBits) := by
  simp [KarnaughMap.colAxis, Hypercube.grayTraversal_adjacentPath]

/--
The row traversal has exactly one entry for each row-axis cube vertex.
-/
theorem KarnaughMap.rowAxis_optimalLength (rowBits : Nat) :
    (KarnaughMap.rowAxis rowBits).length =
      (Hypercube.vertices rowBits).length := by
  simp [KarnaughMap.rowAxis]

/--
The column traversal has exactly one entry for each column-axis cube vertex.
-/
theorem KarnaughMap.colAxis_optimalLength (colBits : Nat) :
    (KarnaughMap.colAxis colBits).length =
      (Hypercube.vertices colBits).length := by
  simp [KarnaughMap.colAxis]

/-- The row traversal uses one transition for each noninitial row cell. -/
theorem KarnaughMap.rowAxis_transitionCount (rowBits : Nat) :
    (KarnaughMap.rowAxis rowBits).length - 1 = 2 ^ rowBits - 1 := by
  simp [KarnaughMap.rowAxis]

/-- The column traversal uses one transition for each noninitial column cell. -/
theorem KarnaughMap.colAxis_transitionCount (colBits : Nat) :
    (KarnaughMap.colAxis colBits).length - 1 = 2 ^ colBits - 1 := by
  simp [KarnaughMap.colAxis]

end Boolean.Cube
