# Verification target: Scott Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e70ba6638b52955640391a74b81ec8d17a97e53",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ScottTopology.lean/index.md) · [Full source](../../../../GeneralTopology/ScottTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e70ba6638b52955640391a74b81ec8d17a97e53`.

Source path: `GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ScottContinuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.UpperLowerSetTopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirSupInaccOn](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinaccon.md) | 73 | `declaration-track:3ac9675fb79abccc962cd7ea99485aad7dda54d794fa86e1429e75389bfb2321` |
| 2 | `def` | [DirSupInacc](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinacc.md) | 78 | `declaration-track:1a4b02a2aab28ed549ff4275c9abac25dfbd20421308e3b7a66746b0495761f8` |
| 3 | `lemma` | [dirSupInaccOn_univ](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinaccon-univ.md) | 81 | `result-track:4dba53290568e9482fe9797090997c61e92acdc9ace1b6b20cd15bf051477dd6` |
| 4 | `lemma` | [DirSupInacc.dirSupInaccOn](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinacc-dirsupinaccon.md) | 84 | `result-track:4398d705206b47d85bcd04245124d289683244e6d433a5e54fe279c4aae0911b` |
| 5 | `lemma` | [DirSupInaccOn.mono](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinaccon-mono.md) | 87 | `result-track:25d3afce9bc3d123475bf79117f845e275cc735e3bed42166011259b132b28ad` |
| 6 | `def` | [DirSupClosed](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupclosed.md) | 94 | `declaration-track:5f3d6a7d8ef2a9b433ae863fa0be8ef64aa496bfcd09ff4c371b1418827cfe33` |
| 7 | `lemma` | [dirSupInacc_compl](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinacc-compl.md) | 97 | `result-track:1c88c4520a116f8e37cff70ccbad20210f7386ad5c730bc5746da31e8d3b98a3` |
| 8 | `lemma` | [dirSupClosed_compl](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupclosed-compl.md) | 101 | `result-track:bd1df83f1c72db445d01483fe5c975705c5433c2b96d6e470be7580f9073f127` |
| 9 | `lemma` | [DirSupClosed.inter](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupclosed-inter.md) | 107 | `result-track:c59be8f730bbebcf8b4fa3a5aecd3c5a5d55d6f5301a1f43c29322f578f7d3aa` |
| 10 | `lemma` | [DirSupInacc.union](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinacc-union.md) | 111 | `result-track:fa6f1c27912978deb71d8b7f250cc157740fe1643d8834ab01b46147444c1a28` |
| 11 | `lemma` | [IsUpperSet.dirSupClosed](../../../../GeneralTopology/ScottTopology.lean/declarations/isupperset-dirsupclosed.md) | 114 | `result-track:f4727c3e65310751a0bfc0a5f18238261b16091f1ae4144272406f0f4499d1f4` |
| 12 | `lemma` | [IsLowerSet.dirSupInacc](../../../../GeneralTopology/ScottTopology.lean/declarations/islowerset-dirsupinacc.md) | 117 | `result-track:b72d0c01f4202e11f5eb029006edc51714dc25a94ba5a36910c55cb0baf08646` |
| 13 | `lemma` | [dirSupClosed_Iic](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupclosed-iic.md) | 119 | `result-track:b660fee3344bec28cee8793d78d94d9ee8801f220706a39d248d120fae0761d3` |
| 14 | `lemma` | [dirSupInacc_iff_forall_sSup](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinacc-iff-forall-ssup.md) | 126 | `result-track:4672e9e7d14b199b81cf73d7e900b56635e00a2de62a74cce6d00e2cce2ac39b` |
| 15 | `lemma` | [dirSupClosed_iff_forall_sSup](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupclosed-iff-forall-ssup.md) | 130 | `result-track:c8031342e3f7692f029245b42be6fcc054786dc6f1498a522999cb619f156d42` |
| 16 | `def` | [scottHausdorff](../../../../GeneralTopology/ScottTopology.lean/declarations/scotthausdorff.md) | 146 | `declaration-track:2b7de62d06612ff618df43e91daaf2e9ffc1069db9fe445ff66b6676c0a62f25` |
| 17 | `class` | [IsScottHausdorff](../../../../GeneralTopology/ScottTopology.lean/declarations/isscotthausdorff.md) | 165 | `declaration-track:18281f8ba0bd9886938889a4d8d402f2f99780af1baafbd14811a9d031643014` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/ScottTopology.lean/declarations/instance-source-edition-6.md) | 168 | `declaration-track:73ff3dc36900032a705ded1c3b9fd068c9bdb420851025d741118aeed225b084` |
| 19 | `lemma` | [topology_eq](../../../../GeneralTopology/ScottTopology.lean/declarations/topology-eq-source-edition-2.md) | 174 | `result-track:182a0785edce5e98243d93e4b16e9dec8ae5b4a0b2ea92cbe0fe1a46955ad731` |
| 20 | `lemma` | [isOpen_iff](../../../../GeneralTopology/ScottTopology.lean/declarations/isopen-iff.md) | 178 | `result-track:af2a1fe9293f3f84f675789d9017e1de29227751136e67347821d0e29a8f9d6e` |
| 21 | `lemma` | [dirSupInaccOn_of_isOpen](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupinaccon-of-isopen.md) | 183 | `result-track:ebdd5fb0f8225ca5a105a0d6c9657477e00127f12a8c436c416eabbe999d7def` |
| 22 | `lemma` | [dirSupClosed_of_isClosed](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupclosed-of-isclosed.md) | 187 | `result-track:76790842ba83553d64fae2de8915feb8dbd38958b5781893fc495b1b78edb87b` |
| 23 | `lemma` | [isOpen_of_isLowerSet](../../../../GeneralTopology/ScottTopology.lean/declarations/isopen-of-islowerset.md) | 200 | `result-track:f74aea4c6367d282ddd14649a8137d2f989b93653043518c144c029d21bc4ced` |
| 24 | `lemma` | [isClosed_of_isUpperSet](../../../../GeneralTopology/ScottTopology.lean/declarations/isclosed-of-isupperset.md) | 204 | `result-track:bf5f50b0902f1b4cd1d74f020970dc8aa22c32ad72d6257b19c92208e077067e` |
| 25 | `def` | [scott](../../../../GeneralTopology/ScottTopology.lean/declarations/scott.md) | 218 | `declaration-track:507e663b675f28a35f33f40f332fcea277e7449235e782de083771a301f0438c` |
| 26 | `lemma` | [upperSet_le_scott](../../../../GeneralTopology/ScottTopology.lean/declarations/upperset-le-scott.md) | 221 | `result-track:83713b7cbe49ad4cb4c3b567eb652726e41238b3b62ec27cecec7b0d6b70fe78` |
| 27 | `lemma` | [scottHausdorff_le_scott](../../../../GeneralTopology/ScottTopology.lean/declarations/scotthausdorff-le-scott.md) | 223 | `result-track:3d14aee5751e833708f9b90348017e5b9fa60b635c38d86c0c80126ccae683c8` |
| 28 | `class` | [IsScott](../../../../GeneralTopology/ScottTopology.lean/declarations/isscott.md) | 231 | `declaration-track:859435629c941ae556125d96f0d861b5cb72789d0dba9398b13a54ac308027de` |
| 29 | `lemma` | [topology_eq](../../../../GeneralTopology/ScottTopology.lean/declarations/topology-eq.md) | 240 | `result-track:07a559af9c41e65018038b935296ebbe776e7de2cade23ae31149e16dbfdc382` |
| 30 | `lemma` | [isOpen_iff_isUpperSet_and_scottHausdorff_open](../../../../GeneralTopology/ScottTopology.lean/declarations/isopen-iff-isupperset-and-scotthausdorff-open.md) | 244 | `result-track:8d6838a0bc94e07f221a04c1c5d14005079d85604b2351a18ca40a966c3f4da9` |
| 31 | `lemma` | [isOpen_iff_isUpperSet_and_dirSupInaccOn](../../../../GeneralTopology/ScottTopology.lean/declarations/isopen-iff-isupperset-and-dirsupinaccon.md) | 247 | `result-track:b6118f4b1266971421acc1a27f3b2a6c1931b887372a2b6acdd5e7b83c1e7632` |
| 32 | `lemma` | [isClosed_iff_isLowerSet_and_dirSupClosed](../../../../GeneralTopology/ScottTopology.lean/declarations/isclosed-iff-islowerset-and-dirsupclosed.md) | 256 | `result-track:8be1611440c71db104e0c102b5daa7350bc8f53c09dd1e01b9695ca67f6ed780` |
| 33 | `lemma` | [isUpperSet_of_isOpen](../../../../GeneralTopology/ScottTopology.lean/declarations/isupperset-of-isopen.md) | 261 | `result-track:9e541bdb99691bd1ee2dc43d0f85b7c39f3a7d0d7926707d5294d9d4802c9978` |
| 34 | `lemma` | [isLowerSet_of_isClosed](../../../../GeneralTopology/ScottTopology.lean/declarations/islowerset-of-isclosed.md) | 264 | `result-track:37b2fe19b0fed4c1f6aa56c7d87bae888125997d0a33ce43ddeb144a4b332562` |
| 35 | `lemma` | [dirSupClosed_of_isClosed](../../../../GeneralTopology/ScottTopology.lean/declarations/dirsupclosed-of-isclosed-source-edition-2.md) | 267 | `result-track:c38391505bc3cba19669a087a2e2786ef6d11fcdb06093c37070cafe9d768507` |
| 36 | `lemma` | [lowerClosure_subset_closure](../../../../GeneralTopology/ScottTopology.lean/declarations/lowerclosure-subset-closure.md) | 270 | `result-track:45c6df7c0ea012c9fbeb404c3d4747cd3ad6391508c1ae9e36e99258d3edb69e` |
| 37 | `lemma` | [isClosed_Iic](../../../../GeneralTopology/ScottTopology.lean/declarations/isclosed-iic.md) | 276 | `result-track:2bb7a09c296edee51390d80efd728181e47711d6e67e9bf8f946365646cf318e` |
| 38 | `lemma` | [closure_singleton](../../../../GeneralTopology/ScottTopology.lean/declarations/closure-singleton.md) | 283 | `result-track:af20fe11fcc12b8dd83f5e7eb181a3ac65155d773c1fe878378d65423d390944` |
| 39 | `lemma` | [monotone_of_continuous](../../../../GeneralTopology/ScottTopology.lean/declarations/monotone-of-continuous.md) | 290 | `result-track:8d6de90a7e78f07c997e5bd7362a93d7791fef3f8ec231ac13480f35f5f24b5c` |
| 40 | `lemma` | [scottContinuous_iff_continuous](../../../../GeneralTopology/ScottTopology.lean/declarations/scottcontinuous-iff-continuous.md) | 295 | `result-track:81abc14f0586930075a41d972769d6b4d6d4d7d63ca2c842477f5e18eb1d0b19` |
| 41 | `instance` | [(anonymous)](../../../../GeneralTopology/ScottTopology.lean/declarations/instance.md) | 324 | `declaration-track:216e6f48033a0fd0a1adb14c2ba57d23b76ad9a8f07a08861ea448a268a44f66` |
| 42 | `lemma` | [isOpen_iff_Iic_compl_or_univ](../../../../GeneralTopology/ScottTopology.lean/declarations/isopen-iff-iic-compl-or-univ.md) | 334 | `result-track:83060615d53ab6498a16dfd2a204a1fb5037afe7b7685502c4b81e2894342425` |
| 43 | `lemma` | [scott_eq_upper_of_completeLinearOrder](../../../../GeneralTopology/ScottTopology.lean/declarations/scott-eq-upper-of-completelinearorder.md) | 352 | `result-track:4add94b095917b5ca6cf1238952f5b2302f32f8920715eb340896501918ad6d0` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/ScottTopology.lean/declarations/instance-source-edition-7.md) | 361 | `declaration-track:d2293e8e9b87d318e1ea69feca246602d6a91f856b530f3475d5468577274970` |
| 45 | `lemma` | [isOpen_iff_scottContinuous_mem](../../../../GeneralTopology/ScottTopology.lean/declarations/isopen-iff-scottcontinuous-mem.md) | 368 | `result-track:a2878141e190e77cc6af251ee503956df29c65c60503036710eb59e806e64df9` |
| 46 | `def` | [WithScott](../../../../GeneralTopology/ScottTopology.lean/declarations/withscott.md) | 378 | `declaration-track:29cfdc381aaea6a16af041897ff9c97f5ec175d5b2506396ca80cbf4d62fffd2` |
| 47 | `def` | [toScott](../../../../GeneralTopology/ScottTopology.lean/declarations/toscott.md) | 383 | `declaration-track:cdcac3e617f88c185e6c729039524f7a4abdfa0da7a4b2120727def76813e231` |
| 48 | `def` | [ofScott](../../../../GeneralTopology/ScottTopology.lean/declarations/ofscott.md) | 386 | `declaration-track:a8ff31424efcc95491a1954854ff91480af33f2aaaa824fddc80d93da568e19c` |
| 49 | `lemma` | [toScott_symm_eq](../../../../GeneralTopology/ScottTopology.lean/declarations/toscott-symm-eq.md) | 388 | `result-track:6fe4c8288e8079990a8f8f64ad8730c2c7882873693e5f1929b053f3670b138f` |
| 50 | `lemma` | [ofScott_symm_eq](../../../../GeneralTopology/ScottTopology.lean/declarations/ofscott-symm-eq.md) | 389 | `result-track:90a461d857d9fee2a160d9760b38501a8a1fcfae81d34b0724d234135b4ebdb0` |
| 51 | `lemma` | [toScott_ofScott](../../../../GeneralTopology/ScottTopology.lean/declarations/toscott-ofscott.md) | 390 | `result-track:32c77ce5d7ee8a77e9d2eb25bb643ea15a5994a778e7433c7d538efbeceae6ea` |
| 52 | `lemma` | [ofScott_toScott](../../../../GeneralTopology/ScottTopology.lean/declarations/ofscott-toscott.md) | 391 | `result-track:817282ba17b55c6a55df796fc85489e9fa37b21fa83d8d701f5420abb7cff266` |
| 53 | `lemma` | [toScott_inj](../../../../GeneralTopology/ScottTopology.lean/declarations/toscott-inj.md) | 393 | `result-track:e5d7b95dde5ac061266bc6c4078d4209c1f15cf9c9ab15205d552946a68d1de2` |
| 54 | `lemma` | [ofScott_inj](../../../../GeneralTopology/ScottTopology.lean/declarations/ofscott-inj.md) | 395 | `result-track:d81ebd9c87f8fdef9ed5c0b5c4743262c0a56209e23b92a733b6aeaa88d8405f` |
| 55 | `def` | [rec](../../../../GeneralTopology/ScottTopology.lean/declarations/rec.md) | 398 | `declaration-track:ff204987dbfadadedf7812b136880e880e8c54a3e98c96375ab4a5c64e3f61da` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/ScottTopology.lean/declarations/instance-source-edition-8.md) | 401 | `declaration-track:e5009f6cf130b426fd745071408ac9c9bdb4b567a52cc9fc78de7863ff5c0e39` |
| 57 | `instance` | [(anonymous)](../../../../GeneralTopology/ScottTopology.lean/declarations/instance-source-edition-2.md) | 402 | `declaration-track:2fadbbedb5454b78d2a65333f2648d9eeffd85d27215288cdbdbd428df212dcf` |
| 58 | `instance` | [(anonymous)](../../../../GeneralTopology/ScottTopology.lean/declarations/instance-source-edition-4.md) | 406 | `declaration-track:485f34f9b85e70f8c676b3423ae416ff82b657412ca8ad4632ab6eee4faefd18` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/ScottTopology.lean/declarations/instance-source-edition-5.md) | 407 | `declaration-track:638257a5608c4758a1ef5d539229a2f6b5d4a8edca3122fd8670e5c16409c03c` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/ScottTopology.lean/declarations/instance-source-edition-3.md) | 408 | `declaration-track:313bda17aa8c3defe4cea5281ba4710a3c1156a92a5e6e5c66ac6da031d8c134` |
| 61 | `lemma` | [isOpen_iff_isUpperSet_and_scottHausdorff_open'](../../../../GeneralTopology/ScottTopology.lean/declarations/isopen-iff-isupperset-and-scotthausdorff-open-source-edition-2.md) | 410 | `result-track:ee1ad5a659fac4d0cbb0b6c5b878ff23cb30b67a54ac2fe8dd3b02ac8840551a` |
| 62 | `lemma` | [scottHausdorff_le_lower](../../../../GeneralTopology/ScottTopology.lean/declarations/scotthausdorff-le-lower.md) | 418 | `result-track:8973fdf5fa2452c83dc841bcb5353c736aaeadad20606c589d47c33bd44fb881` |
| 63 | `def` | [IsScott.withScottHomeomorph](../../../../GeneralTopology/ScottTopology.lean/declarations/isscott-withscotthomeomorph.md) | 426 | `declaration-track:222c87f9ce0f5955d3d54217ea3bb415e500c578cdbb25e95554de03682fd091` |
| 64 | `lemma` | [IsScott.scottHausdorff_le](../../../../GeneralTopology/ScottTopology.lean/declarations/isscott-scotthausdorff-le.md) | 429 | `result-track:5bc8ea7b2947a5a0508fedb2574df8adfbeb0bc9de0bceca8b9f022896809221` |
| 65 | `lemma` | [IsLower.scottHausdorff_le](../../../../GeneralTopology/ScottTopology.lean/declarations/islower-scotthausdorff-le.md) | 433 | `result-track:83fb82212af4176e142883fba1780aef00c4c93ac58eec2e1acf5f358c220d76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff23148f5abaac5bc2d2cb049f7c8f1c60284a3be3d64a18fcdb571c6641897c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
