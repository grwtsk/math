# Verification target: Group With Zero Action Pointwise Finset Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ede169a9b28865629f723f0145c4cbb6c743691c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant2eb32f3a5873f745e58710691766e0fcbadc8a76210eb3cf1fbc57dc7ebdded4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ede169a9b28865629f723f0145c4cbb6c743691c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant2eb32f3a5873f745e58710691766e0fcbadc8a76210eb3cf1fbc57dc7ebdded4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant2eb32f3a5873f745e58710691766e0fcbadc8a76210eb3cf1fbc57dc7ebdded4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Pointwise.Finset` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smulzeroclass.md) | 35 | `declaration-track:00a354b02ef9ce9aa910195b3c9def93c457beae42a65c6834fb7c1d305fe2ca` |
| 2 | `def` | [distribSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/distribsmul.md) | 40 | `declaration-track:dd24fa514dc2186e25d3139e39a16b5a1f0f2adbd487de0ab6c2adf7e38244bf` |
| 3 | `def` | [distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/distribmulaction.md) | 46 | `declaration-track:fbf8f1cf5f31aea079cf3a1a7fab76ecb695a11a0e1333a0e061f5fdccd91b85` |
| 4 | `def` | [mulDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/muldistribmulaction.md) | 51 | `declaration-track:f29ce72d1428f81063bd4b1e3c4f150a62a6174f90da83ef6b5ea3a6a4c17db5` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/instance.md) | 58 | `declaration-track:defdaf2a18d45d5aafaa13ca67a4122881fe82aa72201604337b7e909d222096` |
| 6 | `instance` | [noZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/nozerosmuldivisors.md) | 61 | `declaration-track:3c3f71e93a5d31f279bc0234415a8b22311e8ab5f29307602467e21254fcc080` |
| 7 | `instance` | [noZeroSMulDivisors_finset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/nozerosmuldivisors-finset.md) | 66 | `declaration-track:9e7ebbeddeb81fe82732ab187e1a051b8e9b2cb279e2518ce95298e5c89e4d0c` |
| 8 | `lemma` | [smul_zero_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-zero-subset.md) | 73 | `result-track:ed50e4c5dec89dafa474d6e8b860c6cdbdead43b6a225e0d837ef07d2fafb1e0` |
| 9 | `lemma` | [Nonempty.smul_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/nonempty-smul-zero.md) | 75 | `result-track:b13f81e399f9d0cfa4fd751190e79be220483b062c0df04971616776c7bab417` |
| 10 | `lemma` | [zero_mem_smul_finset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/zero-mem-smul-finset.md) | 78 | `result-track:b5963bde9a1ac2d33fb9bd52138d0792da2e2338d44974770b3f4006150bf38a` |
| 11 | `lemma` | [zero_mem_smul_finset_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/zero-mem-smul-finset-iff.md) | 83 | `result-track:784737bf5794d2ec7383926ce75d0ba0159138f6f172d555b2d903aadfc206dd` |
| 12 | `lemma` | [zero_smul_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/zero-smul-subset.md) | 96 | `result-track:d72d045ce2331f82426d96ede2bfb36eeb11acfd8688199a8f3e363d0602795e` |
| 13 | `lemma` | [Nonempty.zero_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/nonempty-zero-smul.md) | 98 | `result-track:533d1c3ac961006cbf8070b449a3f4a5e9dda1625d4b2ffa742a85d4b9ffe045` |
| 14 | `lemma` | [zero_smul_finset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/zero-smul-finset.md) | 102 | `result-track:f6be1d6bcedb316b09e286a41dfd3bc7c4474d2bdf8a0f28e9d45f53658dc769` |
| 15 | `lemma` | [zero_smul_finset_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/zero-smul-finset-subset.md) | 105 | `result-track:bff9a7b4020b02ec567fb2584e14c37179ed189bb3ce171eb790bcc54875fe39` |
| 16 | `lemma` | [zero_mem_smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/zero-mem-smul-iff.md) | 110 | `result-track:efd963a4d0bdc765354e8c05963b50b6efb44b90a2d76c37a13015b6f281da24` |
| 17 | `lemma` | [smul_mem_smul_finset_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-mem-smul-finset-iff.md) | 122 | `result-track:6b8f3fc33ec60b87c8452b8e15097b074dfa31cc46363e5449a71056446ee369` |
| 18 | `lemma` | [inv_smul_mem_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/inv-smul-mem-iff.md) | 125 | `result-track:60af049dde909d9365e44df03727c4857196edc86538c19f299c494ebac8953c` |
| 19 | `lemma` | [mem_inv_smul_finset_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/mem-inv-smul-finset-iff.md) | 128 | `result-track:3bcd9547686bbab64ecf1b45f4f059908df8b9b6ce824ed172dd7f445dba2298` |
| 20 | `lemma` | [smul_finset_subset_smul_finset_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-finset-subset-smul-finset-iff.md) | 132 | `result-track:bbeb612ec9ae1f0c6bf0cc9a31df8f8b4b4ab99ff63fb4397abc1a10e6b006eb` |
| 21 | `lemma` | [smul_finset_subset_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-finset-subset-iff.md) | 135 | `result-track:db612c6802e06182dfce854bb787c3cd9bea5dba2a42667fd47cb1b4a40e4978` |
| 22 | `lemma` | [subset_smul_finset_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/subset-smul-finset-iff.md) | 138 | `result-track:f3fa38c67f5c3c1b3d43ba156a1a46885f20901ee47f658f2df5dedb10ee5d8b` |
| 23 | `lemma` | [smul_finset_inter₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-finset-inter.md) | 141 | `result-track:12c1e97ceb81d42e68193b69b8b3bbb2f0a1b05c6b0c68399528177d0c1b5ade` |
| 24 | `lemma` | [smul_finset_sdiff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-finset-sdiff.md) | 144 | `result-track:d8d7cdd9a72f4b89cc47640f285516a9bca37023c662d485abe69ad69357e443` |
| 25 | `lemma` | [smul_finset_symmDiff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-finset-symmdiff.md) | 148 | `result-track:135106461a231235f5f13763e17419bc88c04e7eb9b2d260d015d79d366acfc0` |
| 26 | `lemma` | [smul_finset_univ₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-finset-univ.md) | 151 | `result-track:b1d043fe9331869e8a6a8870200d24367d03c55f35f35480c874a122c8352680` |
| 27 | `lemma` | [smul_univ₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-univ.md) | 154 | `result-track:18f6dc42288ae74c1dac1a24f395ab1f79bb1455a78ec3c8874e748fd2d8d940` |
| 28 | `lemma` | [smul_univ₀'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-univ-source-edition-2.md) | 160 | `result-track:b9adc5af93e33978c3abff57df3b024277737f5f5c3132caa0924c3bb6755fbb` |
| 29 | `lemma` | [inv_smul_finset_distrib₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/inv-smul-finset-distrib.md) | 169 | `result-track:c7750e779b8f7f367fa52689d5566535cd5d4667a23d9698e0431da9a8c233ac` |
| 30 | `lemma` | [inv_op_smul_finset_distrib₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/inv-op-smul-finset-distrib.md) | 177 | `result-track:e3b0f699e0f9d4bb438d1027addac8d9b33be302665441aae3b1ad82b48a71c4` |
| 31 | `lemma` | [smul_finset_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-finset-neg.md) | 191 | `result-track:be82e2aa04be57a183c473554ffdc6dd0f3ac15b72ffaac784655bb75858c064` |
| 32 | `lemma` | [smul_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionPointwiseFinsetNamespaced.lean/declarations/smul-neg.md) | 195 | `result-track:f4e0c3c0c72e0f4cdf821da1482742c2e52776cc4eb4de6fc06dbef4fe1ac079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84b7bfa1a274049364a732aeedb641c4302311a6602655d55ee7a2ce405b5e56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant2eb32f3a5873f745e58710691766e0fcbadc8a76210eb3cf1fbc57dc7ebdded4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finset/Variant2eb32f3a5873f745e58710691766e0fcbadc8a76210eb3cf1fbc57dc7ebdded4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
