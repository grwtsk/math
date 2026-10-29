# Verification target: GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d121410f7dc011069a8f0e33a9235ea91d6c6db0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/OccurrencePrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d121410f7dc011069a8f0e33a9235ea91d6c6db0`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/OccurrencePrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/OccurrencePrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PathUnfolding`](../../../../../Combinatorics/GraphTheory/DirectedGraphPathUnfoldingHistoricalSourceEdition2.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.EdgeTrace`](../../../../../Combinatorics/GraphTheory/DirectedGraphEdgeTrace.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/trace.md) | 36 | `declaration-track:dc6ac2eb7ed26133550c5d6b68075c79026c2917d1c60e639332380204b4043d` |
| 2 | `theorem` | [trace_injective](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/trace-injective.md) | 39 | `result-track:836a60eecd2f04a1ea0c034dd61110554993ae2eebe4d171848acdbca03865f6` |
| 3 | `theorem` | [trace_comp](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/trace-comp.md) | 47 | `result-track:d5c1ad76d9b8759a025933b1ec80b1c9eca69d3d402d8cb3c7284437ebb6b28f` |
| 4 | `theorem` | [reachable_iff_prefix](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/reachable-iff-prefix.md) | 52 | `result-track:f40918e4aad58acb578bc8d8e7e7ba03b7dd6a191671583750a5cf866ca1967d` |
| 5 | `abbrev` | [ReachableVertex](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/reachablevertex.md) | 86 | `declaration-track:028183a7d7567956237d64500aa121ca32beb5f2c17a6e0ee2853e66f9e074c0` |
| 6 | `def` | [reachableEndpoint](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/reachableendpoint.md) | 89 | `declaration-track:db7739cf1aed4ca78d97366a1ff41bcb769ca66ff8c19dfad630a53f5dc000ca` |
| 7 | `def` | [selectedOccurrence](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/selectedoccurrence.md) | 93 | `declaration-track:034bc7e32048ffe923c795b694e9b1c2ca5dba530b3ecb6aa5a0c635b1416abc` |
| 8 | `theorem` | [endpoint_selectedOccurrence](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/endpoint-selectedoccurrence.md) | 96 | `result-track:4eed2f5736f7a1a1fee0bb0016731ef9885a4f6c49deb74efea904a8fa78fa3a` |
| 9 | `theorem` | [endpoint_right_inverse](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/endpoint-right-inverse.md) | 100 | `result-track:26718eb876ea3e9dbd9a61592ceb7e79553718cc01bfd596e059ee3ddcdd9425` |
| 10 | `theorem` | [reachableEndpoint_surjective](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/reachableendpoint-surjective.md) | 104 | `result-track:ce3fdaa1ea072ef658f9fe0de45fa059897ba3479df3ee26592589326366855f` |
| 11 | `theorem` | [selectedOccurrence_injective](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/selectedoccurrence-injective.md) | 107 | `result-track:7765e36112a0c045aa8207e3d6d8d777bdf8907adadf41a705435aa1927dd198` |
| 12 | `def` | [retractOccurrence](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/retractoccurrence.md) | 111 | `declaration-track:bb0746a7dcdeafe3fa2381aece228d5a37716b60d8c252758900ae9ecc76c8c9` |
| 13 | `theorem` | [retractOccurrence_endpoint](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/retractoccurrence-endpoint.md) | 114 | `result-track:d7ee84141e411b4f3b273c8cef51f1595b8146a705cc4cd9652c75bc9cb80732` |
| 14 | `theorem` | [retractOccurrence_idempotent](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/retractoccurrence-idempotent.md) | 117 | `result-track:b01a88694a741f205dada0fb39808f951545f43e0bece93c4670d51695b631dd` |
| 15 | `theorem` | [retractOccurrence_eq_iff](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/retractoccurrence-eq-iff.md) | 122 | `result-track:e145cbfe58425640edaafa55e8a2257c77a6d618b14527a0fc17bbc5e5438fbf` |
| 16 | `theorem` | [no_left_inverse_of_distinct_histories](../../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/declarations/no-left-inverse-of-distinct-histories.md) | 132 | `result-track:74c0ace6e4eabdcc382cba2e02b834424b8b8a02e12d2794ed5de19a49545020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5df03af14a87075d0c8c62c794594bfb14af5979b383679f51870e99eabc6115 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/OccurrencePrefix.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrence91a9c8029ba9e6d66d16bbbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
