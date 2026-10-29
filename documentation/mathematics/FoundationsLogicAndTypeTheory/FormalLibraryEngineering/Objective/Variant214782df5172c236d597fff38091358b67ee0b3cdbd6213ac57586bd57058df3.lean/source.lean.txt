-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityMode.Variante113dbe7e4a52c86a1377ec555b0468d4a51afab39597a0af613f511dacfd3c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e113dbe7e4a52c86a1377ec555b0468d4a51afab39597a0af613f511dacfd3c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityMode.Variante113dbe7e4a52c86a1377ec555b0468d4a51afab39597a0af613f511dacfd3c1","mathematical_subject":"Foundations.Unclassified","original_sha256":"e113dbe7e4a52c86a1377ec555b0468d4a51afab39597a0af613f511dacfd3c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Core/Objective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Graph-access objectives and modes

Authority and traversal are orthogonal.  `modeForObjective` is only a
deterministic selection function; it grants no authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityMode.Variante113dbe7e4a52c86a1377ec555b0468d4a51afab39597a0af613f511dacfd3c1

namespace Mathematics.GraphAccess

inductive AuthorityMode
  | observe
  | traverse
  | sample
  | propose
deriving DecidableEq, Repr

inductive AccessObjective
  | minimumHop
  | minimumCost
  | goalDirectedCost
  | fairExploration
  | universalCoverage
  | finitePatternCoverage
  | invariantSampling
  | multiscaleDiversification
  | primitiveObstruction
  | limitCylinderAccess
deriving DecidableEq, Repr

inductive TraversalMode
  | bfs
  | dijkstra
  | astar
  | rotor
  | universalSequence
  | deBruijn
  | lowDiscrepancy
  | recaman
  | obstruction
  | cylinder
deriving DecidableEq, Repr

def modeForObjective : AccessObjective → TraversalMode
  | .minimumHop => .bfs
  | .minimumCost => .dijkstra
  | .goalDirectedCost => .astar
  | .fairExploration => .rotor
  | .universalCoverage => .universalSequence
  | .finitePatternCoverage => .deBruijn
  | .invariantSampling => .lowDiscrepancy
  | .multiscaleDiversification => .recaman
  | .primitiveObstruction => .obstruction
  | .limitCylinderAccess => .cylinder

def ModeMatchesObjective
    (objective : AccessObjective)
    (mode : TraversalMode) : Prop :=
  mode = modeForObjective objective

theorem selected_mode_matches_objective
    (objective : AccessObjective) :
    ModeMatchesObjective objective (modeForObjective objective) :=
  rfl

end Mathematics.GraphAccess
