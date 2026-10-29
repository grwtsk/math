# Tower Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f7f17437d8479ab062d1cb6615f19175321c3ef` · SHA-256 `ae4f988d842cbb867c94046145ba8a27a9bcbaa6ddc4a4b35d7562fd068704a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96beecb7f64ca289edf22796b8c4f5b86b42f6d0edef291443ad763fdbc91cd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tower/Variant15f2af3dd1be73841260d3788dd384966ac20d4977789cbce01e0c8880b77f3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
