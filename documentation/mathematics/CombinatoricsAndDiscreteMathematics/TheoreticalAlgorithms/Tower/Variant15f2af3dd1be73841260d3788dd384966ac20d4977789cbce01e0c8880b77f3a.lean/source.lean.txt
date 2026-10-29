-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tower.Variant03dc535f0982a092baec7f7c6fb63bf621994267f927205e0d2835b60488d29e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03dc535f0982a092baec7f7c6fb63bf621994267f927205e0d2835b60488d29e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Tower.Variant03dc535f0982a092baec7f7c6fb63bf621994267f927205e0d2835b60488d29e","mathematical_subject":"Computation.DataStructures","original_sha256":"03dc535f0982a092baec7f7c6fb63bf621994267f927205e0d2835b60488d29e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Progression/Tower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Progression.Canonical

/-! # Persistent progression towers -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tower.Variant03dc535f0982a092baec7f7c6fb63bf621994267f927205e0d2835b60488d29e

namespace Mathematics.Progression

universe u

/-- A progression is a persistent, nonempty sequence. Appending constructs a
new value and does not mutate the predecessor. -/
structure Tower (Payload : Type u) where
  id : ProgressionId
  states : List (State Payload)
  nonempty : states ≠ []
  progressionDigest : Digest

def Tower.append
    (tower : Tower Payload)
    (next : State Payload)
    (nextDigest : Digest) :
    Tower Payload where
  id := tower.id
  states := tower.states ++ [next]
  nonempty := by simp
  progressionDigest := nextDigest

theorem Tower.append_preserves_prefix
    (tower : Tower Payload)
    (next : State Payload)
    (nextDigest : Digest) :
    ∃ suffix,
      (tower.append next nextDigest).states = tower.states ++ suffix := by
  exact ⟨[next], rfl⟩

end Mathematics.Progression
