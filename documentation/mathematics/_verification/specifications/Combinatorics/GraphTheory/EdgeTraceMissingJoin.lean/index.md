# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.EdgeTraceMissingJoin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1c7ebde8628d74a151d604d1563ab34fef21e9c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/EdgeTraceMissingJoin.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/EdgeTraceMissingJoin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1c7ebde8628d74a151d604d1563ab34fef21e9c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace`](../../../../../Combinatorics/GraphTheory/DirectedGraphEdgeTraceHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeTraceMissingJoin.lean/declarations/instance.md) | 13 | `declaration-track:896654281c75b7263d5c5d4fc6be581fd32aff5047bece043d0b18cdca12ab65` |
| 2 | `def` | [firstEdge](../../../../../Combinatorics/GraphTheory/EdgeTraceMissingJoin.lean/declarations/firstedge.md) | 15 | `declaration-track:edfafb5b05ebc33b1a25ee294388585fc4281df63e5314e70ce44761ab913c0b` |
| 3 | `def` | [brokenEdge](../../../../../Combinatorics/GraphTheory/EdgeTraceMissingJoin.lean/declarations/brokenedge.md) | 17 | `declaration-track:06ad679892198f41e8ac1f91eed917febd0c7697ebc0f8e98114cf0dd3946fad` |
| 4 | `theorem` | [valid_initial](../../../../../Combinatorics/GraphTheory/EdgeTraceMissingJoin.lean/declarations/valid-initial.md) | 19 | `result-track:0bc3196fbbaf01cace3d7a2ca410f38a2e7afac258f10cc9b18a4250f7a67578` |
| 5 | `theorem` | [broken_join_rejected](../../../../../Combinatorics/GraphTheory/EdgeTraceMissingJoin.lean/declarations/broken-join-rejected.md) | 21 | `result-track:3ca52ee7e9d0352366ffdc43e222b7a8d9cd1be12c50611b09185ac61ca460e2` |
| 6 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeTraceMissingJoin.lean/declarations/example.md) | 25 | `declaration-track:a736d4e79fb2c2930e2cc0c69a6bc72e750f7f5d41f638bcf37187036ae006d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a60c4dedb4d953360278a94fcc33c6586a2b52bf4e0033491b94adc02c57afdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence302fde78e6892a820f4706a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
