# Verification target: Subgroup Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51200fd8fcf836810fcb37f25c37d5534b079d77",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51200fd8fcf836810fcb37f25c37d5534b079d77`.

Source path: `GRWTSK/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subgroup.toAddSubgroup](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/subgroup-toaddsubgroup-source-edition-2.md) | 70 | `declaration-track:b7eb39ff8531606f7de1abe9927f24c26ced8dccae0ff8c22479bca796aa7eb4` |
| 2 | `abbrev` | [AddSubgroup.toSubgroup'](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/addsubgroup-tosubgroup-source-edition-2.md) | 78 | `declaration-track:eb224eb5cdd5520a6083caccaaffe0e26d74c430597de9ee096e8be7aeb28c0b` |
| 3 | `def` | [AddSubgroup.toSubgroup](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/addsubgroup-tosubgroup.md) | 84 | `declaration-track:d4aec5ce9d6e648314967b27d8b8643293753668af47e636c9734c170a1a5056` |
| 4 | `abbrev` | [Subgroup.toAddSubgroup'](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/subgroup-toaddsubgroup.md) | 93 | `declaration-track:a360f8373835224ffaf5aab7e65d9f7153cb302a0ac98492626b6f7fb7ba965c` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-10.md) | 104 | `declaration-track:e23f00c26b64446cb4044ceba775fdb0363011ffb5ff064d132fc0803c495854` |
| 6 | `def` | [topEquiv](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/topequiv.md) | 114 | `declaration-track:fb3a4156376c12e67b7941dd0d490dfa992dbb9ba5e10e668445a4e81168497f` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:3b480f8d17b21f6e87ef4c0eaddd866cfa70ce9a36e990d2b27d37d3f2d1a499` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance.md) | 123 | `declaration-track:07de5853c2aaacea43e9e1446ee944b49d1df51ecfc10a3d07c5ada8607c22d1` |
| 9 | `theorem` | [mem_bot](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-bot.md) | 127 | `result-track:cd18fb61f42676b4d154f590e885385a522b051eb46cbcc3d024ecfcedbdbc6d` |
| 10 | `theorem` | [mem_top](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-top.md) | 131 | `result-track:c5f713447552b1e042d32ebb4e7a7c7b5b846c4dc5bef15ee47594bc0789d022` |
| 11 | `theorem` | [coe_top](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/coe-top.md) | 135 | `result-track:6d9af8ce3024364307dbdea66af8ab2d5649f3f9f372f741ff6b0eed93e63530` |
| 12 | `theorem` | [coe_bot](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/coe-bot.md) | 139 | `result-track:e5b8c5834e8ec6d11d55431b75f76989749c155a87f5884dec363121534fb4fd` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-8.md) | 143 | `declaration-track:a594bfba4aa42401cd8137fd991eb77b3d21eb04652dee7297dce22cf998d3b7` |
| 14 | `theorem` | [top_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/top-tosubmonoid.md) | 147 | `result-track:5870816e1d8a613a64de2ac737201cdb38f4997bba6436b7987929c8250418e0` |
| 15 | `theorem` | [bot_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/bot-tosubmonoid.md) | 151 | `result-track:a3670701944acc5f2cbcc9c60d2d21f244ce6259bc1f69d9bf61a1730ee8c3e4` |
| 16 | `theorem` | [eq_bot_iff_forall](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/eq-bot-iff-forall.md) | 155 | `result-track:b6ccd1c1cceb5c9a1b17e8c7bb8969c290b47db1548f2286d677c7e20fdc4aac` |
| 17 | `theorem` | [eq_bot_of_subsingleton](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/eq-bot-of-subsingleton.md) | 159 | `result-track:38fca49e87ae72a83ab9b10426b51bd89ad0f919d58b72d201a437e5b8e0a617` |
| 18 | `theorem` | [coe_eq_univ](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/coe-eq-univ.md) | 165 | `result-track:c5345ab3a9e0558a184e295958b26b62dd57ec31b9e22c565b6c4d0309f58731` |
| 19 | `theorem` | [coe_eq_singleton](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/coe-eq-singleton.md) | 169 | `result-track:0ef1f8bb3e44804266b49c1e284449480d37e3afee00410c589fd9eb9a4c39b5` |
| 20 | `theorem` | [nontrivial_iff_exists_ne_one](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/nontrivial-iff-exists-ne-one.md) | 178 | `result-track:85de803dbb5377d23a6b9b0d2c33e371ac69efdc2ef304e4262a3d70d9c515e7` |
| 21 | `theorem` | [exists_ne_one_of_nontrivial](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/exists-ne-one-of-nontrivial.md) | 183 | `result-track:fb0f0b89fb222433441d62dc060abefc2cd3a8ebc684f5f1ae95f0c01bfb2530` |
| 22 | `theorem` | [nontrivial_iff_ne_bot](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/nontrivial-iff-ne-bot.md) | 188 | `result-track:5e0d79c9c5edaaf1d99662fc343fde5a24be44c687c4656409e8036b85269768` |
| 23 | `theorem` | [bot_or_nontrivial](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/bot-or-nontrivial.md) | 194 | `result-track:4fdcdd995f207c48c26eebefdffc8774f68e92e4a69dc852fd83621bcfb6ae0a` |
| 24 | `theorem` | [bot_or_exists_ne_one](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/bot-or-exists-ne-one.md) | 200 | `result-track:d53bdb56cbd1734b9731de469dbfa34e203f0eab64004395929d10bda005ef4b` |
| 25 | `lemma` | [ne_bot_iff_exists_ne_one](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/ne-bot-iff-exists-ne-one.md) | 205 | `result-track:12848f75668a811e42ddb9cd04bc4a4d0f7973240a459c420c5c320a765134f2` |
| 26 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-5.md) | 211 | `declaration-track:5c07d6c42a90c029e6fd0222c793218893463c06225e220621bea992c4e34c3a` |
| 27 | `theorem` | [coe_inf](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/coe-inf.md) | 217 | `result-track:d551d5e915c2a00fa4c085bab788495dc17dcad4786ba4882f6b1c759ae87406` |
| 28 | `theorem` | [mem_inf](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-inf.md) | 221 | `result-track:4a5d99b61c17a0dd5972643958411e7a0524304a2d78630c071921b8e2f36c36` |
| 29 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-3.md) | 225 | `declaration-track:49bb2c066e9b04b804a623844fc9e9a064471906543cbaec4a599ef1d303726e` |
| 30 | `theorem` | [coe_sInf](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/coe-sinf.md) | 232 | `result-track:416739c3496603b2747e4c291e9a39e011103c3fdcf1afcd2b1a7fe518980416` |
| 31 | `theorem` | [mem_sInf](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-sinf.md) | 236 | `result-track:abd24c946ff802bc487cf0cb231f6362cf621b8592da3f6a280529903377a1ae` |
| 32 | `theorem` | [mem_iInf](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-iinf.md) | 240 | `result-track:fe97ad2b733db69eb4320e2c67aa8b06bf2a723f782f6f22a24fcd00528005c5` |
| 33 | `theorem` | [coe_iInf](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/coe-iinf.md) | 244 | `result-track:f95ddf35e6129ccd7988f41440a16967c5d65a905073b1d3cacc4fa6a24f4ba1` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-6.md) | 249 | `declaration-track:896572ec030ff57778918d2799be335d092e71b24f96a359c981467ede23353c` |
| 35 | `theorem` | [mem_sup_left](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-sup-left.md) | 262 | `result-track:1758d787f044daa48d3c5331032bd47f1a126f9fcad9f98657bd948ca4fcdf7f` |
| 36 | `theorem` | [mem_sup_right](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-sup-right.md) | 266 | `result-track:02373ed0c4b838134d696af3c519d854c7624b6f75baf08876783d610284f2b5` |
| 37 | `theorem` | [mul_mem_sup](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mul-mem-sup.md) | 270 | `result-track:53fdc3a21fd1595d195a48437eea300e9e62bf74731c211bbbb221e7cfc5387f` |
| 38 | `theorem` | [mem_iSup_of_mem](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-isup-of-mem.md) | 274 | `result-track:2645e0f5eb8142bf00e8f5eee1eafe6ae2f51752a32df0368bfa85715f5827f8` |
| 39 | `theorem` | [mem_sSup_of_mem](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-ssup-of-mem.md) | 279 | `result-track:b74e9e79d4d88da3ff46a0bc1b2679ad4d31d576b2c08ca459e0c06f895a4d55` |
| 40 | `theorem` | [subsingleton_iff](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/subsingleton-iff.md) | 284 | `result-track:67cbefd9d50831986a92f0782e4e0cdc88e0f8e7d974186a0831e86c38e4f71e` |
| 41 | `theorem` | [nontrivial_iff](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/nontrivial-iff.md) | 293 | `result-track:d896ae63b425e6fbbd961a84021e1b6e29a620379a2ba746686d109f440fcae6` |
| 42 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-4.md) | 299 | `declaration-track:53c49aeba2312a58296a8c9ad0d767ead5380e36bc3acf65f46344426c69d3d9` |
| 43 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-9.md) | 303 | `declaration-track:d68a3b308c524f86e064a27f054cb1be5102f22f650b33c0c3b736c55ddd95fe` |
| 44 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/instance-source-edition-7.md) | 307 | `declaration-track:9cdcf193272b841f324fb78155bf231df577de73f78895f6eff13e9bed608f14` |
| 45 | `theorem` | [eq_top_iff'](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/eq-top-iff.md) | 312 | `result-track:77a0ed07af0c5ceb3c3353d47ce4ed509251219b6e9b149829c2bb6d0f0c9566` |
| 46 | `def` | [closure](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure.md) | 317 | `declaration-track:680eef48628dbb83b6752bbee9567bba672d33e4c47c0be2e928503918d58241` |
| 47 | `theorem` | [mem_closure](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-closure.md) | 323 | `result-track:a526db2ed8072ca55e908324c9b4a2648fdccb8b62e1db8ad80d3e312db78fb1` |
| 48 | `theorem` | [subset_closure](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/subset-closure.md) | 329 | `result-track:4477018a3ea200afd333ea8c09839b870f09ec441f9b8395ced9dbb6d23a8004` |
| 49 | `theorem` | [notMem_of_notMem_closure](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/notmem-of-notmem-closure.md) | 332 | `result-track:7e6134ce1c2a08a472f610ef89d5d47dc2e83ab96b54dd8f5ba2f9379f4fd47c` |
| 50 | `theorem` | [closure_le](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-le.md) | 346 | `result-track:01831a4007a5a430b1050bb467e1de30d9035ff437860260c5fc088942fd8c0b` |
| 51 | `theorem` | [closure_eq_of_le](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-eq-of-le.md) | 350 | `result-track:858ac188e420c9896c191ee63afe3aa24ad3c53e8d754e67b96a54b4bb172802` |
| 52 | `theorem` | [closure_induction](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-induction.md) | 366 | `result-track:0bda9514461430af8bf2e76179bf2c29e2302d1b8a57e0e772d2ff599b752ba2` |
| 53 | `theorem` | [closure_induction₂](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-induction-source-edition-2.md) | 381 | `result-track:bd02d02d922e7bd7122a9233b76aa2e432799ca0b8710a51efd4ed52b3914830` |
| 54 | `theorem` | [closure_closure_coe_preimage](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-closure-coe-preimage.md) | 400 | `result-track:42737c27918c4cb3add72d17beb486097d4cc26124d791b14788cdb1b0eff701` |
| 55 | `def` | [gi](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/gi.md) | 408 | `declaration-track:16a07cff94ec3743584eadf2d5175b6254eb274ea210dffb3347852270fb5906` |
| 56 | `theorem` | [closure_mono](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-mono.md) | 419 | `result-track:31a95e8eed8fe69a1eb52d018d6caecac1422ff6ea1cee67f8143442f2c812de` |
| 57 | `theorem` | [closure_eq](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-eq.md) | 424 | `result-track:6687bacd4334f972536222e2e966b477b289a48bf737eaa23022d68ce93fcb37` |
| 58 | `theorem` | [closure_empty](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-empty.md) | 428 | `result-track:335b5d1c4d9107ed876ed29e516cf771c348b4b38a0e3bd3c00f529e02b983f6` |
| 59 | `theorem` | [closure_univ](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-univ.md) | 432 | `result-track:75ee7eb34a529e128698ef5ed6771852c1f0938cbd61801321ef2447b92aa254` |
| 60 | `theorem` | [closure_union](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-union.md) | 436 | `result-track:f925edbf8bbaacf986d5b5b50733a9b2003c5e4876381498a5b12de5c0c55ff4` |
| 61 | `theorem` | [sup_eq_closure](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/sup-eq-closure.md) | 440 | `result-track:ad12f9ab2534c4cdb036fe3dfad35eede65d63d9d49f36229a21f9f8c7fd5b1b` |
| 62 | `theorem` | [closure_iUnion](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-iunion.md) | 444 | `result-track:df84f2b7fce1a42a72b6a6662015a21aa6e19bf38b9014ab4a5d37f716d59853` |
| 63 | `theorem` | [closure_eq_bot_iff](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-eq-bot-iff.md) | 448 | `result-track:96d4b334571a6d371336b4a61901944400675a936cbb4456afe0f39cc31e390a` |
| 64 | `theorem` | [iSup_eq_closure](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/isup-eq-closure.md) | 451 | `result-track:57b0b206d2d0b2a6176a019172864b3d9fbd570df9bc4ea5a0c1da118152867f` |
| 65 | `theorem` | [mem_closure_singleton](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-closure-singleton.md) | 459 | `result-track:bf0e366fe8e6190286b3572213ad1851e06cff5e89eb643546b6ee56a478e72d` |
| 66 | `theorem` | [closure_singleton_one](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-singleton-one.md) | 473 | `result-track:a06454511b965aad33cd7e5e44c897b3c57ac4a795c28095481aaab7bd4024d7` |
| 67 | `lemma` | [mem_closure_singleton_self](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-closure-singleton-self.md) | 477 | `result-track:ecc5dbecca371a2214ac5ddb36d028bcd5dc44aa7719023dccf5e45ddaefc433` |
| 68 | `theorem` | [le_closure_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/le-closure-tosubmonoid.md) | 481 | `result-track:9b5e8aac4ae5f7a6affed3b0e0325545be3199f29e443008d1bcaf13ed881a65` |
| 69 | `theorem` | [closure_eq_top_of_mclosure_eq_top](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-eq-top-of-mclosure-eq-top.md) | 485 | `result-track:6e519600d13cfcc87a13a63cacef6120ce87eae33a6e4302f7110cda1d8051f7` |
| 70 | `theorem` | [closure_insert_one](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/closure-insert-one.md) | 490 | `result-track:ed07a48c5907390a0dc1ba74ae7d3a6d137b87116d8a09a71196ae1d6613cb41` |
| 71 | `theorem` | [toAddSubgroup_closure](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/toaddsubgroup-closure.md) | 494 | `result-track:6b9085d22eb514f2044e9d74f33e55e9e9aff26d66d64f48614cad747af0f53b` |
| 72 | `theorem` | [Subgroup Lattice Namespaced](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/tosubgroup-closure.md) | 500 | `result-track:dc947132577d1335899d72fcf6c33ad12f0a384ac7cfb825cee0a440920d914e` |
| 73 | `theorem` | [toAddSubgroup'_closure](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/toaddsubgroup-closure-source-edition-2.md) | 504 | `result-track:b09830f50ab79506bd69ad8c43f6228f4d3dd563178af19dffd0ea48fe6bc3de` |
| 74 | `theorem` | [Subgroup Lattice Namespaced](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/tosubgroup-closure-source-line-510-occurrence-2.md) | 510 | `result-track:f454270d07987d778b44b9773487cffa1204cdaa5ce74b99beb8a2d1055be9c7` |
| 75 | `theorem` | [mem_iSup_of_directed](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-isup-of-directed.md) | 515 | `result-track:9454262246a1df2d847b0eaa0b40fb4f9360c813dbaf79305d5836d57d482379` |
| 76 | `theorem` | [coe_iSup_of_directed](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/coe-isup-of-directed.md) | 529 | `result-track:1811e62816838c21b4af5c5c2e630342697112da2001ecf377baf39041a778e2` |
| 77 | `theorem` | [mem_sSup_of_directedOn](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-ssup-of-directedon.md) | 534 | `result-track:7743276b1d609aef286f4bfd9847e8fed11be771464edb5fc1c8654ed18cc9a0` |
| 78 | `theorem` | [mem_sup](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-sup.md) | 543 | `result-track:8ed4134472228f53780edab21c9dd1bb1bd2d58ae9fb5ccd04e7725330a33857` |
| 79 | `theorem` | [mem_sup'](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-sup-source-edition-2.md) | 558 | `result-track:bc0f32429f316122a6466af34c25445c1c3da75464c2a2433f232881a6cc05d2` |
| 80 | `theorem` | [mem_closure_pair](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mem-closure-pair.md) | 562 | `result-track:5ba4510e0569965d7de90ea23923d1d528578e18f1f638d44ae310c9415837af` |
| 81 | `theorem` | [disjoint_def](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/disjoint-def-source-edition-2.md) | 568 | `result-track:8b83ac86c4db21be8e6a23ddb1b96458d70d3b73e24b53f1bea33f9a22322ae4` |
| 82 | `theorem` | [disjoint_def'](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/disjoint-def.md) | 572 | `result-track:1f36b8fa3085931db6b6839a5210917010646c3e1d39879057cc159db2a4c91b` |
| 83 | `theorem` | [disjoint_iff_mul_eq_one](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/disjoint-iff-mul-eq-one.md) | 577 | `result-track:723b3a8e9320bb32dfefd966c8e53f97167c7b72f42afe53e919b35af86d9be0` |
| 84 | `theorem` | [mul_injective_of_disjoint](../../../../GroupTheoryAndGeneralizations/SubgroupLatticeNamespaced.lean/declarations/mul-injective-of-disjoint.md) | 586 | `result-track:11ad6ad04d54cae63e442ceadeaa03260e72460d23a81638874d2b249c60e194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1176123d155a633c5c73a659a3bfbdb3339c365681f17d05dab37ab513024c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
