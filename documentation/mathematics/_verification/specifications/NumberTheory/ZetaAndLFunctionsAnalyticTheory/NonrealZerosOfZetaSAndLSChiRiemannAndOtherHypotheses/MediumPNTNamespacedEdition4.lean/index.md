# Verification target: Medium PNTNamespaced Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0521e46e401f1ba077b794c7548f8221dc138003",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0521e46e401f1ba077b794c7548f8221dc138003`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MellinCalculus` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ZetaBounds` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ZetaConj` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.SmoothExistence` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinInversion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/psi-eq-sum-range.md) | 41 | `result-track:7240aae9410a72e4616cb2ff8280bebba7459c31f01e3cfaabc6e8382705f81d` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/chebyshevpsi.md) | 57 | `declaration-track:99ab799ce1d51fc9cdaa398690c2474f51d887d5a0f70725615c422100604410` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/logderivativedirichlet.md) | 72 | `result-track:c323acc1e5b68fde9c20233b62903444c1235f02aa0445b640f64295ab117bc4` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevintegrand.md) | 89 | `declaration-track:141cc61d17e9a7882462591303012361a41ee57244b0bf6d9db9e69a5bf46ef3` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshev.md) | 104 | `declaration-track:7d57ed8319862f5dc5ded42503efd6b159d764fcf8b88a6379031490cf807f82` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevintegrand-conj.md) | 110 | `result-track:92132b0941e97d42f34cf0964ffe66e775c82a6b9f57818c617376d6ca62f4f4` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevdirichlet-aux-integrable.md) | 151 | `result-track:01394e5d7a82c356e88b7f69080d32120b51d3327ef3c4d4491719ec237c935f` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral.md) | 199 | `result-track:9673282787d51fb9af1fda07f4fcf5d329c6154796379592b07f6bd7e35f65c8` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevdirichlet.md) | 291 | `result-track:2a1b5ed20bb6b60de0e8dec6071cef4add748d8b3dafaa5e8540a9ebd3c16417` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevclose-aux.md) | 394 | `result-track:d72b8dfa2fd1610b08a59965ad57a96703ecaa1b684cb97261b30ab4e7fe7ccd` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevclose.md) | 716 | `result-track:72feab25353d6bff48a9570aea32176e718a6ee648e439ac45dcab571d7621ba` |
| 12 | `def` | [I₁](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-7.md) | 844 | `declaration-track:b8c4ff3e3e88559aabbb2f8558880689ff33662805dbb1d716a66165fb72667a` |
| 13 | `def` | [I₂](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-8.md) | 861 | `declaration-track:cfcd7ea6147d7eecdef24b876f12fc6bb59358a38198efd533fbd595bc736fa5` |
| 14 | `def` | [I₃₇](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-10.md) | 878 | `declaration-track:f8919fd719fa230d21ead22a735a6524927a7aeeaa414338b329fce2e7e70196` |
| 15 | `def` | [I₈](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-4.md) | 895 | `declaration-track:31b3a885881f5ec97911f42460a218336ba88577cd2deb6070483102fe93a698` |
| 16 | `def` | [I₉](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-3.md) | 912 | `declaration-track:2810dd522d6c39b14107a3065bc70b59948662718e65809986905e491d29b64c` |
| 17 | `def` | [I₃](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-5.md) | 929 | `declaration-track:85dd906e389919f97c16b3da2d506c4abfa43eb0883be60916d22fae9cb3ab2c` |
| 18 | `def` | [I₇](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-6.md) | 946 | `declaration-track:a346d4dc4ba371f2445bf3ac56396d445ac7a2330a9b6fa9fd4896029e212694` |
| 19 | `def` | [I₄](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-2.md) | 963 | `declaration-track:24dac5dd3ca7217c02e9ae2f5dbc4449982fe0634a62c07c32df9fd1f2de1f88` |
| 20 | `def` | [I₆](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i-source-edition-9.md) | 980 | `declaration-track:d6486f6e682f999b6d63857f15cb9a8021c60f821bdea146587854620ce2def4` |
| 21 | `def` | [I₅](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i.md) | 997 | `declaration-track:20462f3224bd39604b69c97c8570e914e05949cd6d084a95f0ebf02843e56857` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/realdiff-of-complexdiff.md) | 1001 | `result-track:4cddc0d226f8fb66108fba25e015d39f55504ecfa83efbbc7dade5cb0dd0341a` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/logderivzetahasbound.md) | 1007 | `declaration-track:bfd28db4434648648f430c1e670f3211422181928e841ef935cad8917e9c05b3` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/logderivzetaisholosmall.md) | 1011 | `declaration-track:94f08955e69e8fdda5715465b9cf8cfc29fbb11bac80625ae30834a42b86f88c` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit.md) | 1015 | `result-track:cb7f93bb0fdee794cdf646b427ef61e4fd4258613e9c9ed6f482ef5baa7e3cc9` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines.md) | 1033 | `result-track:c3dd4f722b067543160e6491b3013ce9927c12d0a5f925cb13142e810426dd68` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevpull1-aux-integrable.md) | 1056 | `result-track:f6a9e593af300411a190c92d155abe841464bf00604e9b5a1ad62b2f3515b49d` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/bddaboveonrect.md) | 1123 | `result-track:ee1ffcd2f5a799cb150fcde02aaec1dbb09903b40996a0adf1a34bb0cf7f34ea` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevpull1.md) | 1142 | `result-track:4eaff38b965abd832ff6b54570c2d7a87aaf913e5ff7a658a04b03228dc87c80` |
| 30 | `lemma` | [interval_membership](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/interval-membership.md) | 1313 | `result-track:8f9e192778669e9b982307ccf4f39d1c2e446b4624fee21ac336e46ee76c2a95` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/verticalintegral-split-three-finite.md) | 1322 | `result-track:61b31c5c12a1f614365d84eeee280c0f37e50ee37e40485d09d09d655fe46da2` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/verticalintegral-split-three-finite-source-edition-2.md) | 1338 | `result-track:a667a8b38aa870b9be18331b472ee14db64dbaea2fea9be2c2f9f9992cf8739d` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevpull2-aux1.md) | 1355 | `result-track:dd0efb1f7529856532c3702a860391bd32c1cca23db09d60f112b14f18636fd9` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/smoothedchebyshevpull2.md) | 1390 | `result-track:7bc16f39cbbb017ac8bd7d07afc026fc5aa43f20c09f647b85ec7d4e989259f5` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/zetaboxeval.md) | 1593 | `result-track:2290bc1ae6d50052c2eb2298df1436face1c925c2a000a142434dc8c0729b408` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/poisson-kernel-integrable.md) | 1613 | `result-track:c9981714f51b62b88361bdc018762cfc940f9443d1520ce867ef463e4f3fa313` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/ae-volume-of-contains-compl-singleton-zero.md) | 1628 | `result-track:7a85a7f218685d3a50120e8a2ede52672e6da953773f4093c6472213a6cce8be` |
| 38 | `theorem` | [integral_evaluation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/integral-evaluation.md) | 1657 | `result-track:41f71ef174ad380449b064563e6db3886b09a016db1d805eb26cc7f9d08ffd57` |
| 39 | `lemma` | [IBound_aux1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/ibound-aux1.md) | 1749 | `result-track:6f8e3c5241b02f2e45533b8333cd65c57f2c824c297b7b2820bb126ee840a207` |
| 40 | `theorem` | [I1Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i1bound.md) | 1836 | `result-track:a6a050e2642cb691e962934736b05ad9d88176e476e24a003508eda18f7e956a` |
| 41 | `lemma` | [I9I1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i9i1.md) | 2148 | `result-track:9ee96183df6f644b698547df63693099717d13882252f87616815c1d4ab94cb1` |
| 42 | `theorem` | [I9Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i9bound.md) | 2162 | `result-track:84ac3fcd17b8b1695868e80fa243014d06c314fc3593b16922e5a57db5009d47` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/one-add-inv-log.md) | 2178 | `result-track:88552f13ae7e593b608843d70bb820178b2998afad5a2263133462d8df8c2047` |
| 44 | `lemma` | [I2Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i2bound.md) | 2219 | `result-track:fdeeb980c799aa115aae5eddedad7af1a038fd1a0bea585129719abd2e27e443` |
| 45 | `lemma` | [I8I2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i8i2.md) | 2376 | `result-track:79425e9642f6c36e9b595a047d313e16d2ccebb4f6858ddd7a03a9f92df04494` |
| 46 | `lemma` | [I8Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i8bound.md) | 2404 | `result-track:7b296b00fc9254227ffffd9b4142653815ba21c6aa004f42a9dc82c42ab42b23` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/log-pow-over-xsq-integral-bounded.md) | 2432 | `result-track:1682a4c8e7fd713330d4ecda5a92992b7bfbd278d88f3a1cd9cbfd6407666339` |
| 48 | `theorem` | [I3Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i3bound.md) | 2717 | `result-track:fb049778fa68ff96b83f145fc3019a27bfe6b357e7e21f4d04c0547663dcf739` |
| 49 | `lemma` | [I7I3](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i7i3.md) | 2988 | `result-track:979e4ff4be1dceda618e4e0a0ffbf86f7c853e12608e30a3fb774d35f77e14da` |
| 50 | `lemma` | [I7Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i7bound.md) | 3002 | `result-track:b4e916f120c022d95a76015ed9105a0b2caee69b9be9bcb2db83f69434089516` |
| 51 | `lemma` | [I4Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i4bound.md) | 3036 | `result-track:ab7353254409481966a4997abe12a4e4e839e3fa2d260819da04cdb8d9db4c23` |
| 52 | `lemma` | [I6I4](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i6i4.md) | 3408 | `result-track:214b268c25542eca8a9bf47d973e42d469502a10d862c88dfbadbfb9cb42df8b` |
| 53 | `lemma` | [I6Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i6bound.md) | 3422 | `result-track:65792caade7219dd73d371660cea3c407cecae14fa706c7708dcae292e856f1a` |
| 54 | `lemma` | [I5Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/i5bound.md) | 3453 | `result-track:b0058a7b921a49a332c525f64ba9de105da265d9c56216f0b8a9292958c2649b` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/logderivzetaboundedandholo.md) | 3603 | `result-track:b2fb9c1d3f7ddaec36a9ea0b5eaace1bac81adc6202fd3965b76347ceb4bdcaa` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/mellinofsmooth1cexplicit.md) | 3629 | `result-track:e49d82fd0235ba67f8918d14e1b6b243dd32f9894b8c1034961783c936e71553` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/x-to-inf.md) | 3649 | `result-track:a9e4e8e85b3cf7e9c88dae5d235d3c36e83f8a807d17b62923dce7ce986dea8c` |
| 58 | `theorem` | [MediumPNT](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespacedEdition4.lean/declarations/mediumpnt.md) | 3722 | `result-track:17d252eb269cf54e8e81d4d2ea8c0e80c037b26279dadbf9c24e9a9d6c199525` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c57ea07d2c31ecab0c6b84533a0bdbc2e9684fdd86f3be01fc774cd40b885d8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
