# Verification target: Connected Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0efc7f68ed6795e790d7b8078877ff0ac2385bb3",
  "lexical_observation_count": 109,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ConnectedBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ConnectedBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0efc7f68ed6795e790d7b8078877ff0ac2385bb3`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean.json)

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
| 1 | `def` | [IsPreconnected](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected.md) | 50 | `declaration-track:335aabe33250710f0850883f999ecd0512c41168e4553ee5c55ef28273531573` |
| 2 | `def` | [IsConnected](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected.md) | 55 | `declaration-track:094f7bacb61025a8ec6b74f40e97ff32bb15365c130825fb5fd14dc9f679a5d9` |
| 3 | `theorem` | [IsConnected.nonempty](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-nonempty.md) | 58 | `result-track:31e7b3a82e251a5510ac2c11ad105829fd303d56cbcca0ed56b7f42efd91adc2` |
| 4 | `theorem` | [IsConnected.isPreconnected](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-ispreconnected.md) | 61 | `result-track:c2e9c60e313c1659dd76ae67cda0aafeaec463be0e8afb91861cffda61d64a84` |
| 5 | `theorem` | [IsPreirreducible.isPreconnected](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreirreducible-ispreconnected.md) | 64 | `result-track:2906ec06fad88c2161ff63df780b2f7ce7262ccfba15ac1fd1d68d7dfdec1a4e` |
| 6 | `theorem` | [IsIrreducible.isConnected](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isirreducible-isconnected.md) | 67 | `result-track:283c1dc3dabae95f9c547395884d3afc37cfadec994a979301aefa2f0b616f32` |
| 7 | `theorem` | [isPreconnected_empty](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-empty.md) | 70 | `result-track:9a9928082c19d264bad33f7b6514136348cf090d53b610743f246abba60399ed` |
| 8 | `theorem` | [isConnected_singleton](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-singleton.md) | 73 | `result-track:50ce71b4a2579f2421163b55fa3521ce2607b06552ec60f5aa4ae81f79d744eb` |
| 9 | `theorem` | [isPreconnected_singleton](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-singleton.md) | 76 | `result-track:8a847f69402c5f55b8d09621ad6f960ce25050de26de63d6eb4cfb01b390077d` |
| 10 | `theorem` | [Set.Subsingleton.isPreconnected](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/set-subsingleton-ispreconnected.md) | 79 | `result-track:9433d510fe92f02b0cedf595c4f6ff8c8bfab53e93d5ba84454ab7ac9b38a448` |
| 11 | `theorem` | [isPreconnected_of_forall](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-of-forall.md) | 84 | `result-track:ce9296c5e7c124c7239247888d9288a7fc8e8dc309728ca07af6b3750f637ce1` |
| 12 | `theorem` | [isPreconnected_of_forall_pair](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-of-forall-pair.md) | 103 | `result-track:cc7d940c5fae2696e01709c66f3174fa61fc3574bc5a109fb4c06b384ab9511d` |
| 13 | `theorem` | [isPreconnected_sUnion](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-sunion.md) | 110 | `result-track:e3fc5ca064a03e8da22ec35b94e59ff4e79ad96390a59ba307f5d28838d02237` |
| 14 | `theorem` | [isPreconnected_iUnion](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-iunion.md) | 116 | `result-track:c2579b4db5e3916e034bbb67aa5923ab022819a6601a6a32b05cbd44bebf1a10` |
| 15 | `theorem` | [IsPreconnected.union](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-union-source-edition-2.md) | 120 | `result-track:86185ac9bcf0656b1e3e6b5b461db3e4d32f431a5b6c3890d0d81320b7bbaa0e` |
| 16 | `theorem` | [IsPreconnected.union'](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-union.md) | 125 | `result-track:856330c94849cf242b03432d7d4660f25483d160137e823f1eccbe6fbcb6186b` |
| 17 | `theorem` | [IsConnected.union](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-union.md) | 130 | `result-track:5c6cfb59910be5f52ecd637edb187624ede33cccf1924f3a292e64aca50fc0c9` |
| 18 | `theorem` | [IsPreconnected.sUnion_directed](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-sunion-directed.md) | 138 | `result-track:4a180f87a50a20ee7076159dd257b142e4a336640a8a38594597283934ddb1a1` |
| 19 | `theorem` | [IsPreconnected.biUnion_of_reflTransGen](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-biunion-of-refltransgen.md) | 149 | `result-track:971c7b897939f43b3dbf094df17f9de61a594ce4fafb7fc5a933716923dd6359` |
| 20 | `theorem` | [IsConnected.biUnion_of_reflTransGen](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-biunion-of-refltransgen.md) | 179 | `result-track:d96c53a7a8ef490ae1bbd0d55844d3783aefd4859c366fd170aed3a1c5338791` |
| 21 | `theorem` | [IsPreconnected.iUnion_of_reflTransGen](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-iunion-of-refltransgen.md) | 189 | `result-track:bf60b4ea9526d5f1e006b245e74d53b1f1d0f784a2540c09706834cfe87c0ce9` |
| 22 | `theorem` | [IsConnected.iUnion_of_reflTransGen](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-iunion-of-refltransgen.md) | 197 | `result-track:ae6c1140a8e9dd022d898c0a8608b902ac8dcb28fec90d7673a7f2781c569eee` |
| 23 | `lemma` | [IsPreconnected.transGen_of_iUnion](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-transgen-of-iunion.md) | 203 | `result-track:7f50d10b9d5b25da692ad0778ec140cf20a9c6ff5cecfbc76ed07fc10595c57a` |
| 24 | `theorem` | [IsPreconnected.iUnion_of_chain](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-iunion-of-chain.md) | 231 | `result-track:d07a594315018f79717cbbd4e1e7bd84893caf019643e25ebaa90cc2d49dd7ec` |
| 25 | `theorem` | [IsConnected.iUnion_of_chain](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-iunion-of-chain.md) | 238 | `result-track:8989e232d6f1241076bc82d744eacabfd5e28562bb81834a2baccb1e28e1819f` |
| 26 | `theorem` | [IsPreconnected.biUnion_of_chain](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-biunion-of-chain.md) | 244 | `result-track:2546d83de9947c65c910b97daa34a3f7aadf5381b56563deb84fcdcc62ca044e` |
| 27 | `theorem` | [IsConnected.biUnion_of_chain](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-biunion-of-chain.md) | 260 | `result-track:1e88fb68826725090c40334deabcd3329f8798bc6d7558b7814580a2833eff05` |
| 28 | `theorem` | [IsPreconnected.subset_closure](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-subset-closure.md) | 270 | `result-track:cb00520fdae4bca2cd446f348c4ffdf9a8b84fbfe138720544db6853c8e30639` |
| 29 | `theorem` | [IsConnected.subset_closure](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-subset-closure.md) | 280 | `result-track:811a3b4b7228e190bb9d4d1073fc9a87b59afcd1d4d22cda5310ca39f925a689` |
| 30 | `theorem` | [IsPreconnected.closure](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-closure.md) | 285 | `result-track:e2559f7d9a0c71ed343cc5d3b6611d9618a0a89551a7503ebd3ee7540f9b39eb` |
| 31 | `theorem` | [IsConnected.closure](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-closure.md) | 290 | `result-track:b52cf3d004202f6d0f34ca4480f7dca77cb72a48dbfb0b08c31fa3d85eefad2a` |
| 32 | `theorem` | [IsPreconnected.image](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-image.md) | 294 | `result-track:868ce6bde44f4791dd67104fa73e0f3934454a962358af3f53ee6a9011de201a` |
| 33 | `theorem` | [IsConnected.image](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-image.md) | 315 | `result-track:a33c2192666a1ff274e6c96d9d24f984b99a8fabac173a8114280c91c30e6e12` |
| 34 | `theorem` | [isPreconnected_closed_iff](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-closed-iff.md) | 319 | `result-track:228e5688855093af708aea33a7811848834015664c9cbd0ac534628a459b3fc2` |
| 35 | `theorem` | [Topology.IsInducing.isPreconnected_image](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/topology-isinducing-ispreconnected-image.md) | 341 | `result-track:cc3347c7cedab9d71b328f9a883c424ed42474ce76616cabac88737b2e3a8761` |
| 36 | `theorem` | [IsPreconnected.preimage_of_isOpenMap](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-preimage-of-isopenmap.md) | 355 | `result-track:9338435045b19818b42fdeb078de5363c7bf51b378be4a7ecf3a2b77af1229d9` |
| 37 | `theorem` | [IsPreconnected.preimage_of_isClosedMap](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-preimage-of-isclosedmap.md) | 366 | `result-track:d91f1fc9e30e4fa58cc391f1bd607a1061b2627d65d4fb4d9827b7059d8a97d6` |
| 38 | `theorem` | [IsConnected.preimage_of_isOpenMap](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-preimage-of-isopenmap.md) | 378 | `result-track:2807623fb23238efdf5d4c9f59c4c0ce5733d05a13005e0268d883df01a4d91b` |
| 39 | `theorem` | [IsConnected.preimage_of_isClosedMap](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-preimage-of-isclosedmap.md) | 383 | `result-track:62798f4b28b0dcb848835c987aba8cbae5cff2fe41cb8fdf7c49f8d6055af37d` |
| 40 | `theorem` | [IsPreconnected.subset_or_subset](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-subset-or-subset.md) | 388 | `result-track:990179dd50d5e5c9a83659ce11e6ddfb45eafe5c64d16ae35abd4f019040adb9` |
| 41 | `lemma` | [IsPreconnected.mapsTo_Ioi_or_Iio](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-mapsto-ioi-or-iio.md) | 402 | `result-track:81e2c145ae3c02d9be18a17026f5cbbb8beb7e14820f01a163df4b39eb981ac7` |
| 42 | `lemma` | [IsPreconnected.lt_of_ne](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-lt-of-ne.md) | 407 | `result-track:0a9a0482b36559d06c785f47d51213c2898dc36f78fae5c18c25f49216ea0990` |
| 43 | `lemma` | [IsPreconnected.gt_of_ne](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-gt-of-ne.md) | 411 | `result-track:97d89c13131e265ba43f44e10006c3bf0306f35520fbe92605684d626a2d0612` |
| 44 | `theorem` | [IsPreconnected.subset_left_of_subset_union](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-subset-left-of-subset-union.md) | 417 | `result-track:7259bd4ebf4bb96c7223fb74c5bea7c2b12c6333b415ad00395b219ec034d7b8` |
| 45 | `theorem` | [IsPreconnected.subset_right_of_subset_union](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-subset-right-of-subset-union.md) | 427 | `result-track:9a1cd3087db36225b93c7d4f8b381337bc9ead9dee0b84c3929a45392df2af29` |
| 46 | `theorem` | [IsPreconnected.subset_of_closure_inter_subset](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-subset-of-closure-inter-subset.md) | 434 | `result-track:27866a1e2c0313db275784360185c2d4ef93fce60b39b4472d42f7801a601354` |
| 47 | `theorem` | [IsPreconnected.prod](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-prod.md) | 446 | `result-track:db87c0c44589336ba6e60b5e776279e89ede51809e83c146539f6f103e31cebb` |
| 48 | `theorem` | [IsConnected.prod](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-prod.md) | 456 | `result-track:ae6ae518f182450181258a2f7bf4cdb7f6955e1dbb72293a81d19e8b5d32ca3a` |
| 49 | `theorem` | [isPreconnected_univ_pi](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-univ-pi.md) | 460 | `result-track:521a84e85e695d7636f813f50ebe9c951e37cb88c8250f5c481dcc399ccbe32a` |
| 50 | `theorem` | [isConnected_univ_pi](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-univ-pi.md) | 486 | `result-track:119638f758afde226042fe322d896c5015f1496fadce0f8aa22c4bc1ba8f2fe6` |
| 51 | `def` | [connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponent.md) | 495 | `declaration-track:850901c2e31a41343ec4277a804dae7c9a9d786fac46f410e2be5949e8aa541b` |
| 52 | `def` | [connectedComponentIn](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponentin.md) | 505 | `declaration-track:c9e5a0c5d23f88b263073fde235e606069a43c4b446797a27bdff44e31200e7c` |
| 53 | `theorem` | [connectedComponentIn_eq_image](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponentin-eq-image.md) | 508 | `result-track:e55ae637075491614f8cf7d42804eb8d2e150ea4748d1e49ae57c38fb6d49799` |
| 54 | `theorem` | [connectedComponentIn_eq_empty](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponentin-eq-empty.md) | 512 | `result-track:1691b5ef02e1f3e205360086804eca06fbdeefb84b1d474a7c389e101c22cf50` |
| 55 | `theorem` | [mem_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/mem-connectedcomponent.md) | 516 | `result-track:7e08e1bac3799dd16a69d2773f38c4e7b7249dd16558e7f769c8ec9849cd0e29` |
| 56 | `theorem` | [mem_connectedComponentIn](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/mem-connectedcomponentin.md) | 519 | `result-track:0ad7beaa3dd70534b58bdc247146bc6338c0dae2fa24832b19f6f8edbb64613f` |
| 57 | `theorem` | [connectedComponent_nonempty](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponent-nonempty.md) | 523 | `result-track:fccbb468c26721efef1afe0c38824568dce85aaf88e2de92b982a87896f7e1f8` |
| 58 | `theorem` | [connectedComponentIn_nonempty_iff](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponentin-nonempty-iff.md) | 526 | `result-track:5796064541caf5d0a3d926297e07e2e6def4a85bcb061856a9461460f8741358` |
| 59 | `theorem` | [connectedComponentIn_subset](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponentin-subset.md) | 531 | `result-track:1da2a25a663ef4d2a0e03b8eed9a6e40ed7f555216132b44154cdfa67cef146a` |
| 60 | `theorem` | [isPreconnected_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-connectedcomponent.md) | 535 | `result-track:43ddbd393a32b068d90216b5717e68a415c603ada85a8e1632bc2a9f2a069580` |
| 61 | `theorem` | [isPreconnected_connectedComponentIn](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-connectedcomponentin.md) | 538 | `result-track:295b3250248135e36c0354664ff25d3f565ca3125c2452aebc0b0885afe9c5ea` |
| 62 | `theorem` | [isConnected_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-connectedcomponent.md) | 544 | `result-track:789370564af5af199e2c9093befe1464c10dc2c34b4a1fc005f9d80e6dd3c64b` |
| 63 | `theorem` | [isConnected_connectedComponentIn_iff](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-connectedcomponentin-iff.md) | 547 | `result-track:de4eee85af496996ee95e0d57f0859172e858aa5714d861464ddfeafd264cfd4` |
| 64 | `theorem` | [IsPreconnected.subset_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-subset-connectedcomponent.md) | 552 | `result-track:da062da1ea880973cb42fe674f44eb9ffeb2574997ddf196bc6d10672c8f7ed5` |
| 65 | `theorem` | [IsPreconnected.subset_connectedComponentIn](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-subset-connectedcomponentin.md) | 555 | `result-track:286cf00fa4d4a86d2791e516d772acf6c3f8b53a9f1cf5ce0f4007e8090a0b07` |
| 66 | `theorem` | [IsConnected.subset_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-subset-connectedcomponent.md) | 568 | `result-track:4da729b4f40800c339b4316c6b5daddfca4c229b4869dd206ca840afa65d3120` |
| 67 | `theorem` | [IsPreconnected.connectedComponentIn](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-connectedcomponentin-source-edition-2.md) | 572 | `result-track:bf0de341b64e5c108e5bcb159d34a6232726ce1af909220186fd99accf628cc3` |
| 68 | `theorem` | [connectedComponent_eq](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponent-eq.md) | 576 | `result-track:2721a5f073e7e04aa77e58808ec3e693c462d48900c76efc41d5bcb67791da78` |
| 69 | `theorem` | [connectedComponent_eq_iff_mem](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponent-eq-iff-mem.md) | 583 | `result-track:d117103f782e36611cf083a603f81efaaa3a7c419dec869a8156df81450760cb` |
| 70 | `theorem` | [connectedComponentIn_eq](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponentin-eq.md) | 587 | `result-track:495b0f254292217445d12a73a4d8849ea7875f94788895cdb8cc0e8c75cca011` |
| 71 | `theorem` | [connectedComponentIn_univ](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponentin-univ.md) | 594 | `result-track:ad2f173599c6a7f31eee567e208f8bbd01d1d5a8b1f2816fc919b8895fc801ee` |
| 72 | `theorem` | [connectedComponent_disjoint](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponent-disjoint.md) | 601 | `result-track:b07380362b2ba597707cd3c274b5e70a87a51dc5dcb48790ea35aa3beabdf74e` |
| 73 | `theorem` | [isClosed_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isclosed-connectedcomponent.md) | 606 | `result-track:1a3cc1046e4d5df3da2ef935e439813ce1ae6b66b3d258a49d722a3fcca03875` |
| 74 | `theorem` | [Continuous.image_connectedComponent_subset](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/continuous-image-connectedcomponent-subset.md) | 611 | `result-track:47d5483f13af865ee1eee7ca5d3edc92d7f8a027b84227963773d31d130be270` |
| 75 | `theorem` | [ContinuousOn.image_connectedComponentIn_subset](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/continuouson-image-connectedcomponentin-subset.md) | 616 | `result-track:7f366dea029e89c7da8e44c606d89603d26832d6929aa77ac32721b4cab6d175` |
| 76 | `theorem` | [Continuous.image_connectedComponentIn_subset](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/continuous-image-connectedcomponentin-subset.md) | 624 | `result-track:f947bb371fd3abb98385d42d4b9d9fbd3fe6c2deed8b93e6b8d647b09961cecd` |
| 77 | `theorem` | [Continuous.mapsTo_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/continuous-mapsto-connectedcomponent.md) | 629 | `result-track:34f1363f0376fd7b8c6d38f2b7a758c798dc691f396ab722b0082377babaa635` |
| 78 | `theorem` | [ContinuousOn.mapsTo_connectedComponentIn](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/continuouson-mapsto-connectedcomponentin.md) | 633 | `result-track:133233453459f82dbed7916bcb868f69526ff65b9f989abadc125c415df53a59` |
| 79 | `theorem` | [Continuous.mapsTo_connectedComponentIn](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/continuous-mapsto-connectedcomponentin.md) | 639 | `result-track:ee99bed7d5c537dcac544590f3aabc390996eb94e17194b74c0893d148ed5658` |
| 80 | `theorem` | [connectedComponent_prod](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponent-prod.md) | 646 | `result-track:c5d337e02f0a3bb905a52facb85ee65b3ea12b6dbdce18034a2ecf4db5123292` |
| 81 | `theorem` | [connectedComponent_pi](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponent-pi.md) | 656 | `result-track:2f97635a92ff9cf5c80570402303b76bd7ccbcd3343c1ef32a35448424ff6842` |
| 82 | `theorem` | [irreducibleComponent_subset_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/irreduciblecomponent-subset-connectedcomponent.md) | 662 | `result-track:3487d0e76515ab585985d806a90735c4559845082347dd9bfb4d89e560f7104e` |
| 83 | `theorem` | [connectedComponentIn_mono](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedcomponentin-mono.md) | 667 | `result-track:83a57bca72460e68fb953d746b322083b60fe2a53ebaa7a316f5f1ba5b4f9497` |
| 84 | `theorem` | [ContinuousOn.preimage_connectedComponentIn](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/continuouson-preimage-connectedcomponentin.md) | 678 | `result-track:2832ed42ab87f00c64c8d1d443773f21fc0f281a9af2f126c93fdeec89625245` |
| 85 | `theorem` | [Continuous.preimage_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/continuous-preimage-connectedcomponent.md) | 690 | `result-track:ff9a2ef5a0c2ba49cf173a5b9448e6e429173cec8e1951f7162f923372fb0043` |
| 86 | `class` | [PreconnectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/preconnectedspace.md) | 697 | `declaration-track:07ef5ae75e4efd3f2b789b1ab42de26f5ed86cd9757b45e8610f227b8a3b9f53` |
| 87 | `class` | [ConnectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedspace.md) | 705 | `declaration-track:a15a5d7e538efeabd5baf83016b3ff83232f90e44059a9cc3f6e228d6fcffd16` |
| 88 | `theorem` | [isConnected_univ](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-univ.md) | 712 | `result-track:56f42a72aa1e429e9ca9fec288815deca5fdf623a8401ed0e034108da150aec7` |
| 89 | `lemma` | [preconnectedSpace_iff_univ](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/preconnectedspace-iff-univ.md) | 715 | `result-track:260c52fda022ad92230f1914b9866dfc8786f64e040fe2e4c4a95d06682d8dd5` |
| 90 | `lemma` | [connectedSpace_iff_univ](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedspace-iff-univ.md) | 718 | `result-track:95b04f6581a2024de05b223288cfaf324c44fd063a72899905288109d22a60a6` |
| 91 | `theorem` | [isPreconnected_range](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-range.md) | 722 | `result-track:036894985b3d49d68bf9869be68c60e00f7e7b557b874e2c88dbfd307c44d784` |
| 92 | `theorem` | [isConnected_range](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-range.md) | 726 | `result-track:9aeb4ec16c7ab3539ac78b11828fdc96a6bf6c122658c9810d6183488cf44825` |
| 93 | `theorem` | [Function.Surjective.connectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/function-surjective-connectedspace.md) | 730 | `result-track:1558c2600196fbe81eaf1d434132235064569b5552daeb25885c05a6b96c57d7` |
| 94 | `lemma` | [Homeomorph.connectedSpace_iff](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/homeomorph-connectedspace-iff.md) | 735 | `result-track:8a176cb2440d4105553591c7df51ebead753923f98102e396d582a7c7169b331` |
| 95 | `instance` | [Quotient.instConnectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/quotient-instconnectedspace.md) | 740 | `declaration-track:76d7717bfc6c10541e096cdbdcf36ae5e756115077b21beb290cc67222156968` |
| 96 | `theorem` | [DenseRange.preconnectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/denserange-preconnectedspace.md) | 744 | `result-track:a6b35270ba026cbace3b56ccbfee2e12ab567073c9c1f553306d7c9677a735ed` |
| 97 | `theorem` | [connectedSpace_iff_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/connectedspace-iff-connectedcomponent.md) | 748 | `result-track:09ce1110694ee9cd6eec3dc87e39b1595a66f81edfebfe7e2deab09a298648b2` |
| 98 | `theorem` | [preconnectedSpace_iff_connectedComponent](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/preconnectedspace-iff-connectedcomponent.md) | 759 | `result-track:a588327d9dae771bbf364c4971d1424917c25ed537b4a64eea75c094e2cc8bce` |
| 99 | `theorem` | [PreconnectedSpace.connectedComponent_eq_univ](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/preconnectedspace-connectedcomponent-eq-univ.md) | 770 | `result-track:db4865ddb1ede1ab39b34df11d72756e59f1c7659e81489714a0d1acc10a328b` |
| 100 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/instance-source-edition-6.md) | 774 | `declaration-track:ff8684b230da6ba76263139e64c59f740663255ea32704799bd0a99cc42d2eb6` |
| 101 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/instance-source-edition-2.md) | 780 | `declaration-track:4d0140b8b9ef250ba9960febebd30f1b12e241c81caf2eb6d7c90cb4ab06aa92` |
| 102 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/instance-source-edition-3.md) | 783 | `declaration-track:726698f21518e5918cf8dddd5be43e17a26875a85648673d144f0f7e6298cc07` |
| 103 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/instance-source-edition-4.md) | 787 | `declaration-track:cd502a21eca55277bd0a8b42c4e6da754c43b278b855522a3659133c1b79a98b` |
| 104 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/instance-source-edition-5.md) | 791 | `declaration-track:ee8eb29d6b94b07ae5f3190ee4b6c7e082f9c2d24bf69639ba6be625c315c3f8` |
| 105 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/instance.md) | 796 | `declaration-track:3c28b7566e37d73b08d175f6c3ed2a8b40d5285d208eddfd624d5bb39b65499c` |
| 106 | `theorem` | [Subtype.preconnectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/subtype-preconnectedspace.md) | 799 | `result-track:ce381e2b54019ec13faef68b9f742b22dcaee88b3ae9f0f3bd1380e52f59aaa3` |
| 107 | `theorem` | [Subtype.connectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/subtype-connectedspace.md) | 803 | `result-track:3a82c83fd2fce97b420c89c555d749b479856a9bc46ad0be69a1b8db1e6f7286` |
| 108 | `theorem` | [isPreconnected_iff_preconnectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/ispreconnected-iff-preconnectedspace.md) | 807 | `result-track:be2f3ba8afd3ca5ae3ac3fa2c25107e65af178e90acddc102c9e83388ab8d204` |
| 109 | `theorem` | [isConnected_iff_connectedSpace](../../../../GeneralTopology/ConnectedBasicPublic.lean/declarations/isconnected-iff-connectedspace.md) | 811 | `result-track:2c2ba5ed6d546a490437f0c10507bfcb2526db53b682aa7e4a8103a92022374e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83d2dbd861f859728af79f3d7ae9ada54502d4376002f05cb7b9d32862d9bb83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
