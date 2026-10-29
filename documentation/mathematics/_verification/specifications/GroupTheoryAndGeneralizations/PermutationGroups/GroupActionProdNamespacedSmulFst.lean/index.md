# Verification target: Group Action Prod Namespaced Smul Fst

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eefac205ba529d3a9518838a2e17619d566bbb5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eefac205ba529d3a9518838a2e17619d566bbb5`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smul.md) | 52 | `declaration-track:2b6ebc83633d58e293345378e3eb4428fe911f0c67a42681e9ba246e931fc49a` |
| 2 | `theorem` | [smul_fst](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smul-fst.md) | 56 | `result-track:37bed50a68ad914b5a71386d00290a2b3a28f9006f66b60c2f75c6096c33213f` |
| 3 | `theorem` | [smul_snd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smul-snd.md) | 62 | `result-track:61605e926405f976a0f1833aec385ffd58f8db3da0bb66ccd7543d366256b891` |
| 4 | `theorem` | [smul_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smul-mk.md) | 68 | `result-track:049f75510cb4f9ed548ccc0027cfa89aa24bc2f5adc7862a1a8f1bc93e7d84e9` |
| 5 | `theorem` | [smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smul-def.md) | 74 | `result-track:25d9447aaa666a2b3913d9555750d9b93f3ac31e544533947d9cd68502051d6b` |
| 6 | `theorem` | [smul_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smul-swap.md) | 80 | `result-track:0c0433e895e7c30f44f214014bf6659ac55e9135ea28d1c6d4f86d0ef520f05a` |
| 7 | `theorem` | [smul_zero_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smul-zero-mk.md) | 85 | `result-track:867f87be7212d0982a2bed45be2e04b089acb5c4b4071fe50e9b8b017ea56f4c` |
| 8 | `theorem` | [smul_mk_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smul-mk-zero.md) | 89 | `result-track:bc4fab29acda8940cddeeca2539a9cd0588d06bc9d0693352474fe172f169fb4` |
| 9 | `instance` | [pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/pow.md) | 96 | `declaration-track:f7725283746095a76f74d410e9bee07fa71f769285f474577d99862ebdea622c` |
| 10 | `theorem` | [pow_fst](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/pow-fst.md) | 101 | `result-track:96d717acfd258efa7ea9a5dbcb3f46c5c104b97eae028f04524ea9f6908801a4` |
| 11 | `theorem` | [pow_snd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/pow-snd.md) | 106 | `result-track:58b300e2ccb1bcbb430a1fe4a1e1704b00f3e5052922f48b37a36403fdb3cfb9` |
| 12 | `theorem` | [pow_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/pow-mk.md) | 114 | `result-track:f6e1668684071123f6dce0de9b2870af2304435219c212c80a64c4e79282d6e1` |
| 13 | `theorem` | [pow_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/pow-def.md) | 119 | `result-track:894d0ba237361cdac1056f5c7ab0463f506bf8198a626b49d603341c3741180b` |
| 14 | `theorem` | [pow_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/pow-swap.md) | 124 | `result-track:af7c2e1ebab83377bbbdeacdc83e988a33e116891519c18e7568cbd2c6970a78` |
| 15 | `instance` | [isScalarTower](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/isscalartower.md) | 129 | `declaration-track:df14cb3555f4a7262750f2ee637189c305d2c8f8c548e0a7921e845b6c7a60a3` |
| 16 | `instance` | [smulCommClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smulcommclass.md) | 134 | `declaration-track:c214f9e9acc8e4f390496bc07a3fdc15bb23357335826a0668889e76b7f8c059` |
| 17 | `instance` | [isCentralScalar](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/iscentralscalar.md) | 139 | `declaration-track:d410522cd52b23bca2fb0274fd57f6f704b19c0e5d1fae3941e48651f6c9cf67` |
| 18 | `instance` | [faithfulSMulLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/faithfulsmulleft.md) | 146 | `declaration-track:2cb8ee14a5557623c5ddc36cc6f8d4b33117c151ed21b27c097a4aefb6dec6fb` |
| 19 | `instance` | [faithfulSMulRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/faithfulsmulright.md) | 154 | `declaration-track:b0826fb8b0e51b902e70bab0bb1b82d3c39210132e1526169921a09a95a542b0` |
| 20 | `instance` | [smulCommClassBoth](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smulcommclassboth.md) | 164 | `declaration-track:2025a94954043a917fba57d95d432cce3140d7191d53c3841c0a56f2c0f8d4df` |
| 21 | `instance` | [isScalarTowerBoth](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/isscalartowerboth.md) | 170 | `declaration-track:72bf0a734322587c82eb803cbc0c0557507d02de8781a88c53b6558f75a139f2` |
| 22 | `instance` | [mulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/mulaction.md) | 176 | `declaration-track:dd8900ebc2163664f8b68280021fd1d0820ebea189867c2a792675ce5ae7db47` |
| 23 | `instance` | [smulZeroClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smulzeroclass.md) | 180 | `declaration-track:cbadb68adbede5aedb928cffb1b968d91acc720a383d0125197fbfd801fafd68` |
| 24 | `instance` | [distribSMul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/distribsmul.md) | 183 | `declaration-track:13067fb5bf5d7670a73466f4460912493f2a12a321b750a1304e3e8c36c42fb7` |
| 25 | `instance` | [distribMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/distribmulaction.md) | 187 | `declaration-track:30742833b4ba63aae603bb95330b0fdd791772f7811fd68b0c86cf9e39f84b77` |
| 26 | `instance` | [mulDistribMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/muldistribmulaction.md) | 191 | `declaration-track:26d2f64429019a7c5c7d95a343d9444205741d3a1798c99083adac5821f5c8c9` |
| 27 | `def` | [smulMulHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smulmulhom.md) | 204 | `declaration-track:26518bd22673cb3a4a0ba395130c650cebd2273744a23edfc1ebc9f15922808d` |
| 28 | `def` | [smulMonoidHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdNamespacedSmulFst.lean/declarations/smulmonoidhom.md) | 213 | `declaration-track:353bcef4a1603a58892dd34096327cf323dc0c5f059644f7da16d046eef86d76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0eaeb33316efd7e7e21b1c006810b3077b34ef013dc6d9d91a6983403b26f405 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Prod/Variant5928fc514a33c8fd3fce93545f17b174926eb9a06f1b2fa6ddc35b0f48d89347.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
