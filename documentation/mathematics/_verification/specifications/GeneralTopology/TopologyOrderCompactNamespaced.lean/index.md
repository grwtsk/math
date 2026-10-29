# Verification target: Topology Order Compact Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a5c4db4ebe25b6b05bce151f0342be15bc9679e",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a5c4db4ebe25b6b05bce151f0342be15bc9679e`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IntermediateValue` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IsLUB` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompactIccSpace](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/compacticcspace.md) | 56 | `declaration-track:b725c6ba8be05b7113ae0082f3b03b6983fd49ceb25af6e7191e70923fd886ed` |
| 2 | `lemma` | [CompactIccSpace.mk'](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/compacticcspace-mk.md) | 65 | `result-track:4e00c467f653734add36e4173fe99f90523c13f481a90ff40e5177a30fcfdee7` |
| 3 | `lemma` | [CompactIccSpace.mk''](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/compacticcspace-mk-source-edition-2.md) | 70 | `result-track:88baee23110226c3a03fd1e8ac68a4a7f41a407483537e25fd0dfe055a0ffbcd` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/instance-source-edition-5.md) | 74 | `declaration-track:b824d30f412f4a808a6ab9cdddc7da760841258cac9d802afd07d4e926eaa0b5` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/instance-source-edition-4.md) | 81 | `declaration-track:886e96f5948cf9f7dbe29ea36630163ca997104b247d3a37d6363c00a3b075cd` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/instance-source-edition-2.md) | 130 | `declaration-track:1ca80440c3d4bcafb7150d35ddf5551fbbec7f8cfa4a441442cc18f135a6e283` |
| 7 | `instance` | [Pi.compact_Icc_space'](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/pi-compact-icc-space.md) | 134 | `declaration-track:4101c66cf6e4e0aa157efa22a7e5411c2c5cdfd728f11beb6c9e9cc2ad6ff75c` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/instance-source-edition-3.md) | 138 | `declaration-track:7951d356b3a4160528e65ff1fc5a3d1cc920ce921661c2303a53503a7e0656fe` |
| 9 | `theorem` | [isCompact_uIcc](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-uicc.md) | 143 | `result-track:b9073ab75f26c8bb44ff6bbadeb8828de9a131dabb0e53392ec605ec3659c47a` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/instance.md) | 153 | `declaration-track:12e0245745551f63fcd27a8aad26346840cd588064291d465a90a432d9309b99` |
| 11 | `instance` | [compactSpace_Icc](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/compactspace-icc.md) | 161 | `declaration-track:e20441d63e4b16d3014822ff0c04b5904f5228d291b66d12f96065584241e9cc` |
| 12 | `theorem` | [isCompact_Ico_iff](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-ico-iff.md) | 171 | `result-track:de64727fb3b82afa51dbab80d90df07d10d2e4352b5db1b91f6796d2ac7f4090` |
| 13 | `theorem` | [isCompact_Ioc_iff](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-ioc-iff.md) | 176 | `result-track:e687c404ad65f298b56168c943d61eb312fbe1a3aaee457215fa920f9fae5f1b` |
| 14 | `theorem` | [isCompact_Ioo_iff](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-ioo-iff.md) | 181 | `result-track:7842a5a020fb608ce88b0c519a76ca12fc4573e7167ae4f84353f91f0c47aab4` |
| 15 | `theorem` | [IsCompact.exists_isLeast](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-isleast.md) | 195 | `result-track:df3f86173c16f7cede717b73712d5415be8e9a775e5191f5ebd1df7af50b3c99` |
| 16 | `theorem` | [IsCompact.exists_isGreatest](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-isgreatest.md) | 207 | `result-track:4259b7212e3dce8e4afd922f22c4d2081b6f7ed4f8c20356e6afde68be65f351` |
| 17 | `theorem` | [IsCompact.exists_isGLB](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-isglb.md) | 211 | `result-track:4156e8997dd89f153c779b29d6081a283ef5a5851c332a285c225471374eb788` |
| 18 | `theorem` | [IsCompact.exists_isLUB](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-islub.md) | 215 | `result-track:7d3b37498ec78e69559537963bfc1536141f3a20e6b7057c23ba0b816c49244e` |
| 19 | `theorem` | [cocompact_le_atBot_atTop](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/cocompact-le-atbot-attop.md) | 219 | `result-track:8aec1feaa6f52800db3e092e25667c5c351e656991355c7a3b7397197138d4dd` |
| 20 | `theorem` | [cocompact_le_atBot](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/cocompact-le-atbot.md) | 228 | `result-track:8374de5a2564c44c035f8c63f94eb8dac823f4b24d0822860ed4f73c710c457d` |
| 21 | `theorem` | [cocompact_le_atTop](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/cocompact-le-attop.md) | 236 | `result-track:465aeb106e13f338ecad1a1b2e377b4d2f1456e121fda99b55b81b7c314e8ddf` |
| 22 | `theorem` | [atBot_le_cocompact](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/atbot-le-cocompact.md) | 240 | `result-track:089fa422d53c1fb9e3279a241dfb6cf293e0d5ebd99b567545913e22692a910a` |
| 23 | `theorem` | [atTop_le_cocompact](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/attop-le-cocompact.md) | 253 | `result-track:d2b55a9ef911c0b31cf97bc512542e27480a33caac014c469db893d4d61255c6` |
| 24 | `theorem` | [atBot_atTop_le_cocompact](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/atbot-attop-le-cocompact.md) | 257 | `result-track:6ac3d0014ae9b4792c75d24cd248f1e670c94871180aea6aa4c4add3da30acda` |
| 25 | `theorem` | [cocompact_eq_atBot_atTop](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/cocompact-eq-atbot-attop.md) | 262 | `result-track:8c6235bf0c853f62312cfb88bbcae5c21431b52555b1f7a5671d98902e875d90` |
| 26 | `theorem` | [cocompact_eq_atBot](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/cocompact-eq-atbot.md) | 267 | `result-track:106f6b9ffc41b7bb3f7808fc3b1074e25beec70794c0ce94fd8fa3f83060acef` |
| 27 | `theorem` | [cocompact_eq_atTop](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/cocompact-eq-attop.md) | 272 | `result-track:9465a11fee1f3880a21efd798f97d282b504a2c7999f37f632a3bdddb56a53ef` |
| 28 | `theorem` | [IsCompact.exists_isMinOn](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-isminon.md) | 277 | `result-track:86297bee0340b886ffc0642067625e4c93d8d1adf6b9548024088e133c7eee27` |
| 29 | `theorem` | [IsCompact.exists_forall_le'](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-forall-le.md) | 285 | `result-track:c0976d1e9e1dd4e2d2d193ddfe7e42d14341f6801792785f51b97bf56dce71bc` |
| 30 | `theorem` | [IsCompact.exists_isMaxOn](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-ismaxon.md) | 295 | `result-track:26959cdaeea21b9fb2f84606e0974db7d028a22c9396b859ac8a55130cfb7d37` |
| 31 | `theorem` | [ContinuousOn.exists_isMinOn'](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuouson-exists-isminon.md) | 301 | `result-track:603915e82fc70c70004cf8ddea1bc4fc82bd4955d068de5a6d63d2e7472c8056` |
| 32 | `theorem` | [ContinuousOn.exists_isMaxOn'](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuouson-exists-ismaxon.md) | 314 | `result-track:4484acb7cfe60964b47349979abc76123443948d3cbd2091d2eb972efddc4d8b` |
| 33 | `theorem` | [Continuous.exists_forall_le'](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuous-exists-forall-le-source-edition-2.md) | 321 | `result-track:ea9252435dccfad6c55e272e755cbe571278c81abdffe91fab1bff439dd9a325` |
| 34 | `theorem` | [Continuous.exists_forall_ge'](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuous-exists-forall-ge.md) | 329 | `result-track:90a552ecad781ac42a12bc352bf6cd980fa9f1b22fb31c9afa336aceed150ca4` |
| 35 | `theorem` | [Continuous.exists_forall_le](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuous-exists-forall-le.md) | 335 | `result-track:bf785801c2e2ba9e54ecbc0c06957887f9a451b201664089123d01792a4c96ae` |
| 36 | `theorem` | [Continuous.exists_forall_ge](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuous-exists-forall-ge-source-edition-2.md) | 342 | `result-track:bf44156d275ac437065e5bea3452dfc1cff86fdeffb6330fbb2b5e5e02b2014d` |
| 37 | `theorem` | [Continuous.exists_forall_le_of_hasCompactMulSupport](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuous-exists-forall-le-of-hascompactmulsupport.md) | 348 | `result-track:d761f9709b03d325afb86539b4465c3fffe1ee35fe26d7fe59c9d3ba0644f9a7` |
| 38 | `theorem` | [Continuous.exists_forall_ge_of_hasCompactMulSupport](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuous-exists-forall-ge-of-hascompactmulsupport.md) | 357 | `result-track:2697622333b8ef220f626fec00947f6a4793e2224d811e5dd53b88ef8f00833c` |
| 39 | `theorem` | [IsCompact.bddBelow](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-bddbelow.md) | 363 | `result-track:4fa806f1ba8d53f7280e233dc422472ae7582b149b6e230595a14431ea814c6d` |
| 40 | `theorem` | [IsCompact.bddAbove](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-bddabove.md) | 371 | `result-track:85d3b1207bc18c3bd7d6b3c596d159e44bab1a8f906cf08356470cfee87e2065` |
| 41 | `theorem` | [IsCompact.bddBelow_image](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-bddbelow-image.md) | 376 | `result-track:77cbb73b02d35ebe495f22f993d3f6829682d4db06a5d33e8bd311c16fe12bbd` |
| 42 | `theorem` | [IsCompact.bddAbove_image](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-bddabove-image.md) | 381 | `result-track:e574d6c1b23c8e9abc6f9a6ba8683217501ebecbeacf9de0cefa5342efa27313` |
| 43 | `theorem` | [Continuous.bddBelow_range_of_hasCompactMulSupport](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuous-bddbelow-range-of-hascompactmulsupport.md) | 387 | `result-track:a01024ab268e281081cdc45716f123e4d4c96d5dc38d29465afd2d1220d1b734` |
| 44 | `theorem` | [Continuous.bddAbove_range_of_hasCompactMulSupport](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/continuous-bddabove-range-of-hascompactmulsupport.md) | 393 | `result-track:a87282eaf634588fe70c075b182ad02035c1a096c6e9b359fb0d404269e9fc76` |
| 45 | `theorem` | [IsCompact.sSup_lt_iff_of_continuous](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-ssup-lt-iff-of-continuous.md) | 404 | `result-track:a3654cd8a194f9c327b826f86b9227acd8ad6ee0e5de890aaa8ef04816e091dd` |
| 46 | `theorem` | [IsCompact.lt_sInf_iff_of_continuous](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-lt-sinf-iff-of-continuous.md) | 413 | `result-track:682fb7bd78777f98231ab73a84fa1184d94521ae2c6035d30af231b9e1cb06ed` |
| 47 | `theorem` | [IsCompact.sInf_mem](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-sinf-mem.md) | 429 | `result-track:c765e35ea3ceb8e2c829099fcc3c8df1cf49e156b5a612145841951ba0e459fe` |
| 48 | `theorem` | [IsCompact.sSup_mem](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-ssup-mem.md) | 434 | `result-track:96b7a152ca928ea8bd44660c69f16e31ba56ccd9c639ec10da5216663dc2c014` |
| 49 | `theorem` | [IsCompact.isGLB_sInf](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-isglb-sinf.md) | 438 | `result-track:556077ae9b27379174991c0bf6e11cb1bb7831858402bf8f65d5a1a3c348b70d` |
| 50 | `theorem` | [IsCompact.isLUB_sSup](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-islub-ssup.md) | 442 | `result-track:50b2158ccc76b74f707f1a928f811df5c4c82c65b4d2aca80b9a7004f00da8a8` |
| 51 | `theorem` | [IsCompact.isLeast_sInf](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-isleast-sinf.md) | 446 | `result-track:2973d22c1723ad2cf5a5937e0d150a2a23b332827998d42e07afb1024d42a2fb` |
| 52 | `theorem` | [IsCompact.isGreatest_sSup](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-isgreatest-ssup.md) | 450 | `result-track:6928d54a0f429e8dcbfcf5b98d78a7004d11011fb3fee6960929213ab95bea3a` |
| 53 | `theorem` | [IsCompact.exists_sInf_image_eq_and_le](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-sinf-image-eq-and-le.md) | 454 | `result-track:a9b976f5f402e2ecdd425311e30c798d9d3237ab6558dbfadac410a40c6b673d` |
| 54 | `theorem` | [IsCompact.exists_sSup_image_eq_and_ge](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-ssup-image-eq-and-ge.md) | 461 | `result-track:a4a5b290084058689f71007ae10d132f62baba375b18fd0bd5b7a4fdea79ba0e` |
| 55 | `theorem` | [IsCompact.exists_sInf_image_eq](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-sinf-image-eq.md) | 466 | `result-track:f1c5fe33c68cdb0064e57979002a7c83d7931229dedc77742fa99083f1e34f6d` |
| 56 | `theorem` | [IsCompact.exists_sSup_image_eq](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-ssup-image-eq.md) | 471 | `result-track:8f1af0afd1569a2133648f2def82ba7d3534da3c7eaaa1a313b9fbcc03c7c995` |
| 57 | `theorem` | [IsCompact.exists_isMinOn_mem_subset](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-isminon-mem-subset.md) | 481 | `result-track:c91062018a76f0e372263a6f6a65e3b0771ba9e8b2d7148d58708b43eab3e4da` |
| 58 | `theorem` | [IsCompact.exists_isMaxOn_mem_subset](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-ismaxon-mem-subset.md) | 487 | `result-track:fcc1956e37a428afa736463eff036b15f06c6805eebfe8e57472a8cabe45b541` |
| 59 | `theorem` | [IsCompact.exists_isLocalMin_mem_open](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-islocalmin-mem-open.md) | 494 | `result-track:a51e04c409f0992048baaf209812e885a167968617cf7ac95695f01b3badaf76` |
| 60 | `theorem` | [IsCompact.exists_isLocalMax_mem_open](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-exists-islocalmax-mem-open.md) | 500 | `result-track:0108e17bfbe9cdecf64e9b8ef0da964daeb6e417823f935019465e5864de4aa4` |
| 61 | `theorem` | [eq_Icc_of_connected_compact](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/eq-icc-of-connected-compact.md) | 511 | `result-track:20fda813292ee8c41ded0554f5d3c4cf35960f7dce7d1b6539c80cbaf47c2362` |
| 62 | `theorem` | [IsCompact.continuous_sSup](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-continuous-ssup.md) | 526 | `result-track:7d4b2188f7b29209f42d368842921eb0c529bb2493e59b5371c34656800a4792` |
| 63 | `theorem` | [IsCompact.continuous_sInf](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/iscompact-continuous-sinf.md) | 553 | `result-track:5a2aa4d634e73274b3fdcdf6922d8f6bc017e55968920080eab8fe01b29ad8fd` |
| 64 | `theorem` | [image_Icc](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/image-icc.md) | 568 | `result-track:e4cee1fe978c311a15f818bda134d653e3720a6d093e3bccca8bc804aff059c9` |
| 65 | `theorem` | [image_uIcc_eq_Icc](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/image-uicc-eq-icc.md) | 573 | `result-track:a07d2df4fd9b35309207d3d2537535640e4b86a46d78c6e84f46caa4c28a1fff` |
| 66 | `theorem` | [image_uIcc](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/image-uicc.md) | 577 | `result-track:2dce849b05453b9b679731eb76238c7e2abbfa34811df0008047f89e5fa26a77` |
| 67 | `theorem` | [sInf_image_Icc_le](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/sinf-image-icc-le.md) | 583 | `result-track:ea09e5815f44c70d5a129d6267174cf46a9d39504e07adb4ddb94fdd1f361558` |
| 68 | `theorem` | [le_sSup_image_Icc](../../../../GeneralTopology/TopologyOrderCompactNamespaced.lean/declarations/le-ssup-image-icc.md) | 589 | `result-track:279536d754ec14664d93af8cef226f66ff589d771b9e86419b3d58cf20560f73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26d7a3e101aa74306f6e74ff7ad9ee48c3f7415a218f0e8a99acc496d21b0cec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
