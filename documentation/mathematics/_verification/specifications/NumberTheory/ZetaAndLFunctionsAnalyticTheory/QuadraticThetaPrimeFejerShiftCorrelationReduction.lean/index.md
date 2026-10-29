# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerShiftCorrelationReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d39630a6d426d2110328af98a5034c57a1c33f9",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d39630a6d426d2110328af98a5034c57a1c33f9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOffDiagonalReduction`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fejerOctaveIndexSet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejeroctaveindexset.md) | 59 | `declaration-track:7d8552ea3334fe2e069418d1a7f1ee625035ba853c5bbb20733b26390e6efe5a` |
| 2 | `def` | [fejerPositiveOffDiagonalPairs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositiveoffdiagonalpairs.md) | 63 | `declaration-track:1dd0662f94620d1b7e750cc929c3436f2119a7afb56a7d5f83902754a9c8b4cd` |
| 3 | `def` | [fejerNegativeOffDiagonalPairs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejernegativeoffdiagonalpairs.md) | 68 | `declaration-track:24cd4dfde61db672c1e22d6ed63402006e5aa58813822b9cef96d0435a897479` |
| 4 | `theorem` | [mem_fejerPositiveOffDiagonalPairs_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/mem-fejerpositiveoffdiagonalpairs-iff.md) | 73 | `result-track:e68e72c6b3f8599fb4cd517f428fdfb08c47d0b13008666217e05c13c9cb0706` |
| 5 | `theorem` | [mem_fejerNegativeOffDiagonalPairs_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/mem-fejernegativeoffdiagonalpairs-iff.md) | 91 | `result-track:656ccf91080e5af8d6643684cef46a08dc52ca6aa504fbbbe97bc69607fce8ba` |
| 6 | `theorem` | [fejerOffDiagonalPairs_eq_positive_union_negative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejeroffdiagonalpairs-eq-positive-union-negative.md) | 110 | `result-track:47ee2c4844292c45e4ddc0774d0345edbf343f7787364d756895e1b0ac916b4e` |
| 7 | `theorem` | [fejerPositiveNegativePairs_disjoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivenegativepairs-disjoint.md) | 140 | `result-track:0debcb6cdbef880fa04543e0b28ea4a7cb75750c1c5ce64ad634898367c4a56c` |
| 8 | `def` | [fejerNegativePositiveSwapEquiv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejernegativepositiveswapequiv.md) | 155 | `declaration-track:d9df1034067ce9694da8830be77e2703f3bdeaedbedcdf76b3c5e4fe56271561` |
| 9 | `def` | [nonAliasingFejerPositivePairCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerpositivepaircorrelation.md) | 181 | `declaration-track:c1625c05a5fbce330182f0e750dd89799ad49e10e7a7044cc490e5f6748d0cf0` |
| 10 | `def` | [nonAliasingFejerNegativePairCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejernegativepaircorrelation.md) | 188 | `declaration-track:53621bdbb55f104e518d3aa08ed0414ddacc87703cee560eb74924dde900a42e` |
| 11 | `theorem` | [nonAliasingFejerNegativePairCorrelation_eq_positive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejernegativepaircorrelation-eq-positive.md) | 196 | `result-track:53249ec511f1b348fc4249f2200bd5466962834b9ef7fbcb81926eecdaffac73` |
| 12 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_offDiag_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerquadraticoffdiagonal-eq-offdiag-sum.md) | 218 | `result-track:5745f7e19e3d3d97586413377d5221d3e0b8c74ae7458fe1eb6f63d26d1e9212` |
| 13 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_positivePairCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerquadraticoffdiagonal-eq-two-mul-positivepaircorrelation.md) | 238 | `result-track:0cad11ee428f415d57b160f6fe673a47926b23f87aef6fd4ee27651181ecd3ba` |
| 14 | `def` | [fejerPositiveLagSet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivelagset.md) | 263 | `declaration-track:f8df5872a567c16479eaa8c8634b6bbe69d55d751b33fa8d03b682a6c103cf0a` |
| 15 | `def` | [fejerPositiveLagFiber](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivelagfiber.md) | 267 | `declaration-track:6de03ab9e6a0569cc9d59e3c86ae5149889aa6a4c291566bc9dfc621cbe7a542` |
| 16 | `theorem` | [mem_fejerPositiveLagFiber_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/mem-fejerpositivelagfiber-iff.md) | 273 | `result-track:7aede165f9d4dd1ea20718005f6090479f375abfc220139fd690e6cc050d3988` |
| 17 | `theorem` | [fejerPositivePairLag_mapsTo_Icc](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivepairlag-mapsto-icc.md) | 293 | `result-track:642cd93d747a00d0d135242c6a830400b9a9250e47548d2c5e6f4f6290d58b74` |
| 18 | `def` | [nonAliasingFejerLagCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerlagcorrelation.md) | 305 | `declaration-track:a1306eb2124b8105027e9af386d56d458175a6c1809917d378b6cd66592700b0` |
| 19 | `def` | [nonAliasingFejerShiftCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejershiftcorrelation.md) | 312 | `declaration-track:e7c01022e3811992a742db83556fce5a7aa04270f2388ded86bcd661f9e01bfa` |
| 20 | `def` | [fejerPositiveLagFiberEquivIoc](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivelagfiberequivioc.md) | 320 | `declaration-track:859cbcb30304ec8ba1216ab104a5a6b869a220f3761ee54193b47d4a3e6f40e6` |
| 21 | `theorem` | [nonAliasingFejerLagCorrelation_eq_shiftCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerlagcorrelation-eq-shiftcorrelation.md) | 355 | `result-track:503126f2d81f2cb3b75088dc7c7a083c5cd676e7a9a8c32d4d7622ec4860a641` |
| 22 | `theorem` | [nonAliasingFejerShiftCorrelation_eq_weighted_centeredPrimePair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejershiftcorrelation-eq-weighted-centeredprimepair.md) | 384 | `result-track:a38007f4aa7baa17fb0b29b992ce79bee4b6afbfad2c139b067bd143da3227b5` |
| 23 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_sum_lagCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerpositivepaircorrelation-eq-sum-lagcorrelation.md) | 399 | `result-track:8c496a4ff9733f47032163a769937aa6ffec148ef60e7db9429f221e38a87e00` |
| 24 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_sum_shiftCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerpositivepaircorrelation-eq-sum-shiftcorrelation.md) | 411 | `result-track:7da0db6219c2f45be8866756cb4680eb7af793f1689ea27fdbe30f706d7b9c1b` |
| 25 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_sum_shiftCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerquadraticoffdiagonal-eq-two-mul-sum-shiftcorrelation.md) | 422 | `result-track:5b7537fd86b149363771d9378fce95756f06f2c4feb62387736a40c4f6523738` |
| 26 | `theorem` | [fejerPositiveLagSet_card_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivelagset-card-le.md) | 432 | `result-track:64255d2eb0665e483b8f52bfd8fd65abcdaecfa91704f5c6fadc5ca72a0eaf44` |
| 27 | `def` | [SevenEighthsBoundaryMinimalExactShiftCorrelationBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/seveneighthsboundaryminimalexactshiftcorrelationbound.md) | 443 | `declaration-track:2f471ddd7056ba0c06245faf4eb3de537cf00c2dc4bcfcec793359ff313f93d6` |
| 28 | `def` | [SevenEighthsBoundaryMinimalExactShiftCorrelationAbsoluteBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/seveneighthsboundaryminimalexactshiftcorrelationabsolutebound.md) | 463 | `declaration-track:b7c1f958331c1d7e13c3656fcf24b03682ffcfd26f4f89637d05153d1d72059e` |
| 29 | `def` | [SevenEighthsBoundaryMinimalPointwiseShiftSquareRootBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/seveneighthsboundaryminimalpointwiseshiftsquarerootbound.md) | 483 | `declaration-track:b73d8e4fad71b55ee31a9b73371f5c2010555667614321b204995df48f1ec22a` |
| 30 | `theorem` | [absoluteShiftCorrelationBound_to_exactShiftCorrelationBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/absoluteshiftcorrelationbound-to-exactshiftcorrelationbound.md) | 503 | `result-track:bb80de8880b750734638148f7eaabddb77d3c10aa915e304ecbb269fb0e8ea1e` |
| 31 | `theorem` | [pointwiseShiftSquareRootBound_to_exactShiftCorrelationBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/pointwiseshiftsquarerootbound-to-exactshiftcorrelationbound.md) | 533 | `result-track:bfd2fa4c053298f642526122ac1bebcc414a4f7f06edfbcc5e5f0ca1fc583b64` |
| 32 | `theorem` | [exactShiftCorrelationBound_to_signedOffDiagonalBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/exactshiftcorrelationbound-to-signedoffdiagonalbound.md) | 610 | `result-track:55c8aa546a8cd512afaca4b5b24e71d3aa593e9b97d49a673d0ca9032653a67d` |
| 33 | `theorem` | [exactShiftCorrelationBound_to_partialDiscrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/exactshiftcorrelationbound-to-partialdiscrepancy.md) | 641 | `result-track:afe0837afecd16e33dc3471d1bcd6cafa8f8afc4587d440f3d86c33b517909ad` |
| 34 | `theorem` | [lagCount_add_pointwiseSquareRootExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/lagcount-add-pointwisesquarerootexponent.md) | 655 | `result-track:2c02cba031277166deb08a109da81899c737464607e2608efa026f860cb445b0` |
| 35 | `theorem` | [threeHalves_lt_trivialPairCountingExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/threehalves-lt-trivialpaircountingexponent.md) | 661 | `result-track:d12c21b5c91465ad36d3fb48d77eef190167023094566072fa32c36cd5661b0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7341780bb4f9994e5f090cb1dfd5e0acd44c9c899927da0acad4b8d683f3617b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
