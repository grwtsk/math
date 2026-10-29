# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Factorization.Variantf59415276b96eb84ed505112876e328eb0508220c51595136731f2adc7a1f3de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a518078b712dc2c79d0038aa0b895f65e00f2cb` · SHA-256 `f59415276b96eb84ed505112876e328eb0508220c51595136731f2adc7a1f3de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Obstruction factorization

This data layer keeps the branch boundary, primitive core, and later canonical
record separate.  It does not derive infeasibility from a build failure.
-/

namespace Mathematics.BinaryFrontier

structure ObstructionFactorization where
  subjectRef : String
  stateRef : String
  lastFeasibleAncestorRef : String
  firstInfeasibleBoundaryRef : String
  primitiveCoreRef : String
  canonicalRecordRef : Option String
  sourceOccurrenceRefs : List String
  sourceOccurrenceRefs_nonempty :
    sourceOccurrenceRefs ≠ []

theorem obstruction_factorization_retains_occurrence
    (factorization : ObstructionFactorization) :
    ∃ occurrence,
      occurrence ∈ factorization.sourceOccurrenceRefs := by
  cases occurrencesEquation :
      factorization.sourceOccurrenceRefs with
  | nil =>
      exact False.elim
        (factorization.sourceOccurrenceRefs_nonempty
          occurrencesEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9e403c3ab2f9dbba868a808015d5e5ea96f778e5ce2a0afa3b2deaca840ae23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantf59415276b96eb84ed505112876e328eb0508220c51595136731f2adc7a1f3de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
