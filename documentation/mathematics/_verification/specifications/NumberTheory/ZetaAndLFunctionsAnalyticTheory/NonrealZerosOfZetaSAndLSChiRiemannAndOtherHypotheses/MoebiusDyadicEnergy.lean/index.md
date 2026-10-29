# Verification target: GRWTSK.NumberTheory.Moebius.DyadicEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bd9ace9794e4369974f39c242ad2ab9b04d368f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bd9ace9794e4369974f39c242ad2ab9b04d368f`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy`](../../../../../../MeasureAndIntegration/PrimeBlockEnergy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusPrimeFilterGrowth.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recordingPrimeBlock](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingprimeblock.md) | 15 | `declaration-track:34f8dd51c9634a07df3b9f20ca265d8fd7c341a8e2067e2daa552df1864cea7d` |
| 2 | `def` | [recordingEcho](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingecho.md) | 17 | `declaration-track:745a26cfcdbd96fe3bebc79d58b9b8355f4336f4d49df291c7b8c531c8e4a434` |
| 3 | `theorem` | [pickupPrimes_mono](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/pickupprimes-mono.md) | 19 | `result-track:e775e7d9ee391de2edf9da71dfa24414138575d963af18a6ad8ce0446a1eb9eb` |
| 4 | `theorem` | [recordingPrimeBlock_delay](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingprimeblock-delay.md) | 26 | `result-track:1152283faf23fc4f6183a60d645e5c950a6474e30989bd2e63bb74bf37153b20` |
| 5 | `theorem` | [recordingPrimeBlock_primes](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingprimeblock-primes.md) | 34 | `result-track:1babca93cbb8e63dbfe2591afe2582b4455be45a793d524835faa0f1766de141` |
| 6 | `theorem` | [recordingPrimeBlock_union](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingprimeblock-union.md) | 37 | `result-track:d332a033a3a09bb981de8e8aa83494392d03149dfe668166cd21d8081369c5f8` |
| 7 | `theorem` | [recordingEcho_eq_actual](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingecho-eq-actual.md) | 42 | `result-track:098b5695cfd87145dd963b3395ca9c00340002fb7d4daadc38ce60df820ed076` |
| 8 | `theorem` | [pickup_eq_recording_core_sub_echo](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/pickup-eq-recording-core-sub-echo.md) | 57 | `result-track:489f1f5237f2ec8702cccb391d7d732c09ef119cab3c1126cddee1a1a0d1cf22` |
| 9 | `def` | [recordingInnovation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordinginnovation.md) | 66 | `declaration-track:3b1ab53a919829776006d814cbab883f70affcde856da9f62e943f933c674daa` |
| 10 | `theorem` | [pickupEnergy_double_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/pickupenergy-double-eq.md) | 72 | `result-track:8fa7127f561c0a0fc87795aa73b4c695eb9a51bb32d7333ad6462dd731889d86` |
| 11 | `theorem` | [recordingInnovation_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordinginnovation-nonneg.md) | 84 | `result-track:6dde4bccebd7d7f1ff0f542bb74160e00e2289d1e0d9bb239466764123aa685b` |
| 12 | `def` | [RecordingScaleBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingscalebound.md) | 91 | `declaration-track:03e72e88b3d6a7069d8aaa2dbb252ff27227bfd011c2413a66619b3c3ad995a5` |
| 13 | `theorem` | [recordingScale_compensated](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingscale-compensated.md) | 95 | `result-track:819371166f8512665413082024c742eba4b5241811704258c22b210983fd3f34` |
| 14 | `theorem` | [recordingScale_dyadic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/recordingscale-dyadic.md) | 105 | `result-track:57a1d9ca6f0e5635b34c154f3f28fa5be76c474ad8ac56d0b7e6cfca4ae9d6bc` |
| 15 | `theorem` | [pickupEnergyPoly_of_recordingScaleBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/pickupenergypoly-of-recordingscalebound.md) | 123 | `result-track:6dc78a1f8c8ab2c36a33673beec364011ea9566593e01f21a8dd3c712eabe3ee` |
| 16 | `theorem` | [riemannHypothesis_of_recordingScaleBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/riemannhypothesis-of-recordingscalebound.md) | 173 | `result-track:84d41eae266db45d0bfea9dadf5b40a0ef9ed7ac82f7c76c7e0da40666183d63` |
| 17 | `theorem` | [exists_recordingScaleBound_iff_energyPoly](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/exists-recordingscalebound-iff-energypoly.md) | 179 | `result-track:eaf0286f08591a1b3ddf16ecb87270b49b8c2a6cdae731209086af7418a3564c` |
| 18 | `theorem` | [exists_recordingScaleBound_iff_p04](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/declarations/exists-recordingscalebound-iff-p04.md) | 215 | `result-track:4034040e346f638793ecf6c01d7d40f6ec3d829647011f1a9c5367842c478378` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f2632c21fe8ee5e89588b8b1db14b3bf38d8198896343b24cb19275a8e0a73a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/DyadicEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
