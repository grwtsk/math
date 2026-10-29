# Verification target: Ring Theory Subring Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a7e91e6a598bac845be6974d92a6d9ab37dda03",
  "lexical_observation_count": 224,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a7e91e6a598bac845be6974d92a6d9ab37dda03`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subsemiring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SubringClass](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/subringclass.md) | 77 | `declaration-track:7c6182bf68be618d032e22b7d9b02bfb488f7a632910c862345fbabb22129579` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-32.md) | 82 | `declaration-track:fde4cefb9503c01bb9de48ad266148f3eb51d4290a0266ff6d8a2842331f9a0c` |
| 3 | `theorem` | [coe_int_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-int-mem.md) | 89 | `result-track:f1a7c5b711580154d0fb12508eded4029dcdc4fb3fb65f083cfffaccd80b8704` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-23.md) | 94 | `declaration-track:c985c4918745218fc4dcc6f35de07db4b3b266a0e2c261efb3449b903276bd9a` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-7.md) | 100 | `declaration-track:17f74db40e27f0f269074547ef185e0a70ddf3c6ca72576cab0909aa452cce37` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-26.md) | 107 | `declaration-track:dcab788e2e274c09fa8ee458e22271bd6b70d08c00b411706c9d14f9922bef1b` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-19.md) | 115 | `declaration-track:95bc6cb010cd1c3709a5736f3518904c2f47a0f8254fceae42c79b2ead33281a` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-12.md) | 121 | `declaration-track:66e247ec9b1385c4df97d3e6546a920d55e802f17d06ac5a5a3af50aa94bfbe7` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-24.md) | 129 | `declaration-track:ca5b3402cfc5176ad07757ccf4bdf788a7aac6d824ceed794cae269a01835e07` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-2.md) | 137 | `declaration-track:03dd20fc2f711b8f02e1a1d551a54c872ef49e028afb73bf70e63f2d005e9093` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-18.md) | 146 | `declaration-track:93d5caaf804d681717073079e2cac8f7780cb6d1405c8cbdb4b21f0bb81671a3` |
| 12 | `def` | [subtype](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/subtype-source-edition-2.md) | 154 | `declaration-track:fb2e46da263381b1938b198c70b17d4f758bb37ef3ea2feffd4150beb91ef5ed` |
| 13 | `theorem` | [coeSubtype](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coesubtype.md) | 160 | `result-track:523254441a46901f3301d450b0d4ae39aba16666bb312881d4ba195778574a5d` |
| 14 | `theorem` | [coe_natCast](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-natcast-source-edition-2.md) | 165 | `result-track:64cf16b7e47a0e6d72d02a619f7f418f5aed575f56fdc9cd463909b7c6608a01` |
| 15 | `theorem` | [coe_intCast](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-intcast.md) | 170 | `result-track:b9dd3ce2490a28e480e4256647ebdd54138a7d07cd526a61bb0f95d4f5485479` |
| 16 | `structure` | [Subring](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/subring.md) | 183 | `declaration-track:a00c14535db742e0533646d128824b68e5500630b05545cc51bff03d615a8792` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-28.md) | 198 | `declaration-track:ee0a9d3c9c11e425b9b68d73f642f607e7381b7a2068d50efbd06b32fe722be9` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-6.md) | 202 | `declaration-track:16344331472dd1363242f2654d1cefbdd653750ef7d35b25c68a972505d907ab` |
| 19 | `theorem` | [mem_toSubsemiring](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-tosubsemiring.md) | 210 | `result-track:0da270376ccc46a95b6b981614fb520670bdc03f43316a6708f70525af8cac8e` |
| 20 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-carrier.md) | 212 | `result-track:e3ddcc570f4da16cc80ceaf534ebae9db5c777f9215bd5e759c0c188144f2bd6` |
| 21 | `theorem` | [mem_mk](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-mk-source-edition-2.md) | 217 | `result-track:d01ae0214ba11951f77f65b4a2abecafc0e14eadd3cd43a488f16bd0a3ca6284` |
| 22 | `theorem` | [coe_set_mk](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-set-mk.md) | 220 | `result-track:700760e51a28eecc940583d4c8def7352b00913a0261d62844a55a7830dc663e` |
| 23 | `theorem` | [mk_le_mk](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mk-le-mk.md) | 224 | `result-track:e3f0808327ec8882a2926a24167cdc6a32cc07d61fcb17ebc595d7d010188897` |
| 24 | `theorem` | [ext](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/ext.md) | 231 | `result-track:02bc20cd2ae582d6b9d5ea44db1d01fcf7f336c327b5f2788266f5a60c17c5a3` |
| 25 | `def` | [copy](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/copy.md) | 237 | `declaration-track:0589b01c87dd609c51c450bbdef2570d06d4252bc636191ecd7f938ad8c436d1` |
| 26 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-copy.md) | 244 | `result-track:fb4da668b248b351c30cdd85e18b4c3e6210918bf4057d03c44dff1bb2648d57` |
| 27 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/copy-eq.md) | 248 | `result-track:75098ca9229dfa0604ccbe09936f19a1144c99c9f1f169413eeb8f84f673c0e9` |
| 28 | `theorem` | [toSubsemiring_injective](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tosubsemiring-injective.md) | 252 | `result-track:53a40255db6689a0d5a4dad37e434463f0a5ebf6cfabfccc02130210056c2c45` |
| 29 | `theorem` | [toSubsemiring_strictMono](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tosubsemiring-strictmono.md) | 257 | `result-track:6831d5bb229c1600e50e9dba6e7ca7a674173c1a8c18e5b7f03ae25214bd9bf7` |
| 30 | `theorem` | [toSubsemiring_mono](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tosubsemiring-mono.md) | 262 | `result-track:6475fd7aef10e54c36ceb88d34c076bc6badf3ec76de9bfd0b91da3c5dfddc97` |
| 31 | `theorem` | [toAddSubgroup_injective](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/toaddsubgroup-injective.md) | 266 | `result-track:c7635526cd347b9a0bab9456bd66daa09eb529a09b7469d829fc86257ac7faa1` |
| 32 | `theorem` | [toAddSubgroup_strictMono](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/toaddsubgroup-strictmono.md) | 271 | `result-track:7f3fb80f848a237ca080442d8e157db79a0eb500d512feadb1e11542de539856` |
| 33 | `theorem` | [toAddSubgroup_mono](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/toaddsubgroup-mono.md) | 276 | `result-track:9040430ef46312b87f09f0b875d268910a824b76469ee1df2860686dc97c2d7e` |
| 34 | `theorem` | [toSubmonoid_injective](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tosubmonoid-injective.md) | 280 | `result-track:e6c0007fd38cf9d279d1f84b7523256e34308447f5dcf53a251b2f711ba73564` |
| 35 | `theorem` | [toSubmonoid_strictMono](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tosubmonoid-strictmono.md) | 285 | `result-track:7546a249b01a319ceaa5a0d60425ec4cae8f14586650e30583f83667f04e2944` |
| 36 | `theorem` | [toSubmonoid_mono](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tosubmonoid-mono.md) | 289 | `result-track:5cb03fce8e5e472a93e62806de2d53d587fbbd385d0150136e7be968ed6e15a9` |
| 37 | `def` | [mk'](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mk.md) | 295 | `declaration-track:9b1a442712e0579bfd4c478a62daa15e0c56e4bf34a13f2d2d2d5db7cf7511d8` |
| 38 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-mk.md) | 301 | `result-track:0450e6463ef2c78c0fa99b9892138f00b75f031a6a5dbc08b55f56ea7b5b55df` |
| 39 | `theorem` | [mem_mk'](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-mk.md) | 307 | `result-track:cdbdaddd6a78a2a0b9f9a963cfc02b85b7c72e675ef964e81a42b2f48b4e6dbf` |
| 40 | `theorem` | [mk'_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mk-tosubmonoid.md) | 313 | `result-track:2838a658986731e19c30cea0d22a853a2bae92088c837e62d8b36281ff7a26c2` |
| 41 | `theorem` | [mk'_toAddSubgroup](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mk-toaddsubgroup.md) | 319 | `result-track:7b241ed72a0615214e8f8c45e0ec7521c19d175bafb4e2a8fadf07da6eb505f2` |
| 42 | `def` | [Subsemiring.toSubring](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/subsemiring-tosubring.md) | 327 | `declaration-track:bef6f4a750cdf33a1cd5249e1fc93125e8ca7803d4a5ad5d7e3657958862d753` |
| 43 | `theorem` | [one_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/one-mem.md) | 339 | `result-track:5adf94f729fb38efccd11a60112d05d250b8da60aede882ca9f93feaf07295c9` |
| 44 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/zero-mem.md) | 344 | `result-track:02764ac128ca69299198c0f0c67e3ca72b848443522c50dfc18db51c0c5eeb3d` |
| 45 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mul-mem.md) | 349 | `result-track:2f399f3b7265533e5441799786705c55c4d72213b4158108c2079aaa5a45234c` |
| 46 | `theorem` | [add_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/add-mem.md) | 354 | `result-track:ddbfabbad1c8e137cac80781b692e4522a7307896b47385b7fa9d69330f09510` |
| 47 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/neg-mem.md) | 359 | `result-track:2b0ca94c89cebbb91e3c9456648b753f22c026a99a4263dc6d07e23c87a953b2` |
| 48 | `theorem` | [sub_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/sub-mem.md) | 364 | `result-track:7d2af9b0997e8c6919f1a6bbbf477783928f3d8ed8f248091edbe988de036333` |
| 49 | `theorem` | [list_prod_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/list-prod-mem.md) | 369 | `result-track:9101206ab6f77dbf7d4238ed7947cc646b7ba81ad8382b1c265c5f76b3926d12` |
| 50 | `theorem` | [list_sum_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/list-sum-mem.md) | 374 | `result-track:2dad19cfc34bc2dd15521bbb8a3b2090e50d4e6bf7bbf8d4ce675e380cf1f27b` |
| 51 | `theorem` | [multiset_prod_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/multiset-prod-mem.md) | 379 | `result-track:e204cf0bb616c16a06e8e06809ea82798252fda2242e2de4618ebd10c98d06a8` |
| 52 | `theorem` | [multiset_sum_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/multiset-sum-mem.md) | 386 | `result-track:f00b199e6185bbb31d580368d1785cdfbc63d5b33de2dae1de6bb2f316787188` |
| 53 | `theorem` | [prod_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/prod-mem.md) | 393 | `result-track:ffc2e6c75348861d8a6a28265eb619543fe48277a6ed399e78a39637460449bf` |
| 54 | `theorem` | [sum_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/sum-mem.md) | 400 | `result-track:4a947f79a7b90380209a0872187663dd4d94cf62e8843eb1cb4a1757bacfefe3` |
| 55 | `instance` | [toRing](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/toring.md) | 406 | `declaration-track:29e7a6dfcd11788f8ea3e988db6c93a5775f41a9e73c0c9d14a9b1656785d6fc` |
| 56 | `theorem` | [zsmul_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/zsmul-mem.md) | 409 | `result-track:2090c66e936175b21847495cccf27894748b5ddee6b1155bdd5d08038936fcba` |
| 57 | `theorem` | [pow_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/pow-mem.md) | 413 | `result-track:07fdca4725c42ba1769d8296aa4967a47ceebff7d378e9c887bd61e337b55c40` |
| 58 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-add.md) | 418 | `result-track:7f9a659aa35296dd6789d31b74668f4aad67e4dae4796f547b1288025b1fc141` |
| 59 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-neg.md) | 423 | `result-track:ac32d61e23040f9c0eb869089b03e02c1c4a42c0dbb6f2eaafcd8e8fa0e7f5b5` |
| 60 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-mul.md) | 428 | `result-track:54cfbaa36c351f371f90bcb00f407cc8471fb5f34941e7d3639d7422e409ed29` |
| 61 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-zero.md) | 433 | `result-track:d986ccebf24eda2cf5ee7fc09029e43d2228f545b9cbf385ddbb1122842e63aa` |
| 62 | `theorem` | [coe_one](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-one.md) | 438 | `result-track:2dcd9509793937fd011403175eb183bbe480671323caa08dc7e13b547add2e5d` |
| 63 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-pow.md) | 443 | `result-track:566ff9247ec6aa8c5aa303ce9f3a56f0763f488ab04c2165b79bc01341c569d9` |
| 64 | `theorem` | [coe_eq_zero_iff](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-eq-zero-iff.md) | 449 | `result-track:763eaa2ddcdeada32f55e75f32a83deabdbcf24d4df895f910873d4bda2893ef` |
| 65 | `instance` | [toCommRing](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tocommring.md) | 454 | `declaration-track:a4b58400e4d43a03541475e04e24046bad397bba6a1250f1aa4c65df931cd914` |
| 66 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-5.md) | 459 | `declaration-track:10014f07aaa2be8ceb4142202d6145fb6219be6b4e036de987c9295e4cfa9af0` |
| 67 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-22.md) | 463 | `declaration-track:c3b44714483fbc4e24f4f8b458fe0ab5b85a31c296797600c1feea1e901a6211` |
| 68 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-27.md) | 467 | `declaration-track:e823f41890797f2e9551781595a5e40a6a5cf856a4389cd6634c51b304dbe8b6` |
| 69 | `instance` | [toOrderedRing](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/toorderedring.md) | 471 | `declaration-track:041dc7f0c89c09fbed93a5aa9add9bb48ee351fbb0eefba5a2a4f8c296a0e257` |
| 70 | `instance` | [toOrderedCommRing](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/toorderedcommring.md) | 476 | `declaration-track:3f399818058b2ddd6c059d18120ab96a72e1053d422d4df1262ea45a96c11fb5` |
| 71 | `instance` | [toLinearOrderedRing](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tolinearorderedring.md) | 481 | `declaration-track:996a38191ddbcd0c2f5d195ae797949d61d76f759300951402d62b77fea7b57d` |
| 72 | `instance` | [toLinearOrderedCommRing](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/tolinearorderedcommring.md) | 486 | `declaration-track:3aa40a510a31a3b848543ebaebf032a21bb52185b869051bd0f16f2b254976ca` |
| 73 | `def` | [subtype](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/subtype.md) | 492 | `declaration-track:389b279153fc2ffacbb97236c5b68f2aa6c6586961ba57a9d03f9760a0f7f6bb` |
| 74 | `theorem` | [coeSubtype](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coesubtype-source-edition-2.md) | 497 | `result-track:9c9ced561f6b8784d9f2f06d063e7f0e940a2ce8e2e69c945d31bd6508912056` |
| 75 | `theorem` | [coe_natCast](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-natcast.md) | 502 | `result-track:53a663d02d0f2de9b1edca5be9cc2a1f14785c7507d68e97978c1f5db9fcfedb` |
| 76 | `theorem` | [coe_intCast](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-intcast-source-edition-2.md) | 507 | `result-track:d03e9d2b92d5f42c4e286170d0b954c2dd5ec3fccc405666330d639b6b5f4165` |
| 77 | `theorem` | [coe_toSubsemiring](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-tosubsemiring.md) | 515 | `result-track:faee5f6b357c8caa541870608453d73f1cbbdf337560e300977262d7aaab6971` |
| 78 | `theorem` | [mem_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-tosubmonoid.md) | 519 | `result-track:04dd50198f13d7509f3b0291c725df1a0e975b59e6dd6a0b19ec300a8959eeeb` |
| 79 | `theorem` | [coe_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-tosubmonoid.md) | 524 | `result-track:eed179aee08f9b17f9e4f854ec105c8c1c1666c74392b17e0f075cbd9f61b375` |
| 80 | `theorem` | [mem_toAddSubgroup](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-toaddsubgroup.md) | 529 | `result-track:e190a18443bb7b65f817c0d40d9c53d233312b8e1b343b6f15cd6f49cb772d19` |
| 81 | `theorem` | [coe_toAddSubgroup](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-toaddsubgroup.md) | 534 | `result-track:4e7db109edb71e51d0a87828a56831a6931c503d4e106e610505f9018d6d8398` |
| 82 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-15.md) | 542 | `declaration-track:796a827b1448ff78678d2ccfeb06661283f467dd96a3f5b8c4e0d7ad734501ea` |
| 83 | `theorem` | [mem_top](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-top.md) | 546 | `result-track:cca558f19e9d7af2feca7e5b8ec6f60dd02a59aa0a7732d4968c12ee4e916a5c` |
| 84 | `theorem` | [coe_top](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-top.md) | 551 | `result-track:97630310fad5712d22b49c4cfb65782b27ed9e41e09b58f6138fc59557d67117` |
| 85 | `def` | [topEquiv](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/topequiv.md) | 557 | `declaration-track:a7d8d344769530c8a0c25dc82f97f146c66e6e2dc1c73cdbba4f203318b5a963` |
| 86 | `def` | [comap](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/comap.md) | 565 | `declaration-track:5c35e2ff415cc8956a03f7f57609b1ff9305c2e4662fc808028b1d36447c09d7` |
| 87 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-comap.md) | 571 | `result-track:48fd2d6c11ae91e9c938d326015da4fef05027b908874ba6edc0dc88d07d5eed` |
| 88 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-comap.md) | 576 | `result-track:7692ca82c074661209846548fc7908cc09f375d8f7d07fe2610a5baa142a3808` |
| 89 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/comap-comap.md) | 580 | `result-track:5b789d10cc7eb79f69e7cbc960e36460e4ca6b35bdd2df8366cfc3616310afbe` |
| 90 | `def` | [map](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map.md) | 589 | `declaration-track:0b72128628619190156e27db4d3e9f47816ec75d40743972f5bec61e96fca556` |
| 91 | `theorem` | [coe_map](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-map.md) | 595 | `result-track:db26273bbe818efea526e88c6dcfc945deef8d7f6ac7bad7232b84fddced8d00` |
| 92 | `theorem` | [mem_map](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-map.md) | 600 | `result-track:9d7a6de8332d093725e590eb2ad4b13cda00c91dd4610a0468dbcb35b21f6bcd` |
| 93 | `theorem` | [map_id](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-id.md) | 605 | `result-track:72dcb7811807d62725175e5113a5a2b59d9966ea9f4e348e9b2dacee7a5fb41d` |
| 94 | `theorem` | [map_map](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-map.md) | 609 | `result-track:72143a9d00e52280d9b0f0245d3c30d5dc7ae442cd89ac647110a556903197f1` |
| 95 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-le-iff-le-comap.md) | 613 | `result-track:42d6878136b0c29b29bb60fc9b5de11d1b85685d8a3b5b8e1dfc20ae7c45f8d6` |
| 96 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/gc-map-comap.md) | 618 | `result-track:244a4dafac0ffae9fd7d74301af98cf304d82dfa72e16c90d8942f522600d1ce` |
| 97 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/equivmapofinjective.md) | 623 | `declaration-track:ec345287d5a5af99439abbdd591df4e445af6511544135408702375a92dcaaa2` |
| 98 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-equivmapofinjective-apply.md) | 630 | `result-track:993c10c1d0d711acfccc5185a7b5839cca647a60c54780cf41f7c4b53adb6690` |
| 99 | `def` | [range](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/range.md) | 645 | `declaration-track:1f0af7a3e63dda6348237af9a024df947f9147b2fdb57fb3fab6f54c8bf480d5` |
| 100 | `theorem` | [coe_range](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-range.md) | 650 | `result-track:b9ebbb31d6c5e04d7049714248e51c633070f1727dac4ad96f28a576c2d44e98` |
| 101 | `theorem` | [mem_range](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-range.md) | 655 | `result-track:8453d7cb43663bbb0e88004212dadac3b7d521d92f25e825f33248f601876cd4` |
| 102 | `theorem` | [range_eq_map](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/range-eq-map.md) | 659 | `result-track:8a199715c9d8e7361326b85b3db3d22ec13007883f982e909b7fed3b099acb44` |
| 103 | `theorem` | [mem_range_self](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-range-self.md) | 664 | `result-track:28a5f5c831abea904dffddfedccdb2230c3b7f742ead94708f3958bae264758f` |
| 104 | `theorem` | [map_range](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-range.md) | 668 | `result-track:581b9f552d9f68f9fe70aa73c47568a3143d2df6e4252f12ce4a07ec6518900a` |
| 105 | `instance` | [fintypeRange](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/fintyperange.md) | 675 | `declaration-track:4aadabe40b559496cdf8e790ab9150fd4a8b14a54ea6190e5f17f52fd57c00e2` |
| 106 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-29.md) | 686 | `declaration-track:f07f50f0080b422fceb20d7225539ae9a61edf0d39055dbdc432525e2ff61624` |
| 107 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-9.md) | 689 | `declaration-track:1b8d65495121fb0e17570c85c41cb72e1a189f9c2220a36ddbeadb1ade212a4b` |
| 108 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-bot.md) | 692 | `result-track:573d3917818577c2393aece06c532225c73b03de37faddd5e00d615bdf73aab6` |
| 109 | `theorem` | [mem_bot](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-bot.md) | 696 | `result-track:0cceee6354e59023b7d5d923aaff6fe5f5eea506abd82a0129d2889f4a94c464` |
| 110 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-11.md) | 704 | `declaration-track:4ddf7cc914cbc011d85c84d051b472e24232b2a1a0cc5b65733d30fb2880813b` |
| 111 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-inf.md) | 709 | `result-track:5a688fdde5afca9d738e0c779a7aaf0067cf1161f8c53911d68ec3f58e8b94b1` |
| 112 | `theorem` | [mem_inf](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-inf.md) | 714 | `result-track:85fc4e634319ab2b57ef280f45d959bc3d70821c6e1ac5544fc5edcc394eebe0` |
| 113 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-13.md) | 718 | `declaration-track:6901e58bf4a0a2570b0f0aae8ee76b8a394160f8ae984bb12fd1639c7f33e4b1` |
| 114 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-sinf.md) | 724 | `result-track:315fb13b160f6a3b56cb22adc5238cd9b4ca9816f3fd84759002fade10dae18b` |
| 115 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-sinf.md) | 728 | `result-track:2690cf4624614dfe8e7dbb04a766b4e9bdd2d12b2924b953f39407b5785859a2` |
| 116 | `theorem` | [coe_iInf](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-iinf.md) | 733 | `result-track:14d1796bd170cd371691115b7ccec03537fc35560e86a1de2a8a6aa5a6c3cf84` |
| 117 | `theorem` | [mem_iInf](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-iinf.md) | 737 | `result-track:c6472e3b18b2af049a278e0ad9fc8c5831f595fd6a2d6c7de76948904ac61973` |
| 118 | `theorem` | [sInf_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/sinf-tosubmonoid.md) | 742 | `result-track:5d9ccbe60847cade04c6445efc86b8ad42f0a220a972f91403b02886851c11ae` |
| 119 | `theorem` | [sInf_toAddSubgroup](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/sinf-toaddsubgroup.md) | 748 | `result-track:0aa0f0f6bb195d9863b68df9430874c58a4fa7b527ec782ed523240958a347e8` |
| 120 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance.md) | 754 | `declaration-track:0128fad66e8645af90c36916b813305d27faa9f969d9d0ca8ffd9d135256cd3f` |
| 121 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/eq-top-iff.md) | 768 | `result-track:98c1437ea784da2d3cb43ea59f894826709e9d1718323be45c58efcfb8f47c8b` |
| 122 | `def` | [center](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/center.md) | 780 | `declaration-track:f6a96e9f2a7d43e74d07b193dfb74abf5db2397eb39ed9b9f3a450f881f3ceae` |
| 123 | `theorem` | [coe_center](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-center.md) | 786 | `result-track:ad010ac4ad2267ec4deb54ff3865ca27af8c0f0cfd7e14bbfee58928cbc36a92` |
| 124 | `theorem` | [center_toSubsemiring](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/center-tosubsemiring.md) | 791 | `result-track:67ca37852e88f3cc4ed0c797bf706204efd9ed1a9ebc9071904124a330304af0` |
| 125 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-center-iff.md) | 797 | `result-track:fa7fd1530df5914cd0f06f5a3910c8a244595fb188a7aa6104641362bff5bdc7` |
| 126 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/decidablememcenter.md) | 801 | `declaration-track:f853b47d7aa3ddef1b33a08d56678fe95b1819dc8708dd552411690ad46a3b5e` |
| 127 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/center-eq-top.md) | 806 | `result-track:d5f18ccf59bb70d624d8e983f22f4758b3ebbb0cb2cb2981241a30747a2beac3` |
| 128 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-20.md) | 811 | `declaration-track:a9f82a107a43c8cf5db88f708b8f7abf5b9a075a1543d86f6e2cc9dd9a8251fe` |
| 129 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-25.md) | 820 | `declaration-track:d6abb53b03c96c95f87470535ad285994dd92ab4b3869d11b1193b38a7d95bab` |
| 130 | `theorem` | [center.coe_inv](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/center-coe-inv.md) | 829 | `result-track:a4c23093e97ae8cca1f8186adb916f238c416af49e23a408f12449b272a78cc2` |
| 131 | `theorem` | [center.coe_div](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/center-coe-div.md) | 834 | `result-track:9b5a839c84ad4cc854ec033264f26902b0974c2519fab753cd91f5e5b7c3aed8` |
| 132 | `def` | [centralizer](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/centralizer.md) | 843 | `declaration-track:2c75d82ef90b059007aa819f1a66c0d7762800458a07f3de706979f625ef3ce3` |
| 133 | `theorem` | [coe_centralizer](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-centralizer.md) | 848 | `result-track:d19581a1f30351f965fd1ebe9699b6d859b5dba3f20f5b0c52d2964be8876b03` |
| 134 | `theorem` | [centralizer_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/centralizer-tosubmonoid.md) | 852 | `result-track:40054419f967e4c274e1b5ce90f9cde83d0e4351911e798be41e71de27024f19` |
| 135 | `theorem` | [centralizer_toSubsemiring](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/centralizer-tosubsemiring.md) | 857 | `result-track:0be7712c9f43ac698d1eecd010bcb9083e46b616ecb0fa7cc3d8b9164e039487` |
| 136 | `theorem` | [mem_centralizer_iff](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-centralizer-iff.md) | 862 | `result-track:5b7057ca0485655ecc52d07d5641d618009378a2a617a34de90dc2e67b845de8` |
| 137 | `theorem` | [center_le_centralizer](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/center-le-centralizer.md) | 866 | `result-track:81a7d34d0f6430ff541e2f24872db5096a278f6beadb77a18b4cac1c7c394a78` |
| 138 | `theorem` | [centralizer_le](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/centralizer-le.md) | 870 | `result-track:6fb4f092190b44e890772f89a398b3cbd7ee6a61fbc717243a5272e9d1db88c2` |
| 139 | `theorem` | [centralizer_eq_top_iff_subset](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/centralizer-eq-top-iff-subset.md) | 875 | `result-track:b297ee50d25dcc95d76f5e07da5e8c7b57947d6cd1168090c942715ba86a75f7` |
| 140 | `theorem` | [centralizer_univ](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/centralizer-univ.md) | 880 | `result-track:6ce4ad5fd1ee68d57bd5dbd218188d5e2e3e0dc43285bff3d96073fc670007f4` |
| 141 | `def` | [closure](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure.md) | 890 | `declaration-track:a10e28c06f6415c4d0a4f70d975b9553c31f29f3c326f2934570423a7192f042` |
| 142 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-closure.md) | 894 | `result-track:16b0d201b3936acf1cc4c58524ccecc0fef7fbe73c1c89841be832a3f41a1743` |
| 143 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/subset-closure.md) | 900 | `result-track:f818bab11c29e05f6873ba74fd56577e1d4d2d821bbcbd99e4c3143d202a341e` |
| 144 | `theorem` | [not_mem_of_not_mem_closure](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/not-mem-of-not-mem-closure.md) | 903 | `result-track:72510e15aa38aa5f81e3902b56184074048175b2f0fad91b29952926b7515afb` |
| 145 | `theorem` | [closure_le](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-le.md) | 909 | `result-track:8b254f4e7992323d60518fd51f274db79b46347202a5777b7232032afda2a7fa` |
| 146 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-mono.md) | 915 | `result-track:9d4ed2e026c8cd529bed1cd1135e9071bf437592f670c0647e8874ddd4aabe39` |
| 147 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-eq-of-le.md) | 919 | `result-track:cc824d0e961ee503bf12000bd7d6e2c9f5d3afce8e1e89be5b101738e97f5a5a` |
| 148 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-induction-source-edition-2.md) | 928 | `result-track:87c450a43e985ff2816b7d52674ae7e05ab5cbea3b7a1eb675423a5563342266` |
| 149 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-induction.md) | 936 | `result-track:32cfe6b4c51221dd5acda2b03e9f81bd66da62cec1474d6bc5334c57302ce903` |
| 150 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-closure-iff.md) | 952 | `result-track:ab665e8a9de767ff517d8c3ec43fd18686c89c83e30c5853336c1bc7952ebb9c` |
| 151 | `def` | [closureCommRingOfComm](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closurecommringofcomm.md) | 983 | `declaration-track:aa1bbbb89d17b2935a0daca2a08fed2d096e1a827582c0a81b8bcf86c98ba1ff` |
| 152 | `theorem` | [exists_list_of_mem_closure](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/exists-list-of-mem-closure.md) | 1001 | `result-track:e2eec88bc99d6b8b8410f5e2d3aa8b85904f9b6a221c8bddea16b7c5a9534827` |
| 153 | `def` | [gi](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/gi.md) | 1023 | `declaration-track:db5e36c95d3832c2257a724fdb6d2f73ac6aedcdf22bee47d2482b6353ea19a0` |
| 154 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-eq.md) | 1033 | `result-track:08fbc0e513d5be3e78a40a6966c98503be4526e5a626725bbf6248659b2be5ab` |
| 155 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-empty.md) | 1038 | `result-track:6c3a9b86551c84cabafe1d3d97b5925c52f06c22a0888a0a4964a49880f299bf` |
| 156 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-univ.md) | 1043 | `result-track:ba0a730deaf68bfa63c178c10392507e4868d017327eba0e6de92c7e32ff902f` |
| 157 | `theorem` | [closure_union](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-union.md) | 1047 | `result-track:871881f77e27ab93f5bf39c71eb5a5a0c545c4890637e763c1cb082c812a7c77` |
| 158 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-iunion.md) | 1051 | `result-track:9ef7087856bfd53667e2c2fbbbe421de6ab66b783950ecb3f0b08b91502890ed` |
| 159 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-sunion.md) | 1055 | `result-track:0805973ed4c47bcb7d65f0439d04fb26317eb141e84b6b146f35b462a6be1c7f` |
| 160 | `theorem` | [map_sup](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-sup.md) | 1059 | `result-track:b8c64dabf548c0c8dbc6a40d5c7091be443ca64bba64495cb14605b45d9e003f` |
| 161 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-isup.md) | 1063 | `result-track:557a7087808fafeb71c5e3455d10e491f726317a0d06edb6d0d7ca2b5ac9c8c9` |
| 162 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/comap-inf.md) | 1068 | `result-track:b888d66bb70019f15761459b5aa68bd817b7b2c58c4cedf9a393c7546b6d7910` |
| 163 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/comap-iinf.md) | 1072 | `result-track:5dba29485c7ecdaabffe34f77138fc62d68c1192b2d281e0465eee65a4917d01` |
| 164 | `theorem` | [map_bot](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-bot.md) | 1078 | `result-track:7a0afaffdc2c6863082b2c4fbca5dfbd765e5f2af127620a997c6cfda3a182ff` |
| 165 | `theorem` | [comap_top](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/comap-top.md) | 1083 | `result-track:dea6c8c1ecf6fb3c060f37d29851ec4a80eb440a55f864bfeb1bb4338da2fd1c` |
| 166 | `def` | [prod](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/prod.md) | 1089 | `declaration-track:8f2cd19404e8899a71ffa1bdc171a907f6c73c745c3ea2f04a4b929feca18be0` |
| 167 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-prod.md) | 1094 | `result-track:374884fdf94f53b1e51427d3d76b866e2802f565bf949064457dbbca18df15eb` |
| 168 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-prod.md) | 1099 | `result-track:43dd9d8941e5a762a687fa7c0cbb074507f09976fda971a52cb1e8f99063c1b5` |
| 169 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/prod-mono.md) | 1104 | `result-track:84beeb6785a32161d6a263a1a6abf4d820d64e5d8092e83da2138963c8fbbd2d` |
| 170 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/prod-mono-right.md) | 1109 | `result-track:b4f81d85af1b78c7350f9bb72d177d1f05e5dc781dc75ee9326b5d51adba658a` |
| 171 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/prod-mono-left.md) | 1113 | `result-track:4871bb9a0cef50f5fdc03572eea452a83b6444b5f8d53b06376cb148349b251f` |
| 172 | `theorem` | [prod_top](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/prod-top.md) | 1117 | `result-track:33a46c2b7f42bd00b2d4c5e8675f0ed7ff8e586616b3fabb256a227f863067c6` |
| 173 | `theorem` | [top_prod](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/top-prod.md) | 1121 | `result-track:b652aff17ad3b2c916bbc4cb8551b9c4df4ac585a5182d9a178b78ba76081fe4` |
| 174 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/top-prod-top.md) | 1126 | `result-track:487a2b24947c7bc91d1440f7c472b5c132a6c679ccbcba101af8314150b598a7` |
| 175 | `def` | [prodEquiv](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/prodequiv.md) | 1131 | `declaration-track:01422883fe257d0860c15cdba0d4cfe86cacb7258592e2465a59a86beeae347c` |
| 176 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-isup-of-directed.md) | 1140 | `result-track:7dacd43c1ff87ab28f2b7cc9d79fbd98a1d4ded780999094a43fb7291cc0948e` |
| 177 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-isup-of-directed.md) | 1151 | `result-track:56bc119da9ea71997bebc6d2df3fef5e0837665a53dc7d539dff2077c27032a7` |
| 178 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-ssup-of-directedon.md) | 1156 | `result-track:451fdf024a02f5c49599d225bc50acecd153b8057b9e4e23bf36dcc570d28bf5` |
| 179 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-ssup-of-directedon.md) | 1163 | `result-track:6a9a31308c21febfdce1bee91880a13f05059ff2dbb436d45d2c304ec2d00cc3` |
| 180 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/mem-map-equiv.md) | 1168 | `result-track:b31c2c3470bde34cd88bc40399351baa4b4bd70971557e96066a5954be31bec0` |
| 181 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-equiv-eq-comap-symm.md) | 1173 | `result-track:fb7979a8d24e969151c128d901ff9055048c6f524f48660b4543140dfef670b1` |
| 182 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/comap-equiv-eq-map-symm.md) | 1178 | `result-track:720e68f00c229bc2c57a4d9fa0addad368d81cad30b23ef89328d8359a51e61f` |
| 183 | `def` | [rangeRestrict](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/rangerestrict.md) | 1194 | `declaration-track:0514c6d334622fbb87d300e8346be2b3ce07666a1271ce1130006e8e7bc00b3d` |
| 184 | `theorem` | [coe_rangeRestrict](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/coe-rangerestrict.md) | 1199 | `result-track:e271d77b8e96be4dfff1a327384fe584eb5f9270c309fbbeb759de3ebfdee01d` |
| 185 | `theorem` | [rangeRestrict_surjective](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/rangerestrict-surjective.md) | 1203 | `result-track:e8cdd7c109b26ca519d5e0a896bdc69129361745bffcf346f1c3373cfa29084c` |
| 186 | `theorem` | [range_top_iff_surjective](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/range-top-iff-surjective.md) | 1209 | `result-track:96b804f8728b8c03dd3964ba3b0593195972f3366f3d7e1d6913137fd06af467` |
| 187 | `theorem` | [range_top_of_surjective](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/range-top-of-surjective.md) | 1216 | `result-track:ec85358064c794b9ba836eb294d6f4dbbcc086b600cc3815149c4bd62356087d` |
| 188 | `def` | [eqLocus](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/eqlocus.md) | 1223 | `declaration-track:aa05f6b35dcad29e97e5680bfb9e9d3a63e54918af32e449b5f6b03fffa10ac3` |
| 189 | `theorem` | [eqLocus_same](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/eqlocus-same.md) | 1228 | `result-track:db9818f4501de3b18ef4fa09908041d0e4d007e9475c6c6b942877e6da6d809b` |
| 190 | `theorem` | [eqOn_set_closure](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/eqon-set-closure.md) | 1233 | `result-track:2ba0b581d9c3e9fa2e1a235a31c3d14a0973d2eddb36a97b2bd750e267dd301d` |
| 191 | `theorem` | [eq_of_eqOn_set_top](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/eq-of-eqon-set-top.md) | 1238 | `result-track:ea213689c42e479772a828ddc61eb6538282382e490a36fb29580ab1a802f7ed` |
| 192 | `theorem` | [eq_of_eqOn_set_dense](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/eq-of-eqon-set-dense.md) | 1242 | `result-track:9c89ed85110ee4e1f2c73b924ea6005d3673050c8046d0233dfc7e71a3de62de` |
| 193 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-preimage-le-source-edition-2.md) | 1247 | `result-track:cc39a1b485d68abc9ebdb13255638d88493900a18b378bb0e52c7df080fbad33` |
| 194 | `theorem` | [map_closure](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/map-closure.md) | 1253 | `result-track:6a22cc09b21a03a7d15b354f12f5e32a7665c3acdb5a1cd8681c1650dce2a78a` |
| 195 | `def` | [inclusion](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/inclusion.md) | 1267 | `declaration-track:600861003b12dc9acd39602fbd6e89bc85b95763db43205d095e955cf5d40c4b` |
| 196 | `theorem` | [range_subtype](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/range-subtype.md) | 1272 | `result-track:13d9752c1d17858c4d111f71f88787a9ecae3adbdb2f903bf79a77a56f216bdc` |
| 197 | `theorem` | [range_fst](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/range-fst.md) | 1277 | `result-track:88c9342a4c9c05228bef368734bf9b18c33d01cae90f2b11cbc79747e414090c` |
| 198 | `theorem` | [range_snd](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/range-snd.md) | 1282 | `result-track:f6d988b6d720859a343cdeb14507bf8a4f6f15ac92bda1cdde99cb3156889eea` |
| 199 | `theorem` | [prod_bot_sup_bot_prod](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/prod-bot-sup-bot-prod.md) | 1287 | `result-track:576419ad95df096a38e2dfdc9d11469bfde87132568138788fc38c509a87c2dd` |
| 200 | `def` | [subringCongr](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/subringcongr.md) | 1303 | `declaration-track:9c8df1490fb412217d7c7e52be5f11e6e2fb0794c2880e7a40521aabcfb5228c` |
| 201 | `def` | [ofLeftInverse](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/ofleftinverse.md) | 1311 | `declaration-track:d265d1f5bb8abe434e0e13917450e4eabf2f17fdd181ff53385955ff38d1943c` |
| 202 | `theorem` | [ofLeftInverse_apply](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/ofleftinverse-apply.md) | 1323 | `result-track:15fab37fb16156cfcd3e420b424bca2fcdfb4625d23c080cc52ebc674e864628` |
| 203 | `theorem` | [ofLeftInverse_symm_apply](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/ofleftinverse-symm-apply.md) | 1329 | `result-track:289d760a54b534ed58d0f8cf82ca9d9e485e0b8dc6210a658a6d608b62873264` |
| 204 | `def` | [subringMap](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/subringmap.md) | 1337 | `declaration-track:bcb4c56369474a25d1db7641b5f020c0e3a64dfa9a7c263bc12bb762ee7fdd1c` |
| 205 | `theorem` | [InClosure.recOn](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/inclosure-recon.md) | 1352 | `result-track:52558835a3e742e2f2d01ee0e8c18543390022d0d03681a267b2911ee7859515` |
| 206 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/closure-preimage-le.md) | 1398 | `result-track:6e9d0b62841575f7d34ed8e848da99c53c52ba2e75523661047850288235561d` |
| 207 | `theorem` | [AddSubgroup.int_mul_mem](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/addsubgroup-int-mul-mem.md) | 1404 | `result-track:dffcd7767db2a0725a71b69383843e47b64c4c8ef23bbcc50205d31f0456f11c` |
| 208 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-10.md) | 1429 | `declaration-track:398eea4f12b9f99033b80c604e6d195c39eed46c59b4aebb7ff82f8c1b42b4af` |
| 209 | `theorem` | [smul_def](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/smul-def.md) | 1432 | `result-track:31256ef075557a10d8264ac9b386a367fcf49cc9a6e3c8a92d7bac570a4568fc` |
| 210 | `instance` | [smulCommClass_left](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/smulcommclass-left.md) | 1437 | `declaration-track:30a7a6c38c3bf2f19177c8d07c00dc4155ee4eba5380ed17280d14efcc2a842b` |
| 211 | `instance` | [smulCommClass_right](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/smulcommclass-right.md) | 1443 | `declaration-track:2dcba97f01f3707f5f89a4b021b071e492720caf58bc33149b97b520a0f78471` |
| 212 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-14.md) | 1450 | `declaration-track:7325b7a2aa7ed4af92a84b54e441b450f011030884c6db5faa20a2ef03882994` |
| 213 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-30.md) | 1455 | `declaration-track:f68bce248422672d6031291b8d49ee074deebc1d2cf9c931ee5b0e77ad6d1d03` |
| 214 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-21.md) | 1460 | `declaration-track:b22d9f6a72260b4974f35209df6734885ede1827bd85a2315c0991ffc63f8476` |
| 215 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-3.md) | 1465 | `declaration-track:0a1ce82ce361052702ed3c8906ebee22f09a76e70cc3e6ff86491440f75e40a1` |
| 216 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-4.md) | 1470 | `declaration-track:0ca1e052999d079bba17471968c4b5d89b54c40afb30f6eb50a2a24e1c698679` |
| 217 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-17.md) | 1475 | `declaration-track:8ccb64b1513488224f56a1d0b96ed45a370fc04231f275090d97bd67253bf793` |
| 218 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-8.md) | 1479 | `declaration-track:19dcf1f1b552104ec7a984cf46c28b3333df3406e8624187ae2665221df3f214` |
| 219 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-16.md) | 1484 | `declaration-track:7c8654382cb1fbfa7355d9d76727650fa38f30a711b5059de0fc88611df055e3` |
| 220 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/instance-source-edition-31.md) | 1490 | `declaration-track:f799d04d5b47b858acff07d33bb168219069356c8bfd171b345417057a0b1238` |
| 221 | `instance` | [center.smulCommClass_left](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/center-smulcommclass-left.md) | 1494 | `declaration-track:332c54a64c8641bfeb40fdc9b96c06bdb1cb54de815931c89276b6711e66dbad` |
| 222 | `instance` | [center.smulCommClass_right](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/center-smulcommclass-right.md) | 1499 | `declaration-track:0b194280363e0aa2334e84c6756edf9800f410e7408e0f3f58f44b80c43a024c` |
| 223 | `def` | [Units.posSubgroup](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/units-possubgroup.md) | 1510 | `declaration-track:8622368c66b37fcd435c47879c5e2f727e9970ffce2c9a26f4c32024b9135756` |
| 224 | `theorem` | [Units.mem_posSubgroup](../../../../CommutativeAlgebra/RingTheorySubringBasic.lean/declarations/units-mem-possubgroup.md) | 1517 | `result-track:4ea76ecdd6212c367ff0e5f4e8eac06d902a6e743bd6581b719445a5e15b190f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69d90398ea3faa757735382396912d11b97270995d995b9e8982a8ac7864158f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
