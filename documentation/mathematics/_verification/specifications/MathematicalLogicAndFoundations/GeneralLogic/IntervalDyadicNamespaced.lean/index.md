# Verification target: Interval Dyadic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5a64315b8c4caa8dbcd5acb7761d9ad740f1572",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5a64315b8c4caa8dbcd5acb7761d9ad740f1572`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Dyadic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalDyadic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/intervaldyadic.md) | 55 | `declaration-track:988806b3701612fbbcc7d92f8494a6b8d636e0057a534d238854d0c8a1eb7a34` |
| 2 | `def` | [toSet](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/toset.md) | 69 | `declaration-track:775bdd17373c279a4d18319635dad816bd7e21d1d155d208203bbd06a5aaa30c` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/instance.md) | 72 | `declaration-track:99005c3032cb1bfaa35a20003066c66866d97e3b6c897049f10167359c3e688c` |
| 4 | `theorem` | [mem_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-def.md) | 76 | `result-track:95d6ab676ac1c4d4e3c3013280b14adaaa01932cffb9a5f799112bfc3385f556` |
| 5 | `def` | [toIntervalRat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/tointervalrat.md) | 82 | `declaration-track:8c7cb4b3ee92b4bc8a5323d51f9a2b20dfd3562cca424014f9666f07721e21ae` |
| 6 | `theorem` | [mem_toIntervalRat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-tointervalrat.md) | 86 | `result-track:607cd779d3272644a8a87ad4279fd86c2718c0e8f1552e931a5dc9c3e5732e1e` |
| 7 | `def` | [singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/singleton.md) | 93 | `declaration-track:0018bab04f7ecc0af6292b4e71f322209bd02aaa6f24056ed0477eb366ef95a8` |
| 8 | `theorem` | [mem_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-singleton.md) | 96 | `result-track:0d830090f51f5ed3d8ed5b027c088c22c17893a943c7e0590c5ef256197d11fe` |
| 9 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/instance-source-edition-2.md) | 101 | `declaration-track:b3410ed371b1f11724f3cdcc4c1a3783dd6cdc53d90c6ba54ff74d595fbf1bde` |
| 10 | `def` | [mk?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mk.md) | 105 | `declaration-track:370a745525c7e77c468de703cf780690fa9676a28a3775659dd8ff77ff8db7cc` |
| 11 | `def` | [width](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/width.md) | 109 | `declaration-track:df827c312147d3ce02b1dfbf91192a3043b81a6da8943aca747c91517f18b827` |
| 12 | `def` | [midpoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/midpoint.md) | 112 | `declaration-track:3eb7c95c81b5005564bfd4aa120591a7530432bfdf6cd4bd390a7058fd7f7c51` |
| 13 | `def` | [roundOut](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/roundout.md) | 125 | `declaration-track:c6923b33f917d363786c2d3ee3a3d56e0d18dc1a69aaf4c93a3c3d78d9ccca7b` |
| 14 | `theorem` | [roundOut_contains](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/roundout-contains.md) | 136 | `result-track:313bd2d6cd7f17c97edde24426995e62b514d6da99d6b6d51179eb7ac082af45` |
| 15 | `def` | [neg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/neg.md) | 154 | `declaration-track:841da16074371dcc79db9b9d1439080397a91a932d094ad10a6d64051e3787ed` |
| 16 | `theorem` | [mem_neg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-neg.md) | 162 | `result-track:14eb87c934c474a597dd02a53057c097b4abb1a0999ee02c0a8b6318751f4adc` |
| 17 | `def` | [add](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/add.md) | 170 | `declaration-track:9c612d3dc471c018876f1d73fcfad995f3015c2c27437d57d426a5359b3c0a86` |
| 18 | `theorem` | [mem_add](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-add.md) | 178 | `result-track:fdbc92e421683e80a3f9cbf8aecb03a6f1af9aaff74c797e673d7ead68194f2c` |
| 19 | `def` | [addRounded](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/addrounded.md) | 185 | `declaration-track:473b7edf14b32a4cf0d908bc792d65113285adeb7d181914955be41d803a74b2` |
| 20 | `def` | [sub](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/sub.md) | 191 | `declaration-track:2af9b9a023211ce9d0800ebb29ab5a18b0cfb0474c7ec6a23d42a6021defad76` |
| 21 | `theorem` | [mem_sub](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-sub.md) | 194 | `result-track:8a40c8663d31a74f0fdc9c5236d18e1c3c89195dc54c53ae81384fdfd0bb7fce` |
| 22 | `def` | [mul](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mul.md) | 209 | `declaration-track:634360768e2c7c6fb87aa50371c9a3f81a33d143708c069aa461ce7c34f6c385` |
| 23 | `def` | [mulFast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mulfast.md) | 220 | `declaration-track:7cc68dc4cc0d841b2172ed3c4c53d3d6ceff0e0db0f6e81109bdd5ba8543c2f0` |
| 24 | `theorem` | [mem_mul](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-mul.md) | 282 | `result-track:448cd69cba1104280d59d6a593d8df7474534e51d89ccff781cd5d112d32e0af` |
| 25 | `theorem` | [min4_toRat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/min4-torat.md) | 310 | `result-track:b5b8a2a0d925fd4466c75c512bc4b764ce5565a59e335e4c5131bc73848ff755` |
| 26 | `theorem` | [max4_toRat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/max4-torat.md) | 315 | `result-track:fc0e84632ddff418cd75e64e290b7d352b4f23a60748a61664748cb070715d45` |
| 27 | `theorem` | [toRat_nonneg_of_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/torat-nonneg-of-le.md) | 320 | `result-track:4c23a7114a534a04ade1babfa52d74201962c48202345ba045632321718cc417` |
| 28 | `theorem` | [toRat_nonpos_of_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/torat-nonpos-of-le.md) | 324 | `result-track:3bfdf4a527a0f7cdf4936c49bc1bd81978b49b99ea08e06947c21379374ac511` |
| 29 | `theorem` | [toRat_neg_of_not_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/torat-neg-of-not-le.md) | 328 | `result-track:71faa4e8e43a0f2d5b99a80b9e33844ea3ff03415a1d97fcd2280c617fae3462` |
| 30 | `theorem` | [toRat_pos_of_not_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/torat-pos-of-not-le.md) | 332 | `result-track:26a68ff89c40f25db4f3a1d9416c01115e500c3e0080472cabc2076b6ec88467` |
| 31 | `theorem` | [mulFast_lo](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mulfast-lo.md) | 336 | `result-track:c4242a6bb3431addb45719a5697a4b14250f0f4cc8a8db62bc306d76d76f7abb` |
| 32 | `theorem` | [mulFast_hi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mulfast-hi.md) | 380 | `result-track:b58f29b102ce47affc596d9d770d4e642fc0399a3f33e56eafd04f221e1b14e4` |
| 33 | `theorem` | [mem_mulFast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-mulfast.md) | 426 | `result-track:b6bd6cd77de49fa90a1431ec80e1efc41898a3a2730247c32a678ea91ea39eb2` |
| 34 | `def` | [mulRounded](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mulrounded.md) | 434 | `declaration-track:cd55d7def4208143cc0aee8f905c99950e44527994d04ed907c18d3e60e692b5` |
| 35 | `def` | [mulNormalized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mulnormalized.md) | 438 | `declaration-track:1faa792e88cf337b3e8e773992e86b005c05550d48182c3ca147744469dcbbce` |
| 36 | `def` | [scale](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/scale.md) | 450 | `declaration-track:8d7adb4b8c4fe2617ff426d076775c690ae5942a6f9af471b7ec49bd2bb89185` |
| 37 | `def` | [scale2](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/scale2.md) | 471 | `declaration-track:9fb48ca347dd95fdded59f9549d78ac1ac12b52c1173404c1e7fc5cca20e4739` |
| 38 | `def` | [sqrt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/sqrt.md) | 483 | `declaration-track:ac0065209823741a15cd35f11e0ae27da573fb51d5576eb3045867c9b49a94b0` |
| 39 | `theorem` | [sqrt_le_max_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/sqrt-le-max-one.md) | 496 | `result-track:86938a76c4bca4812d07725ada1b5521c9e7ba9f1c2aea6fa24fc3274c4a3b5c` |
| 40 | `theorem` | [mem_sqrt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-sqrt-source-edition-2.md) | 518 | `result-track:e82c5a9d713d390436a7800792167c7bdab731149134108c52b132c992fbd67d` |
| 41 | `theorem` | [mem_sqrt'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-sqrt.md) | 535 | `result-track:2f948e56530fe0f6d22dab6d7a3248827f1af50e2e006b68cfde1f14e62a2375` |
| 42 | `def` | [containsZero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/containszero.md) | 553 | `declaration-track:6c5ec503fa729ce01a9c05dc4a8244e388ab8a1816a871dcc1b6ebcda0306977` |
| 43 | `def` | [isPositive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/ispositive.md) | 557 | `declaration-track:55982a5b2de22c32d00b95f10b2a74fdd0d19fd24052b18babc8cc58881d37be` |
| 44 | `def` | [isNegative](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/isnegative.md) | 561 | `declaration-track:6f9bd66a5e8ce935ff0b5d9f5f1c8ca819138d5551f109bd413613fa8794c8ba` |
| 45 | `def` | [subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/subset.md) | 565 | `declaration-track:561157b01a54134c525bbb2cb58ad7a1a532ead52cf5baeeae2dd5a4420449a5` |
| 46 | `def` | [upperBoundedBy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/upperboundedby.md) | 569 | `declaration-track:f4002348d432a32f3504eacca810a30f012b407fb4e2fab5ab08dbdf75ffaae6` |
| 47 | `def` | [lowerBoundedBy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/lowerboundedby.md) | 573 | `declaration-track:d78915e1d999c33d6ba729c5faa59a963be1fde7c3c7d0a63d226d16308a4ea8` |
| 48 | `def` | [ofIntervalRat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/ofintervalrat.md) | 579 | `declaration-track:c03975a80c1ee4a2ea7a20aa178dd9d56391f6f64296ffaa6afb7f97dee7e3bb` |
| 49 | `theorem` | [mem_ofIntervalRat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IntervalDyadicNamespaced.lean/declarations/mem-ofintervalrat.md) | 603 | `result-track:cb54e7a939940b34ea5589da3747acfc28c8de56f2f9a98f2eff0e055e762453` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56dc518dab071d00c7c98a1915e98f1a7713104978df3d6aec9abec1dbdb555d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
