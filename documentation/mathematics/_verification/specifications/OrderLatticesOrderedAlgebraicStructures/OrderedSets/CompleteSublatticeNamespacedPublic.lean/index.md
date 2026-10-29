# Verification target: Complete Sublattice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12d657bf1b172d6aae16721117b65a5217cc1646",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variant4412c149ed4666c91bcff27ff5ac530e414aa9db9091a113ba56d9d8a727d7e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12d657bf1b172d6aae16721117b65a5217cc1646`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variant4412c149ed4666c91bcff27ff5ac530e414aa9db9091a113ba56d9d8a727d7e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variant4412c149ed4666c91bcff27ff5ac530e414aa9db9091a113ba56d9d8a727d7e0.lean.json)

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
| 1 | `structure` | [CompleteSublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/completesublattice.md) | 45 | `declaration-track:b446b30e977824350144ccb1f1e8b54450425c005985d0537031297aad1e1c88` |
| 2 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/mk.md) | 55 | `declaration-track:38eca0fdc18af33d88c5eb7295d4b75998ba636b7132357d9a994f6dd1ecb613` |
| 3 | `instance` | [instSetLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instsetlike.md) | 71 | `declaration-track:c70e21cb3589d0f4a34f7e5bc8bb1975c43614e7af8af74159a2bdfb02ee250d` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 75 | `declaration-track:de770a7a1d47770eb473faf55bd2d2a1f81f0feaf03673205658f87087248402` |
| 5 | `theorem` | [top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/top-mem.md) | 77 | `result-track:da3b4dcd3d38dfb074c38b6b9b549e03cce8477d136098a50ed2f82e389de927` |
| 6 | `theorem` | [bot_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/bot-mem.md) | 79 | `result-track:e1a1ce42c7f2bc52bc8d791119adfb17f47a9dd1e127732f5528a92d18634509` |
| 7 | `instance` | [instBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instbot.md) | 81 | `declaration-track:10d91734d9217edbb74a3826a594df8cea125ef4fab4416ce6acddc8777ceeff` |
| 8 | `instance` | [instTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/insttop.md) | 84 | `declaration-track:d3f72220070847367a6ab82f8f4f4d0ab7e9ce4108c1a5d8021825816c2428b1` |
| 9 | `instance` | [instSupSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instsupset.md) | 87 | `declaration-track:eab5579bc1a60b6cf5cba9230f2696ff75e9637c1bc3d9382b9d13411117f158` |
| 10 | `instance` | [instInfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instinfset.md) | 90 | `declaration-track:a0c85f19834fb6d510e39debdb310d8a7602efff07331aa65f6ab550814cdb1e` |
| 11 | `theorem` | [sSupClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/ssupclosed.md) | 93 | `result-track:9f7db22384607c91fc6071f76d009defaac5759bbe94e47fa33a51202403fe4e` |
| 12 | `theorem` | [sInfClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/sinfclosed.md) | 95 | `result-track:bae0562b34937aecace7c164a19866f6e876fca598f4fe195c70f4387b361d96` |
| 13 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-bot.md) | 97 | `result-track:e3c1f1fb827755699713e4c35fd0235e21f9c1613be212e0e758e964af8165fd` |
| 14 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-top.md) | 99 | `result-track:4c9cc91dbefdadad0218a3f2ac812389c6378e57b1737f335afdda83d5af04b0` |
| 15 | `theorem` | [coe_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-ssup.md) | 101 | `result-track:02cb41ae2573c7e3d7e04cb3668f5aa35cf06f91f125fb1e6f55eb0af58b2cab` |
| 16 | `theorem` | [coe_sSup'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-ssup-source-edition-2.md) | 103 | `result-track:bddcef0da0cec697cb8bca53ee5f9a35a74049718d49e0e6188b1b0dd61f3c63` |
| 17 | `theorem` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-sinf.md) | 106 | `result-track:82f0fe0bb6cf0b6865ab412b9914ee2660d31b50cf5f3c46ec72fe81d8af764c` |
| 18 | `theorem` | [coe_sInf'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-sinf-source-edition-2.md) | 108 | `result-track:cec565c8ca4517c93e13d9462ca6bc044727d13a6e9e6bdd379c6a03cc7f86b0` |
| 19 | `theorem` | [coe_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-isup.md) | 111 | `result-track:13144a1cf45e0a5d59aae48c62b4a9bfc2c98127453a23102a0f5757ad5d1567` |
| 20 | `theorem` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-iinf.md) | 114 | `result-track:f748d48c6102254f7f6b328a95d5e374e659b9d3d66b38cb2b482bbd8ede844f` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 118 | `declaration-track:f3b262daa88fb324f37248d727fda6de0df4160058b27714c3ad3a8bc8be809e` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:67bc72fcce52d28a1e9d542f7b9264d012e3756cf5bceb2b4f1acf761128782a` |
| 23 | `instance` | [instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instcompletelattice.md) | 121 | `declaration-track:09bc6f21290eb5118385fa80cee69e48ebd9b6b80bd5a3167e6248704a56769f` |
| 24 | `def` | [subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/subtype.md) | 126 | `declaration-track:c6e78649d45882e1547d2d32f8c735d12a996faf28edac4b029233b90ae16e1d` |
| 25 | `lemma` | [coe_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-subtype.md) | 131 | `result-track:ab6b561b0e6a64899a327edb14bb3a03fa990ca90d10bd09e9294f325a2a0587` |
| 26 | `lemma` | [subtype_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/subtype-apply.md) | 132 | `result-track:8304f406b55cb4828f3337fa8b16328716ffb7ca831dc713d17425ff406379d8` |
| 27 | `lemma` | [subtype_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/subtype-injective.md) | 134 | `result-track:b1d0f52b927b4d0d35f10fa15ed139c7d3aec3f9ef791e8f83459269096e5f14` |
| 28 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/map.md) | 139 | `declaration-track:e2b30606151330b9a3cf954f154b7e1b71a3462a23693440f4636f9e5371ec6e` |
| 29 | `theorem` | [mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/mem-map.md) | 152 | `result-track:08febc92f84c4d1ac8d9a23443ef5523cf7ab7311009bf05b4a429e75cb2cf07` |
| 30 | `def` | [comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/comap.md) | 155 | `declaration-track:17d47bb81dfecd8b045fb0f43e55d3d47159d47d29cb61e634e3903322937d75` |
| 31 | `theorem` | [mem_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/mem-comap.md) | 166 | `result-track:d72a01f9393d3c5a0709f4f03cbfa7f40a860e6ca22caccbd40c4e86c6dc5fbc` |
| 32 | `lemma` | [disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/disjoint-iff.md) | 168 | `result-track:1e4011edd7058b1cf509ad950864c16d1f9276d934507773663e0b33cbe1cc0c` |
| 33 | `lemma` | [codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/codisjoint-iff.md) | 173 | `result-track:6a13b28abb41b630e08304dee546e6bd70c9e6c0595c40bab3b7dc45a8c46897` |
| 34 | `lemma` | [isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/iscompl-iff.md) | 178 | `result-track:b79f7f802f4959de7debff4a8becb902eaf6468917a7077254345ea4088a7536` |
| 35 | `lemma` | [isComplemented_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/iscomplemented-iff.md) | 182 | `result-track:dc5a7dae093b7d352cb58ad1e3c7f42ce5439948916582f6566887b787b8d7fe` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/instance.md) | 189 | `declaration-track:437e7e1e15f8bb8c887e5872bc57593699f07a92f6e4459c5014c527725756b0` |
| 37 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/copy.md) | 195 | `declaration-track:9a42c16b22b134fc1658cde1ee877e6ea4fbab60f39a7ea154867a7aa5cee771` |
| 38 | `lemma` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/coe-copy.md) | 198 | `result-track:ae7010e5a45743409302b01e6df405cbf2d5644265b6a9d0a04796d2e2cd81f5` |
| 39 | `lemma` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/copy-eq.md) | 200 | `result-track:db69f31ca296ecdad7594071ddeffd50e305aa0eb36bd85eb3c8c80d7afa88b9` |
| 40 | `def` | [range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/range.md) | 209 | `declaration-track:66bff306d28e68640ae61280650009da233321450bfa6ed576f3db6877ef8df5` |
| 41 | `theorem` | [range_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/range-coe.md) | 212 | `result-track:008cf8590d75a2e98aa5537f9960360ed73b2d6c45397cd464379fb69be627e6` |
| 42 | `def` | [toOrderIsoRangeOfInjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteSublatticeNamespacedPublic.lean/declarations/toorderisorangeofinjective.md) | 215 | `declaration-track:3160166ca6a7d8327e57fe22ec73073060e53041e8ad70745d90aba52a489dab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4f4aa0d3dd2e7d675524da149892387e2f9c041beb5423b21a4f7c7f2fbd231 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variant4412c149ed4666c91bcff27ff5ac530e414aa9db9091a113ba56d9d8a727d7e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variant4412c149ed4666c91bcff27ff5ac530e414aa9db9091a113ba56d9d8a727d7e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
