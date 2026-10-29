# MeasurableSMul.op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e43d5e490b0d926c6640c5f67960662885eb3357e72eb955a2b6c142354d91da",
  "kind": "instance",
  "lexical_name": "MeasurableSMul.op",
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
  "slug": "measurablesmul-op-source-edition-2",
  "source": {
    "blob": "516603bd32e805ef10c680232dc58ae149a32d31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 789,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantbe875e6bb5eb92e087f1e6cb6bb3ec4869e6a862e0a268254b3796b8fa0c8536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f02c6cd9ea676143811f96b204f97abc83c2424d0972422d3678ca6e31891fb1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableSetEqFun.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e43d5e490b0d926c6640c5f67960662885eb3357e72eb955a2b6c142354d91da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec instance MeasurableSMul.op {M α} [MeasurableSpace M] [MeasurableSpace α] [SMul M α]
    [SMul Mᵐᵒᵖ α] [IsCentralScalar M α] [MeasurableSMul M α] : MeasurableSMul Mᵐᵒᵖ α where
  measurable_smul_const x :=
    show Measurable fun c => op (unop c) • x by
      simpa only [op_smul_eq_smul] using (measurable_smul_const x).comp measurable_mul_unop

/-- If a scalar is central, then its right action is measurable when its left action is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableSetEqFun.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantbe875e6bb5eb92e087f1e6cb6bb3ec4869e6a862e0a268254b3796b8fa0c8536.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516603bd32e805ef10c680232dc58ae149a32d31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a1dc38b66dda765c433963452948250e7c6d1a76df2479130605886dc57e423 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantbe875e6bb5eb92e087f1e6cb6bb3ec4869e6a862e0a268254b3796b8fa0c8536.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
