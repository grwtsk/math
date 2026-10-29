# Verification target: Topology Compact Open Namespaced Is Open Set Of Maps To

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f271888146c4e06ac54f4198f1650cc82ab9edc",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f271888146c4e06ac54f4198f1650cc82ab9edc`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Hom.ContinuousEval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [compactOpen](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compactopen.md) | 55 | `declaration-track:7a64b5b5adcd21190ba6e4856317d8c79daedf9f220b3d0ebfe15c325c819fc0` |
| 2 | `theorem` | [compactOpen_eq](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compactopen-eq.md) | 59 | `result-track:bc7a0cd109ff5fd8f19b7c424847f3caea0c156fe5fd2a8ddb390c8ff9b6c7f9` |
| 3 | `theorem` | [isOpen_setOf_mapsTo](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/isopen-setof-mapsto.md) | 63 | `result-track:7e031ecf8be320ffa0c1d9bded409109ab06bde263b46b685268364c688d2d94` |
| 4 | `lemma` | [eventually_mapsTo](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/eventually-mapsto.md) | 67 | `result-track:3e8e514472ca9973a8e1374b19f39e09df7924b9ee69bb37087dc48ecb020c63` |
| 5 | `lemma` | [nhds_compactOpen](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/nhds-compactopen.md) | 71 | `result-track:27614d20527da985198f1c42d277488e8ed455ca6c18d3b2cb89cd7cebd188d8` |
| 6 | `lemma` | [tendsto_nhds_compactOpen](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/tendsto-nhds-compactopen.md) | 77 | `result-track:2b383ca8bd058c8f9eda2e9d8c464e212e73dd387315371d69f11ad101e4be94` |
| 7 | `lemma` | [continuous_compactOpen](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-compactopen.md) | 82 | `result-track:1dc72f0df8bcb82cff46aa6986b23e2132636f0cd963295bb91c73ce51bf2aa3` |
| 8 | `lemma` | [hasBasis_nhds](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/hasbasis-nhds.md) | 86 | `result-track:603c528363e939286aff3789dc8bd35e9666ffb05b1ed053f45ab3428703abef` |
| 9 | `lemma` | [mem_nhds_iff](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/mem-nhds-iff.md) | 95 | `result-track:e9d5adfee607281e56977f981a6775594aa2595b5fcf133b9d9b9f669f105c9d` |
| 10 | `lemma` | [Topology Compact Open Namespaced Is Open Set Of Maps To](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/nhds-continuousmapconst.md) | 101 | `result-track:d551de80b882b96cd52f684cdd057f97fbffdee19e8cf1621c0b8e1471cd15d7` |
| 11 | `theorem` | [continuous_postcomp](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-postcomp.md) | 128 | `result-track:5c9affdff2a1ce211d0ac004d7e233de1ba50116b762b8dccad6e076bf1cc551` |
| 12 | `theorem` | [isInducing_postcomp](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/isinducing-postcomp.md) | 133 | `result-track:aaefdb6d16022da5512e205d03dc3dbfcc8d0349156a0ed19073d11ffa47e6ee` |
| 13 | `theorem` | [isEmbedding_postcomp](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/isembedding-postcomp.md) | 143 | `result-track:537e999eda933880e63442388ebcdc6839eeede84625310bba82d8e788e81e7f` |
| 14 | `theorem` | [continuous_precomp](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-precomp.md) | 152 | `result-track:980e9fd2f3aae3c5fe949c50cfeb86984a83cc4c21c7aec2d378b23cc66e5545` |
| 15 | `def` | [compRightContinuousMap](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/comprightcontinuousmap.md) | 160 | `declaration-track:e2a91d1b91758796afd49316d2ecd4d417e3afaaf7cdf7dd2d5217e61b8058a7` |
| 16 | `def` | [Topology Compact Open Namespaced Is Open Set Of Maps To](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/arrowcongr.md) | 166 | `declaration-track:a2a657a5d8997aaa58d6d761a811e3c9bfd8176bec5a50d70de39f87f0f41ed3` |
| 17 | `lemma` | [continuous_prodMk_const](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-prodmk-const.md) | 176 | `result-track:2dc5900f78c7dcf659824be032cec0d73bd5596eaeecc0054f98fbd75f3a4e04` |
| 18 | `theorem` | [continuous_comp'](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-comp.md) | 191 | `result-track:a3d0bc5f25541827d1a4a892743b261a47af46cfa2d175e45d054aace95e5ac6` |
| 19 | `lemma` | [Topology Compact Open Namespaced Is Open Set Of Maps To](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compcm-source-line-202-occurrence-2.md) | 202 | `result-track:2eb02f2cde2ea304d4d60c2205b53b58a8a5a9e10f6541eef6936142eefc5a18` |
| 20 | `lemma` | [Topology Compact Open Namespaced Is Open Set Of Maps To](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compcm-source-line-210-occurrence-2.md) | 210 | `result-track:c8fc1870861a33a4b1f789bc4d1e9ea38c5d18e2b8e7f503e31cf70483d63558` |
| 21 | `lemma` | [Topology Compact Open Namespaced Is Open Set Of Maps To](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compcm-source-line-214-occurrence-2.md) | 214 | `result-track:67422119e76def1bf6e05b666e68862a0683bab4ef7fcbcb3de7ee5716092f6b` |
| 22 | `lemma` | [Topology Compact Open Namespaced Is Open Set Of Maps To](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compcm.md) | 218 | `result-track:27bccb8f900ded45958e5c36c722c89998607397b292b62faa1a0c4873664f9d` |
| 23 | `lemma` | [Topology Compact Open Namespaced Is Open Set Of Maps To](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compcm-source-line-222-occurrence-2.md) | 222 | `result-track:5efc3026d2934ad4ee03d7d07300a2985a15f8c0f70c973d0e77c1cacdf7f53c` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-7.md) | 232 | `declaration-track:b72627821eb22e55fdf262c0dd0d2b05eb01a25ecfb1b294c81b42c73d9d7a0c` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-9.md) | 239 | `declaration-track:d7e4eb1a2122eab6cc0c8573bb3b95150f612925bc50189b17864f354a7ee283` |
| 26 | `lemma` | [isClosed_setOf_mapsTo](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/isclosed-setof-mapsto.md) | 243 | `result-track:02f9bdae1fe605c9592d0ea9818cb48bfda947adab16e58bbbfbf51db8c0e840` |
| 27 | `lemma` | [isClopen_setOf_mapsTo](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/isclopen-setof-mapsto.md) | 247 | `result-track:5caebbac7a105de8d68e8433a361adbfca7a37c1101a5c8e5046725d6c57abdb` |
| 28 | `lemma` | [specializes_coe](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/specializes-coe.md) | 252 | `result-track:e29885c55724a4e4e9001cb6ff0f4ae9856acba787c06bf3ded6dfb043dc93b6` |
| 29 | `lemma` | [inseparable_coe](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/inseparable-coe.md) | 259 | `result-track:3a16e0d577a7804ad480c3820936543ce24950b27483ad169c8def2796b73c60` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-3.md) | 262 | `declaration-track:88344eb74fd04566503eeff9b71ebce37f77eb0c808ead0d4f24c2b3d171278e` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-2.md) | 265 | `declaration-track:54830e0a0c45853d573f56f0d7cbe8f9440c47eff77cc09443bedbad186b29c8` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-5.md) | 270 | `declaration-track:a720bdd23eacd43e66244c010d91d3ed73fde5b0f8d76d1e84d4a834f2d5b229` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-4.md) | 273 | `declaration-track:929a3390a3a201d63a46453a8cd93369602250a896e7ae944dea3dad575a0b55` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-6.md) | 276 | `declaration-track:b2adbb95d074e164a61a07cc7a20421898fab8b40c8f03b8552854f223916bea` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance.md) | 278 | `declaration-track:22871fefc91ed1580a7da72300717af72f233b0d65bf3a32ef827632ebfcff8c` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-8.md) | 288 | `declaration-track:c340d05b4f97002874dd1c8aa50fa2c3ebce3ff9cb41608a90983890f7047ee5` |
| 37 | `def` | [homeoFnOfDiscrete](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/homeofnofdiscrete.md) | 298 | `declaration-track:95f865b81ddbd38fda1856041dec76211fb866c7a9a75b915408f94fd1fa5777` |
| 38 | `lemma` | [coe_homeoFnOfDiscrete](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/coe-homeofnofdiscrete.md) | 305 | `result-track:08f2e3e0a9b7d11636b5b9fae7144d7c521254e107dda4882c85aff9755ee9c7` |
| 39 | `lemma` | [homeoFnOfDiscrete_symm_apply](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/homeofnofdiscrete-symm-apply.md) | 307 | `result-track:e7cfb1bbb127a856322daf24d0c29b7e690b9314307b35a103386ecb55fffeb6` |
| 40 | `lemma` | [isHomeomorph_coe](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/ishomeomorph-coe.md) | 309 | `result-track:667947c5e1b6067b3eb11a51b7629b5f9d502f4f714250a06de738b8cbbf2cd2` |
| 41 | `theorem` | [continuous_restrict](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-restrict.md) | 317 | `result-track:682ed0cd6ed5419b48342519a34edd7169464733a5ec71475316071dfeb4dfaf` |
| 42 | `theorem` | [compactOpen_le_induced](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compactopen-le-induced.md) | 320 | `result-track:a9725342676e9fecae7ea30b1266af24eb0cb6a91c8dfbe5cafdfeab94b023d4` |
| 43 | `theorem` | [compactOpen_eq_iInf_induced](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/compactopen-eq-iinf-induced.md) | 329 | `result-track:15d7c13a891a7fe09f12e610eddf1b94909880c18605eb13723693453a58bf56` |
| 44 | `theorem` | [nhds_compactOpen_eq_iInf_nhds_induced](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/nhds-compactopen-eq-iinf-nhds-induced.md) | 338 | `result-track:7ac81a7c37ce7469045767c6520e90904dcfedb9f6b9e99c438ae6f27ac4b6bb` |
| 45 | `theorem` | [tendsto_compactOpen_restrict](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/tendsto-compactopen-restrict.md) | 343 | `result-track:b93d0dd6c6cb6bcdcdf09802cc384c007096db2ec0793aba22961dce7541142c` |
| 46 | `theorem` | [tendsto_compactOpen_iff_forall](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/tendsto-compactopen-iff-forall.md) | 348 | `result-track:7d5a166b463ad0c15d7458c841b49efee7568a45212af16af8524354074f3eba` |
| 47 | `theorem` | [exists_tendsto_compactOpen_iff_forall](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/exists-tendsto-compactopen-iff-forall.md) | 356 | `result-track:c2f8d40bdabb8772772a12db06d1887ee6520c91ce52ad37e5c653c5e2496290` |
| 48 | `def` | [coev](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/coev.md) | 393 | `declaration-track:f57b0b5e306e68af9f9fda84d251469c518a0c99da61d88b347c121844ecb5ec` |
| 49 | `theorem` | [image_coev](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/image-coev.md) | 398 | `result-track:5d8cab199cd42929364197f2a1f174bdf5118e679f0159010f9858e5ee1d931c` |
| 50 | `theorem` | [continuous_coev](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-coev.md) | 401 | `result-track:253d72e0085eb78c86ae054898813b8ae9702c3dc0393b000fa7dc6d34404a46` |
| 51 | `def` | [curry](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/curry.md) | 412 | `declaration-track:476decbed3d392a5388045f1284dea185eb5eefe857608e7b2615aaca7255910` |
| 52 | `theorem` | [curry_apply](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/curry-apply.md) | 417 | `result-track:ae014636e1ef1f3e9f27e9a948589f1147c22940e8aabcd132c7ff47dd614a11` |
| 53 | `theorem` | [continuous_of_continuous_uncurry](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-of-continuous-uncurry.md) | 422 | `result-track:13fa3ac508ca972fa7fb89a7bb1aa2b02024a0a0013eb9a898d09207a90059c5` |
| 54 | `theorem` | [continuous_curry](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-curry.md) | 427 | `result-track:daa0db7f516768fae05de02be00d0fa69a10b68fb4921579927d261dab32763a` |
| 55 | `theorem` | [continuous_uncurry_of_continuous](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-uncurry-of-continuous.md) | 435 | `result-track:aa6899c9bf08b05a6ff82be10003a628e3c07f23a69cefcac28fe3841ece077d` |
| 56 | `def` | [uncurry](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/uncurry.md) | 443 | `declaration-track:4f55a4a9e668463889243fb8c7f90a7fe124432d75ef0e0456d948e6815aa4e3` |
| 57 | `theorem` | [continuous_uncurry](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-uncurry.md) | 447 | `result-track:3e4da4d0c97f9fcfc5b0f9e873b891d382851d925e30546738275a7538ec266e` |
| 58 | `def` | [const'](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/const.md) | 455 | `declaration-track:dfbed66ad1b44f838306cc1b305833f349531a94182a50666b89d6887406de79` |
| 59 | `theorem` | [coe_const'](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/coe-const.md) | 459 | `result-track:cabe1c703b9907b7f22435df33ff2904a14cd51961a2480327f305005d9b765e` |
| 60 | `theorem` | [continuous_const'](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuous-const.md) | 462 | `result-track:a93a1ebdffb0d86a1d37cce99aa809e89765a8d5b7cc389142a267f224c7f9c5` |
| 61 | `def` | [curry](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/curry-source-edition-2.md) | 479 | `declaration-track:be8baada2b22aae5fa3c6d24d16301667dcbe0aa7cb8c364e6857c3014cb9d8c` |
| 62 | `def` | [continuousMapOfUnique](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuousmapofunique.md) | 484 | `declaration-track:848880fe80f8f597125992d41c5591056f5cb3f79a2290ba0fff7f1298126ee0` |
| 63 | `theorem` | [continuousMapOfUnique_apply](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuousmapofunique-apply.md) | 496 | `result-track:686258dd727415909e2ca1c406ab784ebfc9d8dc805219c87fa1698bc07b10a2` |
| 64 | `theorem` | [continuousMapOfUnique_symm_apply](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/continuousmapofunique-symm-apply.md) | 500 | `result-track:ffa871a2337ef3c47c6a1a459938e26a6ad043960bf1cf29d8636ab0d1234a78` |
| 65 | `theorem` | [Topology.IsQuotientMap.continuous_lift_prod_left](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/topology-isquotientmap-continuous-lift-prod-left.md) | 511 | `result-track:0827ffa8c17edd1b915316c3502cb92f6d40e6a48409df949322acade6ea5337` |
| 66 | `theorem` | [Topology.IsQuotientMap.continuous_lift_prod_right](../../../../GeneralTopology/TopologyCompactOpenNamespacedIsOpenSetOfMapsTo.lean/declarations/topology-isquotientmap-continuous-lift-prod-right.md) | 527 | `result-track:7bb662dd09d016921718710cd08164540c97116dc1fcd737d8614fef56e25a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84f017d4bc5c3e2aff42211e8f7dbbb5ce55a5a8096c174cd68aa4a372b0eded -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompactOpen/Variant4aa577055bca8a5450413f16034906e20c5ca94d2e21db2d3828731b9191d068.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
