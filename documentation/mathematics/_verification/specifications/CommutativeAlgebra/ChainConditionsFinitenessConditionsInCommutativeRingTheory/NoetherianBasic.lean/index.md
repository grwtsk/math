# Verification target: Noetherian Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fe6048340bf4f426b6984eecab58d55146f6977",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcdffa70f3be0e2e0c61013a4cd50c613453f9bbcf0aca84103e8639a5f84f46a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fe6048340bf4f426b6984eecab58d55146f6977`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantcdffa70f3be0e2e0c61013a4cd50c613453f9bbcf0aca84103e8639a5f84f46a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantcdffa70f3be0e2e0c61013a4cd50c613453f9bbcf0aca84103e8639a5f84f46a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.PartialSups` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Finsupp` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isNoetherian_of_surjective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-surjective.md) | 67 | `result-track:269961f2670a3b78063118a02a57bbc5b86af499157012201b9401d8f11f3e0d` |
| 2 | `instance` | [isNoetherian_range](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-range.md) | 73 | `declaration-track:7745e8ad6327f3f383eb3d34ef6017fcb3a69a77c3a793381979674e9e928209` |
| 3 | `instance` | [isNoetherian_quotient](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-quotient.md) | 77 | `declaration-track:c19c9f8dfd6cbf04952a38c2b040acf810fd5153248b6acbd57cffb5a389f7d0` |
| 4 | `theorem` | [isNoetherian_of_linearEquiv](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-linearequiv.md) | 83 | `result-track:cb38d78868e670db8a33db9754dcd16f6f3f02afe2e99f54db754a7bc7878622` |
| 5 | `theorem` | [LinearEquiv.isNoetherian_iff](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/linearequiv-isnoetherian-iff.md) | 86 | `result-track:0f24941fd8bb0018c3a9e2f08b3b50c6b1d2b350b1935613b998e867667411c3` |
| 6 | `theorem` | [isNoetherian_top_iff](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-top-iff.md) | 89 | `result-track:1def07f78acf3450d4e19628a0cb591e191484d0de335f9c073074ed507f96a6` |
| 7 | `theorem` | [isNoetherian_of_injective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-injective.md) | 92 | `result-track:cf3ac18afc75825034dd2b9d37f3084cd4e5ab97cac98d02c3fbe44ae993c8a7` |
| 8 | `theorem` | [fg_of_injective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/fg-of-injective.md) | 96 | `result-track:91dbcb54ac8bbd085e75ea98644a9b45497604795bb298b055b174b5510c825e` |
| 9 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/instance-source-edition-2.md) | 110 | `declaration-track:28e6be5c75f49cd5665be477d4e91901e770ea38c41705365aca1865925b0201` |
| 10 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/instance-source-edition-3.md) | 114 | `declaration-track:3acba902328f7e838d4af84297fa9927aaacb323b586fe4ce0ca54f1782cc05d` |
| 11 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/instance-source-edition-5.md) | 117 | `declaration-track:8c7fdd6001f7de6a24511987d5fdc2fb000f0845568c9163dcbbea1550bb7a92` |
| 12 | `theorem` | [Finite.of_injective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/finite-of-injective.md) | 123 | `result-track:6f9c925f6b3551d44302bbf1254f7bd88cc7b8f805196b778e8b46c89ace963a` |
| 13 | `theorem` | [isNoetherian_of_ker_bot](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-ker-bot.md) | 137 | `result-track:4949ce9ebe7076f564d0c1bb7accfc9f6b8eecb7939ad25ca6757b1e4c630dcd` |
| 14 | `theorem` | [fg_of_ker_bot](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/fg-of-ker-bot.md) | 141 | `result-track:f722e0bc4be93b13e2e1654dc247d736f0b19b149b56c858cfc27469e7b7d52a` |
| 15 | `instance` | [isNoetherian_prod](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-prod.md) | 147 | `declaration-track:159665016a93aa5d596a4b268e0c6566fc24c468a708ec832c02dbb66377ef28` |
| 16 | `instance` | [isNoetherian_sup](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-sup.md) | 154 | `declaration-track:caef220d58f0a3cd8058d298290f07318aba1679f5320480815cc1f85cf5bc44` |
| 17 | `instance` | [isNoetherian_pi](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-pi-source-edition-2.md) | 161 | `declaration-track:c6d93983318fde5f9ab0c6e36c89f2875f64d37ae0bdde3f3ddf84320da27eb7` |
| 18 | `instance` | [isNoetherian_pi'](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-pi.md) | 172 | `declaration-track:aa52951a6926eb378df3e5611f8e5ef714adce3dd7da356b2bc21d8e215c32ff` |
| 19 | `instance` | [isNoetherian_iSup](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-isup.md) | 175 | `declaration-track:41fe333793e2a16be776d20284aa892fc003d9bb2e2269bf7936bb896cacc9b6` |
| 20 | `theorem` | [isNoetherian_of_range_eq_ker](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-range-eq-ker.md) | 184 | `result-track:773fa375553186c44608e74d8d502e7c38a0093281fcf7ee3751cf105c890760` |
| 21 | `theorem` | [isNoetherian_iff_submodule_quotient](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-iff-submodule-quotient.md) | 198 | `result-track:27a3691eeda347e4bcc082edac3d4f8d75956be93b0d52537455e2420d36b431` |
| 22 | `instance` | [isNoetherian_linearMap_pi](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-linearmap-pi.md) | 211 | `declaration-track:363136019a2ecd481d245922bb80aaedc5ea12cffa9f6ec38ea91b021d079309` |
| 23 | `instance` | [isNoetherian_linearMap](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-linearmap.md) | 214 | `declaration-track:6f8694e13a6b62e696b71b5bf0ed46fe0e3c2a384abeb0b9a02cddd187546520` |
| 24 | `theorem` | [IsNoetherian.induction](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-induction.md) | 228 | `result-track:f672f6aa71f58e07f2af36a5471dfa93110467329f0c08f87fdfdf53b2e10f4a` |
| 25 | `theorem` | [LinearMap.isNoetherian_iff_of_bijective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/linearmap-isnoetherian-iff-of-bijective.md) | 232 | `result-track:8a515bf38c85f43b60a96e934a1eef4683d826def456b031031c85f4112df7bf` |
| 26 | `lemma` | [Submodule.finite_ne_bot_of_iSupIndep](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/submodule-finite-ne-bot-of-isupindep.md) | 245 | `result-track:355c386913e339da1018197ce40d1939a19217825754662bd86aef5e1fbfdcc1` |
| 27 | `theorem` | [LinearIndependent.finite_of_isNoetherian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/linearindependent-finite-of-isnoetherian.md) | 255 | `result-track:49b58ca3288690f89ec5415608a992c2ce18e169ad9cf24ae002116f06577649` |
| 28 | `theorem` | [LinearIndependent.set_finite_of_isNoetherian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/linearindependent-set-finite-of-isnoetherian.md) | 264 | `result-track:acb8762bffb5adb85c1c0adc9b9a06086ed0caabc74b0b1f945036d4b1b7f715` |
| 29 | `theorem` | [IsNoetherian.disjoint_partialSups_eventually_bot](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-disjoint-partialsups-eventually-bot.md) | 271 | `result-track:aaabfdd9d660469790b38e0b7c9b6f92c16db4d01d0fe705be90ac7fd9c5d873` |
| 30 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/instance.md) | 290 | `declaration-track:0ec531b6991df1ca99dd2f63c25fbb2e0b1bd60d35d376f6e5ae7170b61fcd6f` |
| 31 | `theorem` | [isNoetherian_of_submodule_of_noetherian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-submodule-of-noetherian.md) | 295 | `result-track:87177318c0c516c7be85d7570e051557e3bd8bf703faa6c251993119e9188cd5` |
| 32 | `theorem` | [isNoetherian_of_tower](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-tower.md) | 301 | `result-track:2d789f15864b2dc8d137ec9755206c171a3df9c9eff68679c6f91626f1d9ff6e` |
| 33 | `instance` | [isNoetherian_of_isNoetherianRing_of_finite](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-isnoetherianring-of-finite.md) | 305 | `declaration-track:b550003f0c0d74609595ed920bc8384bb98a0624f0f610a80001f3e15c78194c` |
| 34 | `theorem` | [isNoetherian_of_fg_of_noetherian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-of-fg-of-noetherian.md) | 311 | `result-track:7b4143f2af03322be96f5e714d3420e5b8a9255ccc09abab46936d0b7e331154` |
| 35 | `theorem` | [isNoetherian_span_of_finite](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherian-span-of-finite.md) | 317 | `result-track:ca64adec3749a2649082a979efd439e48f9c6c24c18d3758b2149049f13dd2bb` |
| 36 | `theorem` | [IsNoetherianRing.of_finite](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherianring-of-finite.md) | 321 | `result-track:d8b16e205945366e8248764327749f6febeabdf406e465f7056d3e20e5deb463` |
| 37 | `theorem` | [isNoetherianRing_of_surjective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherianring-of-surjective.md) | 325 | `result-track:2544d3e60ff1a757ffd0d311f9a9f17e7df234fb0b1377520d7ac2aea6694da5` |
| 38 | `instance` | [isNoetherianRing_rangeS](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherianring-ranges.md) | 329 | `declaration-track:26848647ab3c7e8ce185d6122814553eed97799197b7e78d87261c269858e94b` |
| 39 | `instance` | [isNoetherianRing_range](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherianring-range.md) | 333 | `declaration-track:507223896478edf7f287d7124a02e5b0ce627a9846a18f20a83f7bff556fae19` |
| 40 | `theorem` | [isNoetherianRing_of_ringEquiv](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/isnoetherianring-of-ringequiv.md) | 337 | `result-track:3fb292fe78eb6c2ec97b3c87238946d6e02904a8b5a02f1d327197400e1a2052` |
| 41 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/instance-source-edition-6.md) | 341 | `declaration-track:e0141100ac266dd1e91684e56b8e6aa4be8b8e589a3bc1f668baeac15b1d0802` |
| 42 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/NoetherianBasic.lean/declarations/instance-source-edition-4.md) | 346 | `declaration-track:7837764e49057ecf922d17360d9cc572e9f738fd883b0f0842567fa0b9314c79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e0fed4f2ca8c6ca31ea6fab5c2a34a257635c21d623e6545000cc2a8d9c6a58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantcdffa70f3be0e2e0c61013a4cd50c613453f9bbcf0aca84103e8639a5f84f46a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantcdffa70f3be0e2e0c61013a4cd50c613453f9bbcf0aca84103e8639a5f84f46a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
