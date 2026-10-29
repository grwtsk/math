# Verification target: Analytic Prime Walk Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61489a745c2332359d3bb8a035b37b5ea11b6932",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61489a745c2332359d3bb8a035b37b5ea11b6932`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeCharacter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/conductorthreecharacter.md) | 95 | `declaration-track:cb266c71bcc146f3b16755ddf0ceac104c60ab7bbb745199ba3eae196f33d6db` |
| 2 | `theorem` | [conductorThreeCharacter_ne_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/conductorthreecharacter-ne-one.md) | 100 | `result-track:c3588ca50618a394409affe47e3f8af1400f229d67715bfa5f014bfbf87e0733` |
| 3 | `theorem` | [conductorThreeCharacter_isPrimitive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/conductorthreecharacter-isprimitive.md) | 107 | `result-track:98b28b586df1e484ccb9a0309e02cc260e2d93b78871473476d1b49cb98f553e` |
| 4 | `def` | [GRHForConductorThreeCharacter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/grhforconductorthreecharacter.md) | 120 | `declaration-track:23c3dfbc6699746a43da9b668110da5a002a33292c814ff687357f0ff5a08089` |
| 5 | `def` | [conductorThreePositiveZeroOrdinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/conductorthreepositivezeroordinates.md) | 128 | `declaration-track:7048fbd8864579a2d0813358256d556e18969129c1ff589927a831b30d15bf94` |
| 6 | `def` | [ConductorThreePositiveOrdinatesLI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/conductorthreepositiveordinatesli.md) | 138 | `declaration-track:646eb9f40543108a7621f19c5fce20c26ec9d33f7705e4aaeb9d07263860ea12` |
| 7 | `def` | [ConductorThreeGRHAndLI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/conductorthreegrhandli.md) | 146 | `declaration-track:b83393a4c881dc6093ea81468470000d33daf0ac4da7795165f7db1eb49e6eac` |
| 8 | `structure` | [ResidueSixCounts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/residuesixcounts.md) | 155 | `declaration-track:8ec8735c3b68a8498ef2af339efe1ee31f029797eae26a1e365586c45f5b4f1d` |
| 9 | `def` | [eligibleCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/eligiblecount.md) | 161 | `declaration-track:5f4ce9417ca0eaecb71fd7e41cc71f83103b9cac79ae214e7baa1621d43c5857` |
| 10 | `def` | [countDifference](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/countdifference.md) | 167 | `declaration-track:19a2f6445a4aefe3a8b3d8a84062d25d76fbb30205af0cf9aa8357e7ce590e4d` |
| 11 | `def` | [HasSqrtLogCountDifferenceBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/hassqrtlogcountdifferencebound.md) | 174 | `declaration-track:2837edf98e9b856ca90616125275434f088a339f2efaf0b2e06277800e38dde8` |
| 12 | `def` | [HasInversePNTReindexBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/hasinversepntreindexbound.md) | 184 | `declaration-track:44fcf27ee6a499f1f2328a1e7bd0c184b5de251264190986702ab7f60b118c7a` |
| 13 | `def` | [logCellWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/logcellweight.md) | 192 | `declaration-track:781501b2440cb8d9cc669ef10f048fa397764034743a0f27febad4897bad2c99` |
| 14 | `def` | [negativeLogMass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/negativelogmass.md) | 199 | `declaration-track:b51d9d9eb1f61a922458af9cecb37d7a22dfc21b09dc676be1abf89dcad3b586` |
| 15 | `def` | [negativeLogDensityAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/negativelogdensityat.md) | 205 | `declaration-track:f40e25553481b605bdbc7e85c1a8b6924a7ebfddb3e441595d7181aa9b58b02e` |
| 16 | `def` | [HasNegativeLogSignDensity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/hasnegativelogsigndensity.md) | 213 | `declaration-track:c44506c04e5a50276a23af83fb264c387bfc9f842823e0f22da1048101c91d87` |
| 17 | `structure` | [AnalyticBridgeHypotheses](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/analyticbridgehypotheses.md) | 221 | `declaration-track:371022497324e9b09610353cda4ff3425197c088a2263842b16727a775f62bb9` |
| 18 | `def` | [empiricalWeightAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/empiricalweightat.md) | 256 | `declaration-track:6d5d4523cad45e869ef96884c98079fa1671f23029bbb455704a23b546032f39` |
| 19 | `def` | [errorOperatorAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/erroroperatorat.md) | 263 | `declaration-track:567fc5d6d80831733c5bb221d734a00d0827fdf20b22c250dce43378ae7d0644` |
| 20 | `theorem` | [centeredWeight_empiricalWeightAt_eq_delta](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/centeredweight-empiricalweightat-eq-delta.md) | 270 | `result-track:04c4fd5fc35a1f102b2e07059e26ed5e2b8cb79d718a50a763496ec2db3b399d` |
| 21 | `theorem` | [signedObservable_errorOperatorAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/signedobservable-erroroperatorat.md) | 287 | `result-track:cb7346159c0b0f2ca42b27b6db504dde9060c813fdef597926996ba6299066b3` |
| 22 | `theorem` | [errorOperatorAt_normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/erroroperatorat-normsq.md) | 297 | `result-track:f354a8c6d01d198640c3447e732e30c5b7e5a514aed25a88ce52cd9162fa4149` |
| 23 | `theorem` | [delta_at_eligibleIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/delta-at-eligibleindex.md) | 307 | `result-track:fb7f1b5af8a35cda36f0787b563df1c106e1a3506b9575e34cf32629177589e0` |
| 24 | `def` | [frobeniusPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/frobeniuspairing.md) | 324 | `declaration-track:611fb47165300412e10f32368bba16ba0f1713fd5f924a0a0f18c66c2da92594` |
| 25 | `theorem` | [frobeniusPairing_eq_trace_transpose_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/frobeniuspairing-eq-trace-transpose-mul.md) | 331 | `result-track:bd741c0470cc09acd18fb230e6e0260257361c34614bf7ca6a71b3f116919c0e` |
| 26 | `def` | [restrictedGeneratorDifference](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/restrictedgeneratordifference.md) | 348 | `declaration-track:2ab39fb5287c58a305d291ce17cb5e9fdabe93ee2e2731607ca37412a8b60c7d` |
| 27 | `theorem` | [restrictedGeneratorDifference_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/restrictedgeneratordifference-tomatrix.md) | 353 | `result-track:290ad5d4e3b9f87a394179da46ccfbb73983e27b73d67df9c6cd4124222f35a8` |
| 28 | `def` | [orientedEndTrace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/orientedendtrace.md) | 367 | `declaration-track:490fb4f8f19f694d3ddc26dce2cd4c04399db20dfc27d714e2bebba02e8f6917` |
| 29 | `theorem` | [tracePairing_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/tracepairing-conj.md) | 374 | `result-track:79c5347ff036354399af7703ee43a9d9f47c15028dbe3b5cd9aae40689f63160` |
| 30 | `theorem` | [orientedEndTrace_centeredWeight_generatorDifference](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/orientedendtrace-centeredweight-generatordifference.md) | 388 | `result-track:dea88ae8c4847ad31e21f72d1bfaba278f3e3e5e3ff6bb6b8ec4e04f49be60ec` |
| 31 | `theorem` | [generatorDifference_frobenius_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/generatordifference-frobenius-self.md) | 410 | `result-track:47c39a6f298fffd0ec3af8697656a9c654e340046c9f2763849942eca1b3d007` |
| 32 | `def` | [orientedFrobeniusProbe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/orientedfrobeniusprobe.md) | 421 | `declaration-track:45507d3b61386c73cad4e1fb1bd76dc273055d4257cabf6621df3577e4cde803` |
| 33 | `theorem` | [frobeniusPairing_orientedProbe_discrepancy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/frobeniuspairing-orientedprobe-discrepancy.md) | 426 | `result-track:a30daaaaaa18dfd375e232476742d9666a0a8ec774099a8043daf0e52ffe7dc8` |
| 34 | `def` | [oneThirdGeneratorDifferenceProbe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/onethirdgeneratordifferenceprobe.md) | 440 | `declaration-track:ec585c89bb06d395d5d6c7e6dbdf4ca6d99623ed56618a2df5ddb18cfda8ca0d` |
| 35 | `theorem` | [frobeniusPairing_oneThirdProbe_discrepancy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/frobeniuspairing-onethirdprobe-discrepancy.md) | 446 | `result-track:83d0283b39bed3138544bd68c098e548967cfb00546f7f39e98efe11dcc24065` |
| 36 | `theorem` | [frobeniusPairing_errorOperatorAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnalyticPrimeWalkNamespacedPublic.lean/declarations/frobeniuspairing-erroroperatorat.md) | 459 | `result-track:ea95ac96a1853d8e1f0ad3a3e30fe55e2ac952592a4759920bb6cb158d4b66df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7aa7c96e740beb48785344b6d3e0156763c3cb2c3fad8ad195edb07cb0dad7fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
