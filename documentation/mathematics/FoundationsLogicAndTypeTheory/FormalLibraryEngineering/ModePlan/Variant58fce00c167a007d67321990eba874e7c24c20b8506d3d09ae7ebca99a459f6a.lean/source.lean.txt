-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TieBreaker.Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TieBreaker.Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81","mathematical_subject":"Foundations.Unclassified","original_sha256":"94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/ModePlan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Mode

/-!
# Certified mode plans

Primary modes carry semantic support proofs.  Tie breakers are separately
restricted so they cannot silently replace the primary objective key.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TieBreaker.Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81

namespace Mathematics.GraphAccess

inductive TieBreaker
  | canonicalOrder
  | rotor
deriving DecidableEq, Repr

inductive TieBreakerAllowed :
    TraversalMode → TieBreaker → Prop
  | canonical (mode : TraversalMode) :
      TieBreakerAllowed mode .canonicalOrder
  | rotorBfs :
      TieBreakerAllowed .bfs .rotor
  | rotorDijkstra :
      TieBreakerAllowed .dijkstra .rotor
  | rotorAStar :
      TieBreakerAllowed .astar .rotor

structure ModePlan
    (objective : AccessObjective) where
  primary : TraversalMode
  supports : Supports primary objective
  tieBreaker : TieBreaker
  tieBreakerAllowed :
    TieBreakerAllowed primary tieBreaker
  revision : ModeRevision

def canonicalPrimaryMode :
    AccessObjective → TraversalMode
  | .minimumHop => .bfs
  | .minimumCost => .dijkstra
  | .goalDirectedCost => .astar
  | .fairExploration => .rotor
  | .universalCoverage => .universalSequence
  | .finitePatternCoverage => .debruijn
  | .invariantSampling => .lowDiscrepancy
  | .multiscaleDiversification => .recaman
  | .primitiveObstruction => .obstruction
  | .limitCylinderAccess => .cylinder

theorem canonicalPrimaryMode_supports
    (objective : AccessObjective) :
    Supports (canonicalPrimaryMode objective) objective := by
  cases objective <;> constructor

structure ModeProfileFamily
    (G : GraphCut) where
  Profile : TraversalMode → Type
  digest :
    ∀ mode, Profile mode → ProfileDigest

end Mathematics.GraphAccess
