# density_reciprocal_closed_head_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7af2cb20-54ca-4ce5-4f7e-5d4e10b1702a",
  "kind": "theorem",
  "lexical_name": "density_reciprocal_closed_head_tail",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "density-reciprocal-closed-head-tail--8f1e0b4273dba59aeac55ed1",
  "source": {
    "blob": "2abcf5fbd94bff1ac777d18dbce34601a7e01346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1e0b4273dba59aeac55ed15feb8e5a8155e98b5da9143c1d0e8f3c74f0b7ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7af2cb20-54ca-4ce5-4f7e-5d4e10b1702a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_reciprocal_closed_head_tail (R : ℝ) :
    (∑' n : ℕ, densityCorrectionReciprocal n) =
      densityClosedReciprocalHead R + densityReciprocalTail R := by
  unfold densityClosedReciprocalHead densityReciprocalTail
  rw [← (density_reciprocal_head_summable R).tsum_add (density_reciprocal_tail_summable R)]
  apply tsum_congr
  intro n
  by_cases hn : (n : ℝ) ≤ R
  · simp [hn, not_lt.mpr hn]
  · simp [hn, lt_of_not_ge hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2abcf5fbd94bff1ac777d18dbce34601a7e01346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a054d2297fa057cc4812e5404554cda746c8c9f938b93e35d7a313d2c7846697 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
