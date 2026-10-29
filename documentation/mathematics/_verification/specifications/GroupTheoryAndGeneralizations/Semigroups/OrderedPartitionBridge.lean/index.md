# Verification target: Ordered Partition Bridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6fdef2947c76e212092dd1d1a65679063023c5f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6fdef2947c76e212092dd1d1a65679063023c5f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FaaDiBruno` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedBlock](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblock.md) | 40 | `declaration-track:444b4510035c19693a6fba2898f5b1085c1426acd416b97017fecbc2642e87a6` |
| 2 | `theorem` | [mem_orderedBlock_iff](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/mem-orderedblock-iff.md) | 47 | `result-track:272420dc32b2e0f79bcd52db668e9421d86983cba82c1b52fec34431956f8dda` |
| 3 | `theorem` | [orderedBlock_card](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblock-card.md) | 57 | `result-track:cbb7c4193b508ac9db34b8122c910dcbefcac29d07e39acd84380dca700b4835` |
| 4 | `theorem` | [orderedBlock_nonempty](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblock-nonempty.md) | 68 | `result-track:5dc21b8596494dd20b476c895186f4a9008f23a8ff68c5f67f853134823d7ad5` |
| 5 | `theorem` | [orderedBlock_index_eq_of_common_mem](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblock-index-eq-of-common-mem.md) | 77 | `result-track:3ec689e819b78b80ca5f7e503d8453d555fb35e5237d5eb11124ca9d64d137b6` |
| 6 | `theorem` | [orderedBlock_injective](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblock-injective.md) | 96 | `result-track:41493a1317e25c204c40d346c7510494ccafa05f00aece6dd0cb0943fdc9c189` |
| 7 | `def` | [orderedBlocks](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblocks.md) | 108 | `declaration-track:ac26149bc2194200a21087180ad50ea19e7ee62d7f4491f8ba8e40c306effc09` |
| 8 | `def` | [orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedtodirectionpartition.md) | 114 | `declaration-track:1b54f353ae4656ba54f3b08a3fd0f8a8b7a68f6a90e76db6312d677876a9c31c` |
| 9 | `theorem` | [orderedToDirectionPartition_parts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedtodirectionpartition-parts.md) | 147 | `result-track:16f34ed4afe82282dddd8a7c84968a4654b334b37d7b9a0924d108b93d00542b` |
| 10 | `theorem` | [orderedToDirectionPartition_card_parts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedtodirectionpartition-card-parts.md) | 155 | `result-track:9f220b1c19b9ca3a038bff96074a9355d4b837a6759e4a3feabf34b3e6dba75b` |
| 11 | `def` | [orderedBlockPart](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblockpart.md) | 165 | `declaration-track:2fdd986fe5b3d00b3f73602ec796d587f955ef58440b05ba675a180677f56974` |
| 12 | `def` | [orderedBlockEquivParts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblockequivparts.md) | 175 | `declaration-track:f8796b1e14fd452f475d20880391c102a31fdc796cc4b5553dbd7edcbbc7492e` |
| 13 | `theorem` | [orderedBlockEquivParts_apply_val](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblockequivparts-apply-val.md) | 192 | `result-track:dc1a2f726f0bfbfcc43f4ab00eb91e22d29bc3bb419e103038f67f1d76299e43` |
| 14 | `theorem` | [orderedBlock_orderEmbOfFin](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/orderedblock-orderemboffin.md) | 203 | `result-track:aae73a50b3cc1f2f43743b4230ebf95ad14e7819406fe405ff66cc4e823a23f9` |
| 15 | `theorem` | [blockDirections_orderedBlock](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/blockdirections-orderedblock.md) | 221 | `result-track:82984eb5cd98f574be594568683d2450ca482d02a64357fc700d37776f1f560c` |
| 16 | `theorem` | [prod_parts_orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/prod-parts-orderedtodirectionpartition.md) | 242 | `result-track:825c01873e1ed46a5c32abd293a0ab636d674f9fb04e1c78f40985e843a9e571` |
| 17 | `theorem` | [sum_parts_orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridge.lean/declarations/sum-parts-orderedtodirectionpartition.md) | 258 | `result-track:b51ada02b2dd4a238683fbb5ed2d0ddd90b737f94d94193566660ab0db35d599` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35aae3bbc1f636b8bb15e6ac70866a4e72b96fc2629340b14510bb338fbb0d09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
