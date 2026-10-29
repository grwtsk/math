# Provenance Namespaced Obstruction Occurrence — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceab0d8e57adfab30c584c75a3327d02bebe8be7` · SHA-256 `b1db5f8fc730bed82a256629873bc483ad514fecba93370a35e7911aa6329249`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObstructionOccurrence.Varianta4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ObstructionOccurrence.Varianta4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707","mathematical_subject":"Computation.DataStructures","original_sha256":"a4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Obstruction/Provenance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.Factorization

/-!
# Immutable obstruction provenance

Canonical records deduplicate presentation data while source occurrences and
their event references remain individually reconstructible.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObstructionOccurrence.Varianta4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707

namespace Mathematics.BinaryFrontier

structure ObstructionOccurrence where
  occurrenceId : String
  sourceNodeRef : String
  sourcePresentationRef : String
  sourceEventRef : String

structure ObstructionProvenance where
  canonicalObstructionRef : String
  occurrences : List ObstructionOccurrence
  occurrences_nonempty : occurrences ≠ []

theorem canonicalization_retains_source_occurrences
    (provenance : ObstructionProvenance) :
    ∃ occurrence,
      occurrence ∈ provenance.occurrences := by
  cases occurrenceEquation : provenance.occurrences with
  | nil =>
      exact False.elim
        (provenance.occurrences_nonempty occurrenceEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f10b72fd7615fd73ea2a4cc68b2ccf3831cb79811bcae0c1665a5eef06e20415 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variant1c003045d20087aa61cc7f5ea6de50fc78a6283e892f791f23e3a5868363a107.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
