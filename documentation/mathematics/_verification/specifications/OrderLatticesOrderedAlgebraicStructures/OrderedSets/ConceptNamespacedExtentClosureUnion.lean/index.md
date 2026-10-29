# Verification target: Concept Namespaced Extent Closure Union

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "527dad721f07740187870f8cfa2859f5a52389cc",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant21227e5e6594f44975348d394cc7f16c4614a939d07b1c7eb9382cc4e268f92a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `527dad721f07740187870f8cfa2859f5a52389cc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant21227e5e6594f44975348d394cc7f16c4614a939d07b1c7eb9382cc4e268f92a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant21227e5e6594f44975348d394cc7f16c4614a939d07b1c7eb9382cc4e268f92a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/intentclosure.md) | 58 | `declaration-track:44b1ac1e068d62097c059b171ecdf0fe5b867f017c69602e61cc28628d875cf8` |
| 2 | `def` | [extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/extentclosure.md) | 64 | `declaration-track:b57e10c9880bbd64c8a7e8dde89902b4881f064f7cc465db4e269127122122b1` |
| 3 | `theorem` | [subset_intentClosure_iff_subset_extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/subset-intentclosure-iff-subset-extentclosure.md) | 70 | `result-track:28f9a06fce73e67f53151d0fa0c43193d90bdf756b18f3f50b3c4521c746ca88` |
| 4 | `theorem` | [gc_intentClosure_extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/gc-intentclosure-extentclosure.md) | 77 | `result-track:c559aa50e10125479eea02344949e913c3eae47cc29d24e74e0f0ac99573f1a4` |
| 5 | `theorem` | [intentClosure_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/intentclosure-swap.md) | 82 | `result-track:ca6096264214c192336ddc0b5749979d55a048c220287a603073e0af2f7e6573` |
| 6 | `theorem` | [extentClosure_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/extentclosure-swap.md) | 86 | `result-track:f22094f069645c4c1203335170071c1ef8741c9da71a9774df75f5f533c2e27d` |
| 7 | `theorem` | [intentClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/intentclosure-empty.md) | 91 | `result-track:155bc92e1527557b48184fcb3893358c9a328f1c38eb6b402952e6c801178421` |
| 8 | `theorem` | [extentClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/extentclosure-empty.md) | 96 | `result-track:a6781273da6b66ed29e6feb16055d1858a2d6218db3bb8493a72a9f0ff321ed2` |
| 9 | `theorem` | [intentClosure_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/intentclosure-union.md) | 101 | `result-track:683ab451ffdb5e7df3096eab072380e77bcfe9cb6e1f538a6fb96926b31a7118` |
| 10 | `theorem` | [extentClosure_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/extentclosure-union.md) | 107 | `result-track:0e19cd1b0ed9a7df407e46af69d5aee5ce45cca44656d639daafbc63a2f05cc8` |
| 11 | `theorem` | [intentClosure_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/intentclosure-iunion-source-edition-2.md) | 113 | `result-track:a99e18c27a9c96b7b2b9c9610c37cb1f09127dccb5a33e772a19977f873e3baa` |
| 12 | `theorem` | [extentClosure_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/extentclosure-iunion.md) | 119 | `result-track:0290ce41cc3de76c1575d171943a90a614159ee251fb45ea42a4ca9cefe0f8d7` |
| 13 | `theorem` | [intentClosure_iUnion₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/intentclosure-iunion.md) | 128 | `result-track:05a53c9206bd3e934edd8b666811688ee0561a75be6a4b03e941a3ba6c03be73` |
| 14 | `theorem` | [extentClosure_Union₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/extentclosure-union-source-edition-2.md) | 137 | `result-track:f0cbcc9a1ab8caba1649383f11541a1b24b22f6d25af79b75575d4ebb5db13d8` |
| 15 | `theorem` | [subset_extentClosure_intentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/subset-extentclosure-intentclosure.md) | 142 | `result-track:12971768deaa8da4885a23adac339cc37c4178b6d090a42f56d1e3bd911f9444` |
| 16 | `theorem` | [subset_intentClosure_extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/subset-intentclosure-extentclosure.md) | 147 | `result-track:f94a545884a9d58ff2a2f76366097de3b57433a7543ab8ebe67c909b3500d062` |
| 17 | `theorem` | [intentClosure_extentClosure_intentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/intentclosure-extentclosure-intentclosure.md) | 153 | `result-track:6e739b516275e646cee8f5700313824dd876f9bbc86ee741096c918c01c63184` |
| 18 | `theorem` | [extentClosure_intentClosure_extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/extentclosure-intentclosure-extentclosure.md) | 159 | `result-track:c770648d3eb18832d0b1ac5ceeaf38074b29d0abd63a8a42abaee75e25df3925` |
| 19 | `theorem` | [intentClosure_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/intentclosure-anti.md) | 164 | `result-track:cd0020b174151c13413ab1e7f4a3000145704be0cb60b02133e0cb227386e423` |
| 20 | `theorem` | [extentClosure_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/extentclosure-anti.md) | 168 | `result-track:8cc4d896ff07b7abad607e27cbef94f83283a1849682fc179ead5b909d8bbe2f` |
| 21 | `structure` | [Concept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/concept.md) | 180 | `declaration-track:6fbdf60bb42adc86417038bbc181dbf8600c603e1af2141cc188046d9aba1a7f` |
| 22 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/ext.md) | 196 | `result-track:05f8e313f196c4f02798816981903d174d0cb3989ab2eb972c042cbcc3f84258` |
| 23 | `theorem` | [ext'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/ext-source-edition-2.md) | 204 | `result-track:2b87b182f7afb7d12f65067310a4d40d6423df40976575a716f1b7f6c783f6a2` |
| 24 | `theorem` | [fst_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/fst-injective.md) | 212 | `result-track:d9c81bec484aec324554b4094346ad3d030e178659e692b061af85cf2b80f9f4` |
| 25 | `theorem` | [snd_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/snd-injective.md) | 215 | `result-track:080a7d663b253b240799c27d8525a2fcedc8579b58602949ddc8e9bc58152a4a` |
| 26 | `instance` | [instSupConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instsupconcept.md) | 218 | `declaration-track:23826994b4e90fd0605d92abea54c8fbce972897e4e0d008266fac8af293c524` |
| 27 | `instance` | [instInfConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instinfconcept.md) | 227 | `declaration-track:1c4e82bb3ea7b2a30bff58819abc8f03a6d9397de9d9ed60188f49997e7f0513` |
| 28 | `instance` | [instSemilatticeInfConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instsemilatticeinfconcept.md) | 236 | `declaration-track:c6c5b804cef51c8c8a5a0a109f191a6a256ec66d4d61b314704a248442d39ce4` |
| 29 | `theorem` | [fst_subset_fst_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/fst-subset-fst-iff.md) | 240 | `result-track:f7911dd2768eca09cb547780f82263b0c7c1bf07d4abef9857837cd3019dcf76` |
| 30 | `theorem` | [fst_ssubset_fst_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/fst-ssubset-fst-iff.md) | 245 | `result-track:943ffb0c727d96260ed266bed61eb5e30f02283aaee510f5c844ec86d8c2b95a` |
| 31 | `theorem` | [snd_subset_snd_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/snd-subset-snd-iff.md) | 250 | `result-track:0016d634fa0a7d4f967fa1e386e83fc4f7b5db66e91f2c1f01cfc342fa5acf56` |
| 32 | `theorem` | [snd_ssubset_snd_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/snd-ssubset-snd-iff.md) | 259 | `result-track:21eada321235ef96221e5b0d6be7c2093478e7ff1977d1605334419dae25a19b` |
| 33 | `theorem` | [strictMono_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/strictmono-fst.md) | 263 | `result-track:ff15ed446a0aa9f57873eebff2df8eeb89234f97d65de1f2d249396b12d6aeff` |
| 34 | `theorem` | [strictAnti_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/strictanti-snd.md) | 267 | `result-track:7dba1f46f95bc4f14684e150592b48b858ed15bdae841e7f612f87891676b7df` |
| 35 | `instance` | [instLatticeConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instlatticeconcept.md) | 271 | `declaration-track:ef357818b5be1b7bd7a85189e405b944879886979aa7858f209cf46e95bf4118` |
| 36 | `instance` | [instBoundedOrderConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instboundedorderconcept.md) | 280 | `declaration-track:11a6ddda3a68b65c2831f60d03fe6668669f06f25320406a26897f443bea0be0` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instance-source-edition-3.md) | 286 | `declaration-track:ad87e7aeda2b753f74cdf3bef6e158000441b807e9a15684c1ff6292649e3b0a` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instance-source-edition-4.md) | 295 | `declaration-track:b70a0f2743c458a62208849e8a5ae11801e2f0a2dd5c3beb94fa1e0f3c818f3c` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instance.md) | 304 | `declaration-track:58751f4689d7c64bc1ddda5ca8ed9787e34cb7f6cd925cd7af2c8ebdf9819a9a` |
| 40 | `theorem` | [top_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/top-fst.md) | 316 | `result-track:29614404a653336d5886a9330f4a8bbe004c3c83afb97e013163a0f2eea981fa` |
| 41 | `theorem` | [top_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/top-snd.md) | 321 | `result-track:fee1970ae6636976eeedb6500a1af5a11e502af2a9eb4d518eb55caaf18603c3` |
| 42 | `theorem` | [bot_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/bot-fst.md) | 326 | `result-track:ee05ed3700fc698c6378fc7d9dd78cec2465bea54617f357a5565ddea7e99f18` |
| 43 | `theorem` | [bot_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/bot-snd.md) | 331 | `result-track:f9fd08ba64e825654e18dfc564c94bbd434dd0cdc7d0ef4be65a4bae3d1ae908` |
| 44 | `theorem` | [sup_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/sup-fst.md) | 336 | `result-track:3e75ab9ea0d40d72768e282bd05bbb181165fdefa09bfb914840f1ff72cea0b7` |
| 45 | `theorem` | [sup_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/sup-snd.md) | 341 | `result-track:7783317461adbf8f1e4cf335b0a78c134b60daa0343f14c63094c5820f37b392` |
| 46 | `theorem` | [inf_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/inf-fst.md) | 346 | `result-track:27d31a422da375be7639f6dfedca59d5e2aca892c12e3523cdc5a1c55d9c1367` |
| 47 | `theorem` | [inf_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/inf-snd.md) | 351 | `result-track:37ff7ed943edc911b342d3e521e42c0d605f9144d6f96ce12d345c59dc64b935` |
| 48 | `theorem` | [sSup_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/ssup-fst.md) | 356 | `result-track:a5004e8764463687386df4ebb01a2efba0c7c4d1158e1d9f1da9a889d2203b2b` |
| 49 | `theorem` | [sSup_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/ssup-snd.md) | 362 | `result-track:7195dc4b1b45eb1eee6716f250b2a44d73d92d8155b68415f6c4ad483e2c493c` |
| 50 | `theorem` | [sInf_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/sinf-fst.md) | 367 | `result-track:66190ed8149e88e955fbe016d843d03b9051f3e45f73edb5bcd86340a477e570` |
| 51 | `theorem` | [sInf_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/sinf-snd.md) | 372 | `result-track:cd7bc82e612a5adc551367b2ad3ff2bd32172dac22c1d53d3bce77a52567c7b3` |
| 52 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/instance-source-edition-2.md) | 377 | `declaration-track:93f6feef4845e05019df2861c1ad13cad11a5cd9afbbf2dfa44f9da23c2becb8` |
| 53 | `def` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/swap.md) | 382 | `declaration-track:79867a1647df6331f26bd4a52d208cd6c762ccc2f29abf1990e9a41b7d5b5525` |
| 54 | `theorem` | [swap_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/swap-swap.md) | 388 | `result-track:7bca9c156571b8ec6eb03f5e0f062b52111cb13e27256688bffd8dbd0a18d970` |
| 55 | `theorem` | [swap_le_swap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/swap-le-swap-iff.md) | 393 | `result-track:63230e44e257de55f1098a5226bad60c50dec8fc4bf405489edc0bc630baf8d8` |
| 56 | `theorem` | [swap_lt_swap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/swap-lt-swap-iff.md) | 398 | `result-track:afd1ca31f05707571431f004ab6df394949ac25f55c8ec0d60a7c9866bec96dc` |
| 57 | `def` | [swapEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedExtentClosureUnion.lean/declarations/swapequiv.md) | 404 | `declaration-track:5a0cf8fdba544d9684b0918d8fa8077a1af44d4885486bb958cd26f80f361a31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ef37bfcb3e0aef029e5e658ddd432efadd191e2b891325bf49db58fbcf79a21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant21227e5e6594f44975348d394cc7f16c4614a939d07b1c7eb9382cc4e268f92a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variant21227e5e6594f44975348d394cc7f16c4614a939d07b1c7eb9382cc4e268f92a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
