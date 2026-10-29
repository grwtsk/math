# Verification target: Source Attempt8 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "438eada048fc069fc692559babe44cc9346be1ef",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variantd3b47b3d6b18deb5664ba70c9804053c08eba950827d034e58360f08fd522906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `438eada048fc069fc692559babe44cc9346be1ef`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variantd3b47b3d6b18deb5664ba70c9804053c08eba950827d034e58360f08fd522906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variantd3b47b3d6b18deb5664ba70c9804053c08eba950827d034e58360f08fd522906.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/p.md) | 15 | `declaration-track:a997f5eb9f96980b491227fdc1b2d0a7d8492ac0b5b931a0eb7426ed7e3b44b4` |
| 2 | `abbrev` | [a](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/a.md) | 16 | `declaration-track:a9a54e0b9c9fcee77bc40a16f0c290e4e39502c5d8ca62c215be0a30d59d9114` |
| 3 | `def` | [firstTerm](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/firstterm.md) | 18 | `declaration-track:7b49487ec9a59fbf57d4498a5408e315582eed1264cf3e645266f0aba24bcfca` |
| 4 | `def` | [secondTerm](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/secondterm.md) | 20 | `declaration-track:bda85a74b0ca5cdc689a727abb9ec53febc3775a902049c57d65c300486645a2` |
| 5 | `def` | [firstSeries](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/firstseries.md) | 22 | `declaration-track:8c8d24043fd23b34725c0c57b4f22bdd56105ed0b73625329a73a83979ade6f1` |
| 6 | `def` | [secondSeries](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/secondseries.md) | 24 | `declaration-track:3834d2a258237ea8aea125df46524712ec21abe7d2558442b361fc0c8b38d2e1` |
| 7 | `def` | [weight](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/weight.md) | 26 | `declaration-track:4209dd1667b4d9408d01751cc015f66c2646040825734f1dad940df8c8ddb4f7` |
| 8 | `theorem` | [weight_eq](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/weight-eq.md) | 28 | `result-track:327d139eab84825824a88071f732a70ccdf9ff4729aa4bc51910a89d7a817bfb` |
| 9 | `theorem` | [weight_summable](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/weight-summable.md) | 33 | `result-track:57ef017f9c358d85d406a4d7d36dbf054494b063d2fce3b6f8530be09bf9f8ca` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/pairedterm-hasderivat.md) | 38 | `result-track:1b49b9ea041de09bb01d42faa8ba3644191eb7d6312dc950181a1816ffad880b` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/firstterm-hasderivat.md) | 55 | `result-track:681142be0d11ccbf3360bf5cca603d3d3958b460ac67053cc53845bf00e45bd4` |
| 12 | `def` | [lowerCoefficient](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/lowercoefficient.md) | 73 | `declaration-track:9d865ee25c4c52e2ed607698b339b42675c1e97bfd0af5419f504140688656fc` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/lowercoefficient-pos.md) | 75 | `result-track:edc921972642968725d0cc99ad2fa46da53f23bb8f398eb1dd1c85bb611de48c` |
| 14 | `theorem` | [rate_lower](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/rate-lower.md) | 78 | `result-track:66c601b832b54d9fc6f3d09fb5833147d57f3d82428a14b10226cc2090facd31` |
| 15 | `theorem` | [firstTerm_bound](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/firstterm-bound.md) | 87 | `result-track:de2a92b92538815dc51f11c0a9a833a552dc16a17c1750831b0022611a8db78a` |
| 16 | `theorem` | [secondTerm_bound](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/secondterm-bound.md) | 116 | `result-track:60feebfd481e0717ba5dad53711b2ec89535d534df285079876fe14677b560dd` |
| 17 | `theorem` | [firstTerm_summable](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/firstterm-summable.md) | 133 | `result-track:83735305f653400510a83f4ca57c39c196f36f94e363821a1bcdaa984ccf6330` |
| 18 | `theorem` | [secondTerm_summable](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/secondterm-summable.md) | 140 | `result-track:6d1a2f73f0abbbb4fcdb30ca373dd171cb65cc3d04f96ba89dd12ce2fd2dee86` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/actualprofile-hasderivat.md) | 146 | `result-track:924aa4360a94ecc331117686f68ca0d4aabe99b1f6fa4bd277c38b1a695c23ae` |
| 20 | `theorem` | [actualProfile_deriv](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/actualprofile-deriv.md) | 161 | `result-track:3d3da33155ad6fddf8ee038381f47b44b89ce36ed08d67ae4803389bbee34b70` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/firstseries-hasderivat.md) | 164 | `result-track:66829bb25c28b4929dd4e1de9c8e145b13dda7cadceaae0dedad08b9933ab02d` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/actualprofile-second-hasderivat.md) | 176 | `result-track:d71f4580e4420f56e2fc251da088ce11517cb01e03985de9031fe950b323a8aa` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/actualprofile-second-deriv.md) | 182 | `result-track:e72fbbbc0b1752fde03334817c1871c8dd6858893b2addbfb8345d20947c8433` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/secondterm-nonneg.md) | 186 | `result-track:13a660dfa42a65c34352995f673858fa7b950765db5277e30fb2e0156efb21c1` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/exponential-firstmoment-integrable.md) | 190 | `result-track:a6093ca233db0caaf81de62ba1eda1e78c17d514afdaf6905634ddc19401765a` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/exponential-firstmoment-integral.md) | 203 | `result-track:8515fc4e2f8f6bf6d58ed7e1c18edc7b643e0718587efa2773320f38b3d49917` |
| 27 | `def` | [momentTerm](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/momentterm.md) | 211 | `declaration-track:2447820dd7abb8c06d686be21e5068dd8c6787acbc4cc719ea52852724ae8ad2` |
| 28 | `def` | [curvatureKernel](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/curvaturekernel.md) | 213 | `declaration-track:fce923490ec060d6700d0160f1d35d56dbdbeb58b8b630e892cb6079e83f3802` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/momentterm-nonneg.md) | 215 | `result-track:5c753a9f6d9fe69bd94ebe110792ca8d22543a2699047fec88ef8499ec7b2814` |
| 30 | `theorem` | [momentTerm_integrable](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/momentterm-integrable.md) | 220 | `result-track:a6fc88503059301308595072bdebc13ad40e9cc988495eadad5833453e773f83` |
| 31 | `theorem` | [momentTerm_integral](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/momentterm-integral.md) | 225 | `result-track:97a35d234e8ae96170eec21f1024bbf09b46af48d3926cffe58a65ce01108f43` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/momentterm-hassum.md) | 230 | `result-track:fd5dd9b27e2ce3ece90dc1d0b117c4d98d6146919c331c8732c4ff1e0c9a6442` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/curvaturekernel-continuouson.md) | 246 | `result-track:e6dc81c55a22fe1c8eb7caea3e94c657643fdc5263810b3952f0201f59425b3a` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/momentterm-integral-norm.md) | 253 | `result-track:c80c67e12e5350a6b1a56e5f395488507b281003cec7b41048da018bb173e536` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/momentterm-integral-norm-summable.md) | 261 | `result-track:43ba43dfc0110ac8fe402f1dda44ea9204ab3fcb1eede85dcfd2cace714b0d99` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top.md) | 269 | `result-track:2086570f00d15f99c607e46e3a5e8dedb0c78fffc6159d949174358b62d313f0` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/curvaturekernel-integrable.md) | 281 | `result-track:edcec24ae3500446890822cf0e40dc2e3396167de708d17f66e1420dea6adf03` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/secondseries-eq-curvatureintegral.md) | 295 | `result-track:9d749096ef6e2c37ca5b12ff8b60b7d33d69571e74defec1e2ca5f070906d37b` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/actualprofile-second-integral.md) | 306 | `result-track:9af1fbc33f76acca3c8a465f9796909d4d7dddbccdfd46ac962b1959f58c36bf` |
| 40 | `theorem` | [curvatureKernel_pos](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/curvaturekernel-pos.md) | 313 | `result-track:7ef970a8e3080ae0de4d66700b03b73b1119941c93a57aa96b60287671e8978a` |
| 41 | `theorem` | [secondSeries_pos](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/secondseries-pos.md) | 318 | `result-track:17ebb668170c34ecfc8c01a5d9c6095032c001b91e48ff7587d26704e2dfa492` |
| 42 | `theorem` | [actualGamma_second_derivative](../../../../MeasureAndIntegration/SourceAttempt8SourceEdition1.lean/declarations/actualgamma-second-derivative.md) | 325 | `result-track:9fd102855ac2caac058c221f89c341c19cd2374bf2d15f690297d0f72c935ded` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed474da05a20f2ca851d06fa833dbc56601d33cdb2cf1db986f7cf7b70c226fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variantd3b47b3d6b18deb5664ba70c9804053c08eba950827d034e58360f08fd522906.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variantd3b47b3d6b18deb5664ba70c9804053c08eba950827d034e58360f08fd522906.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
