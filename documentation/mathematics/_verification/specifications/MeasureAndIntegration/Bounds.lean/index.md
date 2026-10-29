# Verification target: Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Bounds.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Bounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aadeba643fd3f4e60c7710626c255a7effe39f9b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 10; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkupperbound.md) | 78 | `declaration-track:88b8c15fb282c858c335add859847eb509adcd23c8ffc4ad4be70724115d0c82` |
| 2 | `def` | [checkLowerBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/checklowerbound.md) | 83 | `declaration-track:f0e876cd1309d4a3bc0ee64a9ac1f1962e0afdc2572a00eef2967bc5716c8207` |
| 3 | `def` | [checkStrictUpperBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkstrictupperbound.md) | 88 | `declaration-track:c62a1ae3bec6519f47d94d314ab75ac3743899e778a8cba257f993d3de57c3bf` |
| 4 | `def` | [checkStrictLowerBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkstrictlowerbound.md) | 93 | `declaration-track:a32986b56a5b182323761f27bbea01eee5f859f6c1fdd6379b015f623612c0ba` |
| 5 | `theorem` | [verify_upper_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound.md) | 111 | `result-track:d0097893d449b18fd879c7e3df7cc4b385e6623aa44902520ff076371a39955a` |
| 6 | `theorem` | [verify_lower_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound.md) | 131 | `result-track:82452367b6557aee31369286b2d4929b75ae95e5375e6081773d49be65f971db` |
| 7 | `theorem` | [verify_strict_upper_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-upper-bound.md) | 143 | `result-track:72efd24638376aea743366953c4e745f6801b21fbf6d842c41fccfa817985caa` |
| 8 | `theorem` | [verify_strict_lower_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-lower-bound.md) | 155 | `result-track:cfd0ff0d180e97a8601652ed6b5cc6940794000a3e45ef910fcae5ac9ef5a2c5` |
| 9 | `theorem` | [verify_upper_bound_pt](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-pt.md) | 167 | `result-track:6b5c2d6eeccb94af7389e45f33b237ec7a529f913913751b73cd4784706c7bf8` |
| 10 | `theorem` | [verify_lower_bound_pt](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-pt.md) | 174 | `result-track:5b9b53b8b15613306cf952000e71c784741957cfd0e5b6eb08533b27067809b7` |
| 11 | `def` | [checkBounds](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkbounds.md) | 183 | `declaration-track:1e3ec57943dde2b8e09b8bc56d1301cb36e7134bdd49ad020faebe7e87a140e1` |
| 12 | `theorem` | [verify_bounds](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-bounds.md) | 187 | `result-track:73ce7e3500ee3287a9428f42eccf0a3b2126c8449939f3d52c7451039523f06f` |
| 13 | `def` | [checkPointLowerBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkpointlowerbound.md) | 205 | `declaration-track:1055cff8ac8990c6cda7796fa1eeba60f808a7c85c5f31bbbd3dfd6dac74b0a0` |
| 14 | `def` | [checkPointUpperBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkpointupperbound.md) | 210 | `declaration-track:ff8ce777b9b958ffebcc4ece21b8d8bd1f1a7f256dd5b4818540e838d98fda51` |
| 15 | `theorem` | [verify_point_lower_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-point-lower-bound.md) | 215 | `result-track:6c47ee5051afaf96992d7eb4fcba80b3b92b7194dea0ed127108f2d2571e8173` |
| 16 | `theorem` | [verify_point_upper_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-point-upper-bound.md) | 227 | `result-track:d5512c1e4e90992c4aa339b9915b048f7f647940e0d8bf1e7ae3a148aeb2857a` |
| 17 | `theorem` | [verify_argmax](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-argmax.md) | 244 | `result-track:52b74f8fd993ea608cef5cc4a074e9093a55de67ce1f237c92ad4933835a5e78` |
| 18 | `theorem` | [verify_argmin](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-argmin.md) | 260 | `result-track:689da465edcaacd58fc48cdd428ffc9517d4a08cac1a2cf7ed73fbfeabfea176` |
| 19 | `def` | [checkUpperBoundWithInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkupperboundwithinv.md) | 283 | `declaration-track:a1d407be0026ec37c0d2be7133ae22df77cf5d987346467fcd02ab4a79c72e9c` |
| 20 | `def` | [checkLowerBoundWithInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/checklowerboundwithinv.md) | 291 | `declaration-track:2269da670c92066737bb60dee0eb5fc3ca2b787e8445bec0fd040cc442361701` |
| 21 | `def` | [checkStrictUpperBoundWithInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkstrictupperboundwithinv.md) | 298 | `declaration-track:2144539b68abf2c3f684666b4a2d2dfdf9283e341ea85c6f4c3f4335745b7d8f` |
| 22 | `def` | [checkStrictLowerBoundWithInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkstrictlowerboundwithinv.md) | 305 | `declaration-track:9ba878c3afe0c371c9e51437a2aa612764159dc4c2917eaaaf3903ec3c4cf64a` |
| 23 | `theorem` | [verify_upper_bound_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-withinv.md) | 311 | `result-track:633b68aa1a362e5c988cc8027775a7cb78fff70790a106670d06a8765a270029` |
| 24 | `theorem` | [verify_lower_bound_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-withinv.md) | 323 | `result-track:c4f695a72f3690bc6889ed14383028c0fdb5b69615fbfb1920b3d5960d64cc1a` |
| 25 | `theorem` | [verify_strict_upper_bound_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-upper-bound-withinv.md) | 335 | `result-track:296754bb11c10b2dadb2580fc3bc860f7d6875ddc3dcbed8cbbc9590ef492ed4` |
| 26 | `theorem` | [verify_strict_lower_bound_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-lower-bound-withinv.md) | 351 | `result-track:3df8d93114252bd045aaf992acd7d49903f3c3700287e2f78a3040802ee37aab` |
| 27 | `theorem` | [verify_upper_bound_Icc_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-icc-withinv.md) | 367 | `result-track:1d998bc83f1285c3d62b47cf4c80e7f1c1fe8bc9081c6906f5347efdcb290c81` |
| 28 | `theorem` | [verify_lower_bound_Icc_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-icc-withinv.md) | 377 | `result-track:77bf4760b9fe32d4c9cd64ad29f3754b95c1e6e5995bb585d0f34553bd9eb901` |
| 29 | `theorem` | [verify_strict_upper_bound_Icc_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-upper-bound-icc-withinv.md) | 387 | `result-track:d76a0772957dce2dffcd0bfc01a95b06320343eefe48f61d36b53e060d76c289` |
| 30 | `theorem` | [verify_strict_lower_bound_Icc_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-lower-bound-icc-withinv.md) | 397 | `result-track:66bd4d0abb6deb6048fed2764f97b8e60541ca915d212b9475e50e0695c78e28` |
| 31 | `def` | [checkLowerBoundSmart](../../../../MeasureAndIntegration/Bounds.lean/declarations/checklowerboundsmart.md) | 418 | `declaration-track:ef87ce26d04ef52614119c3d93956ce5c309018a996045169c8267e826653156` |
| 32 | `def` | [checkUpperBoundSmart](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkupperboundsmart.md) | 441 | `declaration-track:22728b949655bd068f2c6e2688b65ba54b633a3a5984d2d701793b5cb1ee2d3c` |
| 33 | `theorem` | [increasing_min_at_left_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/increasing-min-at-left-core.md) | 459 | `result-track:1fafcfacc7753c88dbd7e15dc2626431873c9fdc587fe6d75372ca6703e7b3f9` |
| 34 | `theorem` | [decreasing_min_at_right_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/decreasing-min-at-right-core.md) | 502 | `result-track:21f5088e8ca366314a3b67b02f49e15ee65d9b8d5c85e057d8c79635dd6c62d3` |
| 35 | `theorem` | [verify_lower_bound_smart](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-smart.md) | 538 | `result-track:f21255b7519bdd585dccf6186cb2e3cd4a07110e6dec3698b95fd21156e2eda5` |
| 36 | `theorem` | [increasing_max_at_right_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/increasing-max-at-right-core.md) | 587 | `result-track:899d32c6654f841759236fd2357f566de1a436a3399a89bd4861e8790ce272f0` |
| 37 | `theorem` | [decreasing_max_at_left_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/decreasing-max-at-left-core.md) | 623 | `result-track:b332021830711d81a17ecd795e6e8034e235cc8d9cc7f9f23f4f793dc495ea06` |
| 38 | `theorem` | [verify_upper_bound_smart](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-smart.md) | 659 | `result-track:2c8b1e2fe2f72358d3bbe8c23b9f5f25637e36eaefc74cb5eb639c24edbb26f8` |
| 39 | `theorem` | [verify_upper_bound_Icc](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-icc.md) | 714 | `result-track:fdcf6e7ec614f3c1b7824e84279e2ca3909c095208970a741ad964889fad3a2d` |
| 40 | `theorem` | [verify_lower_bound_Icc](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-icc.md) | 724 | `result-track:1bfea06d659e4b5a28c933f412bf5960c46edd1076a773b4a26ea8d94192b2a5` |
| 41 | `theorem` | [verify_upper_bound_Icc_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-icc-core.md) | 735 | `result-track:15e824c4e4d78ff2440e1484c39c143457cc3206ea666a9596122822b7805c59` |
| 42 | `theorem` | [verify_lower_bound_Icc_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-icc-core.md) | 746 | `result-track:4418ca024fb2f5432e4feca035dc9b8f6180c2624f6780a0e3074b200379b45e` |
| 43 | `theorem` | [verify_strict_upper_bound_Icc_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-upper-bound-icc-core.md) | 756 | `result-track:0af383777f9acc82f7dbddd505efc44549cc7c5ccb8c15816d034c86d6b1422c` |
| 44 | `theorem` | [verify_strict_lower_bound_Icc_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-lower-bound-icc-core.md) | 766 | `result-track:7ad0c7869cce752a54e77843bb405cf2c648fd2f2eee825f77d750a2f0d40911` |
| 45 | `theorem` | [verify_upper_bound_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-split.md) | 784 | `result-track:dd4ababf9c19df1e230e372b894b7102302ce1b07e7cc5b9f881e25be358ca88` |
| 46 | `theorem` | [verify_lower_bound_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-split.md) | 795 | `result-track:beabe35b7bb54ae83fcf3f20f7749fca58c9bccbd60c37abdf5e9b81c5da8957` |
| 47 | `theorem` | [verify_strict_upper_bound_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-upper-bound-split.md) | 806 | `result-track:e50e3f5891cdf891a810f7b1b347219671e9f6bba9170d7066527748c59f8551` |
| 48 | `theorem` | [verify_strict_lower_bound_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-lower-bound-split.md) | 817 | `result-track:cfe29059ec633d8b3fb0a4c087510ad13dd817e17d0346b20a6fc241a523d72b` |
| 49 | `theorem` | [verify_upper_bound_Icc_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-icc-split.md) | 828 | `result-track:0b6a19848462f5202ac664f58e2ba1e352c9493e7bb80f46ddddf164b377a27f` |
| 50 | `theorem` | [verify_lower_bound_Icc_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-icc-split.md) | 839 | `result-track:89c8b442da6603c4a19fd9f39e41ec3799471086399f2f111f63aaec579383a1` |
| 51 | `theorem` | [verify_strict_upper_bound_Icc_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-upper-bound-icc-split.md) | 850 | `result-track:757c449affaa1a26212234066d23c5bfac61880c5eec2613be2f4f59540b7ff0` |
| 52 | `theorem` | [verify_strict_lower_bound_Icc_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-lower-bound-icc-split.md) | 861 | `result-track:02bd1f785589abb51557b2975ed799cdb66f7d6aab2c0862ddb15921dad2cb98` |
| 53 | `theorem` | [mem_split_general](../../../../MeasureAndIntegration/Bounds.lean/declarations/mem-split-general.md) | 878 | `result-track:9a5a7b4c6e8f547c77b1ca03fcbc05bcaa84dce0bc00e2d04c1aaf8799a2cec2` |
| 54 | `theorem` | [verify_upper_bound_general_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-upper-bound-general-split.md) | 890 | `result-track:b3105d133eaeaa9b09a987257788ece71b5b50bc3689331bdaafb77500670c72` |
| 55 | `theorem` | [verify_lower_bound_general_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-lower-bound-general-split.md) | 903 | `result-track:8776e86091a2d6219833f04da08ef3928a2f3c75672640c3cc00021be9e70afa` |
| 56 | `theorem` | [verify_strict_upper_bound_general_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-upper-bound-general-split.md) | 916 | `result-track:28f67489497691c8294b94411b0305a67e3b8fc6c0e920a7580e754c7ca56830` |
| 57 | `theorem` | [verify_strict_lower_bound_general_split](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-strict-lower-bound-general-split.md) | 929 | `result-track:ddd68ef37ec62d5a8167109e0eea434983651b444c3506864d7d89fdd417c6eb` |
| 58 | `def` | [checkGlobalLowerBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkgloballowerbound.md) | 959 | `declaration-track:b7b7d8a3294ce7d8424dc0046ad2f4a9ae72deff41b087a115740f04f19987ff` |
| 59 | `def` | [checkGlobalUpperBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkglobalupperbound.md) | 969 | `declaration-track:8cad9306d774c8b095515f1816ba712cea8453d9a227ed3cbf868e4aa1f760bd` |
| 60 | `def` | [checkGlobalBounds](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkglobalbounds.md) | 974 | `declaration-track:5c7abf900c6e7a23dc539d51943495a858aad19e1191d0adb804110582632d2f` |
| 61 | `theorem` | [verify_global_lower_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-global-lower-bound.md) | 988 | `result-track:5cf8e93685bb3ac458cde3906d850b9df9f7eed8b49ec320bc0b2f4b5e71ac00` |
| 62 | `theorem` | [verify_global_upper_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-global-upper-bound.md) | 1011 | `result-track:8724e832ed6c74a5b5bc52ec8ea5b098850e83ee1eafc025af6e52669e48418d` |
| 63 | `theorem` | [verify_global_bounds](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-global-bounds.md) | 1039 | `result-track:dcef21a72dba2969193011e82a87629cc9472708140ad96bb15b455e4ddadcf8` |
| 64 | `structure` | [RootConfig](../../../../MeasureAndIntegration/Bounds.lean/declarations/rootconfig.md) | 1065 | `declaration-track:6ee3314210491dbd819a15ce05582078ff50e7a0eddc98782e66d37f076d7bf9` |
| 65 | `structure` | [NewtonConfig](../../../../MeasureAndIntegration/Bounds.lean/declarations/newtonconfig.md) | 1073 | `declaration-track:442ad5b63074c45a6c658f438032952ae25d259beb21b502cf2a4c4be9647689` |
| 66 | `def` | [checkSignChange](../../../../MeasureAndIntegration/Bounds.lean/declarations/checksignchange.md) | 1084 | `declaration-track:6bfcbb847e176494a440b7ba0b97cc7cfdba9ab48891206d3bdebd9acc18e33d` |
| 67 | `def` | [checkNoRoot](../../../../MeasureAndIntegration/Bounds.lean/declarations/checknoroot.md) | 1096 | `declaration-track:5430c5aa7587b34ad510e1856160ccd777df223cb97038e3566d8674b0bd6105` |
| 68 | `def` | [newtonStepCore](../../../../MeasureAndIntegration/Bounds.lean/declarations/newtonstepcore.md) | 1108 | `declaration-track:d551b6a1302279bb2161b16bca778ef7ef42228f34c43c0ebf08e4481de8c285` |
| 69 | `lemma` | [newtonStepCore_extract](../../../../MeasureAndIntegration/Bounds.lean/declarations/newtonstepcore-extract.md) | 1129 | `result-track:f1e61681499168273e8e8eac3138fb2b3ea000275769b930aef4401c83f5cd78` |
| 70 | `def` | [checkNewtonContractsCore](../../../../MeasureAndIntegration/Bounds.lean/declarations/checknewtoncontractscore.md) | 1163 | `declaration-track:e5b0426385e7dce70b068c1c8baa4d34f63a23005584bbe5b53a8999c163ecc6` |
| 71 | `def` | [checkNewtonContracts](../../../../MeasureAndIntegration/Bounds.lean/declarations/checknewtoncontracts.md) | 1174 | `declaration-track:86029a99dcf7ab1c03dc8f36d1431ec8c872e270483875b4324528b04ac91dd8` |
| 72 | `theorem` | [verify_no_root](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-no-root.md) | 1186 | `result-track:d05bf7cbe14fe71e7192e2e50c229608357820728b17aea6f1573236f9814cd4` |
| 73 | `theorem` | [verify_unique_root_newton](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-unique-root-newton.md) | 1217 | `result-track:0f1bc1fe5da92b5a5c6d8d198a1abf6ba71fa4f4076086ed3dd918b1ea66c834` |
| 74 | `lemma` | [mvt_lower_bound_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/mvt-lower-bound-core.md) | 1247 | `result-track:013ba781ab673a15cb65205195357d29566415ff9a9b5111da4a54c466a353d3` |
| 75 | `lemma` | [mvt_upper_bound_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/mvt-upper-bound-core.md) | 1271 | `result-track:8ffde278767edc6ae639f9370b3c0751292b41e5c09e85d07a6f5dbf402e82a4` |
| 76 | `theorem` | [verify_unique_root_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-unique-root-core.md) | 1307 | `result-track:3b666d59b1a270f41da233ba2960f0a3f533ffd18c3e115c1665c83814ad4028` |
| 77 | `theorem` | [newton_preserves_root_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/newton-preserves-root-core.md) | 1325 | `result-track:6b1a9e2d7c0ea615c40f37e4e2f523e5607e97fd6d55386ed5300f4a2bc648be` |
| 78 | `theorem` | [newton_step_core_at_most_one_root](../../../../MeasureAndIntegration/Bounds.lean/declarations/newton-step-core-at-most-one-root.md) | 1377 | `result-track:b4a987d685bbc0f22c876494094a8ba5d3e5f4052d5e10825457a8c76c28d6d2` |
| 79 | `lemma` | [mvt_fc_lower_bound_pos_increasing_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/mvt-fc-lower-bound-pos-increasing-core.md) | 1441 | `result-track:44c0445a8f99464806bd218a0e5a4e0135857dba98adf4a8b7b9085c4acbfe09` |
| 80 | `lemma` | [mvt_fc_upper_bound_pos_increasing_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/mvt-fc-upper-bound-pos-increasing-core.md) | 1478 | `result-track:24a29daa3c3ee8894e17f407fd0da0198e2c833a1f752205ad83cea4f4fe2574` |
| 81 | `lemma` | [mvt_fc_upper_bound_neg_decreasing_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/mvt-fc-upper-bound-neg-decreasing-core.md) | 1515 | `result-track:e41e3e6016baeb6d429d8be88243c14f34942923742d877ed7b03af3381f2194` |
| 82 | `lemma` | [mvt_fc_lower_bound_neg_decreasing_core](../../../../MeasureAndIntegration/Bounds.lean/declarations/mvt-fc-lower-bound-neg-decreasing-core.md) | 1552 | `result-track:23fe1651bc07d820f040297caa3426205495981aa5fb25a78e7af90d31d45561` |
| 83 | `theorem` | [verify_unique_root_computable](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-unique-root-computable.md) | 1593 | `result-track:041012009396ff3894ab816b86920ff22ade32e1178a3458a2851deb51147230` |
| 84 | `theorem` | [verify_sign_change](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-sign-change.md) | 1810 | `result-track:1411ab6558f575fb162a6ea063b567a9164c2c753d53d9da42bc8564409ce126` |
| 85 | `def` | [checkHasRoot](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkhasroot.md) | 1889 | `declaration-track:31bd8139fb79c3d95b232623a0447ef14830ae87677279511dfcd16f8f3d2f96` |
| 86 | `theorem` | [verify_has_root](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-has-root.md) | 1901 | `result-track:8e1795c73f82ccc273a8d3e21b941dd358d1b75472748f7619821f73051c5ad9` |
| 87 | `def` | [uniformPartitionCore](../../../../MeasureAndIntegration/Bounds.lean/declarations/uniformpartitioncore.md) | 1961 | `declaration-track:63edd96225fcce166bb5d0edcaf390200c5ad418f6ffa1051dc2d599fa09199e` |
| 88 | `def` | [sumIntervalBoundsCore](../../../../MeasureAndIntegration/Bounds.lean/declarations/sumintervalboundscore.md) | 1977 | `declaration-track:ea41fbaa10f7495d4c6ee3454356d9707100f63016f3a3d4dd6aaf0f8dfdf2da` |
| 89 | `def` | [integrateIntervalCore](../../../../MeasureAndIntegration/Bounds.lean/declarations/integrateintervalcore.md) | 1988 | `declaration-track:62ab16a9fa92d6a7fe7296571ea2192e2187735519f43259d2bd69ad6433249b` |
| 90 | `def` | [integrateInterval1Core](../../../../MeasureAndIntegration/Bounds.lean/declarations/integrateinterval1core.md) | 1993 | `declaration-track:7da0e81cfbaa294fb4739fa0f1d3d91898f72eb91baa5a0a3e2338d0b6e2d874` |
| 91 | `theorem` | [exprSupportedCore_intervalIntegrable](../../../../MeasureAndIntegration/Bounds.lean/declarations/exprsupportedcore-intervalintegrable.md) | 2007 | `result-track:371205ccf2a304ffd4d5babfd5f9b1d6f03339f7ef6964a4df2df08e92c4e0a9` |
| 92 | `theorem` | [integrateInterval1Core_correct](../../../../MeasureAndIntegration/Bounds.lean/declarations/integrateinterval1core-correct.md) | 2025 | `result-track:cefd76e8c1769c72ce7ea2b3b046d7c5288cb4186783993bde6ad5a755fe9841` |
| 93 | `def` | [checkIntegralBoundsCore](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkintegralboundscore.md) | 2080 | `declaration-track:8abddbf4259ded2b8b0329597e74bc73317033a543000c284c34f160e188dc5d` |
| 94 | `theorem` | [verify_integral_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-integral-bound.md) | 2098 | `result-track:6b7ac361dff5aa80aa7af8d446906e4990450c54957ce4b083a445879cc233a4` |
| 95 | `def` | [getIntegralBound](../../../../MeasureAndIntegration/Bounds.lean/declarations/getintegralbound.md) | 2108 | `declaration-track:ee533ada663e72b50cfb8ad0217d8df52583404ccd7a7eff86760d3b663de905` |
| 96 | `theorem` | [integral_in_bound](../../../../MeasureAndIntegration/Bounds.lean/declarations/integral-in-bound.md) | 2114 | `result-track:30a1dbdbc8c2c5355b7b37adb1a009fcb8214c8a20c89259da0e9c521fac9ac7` |
| 97 | `def` | [integrateInterval1WithInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/integrateinterval1withinv.md) | 2127 | `declaration-track:a5f58f550f0bfc0315490668b126bed6b0a0ffb37a88a80d895ccad418ccff2f` |
| 98 | `theorem` | [integrateInterval1WithInv_correct](../../../../MeasureAndIntegration/Bounds.lean/declarations/integrateinterval1withinv-correct.md) | 2134 | `result-track:c5c43f129a8c6367d4a65614e2f8d697a62580aa4450a1073d510c0023fcf570` |
| 99 | `def` | [checkIntegralBoundsWithInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/checkintegralboundswithinv.md) | 2194 | `declaration-track:c986dd923990ebe8fff031349b476f8e23282bb51d79ba36e6258ef20a704871` |
| 100 | `theorem` | [verify_integral_bound_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/verify-integral-bound-withinv.md) | 2205 | `result-track:ae4721147fff9d920f7226eb7978c756a653f6de8f08347f4289546c1acc9851` |
| 101 | `def` | [collectBoundsWithInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/collectboundswithinv.md) | 2228 | `declaration-track:38106e16b91e5f682c8e3e0a454fe208614b286e0af6bbad774cf9cf36c2e49d` |
| 102 | `def` | [integratePartitionWithInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/integratepartitionwithinv.md) | 2237 | `declaration-track:6388bfe81f458c26c48cac9384fe2dd04cd540bcf82e141768d32971a6157453` |
| 103 | `theorem` | [collectBoundsWithInv_length](../../../../MeasureAndIntegration/Bounds.lean/declarations/collectboundswithinv-length.md) | 2245 | `result-track:8feecf631c778b79339ff3b74974a73a46bb20a213b6fbc1737bbe1e3bdcfff8` |
| 104 | `theorem` | [collectBoundsWithInv_getElem](../../../../MeasureAndIntegration/Bounds.lean/declarations/collectboundswithinv-getelem.md) | 2266 | `result-track:3527bda9d0856cd6f6205b9afd60ae90b67f802d633b28fe66c23deab43412de` |
| 105 | `theorem` | [integral_subinterval_bounded_withInv](../../../../MeasureAndIntegration/Bounds.lean/declarations/integral-subinterval-bounded-withinv.md) | 2296 | `result-track:3e53abfc172bf69a0539728e512ecf0dffd326b0ffa349c8f03ee6e06d377291` |
| 106 | `theorem` | [integratePartitionWithInv_correct](../../../../MeasureAndIntegration/Bounds.lean/declarations/integratepartitionwithinv-correct.md) | 2307 | `result-track:2feeba440c3f95aa40cd166840a0de7b2589066d5dbee570a285418ac87089e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6013311c98d0ea5a1686e674438596aee5d48e2b7b01cea211f6d9a8fdfdb54b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
