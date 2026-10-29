# Verification target: Order Absolute Value Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40c2fe4a5698d6b97a11949cf90527bcb6b6d994",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40c2fe4a5698d6b97a11949cf90527bcb6b6d994`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/absolutevalue.md) | 41 | `declaration-track:1b8170f32ae89bede05a55b360c461d55372b3f3e0a3a437341cd125a4ba0cc3` |
| 2 | `instance` | [zeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/zerohomclass.md) | 60 | `declaration-track:0602f8cab8e67d1856dd85a1d4b49336fe3654ad99a05e522fa3d304cf391b07` |
| 3 | `instance` | [mulHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/mulhomclass.md) | 66 | `declaration-track:e0a17bfb111123355d51d067e5a531542e8da6cb5a055265e04eabcfcbd9307c` |
| 4 | `instance` | [nonnegHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/nonneghomclass.md) | 70 | `declaration-track:ea0a30d3a4f9f5df08429c197976c83e8ef0ac24645488d3c870eb481d6cdc35` |
| 5 | `instance` | [subadditiveHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/subadditivehomclass.md) | 74 | `declaration-track:9fa2fdc7ed3be964294adcb88e7b26457fd356f95000a85ccd719435349c7381` |
| 6 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/coe-mk.md) | 79 | `result-track:fb10885febd1b891c0fe164a6ec3888a119b472c82c0b34bd957616f4bd2c924` |
| 7 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/ext.md) | 84 | `result-track:ebb50be41218e6d6fba26a8987b699ad771da5d3548180a9c6d8d5a12949d069` |
| 8 | `def` | [Simps.apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/simps-apply.md) | 89 | `declaration-track:815596585007e781f951821e72ea41b5b9e25305ca87890d282eca948e16e354` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:55d3bf74445c8dec427939e14ef94feed5c0186381c6efaf40e2b9f34aa2afec` |
| 10 | `theorem` | [coe_toMulHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/coe-tomulhom.md) | 101 | `result-track:a936eb96e24b7531ee9ff87cef4553cb6a796d04f980e949dd9beff6504433bf` |
| 11 | `theorem` | [nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/nonneg.md) | 105 | `result-track:3b033c9bd74137791e425c177264f1f11429fc9d2a14f416a5db50aa6695ac91` |
| 12 | `theorem` | [eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/eq-zero.md) | 110 | `result-track:68b6a38da8cb2894d51b8f2e0900856d233026c5e5d113022c59a835ac3e6ffd` |
| 13 | `theorem` | [add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/add-le.md) | 114 | `result-track:ca48e6926abdd58023fdaac11bc6522f5201684197cb5e3b957b429cc80511d6` |
| 14 | `theorem` | [map_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/map-mul.md) | 119 | `result-track:499737597c1783451b60fefd8388d4b7593e6a9c0930a63e7f2d5762653e2f2a` |
| 15 | `theorem` | [ne_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/ne-zero-iff.md) | 123 | `result-track:22b899749de91e1dd9ba9c0450986f59983b269650e3f7fd978f14b71ffeea4a` |
| 16 | `theorem` | [pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/pos.md) | 127 | `result-track:ca908f5f27e9b9d0c604450543d81560e14fee23847f00814924a10bb785cda9` |
| 17 | `theorem` | [pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/pos-iff.md) | 132 | `result-track:a2f1f2b8432d0f45d4daecf608ee80e2efbd8e5c2c03bb849db0c4deb9b956ba` |
| 18 | `theorem` | [ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/ne-zero.md) | 136 | `result-track:7a5833fc004d386a99f2bf1da82782891361f7625dd23b3a027460c627575eed` |
| 19 | `theorem` | [map_one_of_isLeftRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/map-one-of-isleftregular.md) | 140 | `result-track:e1d46a4537add7849e51161998c3ceb5203325bf3c5f17b8714bb596f8d08671` |
| 20 | `theorem` | [map_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/map-zero.md) | 145 | `result-track:7508064db76c067763a4f7f56372d54af139f36a645806ce74fa69dbc1e1fa38` |
| 21 | `theorem` | [sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/sub-le.md) | 155 | `result-track:2ec85ee1618e7c01f3ce9b4f42bde95727cec92de71892c4dca4ef9e6e59ea9d` |
| 22 | `theorem` | [map_sub_eq_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/map-sub-eq-zero-iff.md) | 160 | `result-track:df0627ef3ba16d8693161567ed3d3baad1e9fa5361764595c712aa03995e1b0b` |
| 23 | `theorem` | [map_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/map-one.md) | 181 | `result-track:09f912325fe31eb75d0ec5722efd90b76ec2614a110fa3962719a469facc7490` |
| 24 | `instance` | [monoidWithZeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/monoidwithzerohomclass.md) | 185 | `declaration-track:ac024a0e8a6ca0f3b65e6010c54651b233c3965b388af2654ecc6f047050fe3c` |
| 25 | `def` | [toMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/tomonoidwithzerohom.md) | 191 | `declaration-track:93b92beefe4c04df46285224369b44f23825353a34245d8ad5e60961fd08489f` |
| 26 | `theorem` | [coe_toMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/coe-tomonoidwithzerohom.md) | 196 | `result-track:a00029d37e02e70d9f11a88db061e4dade479791a44efd35ca8080b19a45cc30` |
| 27 | `def` | [toMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/tomonoidhom.md) | 201 | `declaration-track:f723ef28e0018bcaccd5913a034d70cc0df5520046d238dcada06ddc2357b85b` |
| 28 | `theorem` | [coe_toMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/coe-tomonoidhom.md) | 206 | `result-track:a7ceaeefa2c8961d76a6c0c7065b6ad8b4138a92d585c6eefaff3eeea113e5cb` |
| 29 | `theorem` | [map_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/map-pow.md) | 211 | `result-track:14d73839b9b0efc9e35026cffea766ad0a726967b4e6692acfcbaa9f4a1c77c4` |
| 30 | `theorem` | [le_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/le-sub.md) | 223 | `result-track:10da9d7a6c698faed69ef5d201949462b95c85b27ebde12226924a4662ad0dea` |
| 31 | `theorem` | [map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/map-neg.md) | 238 | `result-track:36d8dd6be82b151f6023fd9f2cdcd1fe51da8a4caf7b090dad173bd96f35046d` |
| 32 | `theorem` | [map_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/map-sub.md) | 245 | `result-track:f380d3821fb3035329103864a10beca2752b979020daa41d09893b0a0c56a048` |
| 33 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/instance-source-edition-3.md) | 250 | `declaration-track:949b34d1c261fab0b0565fcfd3e2fc2338aba9f5ddf9cb954ab2987fd0a0c5b8` |
| 34 | `def` | [abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abs.md) | 263 | `declaration-track:716a05187aa6f43e848a06ae83e38ddae309fc8531e7d6cc6757b2705b7fc796` |
| 35 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/instance.md) | 273 | `declaration-track:3abb65cbdf84ca868edfba222059e0cdbb2c16ad6ed2ccac57684c618013c32e` |
| 36 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abs-abv-sub-le-abv-sub.md) | 282 | `result-track:2e4dfdee2a12b085e365f02dbcee20452a92b5c4061aced97b46507231bb448d` |
| 37 | `class` | [IsAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/isabsolutevalue.md) | 298 | `declaration-track:2f59e5f7a2fd841a5850a350b7b0bf92b3d76ae6baa673513194a59f1681bcb0` |
| 38 | `lemma` | [abv_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-nonneg.md) | 317 | `result-track:b92d30daa303176a3d2f2eae0c8ae4e74b3a861a7cbe8b821cbc17d9f9c78df3` |
| 39 | `def` | [Mathlib.Meta.Positivity.evalAbv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/mathlib-meta-positivity-evalabv.md) | 323 | `declaration-track:630c4547d29aef18fa8bcc6103d1fd64b69870d489f6f8a001cbace07397b3ad` |
| 40 | `lemma` | [abv_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-eq-zero.md) | 328 | `result-track:4158b3f3d9a518dd437a63d89afb117a15f10ce65304b9d05be2e8800a4dd1ee` |
| 41 | `lemma` | [abv_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-add.md) | 331 | `result-track:255076afdedd46875d5665e2aa4bcf861f3ebcf13b4a42e7ccc8ac900050dcdb` |
| 42 | `lemma` | [abv_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-mul.md) | 334 | `result-track:c15e172ef915417cd8fb1532ec93208bdb084fd6aa2eb2556c2317e726e67a1a` |
| 43 | `instance` | [Order Absolute Value Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/isabsolutevalue-source-line-338-occurrence-2.md) | 338 | `declaration-track:568f248e28e0a448039db7a59a14908db0698a8a471cd9cca1ced26481b1dbad` |
| 44 | `def` | [toAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/toabsolutevalue.md) | 347 | `declaration-track:3b3ed15c5c098e1a3f621cfba1898f4708287d2e7c90b676f269f88c2675bbd0` |
| 45 | `theorem` | [abv_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-zero.md) | 357 | `result-track:c10c6152174cbebc80226869367d0e2c3403322f79b5ffcdc9e140ed5c22b148` |
| 46 | `theorem` | [abv_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-pos.md) | 361 | `result-track:c807fda40e2a23577d7da918e480b535633a44baf81b67a9c1dfe4b29bec55ba` |
| 47 | `instance` | [abs_isAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abs-isabsolutevalue.md) | 371 | `declaration-track:eea876834572bc15ef7e6ba0a4f18ab0b4d0100d320311467d9b45a630b47928` |
| 48 | `theorem` | [abv_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-one-source-edition-2.md) | 387 | `result-track:b19ba89aa7b2d98f5e3b070113e3c8bee03332cf8172728514312eda7173b512` |
| 49 | `def` | [abvHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abvhom.md) | 392 | `declaration-track:05769cdb3be76879fc5d9cba01a1a1acddc70d7c0d881736993681e1c060e7ae` |
| 50 | `theorem` | [abv_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-pow.md) | 396 | `result-track:06b1a40fc0e4938f2d5be9a1dce888472da1d96db277fd5d9ed308eb06147ac1` |
| 51 | `theorem` | [abv_sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-sub-le.md) | 407 | `result-track:a83df31b54cf8e8437328fe308b6020d620ed0b606b7e94eacb58a124a6245df` |
| 52 | `theorem` | [sub_abv_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/sub-abv-le-abv-sub.md) | 411 | `result-track:c2aabfdeedb1afe0d74d5495a1f073e61e97e669041b6758e819ade11887e336` |
| 53 | `theorem` | [abv_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-neg.md) | 429 | `result-track:eeb7a3671295d435969a0003be3f96271c30a4f6c420703be4e34570388d4391` |
| 54 | `theorem` | [abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-sub.md) | 433 | `result-track:7b6c8068795da6e98f80860d1415bd454e96450e6ca05ef70cad036878f7699c` |
| 55 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abs-abv-sub-le-abv-sub-source-edition-2.md) | 449 | `result-track:b39b7100734b53085996980001b8549649b073d1cbf1093f53f6368af38a90a2` |
| 56 | `theorem` | [abv_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-one.md) | 465 | `result-track:2bc0276d523b89a33acd48a22aa17bad395d58223283858d12ad973798a58a24` |
| 57 | `def` | [abvHom'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abvhom-source-edition-2.md) | 471 | `declaration-track:c8f626d6fc6f6019ce28c329069c13fe36681eb2de0af5f5d68b13ae2b21b135` |
| 58 | `theorem` | [abv_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-inv.md) | 481 | `result-track:c6122c30e4677dedcbb796cb515c45ab603e94e12924eba083192bb922d57af7` |
| 59 | `theorem` | [abv_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderAbsoluteValueNamespaced.lean/declarations/abv-div.md) | 485 | `result-track:9a505435323262d7152be4b22476170ce3396b774a8b918c62ee574fcd85b2fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f15018c31074225c415611b5b9d651784e8729aed01d380f058362f267369e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
