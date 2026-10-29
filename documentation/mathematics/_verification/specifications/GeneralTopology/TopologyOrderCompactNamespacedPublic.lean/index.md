# Verification target: Topology Order Compact Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40e86aa14c6ad98f29c908a95a2d3c8cf87b1250",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40e86aa14c6ad98f29c908a95a2d3c8cf87b1250`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean.json)

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
| 1 | `class` | [CompactIccSpace](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/compacticcspace.md) | 59 | `declaration-track:a3118dc94575390fea4c40bf000d357c17d3d894d5838dd4f244cb963f1975f4` |
| 2 | `lemma` | [CompactIccSpace.mk'](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/compacticcspace-mk-source-edition-2.md) | 69 | `result-track:9956907951b5919cb4ea995f21d40cee2091fd18daa51dcac441ee565694cbdf` |
| 3 | `lemma` | [CompactIccSpace.mk''](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/compacticcspace-mk.md) | 74 | `result-track:7512b2411410404ae617441cae985c2b98d816224dc6efcedf4bf5833372d265` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:7e0ca5a43806a36090995330781dd61fff5d8c7cb4bc34f2d23131b3e03b35cc` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 85 | `declaration-track:7f70df1f9818a2406a0836951daaafab1213bf20552eedfafcc79f78a398536f` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/instance.md) | 89 | `declaration-track:0892fd3093606cf2ae6e5eae17785213c71bdb0ddcf8009ce68848a36eefce1c` |
| 7 | `instance` | [Pi.compact_Icc_space'](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/pi-compact-icc-space.md) | 93 | `declaration-track:592e85bf7e589f6142e2bc74658add7099502933a7bc7ead90dc4ba78019e9ae` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 97 | `declaration-track:bdd631a36501efce43008beef9740b852b6be03cb555097fc056301834174c29` |
| 9 | `theorem` | [isCompact_uIcc](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-uicc.md) | 103 | `result-track:0ae6db06397d5ab9966b6d5043eefa1bccc1e3bf6795bba9f295586734dc4ef7` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:6e46f52ce2d673aa3bc00a3596c957fcc508332af01a975ce60e38417dc5a230` |
| 11 | `instance` | [compactSpace_Icc](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/compactspace-icc.md) | 121 | `declaration-track:6b3f7af526951fd72c26291739b7f56157c4d5ec6607e56c3f74e64975153507` |
| 12 | `theorem` | [isCompact_Ico_iff](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-ico-iff.md) | 131 | `result-track:ddff5122a7641431a2b754af8acaee1a304757a5f76bb64156b87ce07cc0afd9` |
| 13 | `theorem` | [isCompact_Ioc_iff](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-ioc-iff.md) | 136 | `result-track:8c101e9c1ca28916b93ac92f0b40291ebba596c9bc44efd156c5c91d438132fc` |
| 14 | `theorem` | [isCompact_Ioo_iff](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-ioo-iff.md) | 141 | `result-track:ec690dcef33e362b4ca64ba3dc8977efdd675ea5bfb34679399e01eba5e885fc` |
| 15 | `theorem` | [IsCompact.exists_isLeast](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-isleast.md) | 154 | `result-track:7c539b4e5187d311b5ab10f856ddf9e756c23d5534bfedcd58f9e116aa75d6eb` |
| 16 | `theorem` | [IsCompact.exists_isGreatest](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-isgreatest.md) | 166 | `result-track:3ed070eaca3429e0b94b24e65bd09214cec43fff658a39fca03fb41fb8ce8fad` |
| 17 | `theorem` | [IsCompact.exists_isGLB](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-isglb.md) | 170 | `result-track:954c55640a9980ee4d2ab13cc4bbd7553ed809e2b404b917a4af7ec5e155face` |
| 18 | `theorem` | [IsCompact.exists_isLUB](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-islub.md) | 174 | `result-track:02fe3de199f5d3e1d1465be7dcc84bbea04feacccbde1b024a87fe86b07c5e98` |
| 19 | `theorem` | [cocompact_le_atBot_atTop](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/cocompact-le-atbot-attop.md) | 178 | `result-track:6b2bd138dcf691632ce0858da1b1ef88be08a2d24570534fe60eef4568367f72` |
| 20 | `theorem` | [cocompact_le_atBot](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/cocompact-le-atbot.md) | 187 | `result-track:310871f0521dfc581a93962f313ad5ac629186c8bcf8a3e870f0cc988e008592` |
| 21 | `theorem` | [cocompact_le_atTop](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/cocompact-le-attop.md) | 195 | `result-track:3025074e6c7d6c50becf82a513054243f76bef21c205dd1abeab80778c6fc003` |
| 22 | `theorem` | [atBot_le_cocompact](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/atbot-le-cocompact.md) | 199 | `result-track:9bb7a4b0f08260b7511808e67728e56e79a6931f0516f5a7cf962c23a35ed529` |
| 23 | `theorem` | [atTop_le_cocompact](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/attop-le-cocompact.md) | 212 | `result-track:791017f16c11cfa01355da40cd4b31691b13b591eff9b7fcbf42fbfe4c67c3ca` |
| 24 | `theorem` | [atBot_atTop_le_cocompact](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/atbot-attop-le-cocompact.md) | 216 | `result-track:874c96f687928766c1ba2f9d22759fc9275f298169802aab838a01dcf248df54` |
| 25 | `theorem` | [cocompact_eq_atBot_atTop](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/cocompact-eq-atbot-attop.md) | 221 | `result-track:254adc0ef2f6ba8a8d3811d53efa9bf4baaf8f24973552d237f6d11b10a3df0a` |
| 26 | `theorem` | [cocompact_eq_atBot](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/cocompact-eq-atbot.md) | 226 | `result-track:e95943d8f4203c947bf1255c639ecfa70afc7604d846e62183ffbc06118d63eb` |
| 27 | `theorem` | [cocompact_eq_atTop](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/cocompact-eq-attop.md) | 231 | `result-track:ff5f4d824a1db1af222439a79cc77420c76ea0bfec043f7fa85f6d931c4c39ae` |
| 28 | `theorem` | [IsCompact.exists_isMinOn](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-isminon.md) | 236 | `result-track:d2ecd225f8593e02518e8af7ea19e985c424ddb0e086bb942ad006e57344e035` |
| 29 | `theorem` | [IsCompact.exists_forall_le'](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-forall-le.md) | 244 | `result-track:c694c61520a86a29a0e18e570d98fe35667dfdef160261bb36994d634557d013` |
| 30 | `theorem` | [IsCompact.exists_isMaxOn](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-ismaxon.md) | 254 | `result-track:0d74078e066555c7da49e691cf2f1725a90bfbd4ba5a0181b8bcad6f3577ed78` |
| 31 | `theorem` | [ContinuousOn.exists_isMinOn'](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuouson-exists-isminon.md) | 260 | `result-track:8647568642168ecd7e077bc20fb97f693cd61d019b74dc797b367fd22a6c4c6d` |
| 32 | `theorem` | [ContinuousOn.exists_isMaxOn'](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuouson-exists-ismaxon.md) | 273 | `result-track:9147df306891d6d662fefc4b2e7a5dce567cad3d5e203ccd52f44e9d04ac35f9` |
| 33 | `theorem` | [Continuous.exists_forall_le'](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuous-exists-forall-le-source-edition-2.md) | 280 | `result-track:ef5c5ed89b4627d129f405a087cf8c8a670bf5500b9c0fd0d42418141e5dc16b` |
| 34 | `theorem` | [Continuous.exists_forall_ge'](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuous-exists-forall-ge.md) | 288 | `result-track:206570edc316cadb685e650b6dbfd525610de9e238617da987a9c92092b6ad1b` |
| 35 | `theorem` | [Continuous.exists_forall_le](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuous-exists-forall-le.md) | 294 | `result-track:841e3d260b16e11f702aec4ce0d26c79c91b0a8a3743ddac58463fc960bc1c4c` |
| 36 | `theorem` | [Continuous.exists_forall_ge](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuous-exists-forall-ge-source-edition-2.md) | 301 | `result-track:9347a4ce47bedd163359db19214faf6d036358cc1206fd456d531fe9a7fb5411` |
| 37 | `theorem` | [Continuous.exists_forall_le_of_hasCompactMulSupport](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuous-exists-forall-le-of-hascompactmulsupport.md) | 307 | `result-track:165cd2ba7ae1777d7a33a3090359578f2e0037a4b7bdc97d9fde8288a0bee84a` |
| 38 | `theorem` | [Continuous.exists_forall_ge_of_hasCompactMulSupport](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuous-exists-forall-ge-of-hascompactmulsupport.md) | 316 | `result-track:674ba4c150ff54af719d728413b6ba104e3af9b20804f792fef65219e0d6c19f` |
| 39 | `theorem` | [IsCompact.bddBelow](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-bddbelow.md) | 322 | `result-track:27790f6514a6465cf7f4dc993cfa99a02a065264955dc2b7481a278d6d0b0c4d` |
| 40 | `theorem` | [IsCompact.bddAbove](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-bddabove.md) | 330 | `result-track:b25bda52ee117168e280fd26681c062ca86446d8cac880de614fd94096e541b6` |
| 41 | `theorem` | [IsCompact.bddBelow_image](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-bddbelow-image.md) | 335 | `result-track:a420b339c9f218e53cd85ba7c84c82469c2100d90c52c59e8e05736b80b31641` |
| 42 | `theorem` | [IsCompact.bddAbove_image](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-bddabove-image.md) | 340 | `result-track:887463d95305825e31b29daa349ae960b9223c807757408f1316a0aae28e935b` |
| 43 | `theorem` | [Continuous.bddBelow_range_of_hasCompactMulSupport](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuous-bddbelow-range-of-hascompactmulsupport.md) | 346 | `result-track:11a27da3c163425c7d6a551d836094cb36d9e3d8b8b553ab6b356ebeb5ed21d6` |
| 44 | `theorem` | [Continuous.bddAbove_range_of_hasCompactMulSupport](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/continuous-bddabove-range-of-hascompactmulsupport.md) | 352 | `result-track:0d8366726e2b7bed4913bbdf1c2403242022bf02a3251abe2fe5d257b28531c2` |
| 45 | `theorem` | [IsCompact.sSup_lt_iff_of_continuous](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-ssup-lt-iff-of-continuous.md) | 363 | `result-track:8db983223571a05d542c99341c5025ab236481d1062825f0e80439f675d8cde3` |
| 46 | `theorem` | [IsCompact.lt_sInf_iff_of_continuous](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-lt-sinf-iff-of-continuous.md) | 372 | `result-track:e151b8d4a5f73facbf74c4189ba5308495308c33feda35da9a512a667c502a39` |
| 47 | `theorem` | [IsCompact.sInf_mem](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-sinf-mem.md) | 388 | `result-track:2a0bc1fe787739003f7ac6d9a464661607b28291b3dbccd80cae1d3c1dba36e9` |
| 48 | `theorem` | [IsCompact.sSup_mem](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-ssup-mem.md) | 393 | `result-track:cf985609494dbff3e338a0fb196a8a1ae3479a17ccc8084b84c065196b3a5141` |
| 49 | `theorem` | [IsCompact.isGLB_sInf](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-isglb-sinf.md) | 397 | `result-track:7e238c284432bcec0e9fa22accfd11c0f08c59b8c87bcde808b0ff55cb9f377b` |
| 50 | `theorem` | [IsCompact.isLUB_sSup](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-islub-ssup.md) | 401 | `result-track:8d0c2021e94ecffe4b52abbda9d87c6b7033e3860d31da5e574f46bd29fad034` |
| 51 | `theorem` | [IsCompact.isLeast_sInf](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-isleast-sinf.md) | 405 | `result-track:115975577aacdb09f3d4c0693a82b1bf5fe9e9ce4bd00f654ff2d1cb45a22064` |
| 52 | `theorem` | [IsCompact.isGreatest_sSup](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-isgreatest-ssup.md) | 409 | `result-track:8e218b10145a8ce47cdf016974338d5b1b2f0d8a67622cf1d3a65dd0a3758a2e` |
| 53 | `theorem` | [IsCompact.exists_sInf_image_eq_and_le](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-sinf-image-eq-and-le.md) | 413 | `result-track:ae067db6e079c9ed9303441f01809d2600aef9fec1c59b7e168712b8cb3e5b04` |
| 54 | `theorem` | [IsCompact.exists_sSup_image_eq_and_ge](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-ssup-image-eq-and-ge.md) | 420 | `result-track:85fe8776d260c2fe9508adefda35985855236c78c0f82186bf7c6ed3bfdc9dad` |
| 55 | `theorem` | [IsCompact.exists_sInf_image_eq](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-sinf-image-eq.md) | 425 | `result-track:dbc077445247783bcff1645f6c62230f502447afc480e8a24620b716f796c73f` |
| 56 | `theorem` | [IsCompact.exists_sSup_image_eq](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-ssup-image-eq.md) | 430 | `result-track:e5f30e8a520ce683d973210d63a3b0817ed173cc840bd3fd05928ec3266a6d69` |
| 57 | `theorem` | [IsCompact.exists_isMinOn_mem_subset](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-isminon-mem-subset.md) | 440 | `result-track:d512cf3e75e687825ffd65b7180ba352029472ca386160b2c586631fb083cc2e` |
| 58 | `theorem` | [IsCompact.exists_isMaxOn_mem_subset](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-ismaxon-mem-subset.md) | 446 | `result-track:138879c402a7490a65f7336593f2437cbe622b2f288bda8bb2e9f9961819855c` |
| 59 | `theorem` | [IsCompact.exists_isLocalMin_mem_open](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-islocalmin-mem-open.md) | 453 | `result-track:19413bce8aa54bb862558c5d88b27c451f4fe631544ff0e437f31bcb42dcd274` |
| 60 | `theorem` | [IsCompact.exists_isLocalMax_mem_open](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-exists-islocalmax-mem-open.md) | 459 | `result-track:ff740e4bb35f0072bf72e5631eb918ee041c13ec2cd348ba84c45d9ee5ec0526` |
| 61 | `theorem` | [eq_Icc_of_connected_compact](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/eq-icc-of-connected-compact.md) | 470 | `result-track:6abf439a1669d49467cf6358e77f1920c8820a1ffaf4ad9ded321ce148c3478c` |
| 62 | `theorem` | [IsCompact.continuous_sSup](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-continuous-ssup.md) | 485 | `result-track:eead87e409296ecbd56a6ad8c9f1b9269ffdff0d04f1eb28b4e85a53a7bef77b` |
| 63 | `theorem` | [IsCompact.continuous_sInf](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/iscompact-continuous-sinf.md) | 512 | `result-track:dcc0f879cebd7db53b4360b6b7d31b575da441f6449828c89a2d9a9d6cedb938` |
| 64 | `theorem` | [image_Icc](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/image-icc.md) | 527 | `result-track:c50c01a99fc80c69d6356f71d0f3e9082a211a4162119e94ff613db000850250` |
| 65 | `theorem` | [image_uIcc_eq_Icc](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/image-uicc-eq-icc.md) | 532 | `result-track:5d0a7d0b7fdf9a5de399d8e69d87cfa7bf7af007d8c384dfc631e9e57b179019` |
| 66 | `theorem` | [image_uIcc](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/image-uicc.md) | 536 | `result-track:92d584d6d729a3ae7aa93cbbb8738a0c926e19b15eb026671028cf5a5d1218fd` |
| 67 | `theorem` | [sInf_image_Icc_le](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/sinf-image-icc-le.md) | 542 | `result-track:f1e63eee3f8c63e6ec3d4190c788c9e721f6ddf438f267e98b4b76e0585fb684` |
| 68 | `theorem` | [le_sSup_image_Icc](../../../../GeneralTopology/TopologyOrderCompactNamespacedPublic.lean/declarations/le-ssup-image-icc.md) | 548 | `result-track:380d543216efb47ad053dcf9e4b4e0ba4db10d251afd14cdd3c3a5d038650806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7495a00097e7a6618c9c2a6340206b1a1143bbff44d7748322919b4e64e203bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
