# recursiveRawCumulantFamily_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5bc0527-130b-1cfe-a56e-abdd10bc6126",
  "kind": "theorem",
  "lexical_name": "recursiveRawCumulantFamily_three",
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
  "slug": "recursiverawcumulantfamily-three--4eb28f6a5f6cbc0dd287907b",
  "source": {
    "blob": "b4ec0361ae365d888e9034de3a48d7c51b76fb09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 688,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb28f6a5f6cbc0dd287907b91d198d8db359361e877da21b508759189b9f7e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5bc0527-130b-1cfe-a56e-abdd10bc6126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveRawCumulantFamily_three
    (theta : E)
    (directions : Fin 3 → E) :
    F.recursiveRawCumulantFamily theta 3 directions =
      F.thirdDirectionalCumulant theta directions := by
  rw [recursiveRawCumulantFamily,
    recursiveCumulantFamily_eq_moment_sub_proper
      (F.rawMomentHierarchy theta)
      3 (Nat.succ_pos 2) directions,
    F.recursiveRawProperContribution_three,
    F.rawMomentHierarchy_three_eq_cumulants]
  ring

/-- Recursive raw cumulants now match the verified analytic prefix through
order three. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4ec0361ae365d888e9034de3a48d7c51b76fb09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8da97cb987b77ff82f46a7d505c7f3d0ce316f9075a01ddd67d8effab7ed60c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
