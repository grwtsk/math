# Verification target: Positive Linear Map Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4ef050501c4bf66c19a9cc0d7e2d1df422813e",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant2832490559d46f1c505fb98339bcef1b0361d440867471e52b64aac1bc19c9af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4ef050501c4bf66c19a9cc0d7e2d1df422813e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant2832490559d46f1c505fb98339bcef1b0361d440867471e52b64aac1bc19c9af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveLinearMap/Variant2832490559d46f1c505fb98339bcef1b0361d440867471e52b64aac1bc19c9af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveLinearMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/positivelinearmap.md) | 32 | `declaration-track:6297aa2e9bfc55ec00b0f595e95c9e42474be1cf2c5b96d08c24d4e3f871459b` |
| 2 | `def` | [PositiveLinearMap.ofClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/positivelinearmap-ofclass.md) | 50 | `declaration-track:a750662361b0247713e845664fb9a41a3c328d70b476314f915ff7bc139c2cc1` |
| 3 | `lemma` | [OrderHomClass.of_addMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/orderhomclass-of-addmonoidhom.md) | 58 | `result-track:8d87901b60d158fe93a0c68fb2ee4d8eff38f18899847b7caa57af29813eedce` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-7.md) | 78 | `declaration-track:8d9120118cf291cd14b25a7515cfcc86bf506017e980cb2eb6e3d2956c194f6f` |
| 5 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/ext.md) | 90 | `result-track:32b70f7ca9432726adf3e313c9fc15eeca6a75412313f2e669dc092bd793fa79` |
| 6 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/id.md) | 95 | `declaration-track:b0d769559d3d3e2d04c2605cbfe6055db6f7268012e5a6311381cc4beaef5f34` |
| 7 | `lemma` | [toOrderHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/toorderhom-id.md) | 99 | `result-track:46d591eee4f7326786cbedac16646b9e8eb49b04f7c950fb4caab3ca359eeead` |
| 8 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/comp.md) | 103 | `declaration-track:b35222486168bab4d166fa0be38c266b74b16c6a40648ae42cb2e7e667b32544` |
| 9 | `lemma` | [toOrderHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/toorderhom-comp.md) | 107 | `result-track:4cae413341c7b6db850b3ea513d1436a267a1a98a59e07e24c63f2f8d513c846` |
| 10 | `lemma` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/comp-assoc.md) | 111 | `result-track:a1a3e317c460fbe5cf3d13fa298a45409a1a169f1ec968e39aefd5f943e95d98` |
| 11 | `lemma` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/comp-id.md) | 115 | `result-track:81282d852c591593c261182028dc625e5e7889db66340de7b37b5f4111210120` |
| 12 | `lemma` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/id-comp.md) | 116 | `result-track:2ca0340c28c83425a38fa1f89f12d826fbc030e351cd1454b7bcd23f7999bead` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-3.md) | 118 | `declaration-track:44ccbc3f97716be0e8e158f693a74bc73add4f11cad0e558a806aa96bbd76810` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-9.md) | 122 | `declaration-track:aa102b72835b2ad64ddc9f24c6780cf4371034af5d554934a9eb3f2e8165dbe4` |
| 15 | `lemma` | [map_smul_of_tower](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/map-smul-of-tower.md) | 126 | `result-track:12b9eb50eab0f39b6719150380279b40aba049c36ff37de1382ad5552fae12da` |
| 16 | `lemma` | [map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/map-nonneg.md) | 132 | `result-track:f2022698c52f4d200a710deafb30f25674e459ae4f30882f11298a6f14d35ac3` |
| 17 | `lemma` | [coe_toLinearMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/coe-tolinearmap.md) | 136 | `result-track:cb007eac30649fc9056ab9999fe571593fae90043a2be2ac6b19c65b6e506f3c` |
| 18 | `lemma` | [toLinearMap_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/tolinearmap-injective.md) | 139 | `result-track:34f4ef480aedc9250bb8e98f3578cc31e24e8bf0ee43932d682848446c85aeb1` |
| 19 | `lemma` | [toLinearMap_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/tolinearmap-inj.md) | 143 | `result-track:405b8c870f508af0104483235d2680d46e7bc93e383173166caf2c0a0420ad84` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-8.md) | 146 | `declaration-track:a271fa624a5b46d4c11575e78fb04a23707166e7061e201d83639e7179d25b3c` |
| 21 | `lemma` | [toLinearMap_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/tolinearmap-zero.md) | 150 | `result-track:be0a3a6dec896e2ec3805a345b0b2d9aa610f330a32414670cb5583a13d5ed99` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-4.md) | 153 | `declaration-track:488e999e887a94edd53173650031e391ff6f2aaad7a2476aec6135e4acdb8791` |
| 23 | `lemma` | [zero_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/zero-apply.md) | 157 | `result-track:488ef0406b1d682edc5d6ea021f01d05b568801fb3a5d9332b7594f83d044215` |
| 24 | `lemma` | [zero_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/zero-comp.md) | 159 | `result-track:9aec5127bf9b5936b34fa8320a259b378a90c1fa7660297839d05c88647aaa8f` |
| 25 | `lemma` | [comp_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/comp-zero.md) | 160 | `result-track:382e11352a83214c0ca44d34bdff7bae6f77a71cf052c9b8f668036c06b70b0a` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-2.md) | 164 | `declaration-track:376fcf45e4a970a5f7955820b6a0e175a90a5714a59de143e88e804f104db0d6` |
| 27 | `lemma` | [toLinearMap_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/tolinearmap-add.md) | 169 | `result-track:eaa6db209c58cb44f92f13399abdd322a6282582f1256b94d609ebbfe252fe96` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-5.md) | 173 | `declaration-track:82211f0cfa191032e9930981d5a3eaf90568f8b73ff46987b35ff2a6914cd9f9` |
| 29 | `lemma` | [add_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/add-apply.md) | 177 | `result-track:a5337f8931678e73f09d4675854485abd7ab5cb2a4fb2453f0929b4238652797` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-10.md) | 179 | `declaration-track:cf240437d3ff365181a7feb1de4ed5ee366e43e96d18247c23f456c20348594b` |
| 31 | `lemma` | [toLinearMap_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/tolinearmap-nsmul.md) | 186 | `result-track:5b96ae37df9a0b18635dd2bc63a80507ed4af9cf3658f9ebba11934397791f1f` |
| 32 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance-source-edition-6.md) | 190 | `declaration-track:89f12dfbcb31e52442444a6faf9192164266d9c76f9d3584ad726b49b228ccac` |
| 33 | `lemma` | [nsmul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/nsmul-apply.md) | 194 | `result-track:9795be82d0005a19f137aacac3d89546c08817eddb561af31119318bddd61b1e` |
| 34 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/instance.md) | 196 | `declaration-track:2bdd3f355a4fd4233b55aa4f4af644f9a0b3d9fc7387b83c6f779c6c3a74e0ab` |
| 35 | `def` | [mk₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapPublic.lean/declarations/mk.md) | 209 | `declaration-track:c2542d9a36d4984111926150eea1f4b22d5bf66e0f0cd33ffc97c06d630757a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c91cbc5a03edc430cb101ec490441062ddbc39e33686eed97314f2019d86804f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant2832490559d46f1c505fb98339bcef1b0361d440867471e52b64aac1bc19c9af.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveLinearMap/Variant2832490559d46f1c505fb98339bcef1b0361d440867471e52b64aac1bc19c9af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
