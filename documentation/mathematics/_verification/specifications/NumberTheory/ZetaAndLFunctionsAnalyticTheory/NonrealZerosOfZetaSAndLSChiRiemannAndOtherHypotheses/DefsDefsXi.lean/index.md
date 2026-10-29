# Verification target: Defs Defs Xi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16460e4d68013c156e91012fcdc6cb72b028ef9f",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16460e4d68013c156e91012fcdc6cb72b028ef9f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/xi.md) | 29 | `declaration-track:1230a14ecb3ee0ff1bd5cfa69105543d166515754e591e7b0b2c77b76bc67c93` |
| 2 | `def` | [xiDeriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/xideriv.md) | 32 | `declaration-track:463160b4258a2ee686ac6d0d4a304a07358c6409aa3f5257caa101d000372bef` |
| 3 | `def` | [IsXiDerivZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/isxiderivzero.md) | 40 | `declaration-track:2952141f03da35d1346f65ae95a06cf4a0b070296aa3b3cd49afdd07f822f9b7` |
| 4 | `def` | [xiDerivMult](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/xiderivmult.md) | 44 | `declaration-track:d59db30052a34a5aa2f46c0876a53f49c7416ada25ef77f7669109562cf89e34` |
| 5 | `def` | [zerosIn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/zerosin.md) | 47 | `declaration-track:18f73fefaeb93d82340a4f366ed80710f623c7e75af5be2699d10949add9ecc1` |
| 6 | `def` | [Ncount](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/ncount.md) | 51 | `declaration-track:51b3d46570c975d25ecd84f2323f6dec1a1048abf89ab35aa18e23acafc3e697` |
| 7 | `def` | [Ndist](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/ndist.md) | 54 | `declaration-track:e7a89f09a07a1d68827965791d1d2b48e49b5150076d4cf16f833577122e9bf0` |
| 8 | `def` | [N0simple](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/n0simple.md) | 58 | `declaration-track:cbb06bc02922755f374e3988b0be213a8b0bc66a479f5a2fe229e0e0f6649ae7` |
| 9 | `def` | [N0](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/n0.md) | 62 | `declaration-track:fda618dcc67c2673c21a127d15b0aeb5207bcaf1f86a275d54fbfcdc5e263136` |
| 10 | `def` | [lamLogConv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/lamlogconv.md) | 75 | `declaration-track:f04b626de9ef82573569967d4db6187bb5bfbca69febc234b96f9041f572ac4f` |
| 11 | `def` | [xiCoeff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/xicoeff.md) | 79 | `declaration-track:7da528d98bb187a041c799035719c08b26057c605488ebdd622309ca825d5438` |
| 12 | `def` | [LT](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/lt.md) | 85 | `declaration-track:fcf78bf6ddb34b802b62fac5470fa7f9ca67203d7a6d98f297b69ca1654ba5f1` |
| 13 | `def` | [Lstar](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/lstar.md) | 89 | `declaration-track:6c8d4008cf16421401d9cc38675922a21c9cd1d80ad6e4aebe3af8f8dbe3a2f5` |
| 14 | `def` | [L2star](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/l2star.md) | 92 | `declaration-track:4810e7ef122c1041580256e8bf991b94d17efdef4abeebaf3098ad4ce903bd19` |
| 15 | `def` | [Pc](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/pc.md) | 101 | `declaration-track:7510ad2011ed33834f2375c54bd44e8174f2589089c93cceb99a1ab5bee02322` |
| 16 | `def` | [P1X](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/p1x.md) | 106 | `declaration-track:e1342ff9588c86c33f45e3e6c571ed9e7a0af9c9637fbc6d3634397a4d80b9fd` |
| 17 | `def` | [nucW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/nucw.md) | 110 | `declaration-track:4091086773492071cb598533167635d1cb8a8745c302bbe2be90dbe372826a02` |
| 18 | `def` | [nuc](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/nuc.md) | 113 | `declaration-track:109c95785239bf57fd474edeed6faa702ecf3c5c4efb16dff824d030b8685715` |
| 19 | `def` | [nucZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/nucz.md) | 116 | `declaration-track:2edb1d691a25e2916b85b039a8be52787c9e312a090f28b7d5c843efd0bbb0a0` |
| 20 | `def` | [GentryCW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/gentrycw.md) | 126 | `declaration-track:c8f17a3a63558144db695a42412906dcd27fc5ce16ae0ef82f6166f33723a617` |
| 21 | `def` | [GentryC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/gentryc.md) | 131 | `declaration-track:363419197227c9934999425dbe63b2b10b860b68ae1830d3dda72a30d4944cce` |
| 22 | `def` | [GpC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/gpc.md) | 134 | `declaration-track:5c2f57afe19705da92319805302f019c077892f511d15108d5c2def3b003a727` |
| 23 | `def` | [tauStar](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/taustar.md) | 138 | `declaration-track:88c3786675e893faf46bd7c71cb8902e917cc2c54d2b0be9e9a293a343e2fa1b` |
| 24 | `def` | [Gentry1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/gentry1.md) | 142 | `declaration-track:136440017f3b856e1f7f9c7a5d8561f7bb2dcbd8225f714b65bbbaa7ce008318` |
| 25 | `def` | [Gp1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/gp1.md) | 145 | `declaration-track:a95df827cfcfa9c4346d906a335852944f1d5c2c761291464865f5124fc7b59d` |
| 26 | `def` | [D1coeff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/d1coeff.md) | 156 | `declaration-track:817c6881a5a021417095baf7d40eed7f4a258378b48845eca5949e65ac26e9a4` |
| 27 | `def` | [D1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/d1.md) | 161 | `declaration-track:d5ed5cfd466d52bcef57198e7631dd0b1f12e7d00993dc04194cd9dd6c00634c` |
| 28 | `def` | [D1trunc](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/d1trunc.md) | 165 | `declaration-track:35ec48d99e2ffa0efb280218a7ef5cfef2bd184fe64172e6af5f97c4496038a5` |
| 29 | `def` | [vConv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/vconv.md) | 171 | `declaration-track:9b897d61661449e45457bd36b614bf8d6e2166847376c8b559ec7148e0e6869a` |
| 30 | `def` | [jWin](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/jwin.md) | 176 | `declaration-track:fdf111a8f9dab63e40b8706c11958413e773881bbc5dee49f27a56fd4ce23eb8` |
| 31 | `def` | [cWin](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/cwin.md) | 181 | `declaration-track:7e61259481a74f832e099763367dd36314f998cee29c93a283a708ab5a43220f` |
| 32 | `def` | [kappaXi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/kappaxi.md) | 188 | `declaration-track:8340d3d34d4ef6a650c29978eaf7c20ae563e19e6d38513cb7527db8c1092abc` |
| 33 | `def` | [vFlat](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/vflat.md) | 192 | `declaration-track:082a78a9041fd693e9b6f48947d1ca8efa2ccc940259848cf5da839562796e16` |
| 34 | `def` | [vQuartic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/vquartic.md) | 197 | `declaration-track:b6ffee460e601082a838a7f2a8cfeca65122a2f3e56b12ead9ee034808e91e22` |
| 35 | `def` | [_root_.Zeta23.Params.phiV](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/root-zeta23-params-phiv.md) | 201 | `declaration-track:b4992867867850f48ff3423df263a1acde3d0dcbd81d008d130b9be4ca82759f` |
| 36 | `def` | [_root_.Zeta23.Params.atV](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/root-zeta23-params-atv.md) | 206 | `declaration-track:5b2817e5c6a9a39f4a874dcf844a142a4a4c87df8fbd65c09169369701c65e1a` |
| 37 | `def` | [chiFE](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/chife.md) | 213 | `declaration-track:294e791265f21eb1180c10d2254f6512058805070f753fd39fa3dd00285c2876` |
| 38 | `def` | [L2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/l2.md) | 216 | `declaration-track:fe1c407b906fb6daf9711aca2fc538adbb909acc0e63e7caf2ee5d67194f72e5` |
| 39 | `def` | [hardyW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/hardyw.md) | 221 | `declaration-track:c12b6e07b331a296543b887df7f4fd5a4f088bd23f2a42492bbda60e2c6d978d` |
| 40 | `def` | [IsWZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/iswzero.md) | 229 | `declaration-track:bbab9a69ba818cfb9c2c04cd4f7655ad5f7b5cb2f57f5333f1f804a5a3a6afb3` |
| 41 | `def` | [wMult](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/wmult.md) | 232 | `declaration-track:7e3780711a796f61376908e3b752374f365e1eaf50b9dcc12e2a74c2931ec21c` |
| 42 | `def` | [zerosInW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/zerosinw.md) | 235 | `declaration-track:76a8fa3ba75e4f5c738721f76952c036221e4c08ce65fc8c6ce0ebb0dfdfe72c` |
| 43 | `def` | [NcountW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/ncountw.md) | 238 | `declaration-track:7a83ecfc0625c19bcca310d5a38e9a7076d35ddd64f3deee786b67b31c39ed50` |
| 44 | `def` | [NdistW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/ndistw.md) | 241 | `declaration-track:5500031c12acdb0ee2baec3803cd4e1875df86d801003778e93db51ca5d94128` |
| 45 | `def` | [N0simpleW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsXi.lean/declarations/n0simplew.md) | 244 | `declaration-track:1237e33cd25b008be6d1ff6401ab2851356e972f7f80070d12e43d3d3f6e821c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50e41beeff626636f044fee8ae7d085cbba4c0381ed4a6e6d2a0bf587cd8e035 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
