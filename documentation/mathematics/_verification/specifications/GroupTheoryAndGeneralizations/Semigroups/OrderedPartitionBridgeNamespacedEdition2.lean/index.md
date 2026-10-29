# Verification target: Ordered Partition Bridge Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2277a01aa090dd6dd1a563d780e2ea4d74cba32c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2277a01aa090dd6dd1a563d780e2ea4d74cba32c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FaaDiBruno` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedBlock](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblock.md) | 48 | `declaration-track:39d1e53d398053060e207a51f11f55a6ed8ce7223a981e9ee09145948cafff2f` |
| 2 | `theorem` | [mem_orderedBlock_iff](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/mem-orderedblock-iff.md) | 55 | `result-track:87096c2227f34d246dc027e45a032b961aaf0124f5eef63c4d4643162fdadfb8` |
| 3 | `theorem` | [orderedBlock_card](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblock-card.md) | 65 | `result-track:a4446afb2ad253d75d3d392e336c667d8967e584e42324df59b71a5c23de8f52` |
| 4 | `theorem` | [orderedBlock_nonempty](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblock-nonempty.md) | 76 | `result-track:3d5577d26e4b4640b46543be3cb5ea8d2b8b2e100284ed62d0fb94b1f02d3c9c` |
| 5 | `theorem` | [orderedBlock_index_eq_of_common_mem](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblock-index-eq-of-common-mem.md) | 85 | `result-track:ad8d2dfd64c6637228705c301bd256ecbeb12b874040ef7176055d89558961a5` |
| 6 | `theorem` | [orderedBlock_injective](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblock-injective.md) | 104 | `result-track:e00880c5387db40a036bf925a43a13d4601424f0891487a505446e9c6fe3a3ca` |
| 7 | `def` | [orderedBlocks](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblocks.md) | 116 | `declaration-track:51c6761b911529da00628579b371c54c02c79ef01ebee801209fed08b6712fba` |
| 8 | `def` | [orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedtodirectionpartition.md) | 122 | `declaration-track:15222e880f9986631116fc5d2518516ae58bb087523255ebba4341adb4588aa6` |
| 9 | `theorem` | [orderedToDirectionPartition_parts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedtodirectionpartition-parts.md) | 155 | `result-track:6e3a4a960273c82f1e24393a27a3abcde64545a56b7a1b92fdb1bb3a3f7c5581` |
| 10 | `theorem` | [orderedToDirectionPartition_card_parts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedtodirectionpartition-card-parts.md) | 163 | `result-track:d9036e84735594e68a56b96e477693b6c2fae3f6dba98f5ab3f0d66ec8af3fbd` |
| 11 | `def` | [orderedBlockPart](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblockpart.md) | 173 | `declaration-track:73b45234cd427261eb88257fb163cf3dfb8b76b18d4d5e58ef226fdc10b50e23` |
| 12 | `def` | [orderedBlockEquivParts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblockequivparts.md) | 183 | `declaration-track:5c6cc9ebee7fa4ad3260e3bf7f712f019d7d0615d0b75477d37378c5f8f5400a` |
| 13 | `theorem` | [orderedBlockEquivParts_apply_val](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblockequivparts-apply-val.md) | 199 | `result-track:4950b131f3aefc5ae6b96a594d7e50577900a52e00968ebe1f1a9055946fd9d6` |
| 14 | `theorem` | [orderedBlock_orderEmbOfFin](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/orderedblock-orderemboffin.md) | 210 | `result-track:002e0138ce08b361ae85ec31ec8607cbcd4ea18871ccec7c667e1a0e66591359` |
| 15 | `theorem` | [blockDirections_orderedBlock](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/blockdirections-orderedblock.md) | 228 | `result-track:f22dee7ebec8483a61936c8b2256bbfc8fee2037ec5242df0bdecc00ff2cef1c` |
| 16 | `theorem` | [prod_parts_orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/prod-parts-orderedtodirectionpartition.md) | 249 | `result-track:88b346cb6bd81421839e94b1d51b0466003076d00233ff13465a1600ad888b16` |
| 17 | `theorem` | [sum_parts_orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespacedEdition2.lean/declarations/sum-parts-orderedtodirectionpartition.md) | 265 | `result-track:cb196756a80c33e382bbb9c73262666c4691918cea8c0c7fbf692c2c89b9ace5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11dc191ef73fb4356e69b9de231b9dabe91361566757400803b35d4747870617 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
