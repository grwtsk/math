# Verification target: Zero Free Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 37; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.ZeroSumLimit` — import line 38; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.StirlingVert` — import line 39; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Series` — import line 40; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 41; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Statement` — import line 42; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 43; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigO_mul_logDeriv_near_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/isbigo-mul-logderiv-near-zero.md) | 58 | `result-track:7e43d62910d9ff22e175f056cf56ab2b99c968150c85174259c29ca622acc11d` |
| 2 | `theorem` | [isBigO_mul_near_weightPole](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/isbigo-mul-near-weightpole.md) | 104 | `result-track:9658eaec9014d595ab73ae1bb59462660179f233b827cdbcdc2d6f1d2ff0d3b6` |
| 3 | `theorem` | [rectangleIntegral'_mul_logDeriv_weightPoles](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/rectangleintegral-mul-logderiv-weightpoles.md) | 129 | `result-track:04ba9c7f0ec871c57bf3b1e946fad8c9a3069b7cc7f8e99291d73bc540f77112` |
| 4 | `theorem` | [norm_rectangleIntegral_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-rectangleintegral-le.md) | 213 | `result-track:0b638c35f6d54f93ecae2aa33fe28444834e613b0b4c2e351d0a34a7066cb738` |
| 5 | `theorem` | [xi_eq_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/xi-eq-zero-iff.md) | 248 | `result-track:13523b8df3d99f6a5c2245ed94932cac516d46eac009ae0cac846907efb72798` |
| 6 | `theorem` | [xi_eventuallyEq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/xi-eventuallyeq.md) | 267 | `result-track:760db6b716c01f66446ffce0c92c4b84ed45719c0af3eb49dd203620e3df1d34` |
| 7 | `theorem` | [analyticOrderNatAt_xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/analyticordernatat-xi.md) | 274 | `result-track:df6fafba7fdce087e1384c4ca0bf98990ef2f4203931352a8e2f36342f6b7be7` |
| 8 | `theorem` | [logDeriv_xi_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/logderiv-xi-one-sub.md) | 292 | `result-track:053aacf0ca3e65ec49af5c9cc39e2e84ba0f23124379ee582a02da77a94123de` |
| 9 | `theorem` | [logDeriv_xi_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/logderiv-xi-conj.md) | 306 | `result-track:8ce6a633c96596441f5427ba003d03bb8d5df2543c974e7439abd150bab417fa` |
| 10 | `theorem` | [xi_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/xi-reflect.md) | 311 | `result-track:4ceccf8d0e180fe5212b103edd75cd31a62be8a059aec263c5d20153069fb9b7` |
| 11 | `theorem` | [logDeriv_xi_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/logderiv-xi-reflect.md) | 316 | `result-track:795c9e1f67b2e284e879cab1532fb37fdad6d05fa095aa32832b6227cc3176bb` |
| 12 | `theorem` | [differentiableAt_digamma](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/differentiableat-digamma.md) | 324 | `result-track:70c8be7aba8fb627494c620610be74ba746f0abcfdf2d3c22ff8b5c04d15dee2` |
| 13 | `theorem` | [digamma_add_nat](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/digamma-add-nat.md) | 351 | `result-track:1c012206a35bd57c5546769dbbe5cae67a8aaf2dae912baf5bc17dbcc5e9df11` |
| 14 | `theorem` | [norm_digamma_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-digamma-le.md) | 368 | `result-track:2306dd5e61512b6db852d7bd4ed59bf6a998e96269bbee01c13be0eadf3e78b3` |
| 15 | `theorem` | [norm_logDeriv_Gammaℝ_le_far](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-logderiv-gamma-le-far.md) | 496 | `result-track:d4f4e5cf3560c5fb05261621466c0fa903cffae5bdfde6a23bc546cb6881a6c5` |
| 16 | `theorem` | [norm_logDeriv_zeta_le_far](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-logderiv-zeta-le-far.md) | 532 | `result-track:f4cd0e6bd0a6a5aee12c1ddd35e71895715d63c80516c148d271bfe507cf55c9` |
| 17 | `theorem` | [norm_logDeriv_xi_le_far](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-logderiv-xi-le-far.md) | 560 | `result-track:bb3cd3dbbdb0740b07ee72724b72f0c188fb64ceb1c81b4d20fd4d7f136218ce` |
| 18 | `theorem` | [norm_logDeriv_xi_le_goodHeight](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-logderiv-xi-le-goodheight.md) | 597 | `result-track:fefdeb801f1416fdab1890655c0b8aaab05563a1f2eadf282e85a6431d4f49f5` |
| 19 | `def` | [zc](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/zc.md) | 650 | `declaration-track:071073f8aa760fac103cbfc572fbb8083ae5cc2095eee05d52d01733b0bd1233` |
| 20 | `def` | [wc](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/wc.md) | 653 | `declaration-track:0136c4fa30bcb97caa8687c7f3521ed40d9ac77bd7b8cf27c2c4286fc91ed9bd` |
| 21 | `theorem` | [zc_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/zc-re.md) | 655 | `result-track:501706d9c7f0694f1a568df42f44067b58516a6eaef9c068ad726518f89cc441` |
| 22 | `theorem` | [zc_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/zc-im.md) | 656 | `result-track:d18c906da2d88df6b706ad0f11efbf8ab0b4bf9d3910e44d7bd52da8e4bb749d` |
| 23 | `theorem` | [wc_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/wc-re.md) | 657 | `result-track:cfb93f54105266dbcd084c46657af247beba61256ad4708d53a0539dd6ab9944` |
| 24 | `theorem` | [wc_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/wc-im.md) | 658 | `result-track:a8926752863a7272695d87cbdf993dd0641acec5f5c27f1f7e0f9ba01d4d838b` |
| 25 | `theorem` | [norm_logDeriv_xi_le_border](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-logderiv-xi-le-border.md) | 661 | `result-track:7811a71658491bf643900d25c3e2aa5ea2df1c582c198e3a9cb1e0eea7654aa0` |
| 26 | `def` | [wt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/wt.md) | 731 | `declaration-track:1e4cd8337bd2c259e9594b073080b3af85bc5cbb8c485f7319506e84b0d69184` |
| 27 | `theorem` | [wt_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/wt-eq.md) | 733 | `result-track:fc6e2ce851b5d0caceac6f8ddf8a00a3020abc88dcd7b1cc614116e55fbe4952` |
| 28 | `theorem` | [norm_wt_le_border](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-wt-le-border.md) | 740 | `result-track:6a59b05f6616cfe067d205573ad2ca0b0e446b304e40660731f0d1c69417d7e5` |
| 29 | `theorem` | [square_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/square-identity.md) | 790 | `result-track:e3923b5c0b96bf5a3b6ef78aa1e3cddb2b297da48063a90c05a731d480db1486` |
| 30 | `theorem` | [tendsto_rectangleIntegral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/tendsto-rectangleintegral.md) | 949 | `result-track:4e034a49b8fd3795a9ef11713eb93cdef0d99f47bbc94ad6fcf5947221fbfd0b` |
| 31 | `theorem` | [exists_normSq_sub_ge](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/exists-normsq-sub-ge.md) | 1031 | `result-track:71b98f76a94c48a4aa69310f3d615f7a37e47d5ef4789b2dc1c5919197bd165e` |
| 32 | `theorem` | [norm_wt_le_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/norm-wt-le-zero.md) | 1091 | `result-track:ca2e28eed7655bf4f1d5d31a6a1246d213dec79fc6d384bdea430618fa4922c8` |
| 33 | `theorem` | [summable_mult_mul](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/summable-mult-mul.md) | 1127 | `result-track:5ad0c6f8ac7ba9b4accfdad8aefb49a6257e3b5dbb733d6a47963a25de1b0950` |
| 34 | `theorem` | [zero_sum_limit_gen](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/zero-sum-limit-gen.md) | 1144 | `result-track:e28f4c73b62d847ee0d86fbb62ad2eef3456dbfefab575a4bb74100ffa4fc291` |
| 35 | `theorem` | [summable_wt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/summable-wt.md) | 1204 | `result-track:19575929804196251aa7c013c1c904d5dfa52d4009618f8df04ac84f911f011d` |
| 36 | `theorem` | [logDeriv_xi_sub_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/logderiv-xi-sub-reflect.md) | 1211 | `result-track:24925e732a42d6750c41086644fc1e2dcdd87137fef6a08b06f65ae3e2daace4` |
| 37 | `theorem` | [re_one_div](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/re-one-div.md) | 1258 | `result-track:4137f279c2302c3c84e5fcc213a65c4e4c1ab92a623c2fe36156638c0e974d0d` |
| 38 | `theorem` | [re_wt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/re-wt.md) | 1261 | `result-track:7d2b13b945deebaf7e5e43685cd56e58b2b1cc222d05f366bfedf50c0722a9a2` |
| 39 | `theorem` | [summable_re_one_div](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/summable-re-one-div.md) | 1270 | `result-track:74042681362fd5fdd6aa205f29ac38ed96cb70e3131fb30e81009227222ddf3f` |
| 40 | `def` | [reflectEquiv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/reflectequiv.md) | 1294 | `declaration-track:2e9f5f0749e3de6f0d3b3e3b6e64c266537ff4cecba22f1a29ad8ba3cd126d4d` |
| 41 | `theorem` | [tsum_re_one_div_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/tsum-re-one-div-reflect.md) | 1300 | `result-track:666a2edc3e74aa624b7b66c71d3d8d192bcb35b0820aaa4ec8a4c36783a63184` |
| 42 | `theorem` | [re_logDeriv_xi_eq_tsum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/re-logderiv-xi-eq-tsum.md) | 1312 | `result-track:b552d89c001e54a4f1941c48746b0e84e11f1bb92648f58a5b6a809467356e9f` |
| 43 | `theorem` | [exists_isNontrivialZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/exists-isnontrivialzero.md) | 1344 | `result-track:6f9e47d36dd714513167387f72ac48da6527f13b08d83de9bb736acf5093a234` |
| 44 | `theorem` | [xi_ne_zero_of_one_le_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/xi-ne-zero-of-one-le-re.md) | 1361 | `result-track:bbcb5b2679844b9d8b573e98bd328e3c38f67bdd6ef40ab7c70c965857b7b2fd` |
| 45 | `theorem` | [re_logDeriv_xi_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/re-logderiv-xi-pos.md) | 1370 | `result-track:cf1bc11d3518770b2e1d2e13c5204c550cf87b2f73fc14f7ef5c369dd1b47cdf` |
| 46 | `theorem` | [xiDeriv_ne_zero_of_one_le_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/xideriv-ne-zero-of-one-le-re.md) | 1386 | `result-track:5cd26c8f008a255fddaf3d7f7aeeb87021e314d31803c1af477d537c6f3b4ab0` |
| 47 | `theorem` | [xiDeriv_ne_zero_of_re_nonpos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/xideriv-ne-zero-of-re-nonpos.md) | 1394 | `result-track:7f710df497b72f2b534c8f9e85e68302dcbbae7ff40a852700bdd37622b92074` |
| 48 | `theorem` | [xiDerivZerosInStrip_holds](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeSourceEdition1.lean/declarations/xiderivzerosinstrip-holds.md) | 1401 | `result-track:5c14ad762b1f7fd3f35d4cc69f4b8263009caa5dd6f61a1ea26cd2164691992f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ab519e52a3e6a5e880fb6166d7e18d688040e24b2268b795c4476c20c1290e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
