# Verification target: Connected Clopen Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0acb126ddce701c465d18d0c453d10d1b335b311",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0acb126ddce701c465d18d0c453d10d1b335b311`.

Source path: `GRWTSK/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPreconnected.subset_isClopen](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/ispreconnected-subset-isclopen.md) | 48 | `result-track:db56eca201395e94f73e3d96d6e81bf2b3bb5975cea13457a78463ffa8bd8288` |
| 2 | `theorem` | [Sigma.isConnected_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/sigma-isconnected-iff.md) | 52 | `result-track:2e4be649916a76cb4db41214b215d322cdfee104a616b4eba1cc6009ade7b8e9` |
| 3 | `theorem` | [Sigma.isPreconnected_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/sigma-ispreconnected-iff.md) | 63 | `result-track:dd1898f8bfed9460e92bc98b4cb73e03a9524c0bce57a4a322bc65d7f676111f` |
| 4 | `theorem` | [Sum.isConnected_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/sum-isconnected-iff.md) | 73 | `result-track:79bb0e4a9c399e425fc901254d1df760f12f450754725de0c7f33e87df723ad5` |
| 5 | `theorem` | [Sum.isPreconnected_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/sum-ispreconnected-iff.md) | 92 | `result-track:c4f5be63fe185895208091dbae88959b7fc2dca0d6cf9b3a3689aa13c104e664` |
| 6 | `theorem` | [Continuous.exists_lift_sigma](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/continuous-exists-lift-sigma.md) | 108 | `result-track:9dea1d8932d8c4ac7fd499d4d4f377947ed741be2a7addbf78df9306b251a74d` |
| 7 | `theorem` | [nonempty_inter](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/nonempty-inter.md) | 118 | `result-track:b9c011fd2a4f3540166f70ba719850e75010ed633b8474e2076184b302bc21b3` |
| 8 | `theorem` | [isClopen_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-iff.md) | 122 | `result-track:7e2e72c1d8ab7ad3b14d5d67918e671c73f030680e6a37ab85055c3abec12772` |
| 9 | `theorem` | [IsClopen.eq_univ](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-eq-univ.md) | 130 | `result-track:6af3d03711bda5c1fc45522bf57d52cd0911b54a53d4608338ade8ed4f599198` |
| 10 | `lemma` | [isClopen_preimage_val](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-preimage-val.md) | 135 | `result-track:8adfb07d7ef570bcdf53c347025c534d2d95d1cac58f41bdf68b631975235d94` |
| 11 | `lemma` | [subsingleton_of_disjoint_isClopen](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/subsingleton-of-disjoint-isclopen.md) | 152 | `result-track:779b01ce56a91c965936c6ecc2cc4e8b46a502de96eb1581c539086c3fe28f34` |
| 12 | `lemma` | [subsingleton_of_disjoint_isOpen_iUnion_eq_univ](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/subsingleton-of-disjoint-isopen-iunion-eq-univ.md) | 166 | `result-track:183a577ea7f6f7f9c16e51da6287521d539ac765b76e606c9b7946135ac18687` |
| 13 | `lemma` | [subsingleton_of_disjoint_isClosed_iUnion_eq_univ](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/subsingleton-of-disjoint-isclosed-iunion-eq-univ.md) | 178 | `result-track:ae405208056a14d55f1647f99d5db9cf100220ef80c0422dcf80e2bd471f848d` |
| 14 | `theorem` | [frontier_eq_empty_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/frontier-eq-empty-iff.md) | 190 | `result-track:112ca0e54162efc31b10ef1b37cb4fb6167bb6cdafc628c925d93b5935fa06db` |
| 15 | `theorem` | [nonempty_frontier_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/nonempty-frontier-iff.md) | 194 | `result-track:a373a8532bc2d048b6918bf789890423fc7564bd15992732c2aa99abf2f4f502` |
| 16 | `lemma` | [PreconnectedSpace.induction₂'](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/preconnectedspace-induction-source-edition-2.md) | 201 | `result-track:bd4b14052058175509e2dee2a88bb3db458ef6c55628f1d9a38e5d4a51ceb38f` |
| 17 | `lemma` | [PreconnectedSpace.induction₂](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/preconnectedspace-induction.md) | 221 | `result-track:8aed331e7f6b2ebf35ce52745c12eecc8b1764366bd57339e71480cc13c3bd41` |
| 18 | `lemma` | [IsPreconnected.induction₂'](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/ispreconnected-induction.md) | 230 | `result-track:980c395fc03a36323f2e7601c7613b0f62e375544a878b5b2f7c49036e0989d4` |
| 19 | `lemma` | [IsPreconnected.induction₂](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/ispreconnected-induction-source-edition-2.md) | 246 | `result-track:d063a938648028b485e1c3a34a0376f4c2536b0761fa4b319d37902a0baeadaa` |
| 20 | `theorem` | [isPreconnected_iff_subset_of_disjoint](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/ispreconnected-iff-subset-of-disjoint.md) | 257 | `result-track:a00ca8ac5a5f39a8200f04ca2d5448f427fda6cefebdb0e38b5a34660566d477` |
| 21 | `theorem` | [isConnected_iff_sUnion_disjoint_open](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isconnected-iff-sunion-disjoint-open.md) | 282 | `result-track:0280487ba9520052a4d1a35b18f9fd03762192224d7584abe0caf66d6d1f63a3` |
| 22 | `theorem` | [disjoint_or_subset_of_isClopen](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/disjoint-or-subset-of-isclopen.md) | 303 | `result-track:1c8917ca3e42bd41a17a4099efec93ddb8dd403c38053d1a4a4f2dbec9597dd0` |
| 23 | `theorem` | [isPreconnected_iff_subset_of_disjoint_closed](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/ispreconnected-iff-subset-of-disjoint-closed.md) | 310 | `result-track:cab32f05d68ced7544ef9376de23889c18fb2eafb72b324b32297ff1933a5bd5` |
| 24 | `theorem` | [isPreconnected_iff_subset_of_fully_disjoint_closed](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/ispreconnected-iff-subset-of-fully-disjoint-closed.md) | 336 | `result-track:9ce4eb67b2468461a2a240292cf5fb1e121bc88bf324f5cd1f9903cfe5063d95` |
| 25 | `lemma` | [IsClopen.isPreconnected_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-ispreconnected-iff.md) | 350 | `result-track:7420acc73fb933c0acec8ed9b703cd94b583220658b25bf792992a123b1decad` |
| 26 | `lemma` | [IsClopen.not_isPreconnected_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-not-ispreconnected-iff.md) | 365 | `result-track:445daa5aa0903dd10a4da2b66a006ae8078f75e84345b7d9a74058bd5f1ad277` |
| 27 | `theorem` | [IsClopen.connectedComponent_subset](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-connectedcomponent-subset.md) | 370 | `result-track:f5b864d190cc8e92ea4641b87b877fa17c50bb70d7e2d39af78dd4046db314a1` |
| 28 | `theorem` | [connectedComponent_subset_iInter_isClopen](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/connectedcomponent-subset-iinter-isclopen.md) | 376 | `result-track:c6dc033dc3d0344fa2d0e5973c6c8ff311ab1107ade4f359c94b705af7bf49fa` |
| 29 | `theorem` | [IsClopen.biUnion_connectedComponent_eq](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-biunion-connectedcomponent-eq.md) | 381 | `result-track:7b070cb5ddb6e5a4d66518aca092118432725b50f778a7c28051fde1a3ecc0e8` |
| 30 | `lemma` | [IsClopen.biUnion_connectedComponentIn](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-biunion-connectedcomponentin.md) | 389 | `result-track:4797b42146af4a5b94708ec52dbbf6a99b7e671dce8f1fd546174e058f59bc7c` |
| 31 | `lemma` | [IsClopen.connectedComponentIn_eq](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isclopen-connectedcomponentin-eq.md) | 401 | `result-track:b3e912cb6eaf141b4b5ca19fad1b54d9429152fe560044f2a999196f9e2110ae` |
| 32 | `theorem` | [Topology.IsCoinducing.isConnected_preimage_of_isClosed](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/topology-iscoinducing-isconnected-preimage-of-isclosed.md) | 412 | `result-track:aab99b216c3f4215f3a7bf6737dcacf79fb7ae2adcc51d7b5fbd95cfd6b45a9f` |
| 33 | `theorem` | [preimage_connectedComponent_connected](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/preimage-connectedcomponent-connected.md) | 487 | `result-track:b568ea15188f2e3969555db5b209bec5de0b0da421efbc5d58511b783d003893` |
| 34 | `theorem` | [Topology.IsCoinducing.preimage_connectedComponent](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/topology-iscoinducing-preimage-connectedcomponent.md) | 495 | `result-track:75b302b15cf0ce113c65cdf299161e8da0e54790093c7cb4274160a0fa3798e1` |
| 35 | `lemma` | [Topology.IsCoinducing.image_connectedComponent](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/topology-iscoinducing-image-connectedcomponent.md) | 502 | `result-track:345eb1b22ee4e02095c70dddde1119ee79fb7fb4e977ed2f4e665880340c15db` |
| 36 | `def` | [connectedComponentSetoid](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/connectedcomponentsetoid.md) | 513 | `declaration-track:924921ad58d2b26badab5cc6dfc00a21c2a255d8daf5e1e2a2491c6a214dc11a` |
| 37 | `def` | [ConnectedComponents](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/connectedcomponents.md) | 518 | `declaration-track:79cfa634fb121398c6d4cbaec3c0c31734aeab784a6e4f02ebb1de744441d921` |
| 38 | `def` | [mk](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/mk.md) | 524 | `declaration-track:319f18606519441e9a76fadb0aaddb73e4645ce78c7e31f092dc578e2ce248d9` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/instance.md) | 526 | `declaration-track:33d00e037beb05dab60e00e48a911e1a855c7db674a5e3ba0c3175c4d3e69dbf` |
| 40 | `theorem` | [coe_eq_coe](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/coe-eq-coe.md) | 529 | `result-track:72732ae765fb402a7c7cb258aa6cc179065c0173ba7c221e29603f3762db0ffc` |
| 41 | `theorem` | [coe_ne_coe](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/coe-ne-coe.md) | 533 | `result-track:3a4f1fc7dbeda9115c3e834c99cbb80d968907b0c32a2e6b67755c5b65a4e387` |
| 42 | `theorem` | [coe_eq_coe'](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/coe-eq-coe-source-edition-2.md) | 537 | `result-track:c2048059824121add2d46f7986e040d1b3eb7bfb13270095258cde9e0f104e8c` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 540 | `declaration-track:496102cea7a2bdc7e7027c9639270a6497a6a9880f485de4cb1e369ef066ed13` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 543 | `declaration-track:4c166bc6a937b3ca04e8a619db9f928658143a2667296c8519471d8912c81c13` |
| 45 | `theorem` | [surjective_coe](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/surjective-coe.md) | 546 | `result-track:75413f2b8e9a18d3d70d6b9140467e8bfc87ccc3792288d6518c80040e958136` |
| 46 | `theorem` | [isQuotientMap_coe](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isquotientmap-coe.md) | 549 | `result-track:803bcc7ba17f409dc37962764900075fbedaa20e5a911fa8547c2e73b6da1f11` |
| 47 | `theorem` | [continuous_coe](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/continuous-coe.md) | 553 | `result-track:c24666ac7683c3b1ac1223f9c5b1bda26d88f22b6b10e36f675c202e868d3ab2` |
| 48 | `theorem` | [range_coe](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/range-coe.md) | 557 | `result-track:8d908ff720ddac79cf245d7f19008002fce495e24c76602b203f26737f6870a8` |
| 49 | `lemma` | [nonempty_iff_nonempty](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/nonempty-iff-nonempty.md) | 560 | `result-track:0cc9d963864509ee0158059a969866b7ef0e20660b9d9f5a018704982b0fde8b` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 563 | `declaration-track:cbf798f8d5aaf085fcafda4047e7dc3d98d34c44bda38a8b821d8c230ef9bd76` |
| 51 | `lemma` | [isEmpty_iff_isEmpty](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/isempty-iff-isempty.md) | 566 | `result-track:89cf5e18a216ff71a9390bf06845c9bad0e2f2cc39c0aa1c84a03ea128ae531c` |
| 52 | `instance` | [subsingleton](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/subsingleton.md) | 569 | `declaration-track:0ece04ac9a62473d0196d1a5496304a9ef00525e3860c2ba69382420855bf3c4` |
| 53 | `def` | [equivOfIsClopen](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/equivofisclopen.md) | 583 | `declaration-track:72120f0fe7f99ec94c1d7daf1e8e4e5b83304c3bbd120d8ad2958dee4d086f83` |
| 54 | `lemma` | [equivOfIsClopen_symm_mk](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/equivofisclopen-symm-mk.md) | 610 | `result-track:cdd9d766bd7d5197edfda47b78b673c0bb09c0231d01d4eb0a8d173928d1f8f3` |
| 55 | `lemma` | [equivOfIsClopen_mk](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/equivofisclopen-mk.md) | 613 | `result-track:8342bb486b3efd06b3b0d8b28422dececc3c6390965bc27adb97c2f68d123e86` |
| 56 | `def` | [equivOfIsClopenOfIsConnected](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/equivofisclopenofisconnected.md) | 621 | `declaration-track:7e4ea2fc364fcb5e193ed4c82a25f178529733db3b2384a8ebca430bde189267` |
| 57 | `lemma` | [equivOfIsClopenOfIsConnected_mk](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/equivofisclopenofisconnected-mk.md) | 627 | `result-track:c4b44aa3f213223bccbfc17af8e453e67bddaaa95ff41805dac2b2daeea2ed11` |
| 58 | `lemma` | [exists_fun_isClopen_of_infinite](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/exists-fun-isclopen-of-infinite.md) | 637 | `result-track:3cc5f2b26834ab27d271591c01e40c8e1ca594f5d0bc93790f63b387910f2e8f` |
| 59 | `theorem` | [connectedComponents_preimage_singleton](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/connectedcomponents-preimage-singleton.md) | 671 | `result-track:9b718d0b8cece4c78c6ae9d231d100eda12fda4dafe54da8c8dc13b3418978a6` |
| 60 | `theorem` | [connectedComponents_preimage_image](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/connectedcomponents-preimage-image.md) | 678 | `result-track:439daeae004235aeee3076f542ad0deb8ad8a82dfc48b5903dce247c811226a1` |
| 61 | `lemma` | [ConnectedComponents.discreteTopology_iff](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/connectedcomponents-discretetopology-iff.md) | 682 | `result-track:74fca757719eaba8ee0687d25eeee28cea83309d7fcacfdc49b90de53159b7f8` |
| 62 | `theorem` | [isPreconnected_of_forall_constant](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/ispreconnected-of-forall-constant.md) | 691 | `result-track:46d5522f581c3d3eba584b57c323f20e3eb9587d70914a0dc4eb6b7259f56f90` |
| 63 | `theorem` | [preconnectedSpace_of_forall_constant](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/preconnectedspace-of-forall-constant.md) | 705 | `result-track:3e430051e9c3abf1d3db645a09d959455bfbafb56c59fd2d693db91c120726bc` |
| 64 | `theorem` | [preconnectedSpace_iff_clopen](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/preconnectedspace-iff-clopen.md) | 710 | `result-track:5a058ad7b4abdec08ab2a5438853463e75d0a8338546012587f05be69412bebd` |
| 65 | `theorem` | [connectedSpace_iff_clopen](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/connectedspace-iff-clopen.md) | 718 | `result-track:d958525a9d7417390c32744009ad158104fd1989ab34b0d5e2b5d125ebf29627` |
| 66 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedClopenNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 723 | `declaration-track:b79856025eb5dc4f97d9442c46f863b05aaa58aaca27c6c66a4108cc0498d17e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df8dcc8d92435890b04cc8bbd90197990f9d2dd91145122ea6b906564c3c7bb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
