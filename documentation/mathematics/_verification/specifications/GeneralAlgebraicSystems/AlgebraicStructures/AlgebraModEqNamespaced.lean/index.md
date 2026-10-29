# Verification target: Algebra Mod Eq Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "741d09a75b999f3af587eb9f8732473a344527b5",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant3c48b18820d829bb72d450c776389f1301ee70af165b4e91c97acf25ba7fcfc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `741d09a75b999f3af587eb9f8732473a344527b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant3c48b18820d829bb72d450c776389f1301ee70af165b4e91c97acf25ba7fcfc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant3c48b18820d829bb72d450c776389f1301ee70af165b4e91c97acf25ba7fcfc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ModEq` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq.md) | 55 | `declaration-track:ac8155ccfa65168f1cacd1cf44066566dc7fa353001be3431a05f16e3db9c9a3` |
| 2 | `theorem` | [modEq_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-refl.md) | 62 | `result-track:f81b7206a334f5074005997fcf6c3684d920215f057f6762055eeebf08085c47` |
| 3 | `theorem` | [modEq_rfl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-rfl.md) | 65 | `result-track:0f0b15933e86cf3547a61736f62e95187728fe398a66dd26dba299a035d6a4ce` |
| 4 | `theorem` | [modEq_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-comm.md) | 68 | `result-track:70a8417a7929a4e9e2c5f2bc1fe175b1a93cca13d3ea75147f971d8a14a54e48` |
| 5 | `theorem` | [ModEq.trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-trans.md) | 76 | `result-track:74254ecf763c4497387030b19b9c3629a1354a8d6636a0f3e5a995b66c44363b` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/instance.md) | 79 | `declaration-track:a80bf4a7c3c403d0365f86ae40c34bc42d1e7a6e12489fb41a2fb3882ca4beae` |
| 7 | `theorem` | [neg_modEq_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/neg-modeq-neg.md) | 83 | `result-track:d7f5db4cc797244fdcae0d1f6c67828a9330cd0dbf935e22afb076a59a589d3b` |
| 8 | `theorem` | [modEq_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-neg.md) | 89 | `result-track:e3fd30e65b43a024fa9f3fa28990b733eb1bf4696b1ae14df00e04fcf64f2910` |
| 9 | `theorem` | [modEq_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-sub.md) | 94 | `result-track:950f5e2df263a1e87693ff974f6d8d5f1ea5d90aaeee8ba8109ba0cea0ee23b1` |
| 10 | `theorem` | [modEq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-zero.md) | 98 | `result-track:32fc000fd559893ec24733ff63b8b97bffb47980081a4758bdc35cf5c80b8bc8` |
| 11 | `theorem` | [self_modEq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/self-modeq-zero.md) | 101 | `result-track:c137ed040a281a82fa4a9a8e30c3dc5cb4a108385b05aea333639e63547b525a` |
| 12 | `theorem` | [zsmul_modEq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/zsmul-modeq-zero.md) | 105 | `result-track:faa5585eebf94d085f0ea41854aa5f6fee66eb4d18288152e2392deb86e5ef3c` |
| 13 | `theorem` | [add_zsmul_modEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-zsmul-modeq.md) | 108 | `result-track:251db57bda88cf36df779c47514872a98efd7eb75328a78e6a8270a21383ea63` |
| 14 | `theorem` | [zsmul_add_modEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/zsmul-add-modeq.md) | 111 | `result-track:0577ac6f77f9fb5e27ee4612733030a4e52592372c6a21ee0e528153ed900d75` |
| 15 | `theorem` | [add_nsmul_modEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-nsmul-modeq.md) | 114 | `result-track:b9b5d3bf4c6aea3ca9ccbcc99f9f72d7621ba3381e3466df296565587fa395be` |
| 16 | `theorem` | [nsmul_add_modEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/nsmul-add-modeq.md) | 117 | `result-track:226b5f0d93018a4116d6145c7d1b01c4cd0861bc1812a269e754d9682b646342` |
| 17 | `theorem` | [add_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-zsmul.md) | 122 | `result-track:9a42b8525ccc53653addc583070a51f0422e16453a5855ff2f3ccf9b2c46de63` |
| 18 | `theorem` | [zsmul_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/zsmul-add.md) | 125 | `result-track:8321af6ab558e7d464c7b35c45a16e68f0f6be9c817916d57ac4e7578209cfde` |
| 19 | `theorem` | [add_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-nsmul.md) | 128 | `result-track:360f09f45f8ee4eeaa9c167628a3ec402e2ae23c861236aaa177da9e2ded0f51` |
| 20 | `theorem` | [nsmul_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/nsmul-add.md) | 131 | `result-track:2db7b563c614d5de48a5df88f87aa07e0c1c5d808ee3c79bbdc118bafd48d7fd` |
| 21 | `theorem` | [of_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/of-zsmul.md) | 134 | `result-track:16f86376410bfb3edc29dead77cd9245c068f9c7ed26dc14f742b280946c4d2e` |
| 22 | `theorem` | [of_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/of-nsmul.md) | 137 | `result-track:db51cfd3984fb0c9fbfbbb620022661d0d4080c6711358d41bc48015d730b942` |
| 23 | `theorem` | [zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/zsmul.md) | 140 | `result-track:f92831995a1f72ebbea413b42b9780d801581e9adecafd8921ca96e550e4526f` |
| 24 | `theorem` | [nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/nsmul.md) | 143 | `result-track:afe53e0ba02e3f2249b00c7bbd22846738ef5ff8290d9883eee8c43eb6c5e4bf` |
| 25 | `theorem` | [zsmul_modEq_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/zsmul-modeq-zsmul.md) | 149 | `result-track:68c3d1a178d749c0d7c3eff8839ae0c44513d4ae9bd2a15a644e95fdf97e15c6` |
| 26 | `theorem` | [nsmul_modEq_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/nsmul-modeq-nsmul.md) | 154 | `result-track:c5559a4755821a0ac0b67da949463048a595990d684ab4decf02ed7a2071b470` |
| 27 | `theorem` | [add_iff_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-iff-left.md) | 165 | `result-track:01038f315d1801a9ad61dc2a5d741d8712397326d46a480bf27f00d023bd8763` |
| 28 | `theorem` | [add_iff_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-iff-right.md) | 170 | `result-track:b9b483872b0347983e96cec1e300e79d96033fe9974f77c444615696467f84ee` |
| 29 | `theorem` | [sub_iff_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-iff-left.md) | 175 | `result-track:018ed2401bdef0722440b2a26bc6df9535a614067c91ee55436b69934a00a78b` |
| 30 | `theorem` | [sub_iff_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-iff-right.md) | 180 | `result-track:0b40340ef94cb2f51279473c30588e0cce9d4d20c7a41e2281d6ab26a9a4e6d9` |
| 31 | `theorem` | [add_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-left.md) | 192 | `result-track:fe88f8e058c3520e5566d8b089753297e40caf9f5debf7f211191b1c2105e587` |
| 32 | `theorem` | [sub_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-left.md) | 195 | `result-track:1fd847a1625f14ef1a6b56c33422177732e378666559a485ee85002c0a91a331` |
| 33 | `theorem` | [add_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-right.md) | 198 | `result-track:6634717b8d4876166198f0a7ec5c5c4a33bc3b4238ea9a7368c0daec3483635e` |
| 34 | `theorem` | [sub_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-right.md) | 201 | `result-track:15284ca8794ab5a52b5447a0eca35e3e2ac5ec1bab21d89e1bdb488e86755182` |
| 35 | `theorem` | [add_left_cancel'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-left-cancel.md) | 204 | `result-track:5aa80bef9e15e47d5e3f449bd4fac0f5285da0752768e7de13dcfe7dd7c9ab18` |
| 36 | `theorem` | [add_right_cancel'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-right-cancel.md) | 207 | `result-track:119ff97c7f325be7f4326286d79413664b86e0b86877934a81d3c972cc8aab7b` |
| 37 | `theorem` | [sub_left_cancel'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-left-cancel.md) | 210 | `result-track:b721ce2fcb9ed1d68df0d5dee59d73748abc23cda3ee64efc453f7b6c8c4917c` |
| 38 | `theorem` | [sub_right_cancel'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-right-cancel.md) | 213 | `result-track:9509af538a5010b9626c7f30b911131fb64c00aa02a8f3ea92aaa2f1c4b08a88` |
| 39 | `theorem` | [modEq_sub_iff_add_modEq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-sub-iff-add-modeq.md) | 218 | `result-track:68567fb9d4d55142a31664d1fe886972f7e31e5abd6f9786230cefa6cb8a12ef` |
| 40 | `theorem` | [modEq_sub_iff_add_modEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-sub-iff-add-modeq-source-edition-2.md) | 221 | `result-track:9b77a52ce4f3e3dc1709c2b9835f169aa6695b71755e079cd9754f20794dc037` |
| 41 | `theorem` | [sub_modEq_iff_modEq_add'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-modeq-iff-modeq-add.md) | 224 | `result-track:5c9701b33c7bc373e1eef98050f3f71387a27f28adbb4f687d11cfffcb84aa74` |
| 42 | `theorem` | [sub_modEq_iff_modEq_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-modeq-iff-modeq-add-source-edition-2.md) | 227 | `result-track:b6c892474547e720446bf509fc1a51231d3df3af82e6a63b9498134117a45ee4` |
| 43 | `theorem` | [sub_modEq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/sub-modeq-zero.md) | 231 | `result-track:a5a75a125bdb19395e048dab4fe0ff1f29a9c3a9f17111439603e0c594026777` |
| 44 | `theorem` | [add_modEq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-modeq-left.md) | 234 | `result-track:b06b2a9dd5883368ae13359fa7d9d0a937b0d23cdc21061197c8aefbacec93b4` |
| 45 | `theorem` | [add_modEq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/add-modeq-right.md) | 237 | `result-track:b560b562b2f6d17bd1e28b5d093fdf43ffb9a1c8b5c0867996879614fe006a01` |
| 46 | `theorem` | [modEq_iff_eq_add_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-iff-eq-add-zsmul.md) | 239 | `result-track:bb9219210200a589ac0e508f90ae983df736d8b738749b6a7e5dd2018f0bbc7a` |
| 47 | `theorem` | [not_modEq_iff_ne_add_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/not-modeq-iff-ne-add-zsmul.md) | 242 | `result-track:b9608b6acb6a78b9d92a93015baf955e1df710c07e47fe881a95d4f89ab5a488` |
| 48 | `theorem` | [modEq_iff_eq_mod_zmultiples](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-iff-eq-mod-zmultiples.md) | 245 | `result-track:d41ff3315b67598b8ea7b09d4f33738855016e744581a118d9005fcbc74e158b` |
| 49 | `theorem` | [not_modEq_iff_ne_mod_zmultiples](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/not-modeq-iff-ne-mod-zmultiples.md) | 249 | `result-track:77feb43cd5c845833b77ae5a50bdc455b0a2771032cac6806b86e1aac3efadf9` |
| 50 | `theorem` | [modEq_iff_int_modEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/modeq-iff-int-modeq.md) | 256 | `result-track:99c30787b6df48f70956725e87551d69bd697c3567323c7216664a995b4a9ca2` |
| 51 | `theorem` | [intCast_modEq_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/intcast-modeq-intcast-source-edition-2.md) | 264 | `result-track:8bb94bf41b3e4266eb0f31cc92686761f8f661db5ea4ced156378e846241773a` |
| 52 | `lemma` | [intCast_modEq_intCast'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/intcast-modeq-intcast.md) | 269 | `result-track:03a220357be6d098a26dac8281db79be5e7f84390a86aa63d91f58d08a845859` |
| 53 | `theorem` | [natCast_modEq_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/natcast-modeq-natcast.md) | 273 | `result-track:1c1be8538567b4f1adb18db45295685723075dc9e2a0d82b296f9e45f43c3369` |
| 54 | `lemma` | [div_modEq_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/div-modeq-div.md) | 286 | `result-track:2a5fcc9aa2d9fcdd803f95525237d40d115cb1762de99088820cb0c9e9310de3` |
| 55 | `lemma` | [mul_modEq_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/mul-modeq-mul-right.md) | 289 | `result-track:7336c19c2700d933047ff907cdaa2314e716fb631e0fab7ba40bebc557ef4168` |
| 56 | `lemma` | [mul_modEq_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEqNamespaced.lean/declarations/mul-modeq-mul-left.md) | 297 | `result-track:caefe73a6852e1b604e20ffd16053d21e392bb8517979d2a4c0bffb1a280a435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c3b93b6641d53390cbb46e374ffce478212f660dd40d3d58376bc5578f904ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant3c48b18820d829bb72d450c776389f1301ee70af165b4e91c97acf25ba7fcfc0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant3c48b18820d829bb72d450c776389f1301ee70af165b4e91c97acf25ba7fcfc0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
