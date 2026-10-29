# higherMoment_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffacbf09d9bf9cc5878631527f9f45e8b8149e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3c7c17b-f223-df97-fa72-8df6be5e065c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:261b65f8-3771-dba5-c5b8-f7ef1660c2a1",
  "kind": "theorem",
  "lexical_name": "higherMoment_factorization",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "highermoment-factorization",
  "source": {
    "blob": "ffacbf09d9bf9cc5878631527f9f45e8b8149e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83744d406fee23027c23501cd698359c09eb424bb835db5c076fcfb054244c14",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:261b65f8-3771-dba5-c5b8-f7ef1660c2a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherMoment_factorization (p k : ℕ) (hk : 3 ≤ k) :
    higherMoment p k = integerMoment p *
      ((k : ℝ) ^ 2 * ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ (k - 3)) := by
  have hp3 : ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ 3 = (p : ℝ) ^ (-(3 / 2 : ℝ)) := by
    simpa using halfPower_pow p 3
  have hsplit : ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ k =
      ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ 3 *
      ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ (k - 3) := by
    rw [← pow_add, Nat.add_sub_of_le hk]
  unfold higherMoment integerMoment
  rw [div_eq_mul_inv, ← Real.rpow_neg (Nat.cast_nonneg p),
    ← halfPower_pow p k, hsplit, hp3]
  ring

/-- Uniform bound over all bases at least two and all actual exponents at least three. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffacbf09d9bf9cc5878631527f9f45e8b8149e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=538c48b50121a07fdc9efc325159f69dd658d37c646b5ce0182313663090ff3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/02/0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
