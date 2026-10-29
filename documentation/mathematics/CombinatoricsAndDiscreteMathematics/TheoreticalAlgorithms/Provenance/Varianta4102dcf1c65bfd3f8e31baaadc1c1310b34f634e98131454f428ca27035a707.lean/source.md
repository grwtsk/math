# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Provenance.Varianta4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f88594c2ab65a9d27981c71660652c8dad55bd4` · SHA-256 `a4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Obstruction.Factorization

/-!
# Immutable obstruction provenance

Canonical records deduplicate presentation data while source occurrences and
their event references remain individually reconstructible.
-/

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f5714bfe9fa0dc8e68f667534fab1de6e866c628ba3389786826bde581115dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Varianta4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
