# Verification target: Cont Diff Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9fc6815627d5c5ed3b37b5d7934a39587383857",
  "lexical_observation_count": 175,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ContDiffBasicNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/ContDiffBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9fc6815627d5c5ed3b37b5d7934a39587383857`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FaaDiBruno` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iteratedFDerivWithin_succ_const](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderivwithin-succ-const.md) | 65 | `result-track:106de4026c9abb071d613ab9e70294045df5f975fc588fae4db9009b002f4b24` |
| 2 | `theorem` | [iteratedFDerivWithin_zero_fun](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderivwithin-zero-fun.md) | 76 | `result-track:ac374941932f0c4a34fff5c22c85df127d13ce2252cce42a7cdde1199a8182bb` |
| 3 | `theorem` | [iteratedFDeriv_zero_fun](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderiv-zero-fun.md) | 83 | `result-track:02ed862f6550a15170746c07b73a5a58c90353deb9485950d56611fa2d992d19` |
| 4 | `theorem` | [contDiff_zero_fun](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-zero-fun.md) | 86 | `result-track:85990898aca31895b7a39590979787ca27b01be82f4c10f5486aad82d3ad71d2` |
| 5 | `theorem` | [contDiff_const](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-const.md) | 91 | `result-track:0930aebc942fcfcd3cd8c4b940189a1de8d84d44b535b14a96636583384b2ef6` |
| 6 | `theorem` | [contDiffOn_const](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-const.md) | 95 | `result-track:aeb27511634c2337ffc5196a01a4f21795a43a8b52f51ed66028b1361a99c4b1` |
| 7 | `theorem` | [contDiffAt_const](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-const.md) | 99 | `result-track:8c160d7afe0bcbf155dc530c556de5ce7c6a5b2049f0fb22d3db97c6c4e9529a` |
| 8 | `theorem` | [contDiffWithinAt_const](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-const.md) | 103 | `result-track:29e686fe5236d2e4985abe91ecec17be4c3278155cde273a3436a952d49dede6` |
| 9 | `theorem` | [contDiff_of_subsingleton](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-of-subsingleton.md) | 107 | `result-track:c016903603ecb4487ecb442f753d1d711a06ad485a8d7e3baecd9b80b91abad0` |
| 10 | `theorem` | [contDiffAt_of_subsingleton](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-of-subsingleton.md) | 111 | `result-track:64fb744d55d81e92071ba1a9b12c4238a8c4f7b158da61dd2bc896ec037d3bfe` |
| 11 | `theorem` | [contDiffWithinAt_of_subsingleton](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-of-subsingleton.md) | 115 | `result-track:6e3753dc8af936d53364de4f8ad96210527fa1038e2032f9f2ace9f9f71c6df0` |
| 12 | `theorem` | [contDiffOn_of_subsingleton](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-of-subsingleton.md) | 119 | `result-track:b53862b5a8d05117fcf9bbc3784d06431cce5095923ef5714a3aa2389c5c25c6` |
| 13 | `theorem` | [iteratedFDerivWithin_const_of_ne](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderivwithin-const-of-ne.md) | 122 | `result-track:1531462153aecdec83f58e76a08a645378183306d4914e4bbefb4ea6b89f0ef5` |
| 14 | `theorem` | [iteratedFDeriv_const_of_ne](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderiv-const-of-ne.md) | 128 | `result-track:ad4f5e9d145de886a51d06363b8d0f9892bb93d0182eb53dd47dd107f85bfce9` |
| 15 | `theorem` | [iteratedFDeriv_succ_const](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderiv-succ-const.md) | 132 | `result-track:338d205d10f3b28ee8bb985e1c0652f3591a3ac62e72cb16f45c616220906f68` |
| 16 | `theorem` | [contDiffWithinAt_singleton](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-singleton.md) | 136 | `result-track:1d4bbdfc02e1a791fddffb188f6d2512caa0498e7fb6c6e29daad614d3123a44` |
| 17 | `theorem` | [IsBoundedLinearMap.contDiff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/isboundedlinearmap-contdiff.md) | 145 | `result-track:f3f500d5ca615132d39ddea41cbd8ee8b266bd53594ac86fa3302681ba3fd2ff` |
| 18 | `theorem` | [ContinuousLinearMap.contDiff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearmap-contdiff.md) | 149 | `result-track:186fc360cc47949d02bb70148dd55680f8cffc7e3e09a6a68f908e531980aa51` |
| 19 | `theorem` | [ContinuousLinearEquiv.contDiff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-contdiff.md) | 153 | `result-track:069ff0b50b29be32c49ae1a155ba8ffb3a10f26795949b18198c8e29d609c246` |
| 20 | `theorem` | [LinearIsometry.contDiff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/linearisometry-contdiff.md) | 157 | `result-track:2282ce8b76ae66a9afd18dab00956b101802a423dae13b73b9d0b32f3f843067` |
| 21 | `theorem` | [LinearIsometryEquiv.contDiff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/linearisometryequiv-contdiff.md) | 161 | `result-track:c5858ed892b4409b7eff9d1a65035b41ccfaae2e7f9508444b5cec70ca31c13c` |
| 22 | `theorem` | [contDiff_id](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-id.md) | 165 | `result-track:70056d859f9ddb3754e4f56bb2ba1ffed1fa8f7c0263f038969e6d9fdebc2b17` |
| 23 | `theorem` | [contDiff_fun_id](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fun-id.md) | 169 | `result-track:668157ba15b1d6c4b3673217139caacf9654c4155219d095c682ee8cc9ede945` |
| 24 | `theorem` | [contDiffWithinAt_id](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-id.md) | 172 | `result-track:5d5be558f75b2eb37bc2ab0ed5af95fc0491e290c0b0bd1064eaf5a587a001f2` |
| 25 | `theorem` | [contDiffWithinAt_fun_id](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-fun-id.md) | 176 | `result-track:de04d755aa15701d21c520388c6f5079c984cbfd13e6e150c4a8f885b55c2224` |
| 26 | `theorem` | [contDiffAt_id](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-id.md) | 179 | `result-track:97dcaa111f44346ed351c035d2713e6dd93e44583ea44c789791c97da9d5520e` |
| 27 | `theorem` | [contDiffAt_fun_id](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fun-id.md) | 183 | `result-track:5b5c1a2269747b895427b4b6fed0a2caa7219003123b8b9d0f79d8a8d4d32d65` |
| 28 | `theorem` | [contDiffOn_id](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-id.md) | 186 | `result-track:c260e94eba7893c01b9d4db798d27f39b62c1e9e41efc03045ab0981c759eae5` |
| 29 | `theorem` | [contDiffOn_fun_id](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-fun-id.md) | 190 | `result-track:872138754516b3cd38d6569e571add64f4cf1e96e46dfbc73383e42d05c8255d` |
| 30 | `theorem` | [IsBoundedBilinearMap.contDiff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/isboundedbilinearmap-contdiff.md) | 194 | `result-track:938ec72891f56c982d667787e83a92afbaec52af6a2f92e8aa2218e6a911ffad` |
| 31 | `theorem` | [HasFTaylorSeriesUpToOn.continuousLinearMap_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/hasftaylorseriesuptoon-continuouslinearmap-comp.md) | 199 | `result-track:0a46640c1c40892568c381511b9fd63f44f28315fa056092726bd04c6904112e` |
| 32 | `theorem` | [ContDiffWithinAt.continuousLinearMap_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-continuouslinearmap-comp.md) | 210 | `result-track:a853ac9029df74c8da1f06b2c0738356b132b7db2ddeb968524b30ca805c7bc7` |
| 33 | `theorem` | [ContDiffAt.continuousLinearMap_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-continuouslinearmap-comp.md) | 228 | `result-track:19f4da77cf1902d80a2e62b822d6483be8c46e4f2a39e1be2ae17c14addfa3b5` |
| 34 | `theorem` | [ContDiffOn.continuousLinearMap_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-continuouslinearmap-comp.md) | 233 | `result-track:788b48cf5b830297a28105a6ed57526c61660d8a68ac3040e0111537e7683dd6` |
| 35 | `theorem` | [ContDiff.continuousLinearMap_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-continuouslinearmap-comp.md) | 237 | `result-track:d6f069eb5573075af35cc1a027eca1e2df861388649a1b63a1f180f3254503ab` |
| 36 | `theorem` | [ContinuousLinearMap.iteratedFDerivWithin_comp_left](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearmap-iteratedfderivwithin-comp-left.md) | 243 | `result-track:96d969d948ff79cb5e9ef67a823213fca436b0cb5ca6e7ed23a852ba589a9fb0` |
| 37 | `theorem` | [ContinuousLinearMap.iteratedFDeriv_comp_left](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearmap-iteratedfderiv-comp-left.md) | 255 | `result-track:65a4796fd16b1beabf0c8d76324fdd41e398d0a0fd427f0c4473bf6e731ca710` |
| 38 | `theorem` | [ContinuousLinearEquiv.iteratedFDerivWithin_comp_left](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-iteratedfderivwithin-comp-left.md) | 264 | `result-track:aaf9daa1e2a862e71ba885909dbdccec0520d807a70aa54999d33f0f2905d516` |
| 39 | `theorem` | [LinearIsometry.norm_iteratedFDerivWithin_comp_left](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/linearisometry-norm-iteratedfderivwithin-comp-left.md) | 287 | `result-track:4abec2e3d6e57b64ff1c38559e235fd41b06276b491ea5f0f282b8e953d431d9` |
| 40 | `theorem` | [LinearIsometry.norm_iteratedFDeriv_comp_left](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/linearisometry-norm-iteratedfderiv-comp-left.md) | 299 | `result-track:be6c9ef7f6e9f99a5ffed4faa0b32172035072c4b93b3adeb2f8e7d0b0474362` |
| 41 | `theorem` | [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_left](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/linearisometryequiv-norm-iteratedfderivwithin-comp-left.md) | 307 | `result-track:51a6e55ca91852a904769648950c8d34af9b2aeff61951bfac44005f2f22c160` |
| 42 | `theorem` | [LinearIsometryEquiv.norm_iteratedFDeriv_comp_left](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/linearisometryequiv-norm-iteratedfderiv-comp-left.md) | 319 | `result-track:9a74dda0709b4e06265d3cbfdbe81fbebc36bedbc04a23579c0c3467a3352503` |
| 43 | `theorem` | [ContinuousLinearEquiv.comp_contDiffWithinAt_iff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-comp-contdiffwithinat-iff.md) | 326 | `result-track:ae64b555ddd35ab1fe0035fec3c3eb6cd03eb3e9b5060de3808181aebe616a15` |
| 44 | `theorem` | [ContinuousLinearEquiv.comp_contDiffAt_iff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-comp-contdiffat-iff.md) | 335 | `result-track:04e10916204fc95895b895c36a220be1feb5202ff4c210804ad07a12ea49ad5e` |
| 45 | `theorem` | [ContinuousLinearEquiv.comp_contDiffOn_iff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-comp-contdiffon-iff.md) | 341 | `result-track:d36ae25b98f61d300d1ea67fa99493a1f6401339b721f970fd79c650e5a07a60` |
| 46 | `theorem` | [ContinuousLinearEquiv.comp_contDiff_iff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-comp-contdiff-iff.md) | 346 | `result-track:10431bc43431b07064aefa6d6df01961a1e63196a97ad8d0d1acf1d6a292663c` |
| 47 | `theorem` | [HasFTaylorSeriesUpToOn.compContinuousLinearMap](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/hasftaylorseriesuptoon-compcontinuouslinearmap.md) | 352 | `result-track:9437e07124e397249f80b0639dc9f8b145c34db39c9715cee7848a71de107850` |
| 48 | `theorem` | [ContDiffWithinAt.comp_continuousLinearMap](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp-continuouslinearmap.md) | 377 | `result-track:91453ac26ce16888846edd34fb7de06dd78e80e04a1743c182cf679d3613b739` |
| 49 | `theorem` | [ContDiffOn.comp_continuousLinearMap](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-comp-continuouslinearmap.md) | 399 | `result-track:77caf86825993c8214188c1d1b6600ab0950c6b4ec8dbea41f7eeecf8c9d9fff` |
| 50 | `theorem` | [ContDiff.comp_continuousLinearMap](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-continuouslinearmap.md) | 403 | `result-track:a27a53f0f76b96155b76040a26d6de1e773158561165402edaf58912de56f559` |
| 51 | `theorem` | [ContinuousLinearMap.iteratedFDerivWithin_comp_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearmap-iteratedfderivwithin-comp-right.md) | 409 | `result-track:b9a997f0b0b12262e31446e83c6a8ef170b1dd0d5ca366580db40fed4c33436f` |
| 52 | `theorem` | [ContinuousLinearEquiv.iteratedFDerivWithin_comp_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-iteratedfderivwithin-comp-right.md) | 419 | `result-track:ec611ba9d9cf8ecc7d7477fdef59ecb807bb8ca869819963e9f10c8386e53004` |
| 53 | `theorem` | [ContinuousLinearMap.iteratedFDeriv_comp_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearmap-iteratedfderiv-comp-right.md) | 444 | `result-track:98e056eee87dcc7173e73e2fe7447c7f515d075e43fe3ed2daeb96a9160aba9e` |
| 54 | `theorem` | [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/linearisometryequiv-norm-iteratedfderivwithin-comp-right.md) | 454 | `result-track:c3645f02da6a2c3f17ac543a8c5fc656ba73f6749a3ab1b9cef4f6f42579a661` |
| 55 | `theorem` | [LinearIsometryEquiv.norm_iteratedFDeriv_comp_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/linearisometryequiv-norm-iteratedfderiv-comp-right.md) | 464 | `result-track:257f26d47a48a35a08888e46d4f824cc36ce981c9e1bf7ce3de717675dfb45ee` |
| 56 | `theorem` | [ContinuousLinearEquiv.contDiffWithinAt_comp_iff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-contdiffwithinat-comp-iff.md) | 471 | `result-track:5d7edf6f41893ff1beea91cdf6d103a3f0a40a9012c551bbbd48051e628f1414` |
| 57 | `theorem` | [ContinuousLinearEquiv.contDiffAt_comp_iff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-contdiffat-comp-iff.md) | 482 | `result-track:f89f1454decfb26d5632cee853127039e9cfd1fec3e922b0b21b1be72d6c7388` |
| 58 | `theorem` | [ContinuousLinearEquiv.contDiffOn_comp_iff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-contdiffon-comp-iff.md) | 489 | `result-track:f0357e6d19adaaba5300f0f2363174516d4c0c56ca66db1d4dc5b99478349161` |
| 59 | `theorem` | [ContinuousLinearEquiv.contDiff_comp_iff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuouslinearequiv-contdiff-comp-iff.md) | 495 | `result-track:a0cfcd1d7cd782e2b2286ee246db484b725e5b6e2fe0b06392786b4a2f85aca8` |
| 60 | `theorem` | [HasFTaylorSeriesUpToOn.prodMk](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/hasftaylorseriesuptoon-prodmk.md) | 507 | `result-track:29806a252cbbd4b4e46694d88042234ebf05e877471498a1afe18fc692e4bfd3` |
| 61 | `theorem` | [ContDiffWithinAt.prodMk](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-prodmk.md) | 525 | `result-track:2db088fcb6276a8cf007bc3e0a4bacf4919088b525583456412d995f68c9ed85` |
| 62 | `theorem` | [ContDiffOn.prodMk](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-prodmk.md) | 549 | `result-track:8518e43621741414ce63270c01037c2642ec9b7a8883f3e9633665fdcbcae497` |
| 63 | `theorem` | [ContDiffAt.prodMk](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-prodmk.md) | 558 | `result-track:82d3d25e97c39043661b131302cbdd8d825b35ca94aaae62ef748e249e63cbc6` |
| 64 | `theorem` | [ContDiff.prodMk](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-prodmk.md) | 567 | `result-track:8deb373b6b24cdaf9544cc9aeaaa20cea15e5cae11250d90e7dbfb01e17083fb` |
| 65 | `theorem` | [ContDiffWithinAt.comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp.md) | 609 | `result-track:8b7dde89dd2671990842de0f377622ed4e292d47ac43f95c825bc751d043d0bb` |
| 66 | `theorem` | [ContDiffOn.comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-comp.md) | 652 | `result-track:9281a9c368137b39e276aa179f06f3201d0c41e5c4d48461b9918cd001e9379e` |
| 67 | `theorem` | [ContDiffOn.comp_inter](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-comp-inter.md) | 657 | `result-track:57c5f8c6c263e5e4bbab6b5dc58d540a0298fad5f0828aaaa6fcb2a60ad557a0` |
| 68 | `theorem` | [ContDiff.comp_contDiffOn](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-contdiffon-source-edition-2.md) | 665 | `result-track:93bbebd68e81d3e876147692feeabd8163dc67eda362ad208abc536567644cc9` |
| 69 | `theorem` | [ContDiff.fun_comp_contDiffOn](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fun-comp-contdiffon.md) | 670 | `result-track:c855ad39a4c1ba5f14888f21ecf3957ce7d70dba26f225b720ede7728a442532` |
| 70 | `theorem` | [ContDiffOn.comp_contDiff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-comp-contdiff.md) | 674 | `result-track:6ab212f22e92a2acfd5d8523deb83ceb1e282ee4b795cd7032a83ab8e1adfb93` |
| 71 | `theorem` | [ContDiffOn.image_comp_contDiff](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-image-comp-contdiff.md) | 679 | `result-track:a4f7312632ded94fb8b5f48f75722c2f84ee53f49e516b00f1c9e7b54cc8b56d` |
| 72 | `theorem` | [ContDiff.comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp.md) | 684 | `result-track:2c60cae3a311816566ea15b57126496e334b53508f556d684f86272de99b0bf5` |
| 73 | `theorem` | [ContDiff.fun_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fun-comp.md) | 689 | `result-track:09e3b73914684d723a4830b8b8bb0a168a2c0e7e2c2a2123e55fe0126a9d517b` |
| 74 | `theorem` | [ContDiffWithinAt.comp_of_eq](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp-of-eq.md) | 693 | `result-track:31fd5cca4aadc70ec8f77a7f2abc38285acca06fb313b978deeb5205ae85939a` |
| 75 | `theorem` | [ContDiffWithinAt.comp_of_mem_nhdsWithin_image](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp-of-mem-nhdswithin-image.md) | 701 | `result-track:124f7e4c5f1a057d8487d387ae0dcf4649ba2786a535fa30ad743a1788c84abd` |
| 76 | `theorem` | [ContDiffWithinAt.comp_of_mem_nhdsWithin_image_of_eq](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp-of-mem-nhdswithin-image-of-eq.md) | 709 | `result-track:d249fac5b2457c0aff34223038b523471e3160943bcdbe749a86c590bd2c90bc` |
| 77 | `theorem` | [ContDiffWithinAt.comp_inter](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp-inter.md) | 716 | `result-track:d4be870db52a820c433cca23b4e0102deb27bec20824faabda0b31598c2935a2` |
| 78 | `theorem` | [ContDiffWithinAt.comp_inter_of_eq](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp-inter-of-eq.md) | 722 | `result-track:428c0dcd8385e7ed5edcd1fb7fd95588578ec080333a333dd683f036aeb06822` |
| 79 | `theorem` | [ContDiffWithinAt.comp_of_preimage_mem_nhdsWithin](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp-of-preimage-mem-nhdswithin.md) | 729 | `result-track:c11f70a1fa816f176893c5bd53444d5c6f0c5c09a22646513dbd9ec263e5a762` |
| 80 | `theorem` | [ContDiffWithinAt.comp_of_preimage_mem_nhdsWithin_of_eq](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-comp-of-preimage-mem-nhdswithin-of-eq.md) | 737 | `result-track:52af4aef463772702de0e514b82260a8d16cb7a7617696718d8019f330a7e46e` |
| 81 | `theorem` | [ContDiffAt.comp_contDiffWithinAt](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-comp-contdiffwithinat.md) | 743 | `result-track:552ddabdc9db475ea8549800e2dd0d418f0385987626c7ef042a8e8f2ae6b20f` |
| 82 | `theorem` | [ContDiffAt.comp_contDiffWithinAt_of_eq](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-comp-contdiffwithinat-of-eq.md) | 747 | `result-track:8f173da648935f6697aad5cd44174eced3c485ebe9b126dfa23aa092fc468b1d` |
| 83 | `theorem` | [ContDiffAt.comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-comp.md) | 752 | `result-track:2cc75f912e0e3bcf801aef490602f12b7c2164c3138535e5e84181f1ac592210` |
| 84 | `theorem` | [ContDiffAt.fun_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fun-comp.md) | 757 | `result-track:b42138671d3e07839489787151b4801fb69dc1c4ea4aa79a4c2a4e7fc0807cf3` |
| 85 | `theorem` | [ContDiff.comp_contDiffWithinAt](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-contdiffwithinat.md) | 760 | `result-track:23556d3d8813b9da972a7b640e3978d7e835b0ea0a0d8f717b3495dabaa2551f` |
| 86 | `theorem` | [ContDiff.comp_contDiffAt](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-contdiffat.md) | 765 | `result-track:b956d255f375101a1eb4826af96392cc3bce67927b8639bf62856ae3b5a7bd4c` |
| 87 | `theorem` | [iteratedFDerivWithin_comp_of_eventually_mem](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderivwithin-comp-of-eventually-mem.md) | 769 | `result-track:8439de7c0bdec6d80270c22a12df3118e08faf0de02368574bf8dde4e5dc3678` |
| 88 | `theorem` | [iteratedFDerivWithin_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderivwithin-comp.md) | 793 | `result-track:c3f2f6fa1cbf3855c686821706bc7e11abf9ac2595d96b755529ca9c6807100a` |
| 89 | `theorem` | [iteratedFDeriv_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderiv-comp.md) | 800 | `result-track:27b93163b0a3487095b03e01149005fa4cb054ed2edb387906ccdab76aa7c4a0` |
| 90 | `theorem` | [contDiff_fst](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fst-source-edition-2.md) | 816 | `result-track:7718e37f470ad30bce6ee2fba594d74d412abcb7c610d614d650167b3fb02493` |
| 91 | `theorem` | [ContDiff.fst](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fst-source-edition-3.md) | 821 | `result-track:b54f6003d7151f7a41772d72c1ec57d4d33b0cc26a073cccd5e3df20fab486db` |
| 92 | `theorem` | [ContDiff.fst'](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fst.md) | 825 | `result-track:2901771fe729c488008de7ea348e414f13b8aad0afd1e101a543c6e4b3d7e7f0` |
| 93 | `theorem` | [contDiffOn_fst](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-fst-source-edition-2.md) | 830 | `result-track:f9dc934fde7ffe4f2f202528665800280fc0045aada165c6aaaec814d328b524` |
| 94 | `theorem` | [ContDiffOn.fst](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-fst.md) | 834 | `result-track:ddcfa82a3c90789ffb4f7c22a8d1c867355d2a82e674111f422ecbc64dfff9e2` |
| 95 | `theorem` | [contDiffAt_fst](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fst-source-edition-2.md) | 840 | `result-track:56daee06d80285b9ba111727c000b1799207d56a0e7de82e756c44c3a4a40345` |
| 96 | `theorem` | [ContDiffAt.fst](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fst-source-edition-3.md) | 845 | `result-track:a562557f0992851de699f6453397fa79d38d209845b46846951ae54dd87d76cf` |
| 97 | `theorem` | [ContDiffAt.fst'](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fst.md) | 850 | `result-track:02c48ad3e3cd0789b189565349b10d6faa855c7fc6d7eb45d2a514a22cc6cbfa` |
| 98 | `theorem` | [ContDiffAt.fst''](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fst-source-edition-4.md) | 855 | `result-track:a7f65c4629b603f77903d8f1fa769c7de28d5fbfa9869cb2138df7c3c8e65bab` |
| 99 | `theorem` | [contDiffWithinAt_fst](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-fst.md) | 861 | `result-track:d3097282c49c5da36ff76850fa2cb2b5362d0741d5949cf6c3de61493e46c20f` |
| 100 | `theorem` | [contDiff_snd](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-snd-source-edition-3.md) | 867 | `result-track:835ca268959912ea74cfc2aa4feb0b8f7dc8578a312b734301791db70dc85baa` |
| 101 | `theorem` | [ContDiff.snd](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-snd.md) | 872 | `result-track:046c0ed792b0e0400ae460ce77cc076e82aa8dcd88355294b4f1f0e5e39b3da6` |
| 102 | `theorem` | [ContDiff.snd'](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-snd-source-edition-2.md) | 876 | `result-track:1c39c31c98f890d49c21d8b5b0f66182f2a9403a838ca344695377de4ce221d0` |
| 103 | `theorem` | [contDiffOn_snd](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-snd.md) | 881 | `result-track:a2e2c51b646175ea58757e758df8ceb99e43bf8595514ddf271e38d474c11480` |
| 104 | `theorem` | [ContDiffOn.snd](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-snd-source-edition-2.md) | 885 | `result-track:c532650fc6c1ce1b95f5623e796aa7907e2399a0ae966d7e2a03426185f60589` |
| 105 | `theorem` | [contDiffAt_snd](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-snd-source-edition-2.md) | 891 | `result-track:9098d366a8b3c73d2415be247f5a80ee7990f2ea6fe5a42b76167c56d68aaf7c` |
| 106 | `theorem` | [ContDiffAt.snd](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-snd.md) | 896 | `result-track:14de7849f0553f2f305bd255128502f4925addd6df218f4d57e971d0f12c7fb8` |
| 107 | `theorem` | [ContDiffAt.snd'](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-snd-source-edition-3.md) | 901 | `result-track:e11d51dadffafbf1be17ba835b36c60158d7c406c6bc7a18806990dac30dafce` |
| 108 | `theorem` | [ContDiffAt.snd''](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-snd-source-edition-4.md) | 906 | `result-track:e9395c064cf617b972ce4448d27c377bc161b2f4ff9a1eb7fc3c0b7381e3f0cd` |
| 109 | `theorem` | [contDiffWithinAt_snd](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-snd.md) | 912 | `result-track:d452b69cd79413a1ae08cee498971fb03c2aedb8017ec9c8ae51b4e60f03aa38` |
| 110 | `theorem` | [ContDiff.comp₂](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-source-edition-3.md) | 922 | `result-track:be2c9c56bc9b24ea13e09149a3ccfda09ba3606ebdf9aabb1fd4bff15bb55f4b` |
| 111 | `theorem` | [ContDiffAt.comp₂](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-comp-source-edition-2.md) | 926 | `result-track:b85467a326cccf48b500aad65ec5576aced41534df906100c0adcdd5c87ebb9c` |
| 112 | `theorem` | [ContDiffAt.comp₂_contDiffWithinAt](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-comp-contdiffwithinat-source-edition-2.md) | 932 | `result-track:b19b00db48f707b81533769ea460a283c69c096e546311ee1e69d87e2b452206` |
| 113 | `theorem` | [ContDiff.comp₂_contDiffAt](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-contdiffat-source-edition-2.md) | 941 | `result-track:ed6184dfb428a753e96eb37802b702220af455ca918c8867a016bb714f8d190c` |
| 114 | `theorem` | [ContDiff.comp₂_contDiffWithinAt](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-contdiffwithinat-source-edition-2.md) | 949 | `result-track:9678b97d893e6aa265ef1f29960bce9d5a4e529bddc93f13980c1c245a8b13ab` |
| 115 | `theorem` | [ContDiff.comp₂_contDiffOn](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-contdiffon-source-edition-3.md) | 958 | `result-track:e6bd6e7df7a9c667e72f41f8e85829f6711fa0a71c194af9a6f99af0e423f80d` |
| 116 | `theorem` | [ContDiff.comp₃](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-source-edition-2.md) | 966 | `result-track:93879e3e58d354a2c9f572f88b06f8ce1b70849b2d35d0ed4523e9af0449b5ad` |
| 117 | `theorem` | [ContDiff.comp₃_contDiffOn](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-comp-contdiffon.md) | 971 | `result-track:5a1d8276b7ff1e3d77a1234ebc6c5d18c6beaf43a7a04192a6073e72d35367af` |
| 118 | `theorem` | [ContDiff.clm_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-clm-comp.md) | 984 | `result-track:88723143809c945012b5fc163469bec399df4cc7927e65785fc6f0344ecebb3c` |
| 119 | `theorem` | [ContDiffOn.clm_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-clm-comp.md) | 989 | `result-track:546341a1cc183ab517ae8daa2603f06436b8c9acffd89fe743d52629b72df994` |
| 120 | `theorem` | [ContDiffAt.clm_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-clm-comp.md) | 995 | `result-track:5ae0eb1cfa9038bf78a1a546ba5d1a90fa5587207d93b48af8b941d66e7acfa5` |
| 121 | `theorem` | [ContDiffWithinAt.clm_comp](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-clm-comp.md) | 1001 | `result-track:902dd3364e7c37798d3827c1d36c19a1d97355a2ef6bb65ec98af0d7f2fe1bfa` |
| 122 | `theorem` | [ContDiff.clm_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-clm-apply.md) | 1007 | `result-track:ad9ca4271f485cafa92e019f5cb5710d981c48b939073136ddb72b1c9377a7a8` |
| 123 | `theorem` | [ContDiffOn.clm_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-clm-apply.md) | 1012 | `result-track:f8b37c058c9a945df974a53409346ec5a07f02408f0ad994e98d6350afea86a7` |
| 124 | `theorem` | [ContDiffAt.clm_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-clm-apply.md) | 1017 | `result-track:f3c3feb9bd2ef7e6ee164da5359670087a7166dc4bc7997741049baa72c3b572` |
| 125 | `theorem` | [ContDiffWithinAt.clm_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-clm-apply.md) | 1022 | `result-track:2bc39b77fd01070d5f673085b6fda8e40aef8f6a91cf77f1c5d63b4ddbe3f06b` |
| 126 | `theorem` | [ContDiff.smulRight](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-smulright.md) | 1028 | `result-track:35a005f42d3c535458fb74686a183e374d2d81d0382fd490bf44b595ad1550b7` |
| 127 | `theorem` | [ContDiffOn.smulRight](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-smulright.md) | 1033 | `result-track:a8ffc60f61291a375738c2c43498440b65db9ad0fbe09ea65fab7c49e498455f` |
| 128 | `theorem` | [ContDiffAt.smulRight](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-smulright.md) | 1038 | `result-track:28297eeaf646c126dc241c64029ca004f4444db319ac9b969662dada3f5baf7e` |
| 129 | `theorem` | [ContDiffWithinAt.smulRight](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-smulright.md) | 1043 | `result-track:3cc4c2bed338cb4120029eb7303a282e6c326260fbb730ae0e874dd91ff752ee` |
| 130 | `theorem` | [iteratedFDerivWithin_clm_apply_const_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderivwithin-clm-apply-const-apply.md) | 1053 | `result-track:77b16cef3e9cc24c7ed9497e6f4b66133884b151b51e7c11c5d3165809677fd9` |
| 131 | `theorem` | [iteratedFDeriv_clm_apply_const_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/iteratedfderiv-clm-apply-const-apply.md) | 1075 | `result-track:e77ce8124b39f41501552cd289e9824e2f49d4e4319480e307e10a4e412c487f` |
| 132 | `theorem` | [contDiff_prodAssoc](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-prodassoc.md) | 1090 | `result-track:07afe7b3dad9da4eade96260c2dfd3fc47b8b6dcb3f68cd17008f3bed49c0714` |
| 133 | `theorem` | [contDiff_prodAssoc_symm](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-prodassoc-symm.md) | 1097 | `result-track:eb403305e38fdf559bc2fdb09cf113eb5e3f06bcd600d93498f9384db5992ccd` |
| 134 | `theorem` | [ContDiffWithinAt.hasFDerivWithinAt_nhds](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-hasfderivwithinat-nhds.md) | 1114 | `result-track:922a02cbe21c5b4da974981a84321109a200151a818b7aaa276ce14bd119ee4d` |
| 135 | `theorem` | [ContDiffWithinAt.fderivWithin''](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-fderivwithin-source-edition-3.md) | 1150 | `result-track:90e4a3988e64e78a58e4d78b3ea3d2ae1ddfa8b88468454ff9369aaa711dc026` |
| 136 | `theorem` | [ContDiffWithinAt.fderivWithin'](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-fderivwithin.md) | 1177 | `result-track:1fe7b62df72f202bb99a966e4ab92fdc653f8dc202876532e590c394dc7f418f` |
| 137 | `theorem` | [ContDiffWithinAt.fderivWithin](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-fderivwithin-source-edition-2.md) | 1186 | `result-track:31d479a11fbef8107eb6766ec39a801342080ff843651cf0e3e00d97f97646c1` |
| 138 | `theorem` | [ContDiffWithinAt.fderivWithin_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-fderivwithin-apply.md) | 1196 | `result-track:859e16cb0780ee7e00a39d75827f67c6feca2746e223388d71fddc94b795aa20` |
| 139 | `theorem` | [ContDiffWithinAt.fderivWithin_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-fderivwithin-right.md) | 1205 | `result-track:1fd874a7ec9ef25fcc6d087f3146aea759ef260dc444d1a05052b5ae41fb21af` |
| 140 | `theorem` | [ContDiffWithinAt.fderivWithin_right_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-fderivwithin-right-apply.md) | 1213 | `result-track:62e8ad718bad49dcb0963da66c25fac1196f3371623a23f3eb56e5abaf0dd8a6` |
| 141 | `theorem` | [ContDiffWithinAt.iteratedFDerivWithin_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffwithinat-iteratedfderivwithin-right.md) | 1223 | `result-track:edeb906b258eea8cb22b90b34e02aa41f6b1a9fd00baec22c46e5c3f10fb5380` |
| 142 | `theorem` | [ContDiffAt.fderiv](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fderiv.md) | 1239 | `result-track:fc905243bb8bfd6c3fccc3838dcb8d1d1481742c542346941167d32e6df2d692` |
| 143 | `theorem` | [ContDiffAt.fderiv_succ](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fderiv-succ.md) | 1248 | `result-track:f4eca3280f106c2248789bb69ef45b4993c80b6b5fff151cefea2abdce3929e3` |
| 144 | `theorem` | [ContDiffAt.fderiv_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fderiv-right.md) | 1254 | `result-track:1de0f13b509935bdd1b4fa1fcdccd851fce9ddf271a81a6f99cf53694cd380a1` |
| 145 | `theorem` | [ContDiffAt.fderiv_right_succ](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-fderiv-right-succ.md) | 1258 | `result-track:8ba2f2f5ad0eff290f6d4f29ff366ffd950c4499b61eb57a6388f813721a6b45` |
| 146 | `theorem` | [ContDiffAt.iteratedFDeriv_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffat-iteratedfderiv-right.md) | 1262 | `result-track:0b580368d03013711c2b5331036fb9b01ee3e14dc2bd4583eff80907d631f654` |
| 147 | `theorem` | [ContDiff.fderiv](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fderiv.md) | 1268 | `result-track:375a79e3740ed9274fd30ee3a1710464804664a701cb548f5df03b072626296b` |
| 148 | `theorem` | [ContDiff.fderiv_succ](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fderiv-succ.md) | 1274 | `result-track:a4f8f1b11f78dab91860f8cdf1596f14d32a82a3b0294e906c2aa69ad4802ecf` |
| 149 | `theorem` | [ContDiff.fderiv_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fderiv-right.md) | 1280 | `result-track:5e84b3179f4276b6b7e1c6ba0dad44e02d96d05e795b590b6a6bcd83ba990a44` |
| 150 | `theorem` | [ContDiff.iteratedFDeriv_right](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-iteratedfderiv-right.md) | 1284 | `result-track:2b6a630c38a204714ce7e4f7bd9245ccf113f3a0b5769eebdc40bce9394c616c` |
| 151 | `theorem` | [ContDiff.iteratedFDeriv_right'](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-iteratedfderiv-right-source-edition-2.md) | 1289 | `result-track:7617a2670c4f1d7918a8e3eeaa71f49260504a550e597fe5612370fd0a7c2f5b` |
| 152 | `theorem` | [Continuous.fderiv](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuous-fderiv.md) | 1294 | `result-track:181e455bbf64edc753bc36b70aa793358e91017bca50e48656302e4d5659c4a4` |
| 153 | `theorem` | [Continuous.fderiv_one](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/continuous-fderiv-one.md) | 1300 | `result-track:26b92c1a76f5269b83b95cb47c3389a34f2497a5632ad1afcce6fb4d5577e081` |
| 154 | `theorem` | [Differentiable.fderiv_two](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/differentiable-fderiv-two.md) | 1306 | `result-track:d5e2d83b41b0323b4238074202c63060b6eeb5f1a64572c382225f47f5c1ed1c` |
| 155 | `theorem` | [ContDiff.fderiv_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-fderiv-apply.md) | 1314 | `result-track:c602da69949df34d4d2e91f9bdbc0f64c39beafbc25a7aad2086eec8f4dd9817` |
| 156 | `theorem` | [contDiffOn_fderivWithin_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-fderivwithin-apply.md) | 1320 | `result-track:f44f7d01a55f2fc6e505f0aeb8b003f05becdba9c354177169c87c163fd98930` |
| 157 | `theorem` | [ContDiffOn.continuousOn_fderivWithin_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-continuouson-fderivwithin-apply.md) | 1328 | `result-track:a2e44c781915c76ed90a627f60c8564b622ad4ab6d24d26579afde525324cfb3` |
| 158 | `theorem` | [ContDiff.contDiff_fderiv_apply](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-contdiff-fderiv-apply.md) | 1334 | `result-track:23eccc97bdab3eeb89fb803c0216817fdf75086ee9249c823220bd608a99c936` |
| 159 | `theorem` | [contDiffOn_succ_iff_derivWithin](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-succ-iff-derivwithin.md) | 1359 | `result-track:99ec19fea0c72783c040a09b243eddf4653137edcd2f59ddd1543284c44a0989` |
| 160 | `theorem` | [contDiffOn_infty_iff_derivWithin](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-infty-iff-derivwithin.md) | 1382 | `result-track:3f07bfcea71583b2beba2fea2829633192e0d687f6d5521044ea1b12b7b9ec83` |
| 161 | `theorem` | [contDiffOn_succ_iff_deriv_of_isOpen](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-succ-iff-deriv-of-isopen.md) | 1392 | `result-track:2fee86622f3e73ae04198b95adfe397df7207e361d16d84d842ec168630276a5` |
| 162 | `theorem` | [contDiffOn_infty_iff_deriv_of_isOpen](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-infty-iff-deriv-of-isopen.md) | 1399 | `result-track:e14a775dde351d681502bdd1a0ccf4920637915a4c2169704991b71be16c1cf5` |
| 163 | `theorem` | [ContDiffOn.derivWithin](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-derivwithin.md) | 1407 | `result-track:251c0728b44e414f54e73538a7c9693c77120349102f7b52294585f0c039f3f4` |
| 164 | `theorem` | [ContDiffOn.deriv_of_isOpen](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-deriv-of-isopen.md) | 1411 | `result-track:642d0bbc00ce03ddaca1948cef9c89e168ffd1c3464f6de4d985bb56a214b8aa` |
| 165 | `theorem` | [ContDiffOn.continuousOn_derivWithin](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-continuouson-derivwithin.md) | 1415 | `result-track:8e72eabca6ef36d44e39d53c9c4fc007dabb53195ac2373ebd646f15b395799d` |
| 166 | `theorem` | [ContDiffOn.continuousOn_deriv_of_isOpen](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiffon-continuouson-deriv-of-isopen.md) | 1420 | `result-track:6cd2ca20d84441a98b4f3e809178749d4d957b5df259ccf1197261386a1ab07b` |
| 167 | `theorem` | [contDiff_succ_iff_deriv](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-succ-iff-deriv.md) | 1427 | `result-track:eae660b3a05d3720f2d31b89863646bc25c79fbae4234703639a78a2a66b15d7` |
| 168 | `theorem` | [contDiff_one_iff_deriv](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-one-iff-deriv.md) | 1433 | `result-track:0794ccf2a48acfb785bd58c2705803a3a3df509678dc4863ce7150358fd2b869` |
| 169 | `theorem` | [contDiff_infty_iff_deriv](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-infty-iff-deriv.md) | 1438 | `result-track:503f6bd8d45936c455dcced763fa079c01482be1d7ea97790045861f7498b5d5` |
| 170 | `theorem` | [ContDiff.continuous_deriv](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-continuous-deriv.md) | 1445 | `result-track:2d88005d83ca5ca6dafd6f47f397467279b557dc87bc938f972c3a615da2d851` |
| 171 | `theorem` | [ContDiff.continuous_deriv_one](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-continuous-deriv-one.md) | 1450 | `result-track:e8cd4e7cfedc24735feee281c3a8d65a8867c98107c5735be490bfc196b4446b` |
| 172 | `theorem` | [ContDiff.differentiable_deriv_two](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-differentiable-deriv-two.md) | 1454 | `result-track:2094a9edb2fdf7bfb847988b66f31252deb99abe3690b20ba876de6adcd94e1e` |
| 173 | `theorem` | [ContDiff.deriv'](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-deriv.md) | 1458 | `result-track:2a3ecd14550281b7156141e3d53dd85da5df6b63c2a6adf29d2a0d97e9be1a7b` |
| 174 | `theorem` | [ContDiff.iterate_deriv](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-iterate-deriv-source-edition-2.md) | 1462 | `result-track:f438f6585f7f5e0fb93647327e825ce688164080150d6b57781deb820342f76a` |
| 175 | `theorem` | [ContDiff.iterate_deriv'](../../../../RealFunctions/ContDiffBasicNamespaced.lean/declarations/contdiff-iterate-deriv.md) | 1468 | `result-track:971d687188e57c7a9f090f18612769b64601fa04da24fbe3415a1749646335c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=409000c83899d64374a69f597e20b9a0326c5979f1589b8682b89fd46c6c73bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
