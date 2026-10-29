# Verification target: Ordered Partition Bridge Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8cb3a9f42b739723a31c45ad2d377d606c3a50c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8cb3a9f42b739723a31c45ad2d377d606c3a50c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean.json)

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
| 1 | `def` | [orderedBlock](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblock.md) | 48 | `declaration-track:3ded93b85f62d41360adc328c8b3c0c9f9694e75416a63f482ddaec02f4ea088` |
| 2 | `theorem` | [mem_orderedBlock_iff](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/mem-orderedblock-iff.md) | 55 | `result-track:df2c50fd24edf8a3bada2606b4ca0cbe3d9c6411ec2cbebf9f9aef27c8611cbb` |
| 3 | `theorem` | [orderedBlock_card](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblock-card.md) | 65 | `result-track:795510bc8cf7f0e016cdeb169d088ec3575ef42053e4f7b361b3ec79642c9969` |
| 4 | `theorem` | [orderedBlock_nonempty](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblock-nonempty.md) | 76 | `result-track:062fd9a760e11ce039710060fc107b7df623f39f1d58405eb798a191c0059964` |
| 5 | `theorem` | [orderedBlock_index_eq_of_common_mem](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblock-index-eq-of-common-mem.md) | 85 | `result-track:241e45296b37a956e96f3505e659783db1c97c1b5c00d0c2c6247b36f9e657b2` |
| 6 | `theorem` | [orderedBlock_injective](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblock-injective.md) | 104 | `result-track:2d1ce6ea3326f854cbb204a48aa86f698bbc490d3473c207c7227f9b4109173e` |
| 7 | `def` | [orderedBlocks](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblocks.md) | 116 | `declaration-track:40278ff56453c9ab7badeb0bd829f4d64ea8fd2b4e150bb1a4715e86d5f31add` |
| 8 | `def` | [orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedtodirectionpartition.md) | 122 | `declaration-track:d70809f929be1e0d46fedac456f82ff367d27fb916d9bb984430d0550283a184` |
| 9 | `theorem` | [orderedToDirectionPartition_parts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedtodirectionpartition-parts.md) | 155 | `result-track:869d5498f9df567ce49aba80280338f433f83ee19d03f5e7c019a06c7d1dede2` |
| 10 | `theorem` | [orderedToDirectionPartition_card_parts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedtodirectionpartition-card-parts.md) | 163 | `result-track:2625c1a9bc29645f54e948daf4aa0795a6769448120b4a191f6651648400fff8` |
| 11 | `def` | [orderedBlockPart](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblockpart.md) | 173 | `declaration-track:6611c2bd1dbb0452f19f8eb52fbb21897ac0f3ac31460e75c1c8cf2637715f8a` |
| 12 | `def` | [orderedBlockEquivParts](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblockequivparts.md) | 183 | `declaration-track:867b77be97e0e2b0ae15bf06d77026c2ff16b55617ba0d44d1e772a3c00b5d15` |
| 13 | `theorem` | [orderedBlockEquivParts_apply_val](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblockequivparts-apply-val.md) | 200 | `result-track:8aca7f141e0850fbb5032b5803a5083abb7d8001a0c4fe5971410483a5bdb445` |
| 14 | `theorem` | [orderedBlock_orderEmbOfFin](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/orderedblock-orderemboffin.md) | 211 | `result-track:57ec4ee9e7d49f3d025ea567dd6e35c942d90fa7d3c2960f1798e99758d089ce` |
| 15 | `theorem` | [blockDirections_orderedBlock](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/blockdirections-orderedblock.md) | 229 | `result-track:daaec9517fc88b7f5a42e45b2119f73b9638e1eb85f0dc4c75aab94550d3df76` |
| 16 | `theorem` | [prod_parts_orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/prod-parts-orderedtodirectionpartition.md) | 250 | `result-track:4a46c6248f2c287153fb32c3da65686c717f94623b147a3685af686da003be60` |
| 17 | `theorem` | [sum_parts_orderedToDirectionPartition](../../../../../GroupTheoryAndGeneralizations/Semigroups/OrderedPartitionBridgeNamespaced.lean/declarations/sum-parts-orderedtodirectionpartition.md) | 266 | `result-track:9344f5a95712607415406cb7b077dea8420311b8d5f6d24c2e795c2dd67affb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa0d1e8d65761157e105ec1097dbedd3db3cc18a36ad1ada598d82ecbf9a8447 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
