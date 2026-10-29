# Verification target: Energy Abscissa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a107f60cf1a498be022f6547623f15b01e840c82",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a107f60cf1a498be022f6547623f15b01e840c82`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PolynomialSubexponential.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.ExponentialEnergy`](../../../../../../MeasureAndIntegration/ExponentialEnergy.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound`](../../../../../../MeasureAndIntegration/UnsignedEnergyBound.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PickupEnergySubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergysubexp.md) | 22 | `declaration-track:b591693f719e7da518fba9d4f26d8f48fdccd2afab3889342af759bdb9f644cc` |
| 2 | `def` | [PickupCrossSubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupcrosssubexp.md) | 24 | `declaration-track:f82bdfb277d7243ebd2ce052fa92b2f89f6ff78fa5d263f5731b2ac88e0a6c99` |
| 3 | `def` | [PickupWeightedEnergyAll](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupweightedenergyall.md) | 26 | `declaration-track:23d7c359e90d60cc02f09ec42f1b1754472c1f4bfe0f8fd7f15d35e8836a0d68` |
| 4 | `theorem` | [pickupEnergyPoly_subexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergypoly-subexp.md) | 30 | `result-track:f9dd147386e97ab479c1d54dda61c645549133cf57c0abbe064b9d5d14736464` |
| 5 | `theorem` | [pickupCrossPoly_subexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupcrosspoly-subexp.md) | 34 | `result-track:50b8f37613c2f44d5f98d3d63e2ccc5dadc3978bbd57d18673c18411825fa6a9` |
| 6 | `theorem` | [pickupCrossSubexp_iff_pickupEnergySubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupcrosssubexp-iff-pickupenergysubexp.md) | 39 | `result-track:8397554a1783fed373836b637f7f3d1ac933fec6550152d5be56a073d689ea3d` |
| 7 | `theorem` | [pickupWeightedEnergyAll_of_subexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupweightedenergyall-of-subexp.md) | 56 | `result-track:2c06b0873ea86ebacf45f133fa8679bd693250757f95239e7db8815921358e53` |
| 8 | `theorem` | [pickupEnergy_le_weighted_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergy-le-weighted-integral.md) | 63 | `result-track:1b200a83948f8d51aec54a843731316066c9168664023c1916e45d54dcf346df` |
| 9 | `theorem` | [pickupEnergySubexp_iff_weightedEnergyAll](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergysubexp-iff-weightedenergyall.md) | 95 | `result-track:ca82c3638047052894ec144295f988b95941896130ec663e41e385e2a088c952` |
| 10 | `theorem` | [pickup_tilt_integrable_of_weightedEnergyAll](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickup-tilt-integrable-of-weightedenergyall.md) | 104 | `result-track:9dfeeee400c21c65a0e04e53d2ed04e9894b518bce6ddd1b6d97394b69a1d6b1` |
| 11 | `theorem` | [riemannHypothesis_of_pickupWeightedEnergyAll](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/riemannhypothesis-of-pickupweightedenergyall.md) | 121 | `result-track:df83933c42a8cf83f266c7f9423eee1380f4d44b63c0ba1132230624c4944514` |
| 12 | `theorem` | [riemannHypothesis_of_pickupEnergySubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/riemannhypothesis-of-pickupenergysubexp.md) | 128 | `result-track:3c0a0be895300cdabc0e99f189e1c65458c1ecfe89ae82c33dab4225de206a40` |
| 13 | `theorem` | [riemannHypothesis_of_pickupCrossSubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/riemannhypothesis-of-pickupcrosssubexp.md) | 133 | `result-track:6b3dc4341a1a13e515862cde9da1f6ad8c83c87d1472d9aa1ba339db1b5915f1` |
| 14 | `theorem` | [pickup_weighted_energy_integrable_initial](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickup-weighted-energy-integrable-initial.md) | 138 | `result-track:ff5db84050ca6af84b005c60aecb8843933a0c0860f20613d1d42d4611563f50` |
| 15 | `theorem` | [pickup_weighted_energy_integrable_mono](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickup-weighted-energy-integrable-mono.md) | 155 | `result-track:219ffb47eaa487fb60f74d02adea89a9727096a84e60ce815a218efd4474cf0f` |
| 16 | `theorem` | [pickup_weighted_energy_integral_antitone](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickup-weighted-energy-integral-antitone.md) | 168 | `result-track:1b62f27598e15b361c1a351bac3156eef1ed40e1e71ad19a30620e3588ed500d` |
| 17 | `def` | [pickupEnergyConvergenceSet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyconvergenceset.md) | 177 | `declaration-track:52edc89b88388a47813d8ed25ec7d4aef6c3f869ea02882a354a1b718ec7c98c` |
| 18 | `def` | [pickupEnergyAbscissa](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyabscissa.md) | 180 | `declaration-track:287aba0b928d85d42bae1fa60e24354540a415578fc6a54b953f4dc10250ea82` |
| 19 | `theorem` | [pickupEnergyConvergenceSet_nonempty](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyconvergenceset-nonempty.md) | 182 | `result-track:73b181607d662862f488cb9297c1f11c04ad0996194f2b9a0646f15fd4f74c7a` |
| 20 | `theorem` | [pickupEnergyConvergenceSet_bddBelow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyconvergenceset-bddbelow.md) | 185 | `result-track:40e107d0e0f2a2ae9df4169bce3425b85f2d377776717bbab2623b148c9def56` |
| 21 | `theorem` | [pickupEnergyAbscissa_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyabscissa-nonneg.md) | 188 | `result-track:29f7ce8d898aae5db2acb193a9862b7eb644119ac566fbdcd5c45aa7afaf9907` |
| 22 | `theorem` | [pickupEnergyAbscissa_le_of_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyabscissa-le-of-integrable.md) | 191 | `result-track:839b44cb28b940fc2afd5aa46bf5df44df62174ad8509d9f56f53050e582c3a7` |
| 23 | `theorem` | [pickupEnergyAbscissa_le_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyabscissa-le-one.md) | 196 | `result-track:41524299437067ada6d14d67251cc1a62d40fab3e940afea05981f98155350b9` |
| 24 | `theorem` | [pickup_weighted_energy_integrable_above_abscissa](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickup-weighted-energy-integrable-above-abscissa.md) | 204 | `result-track:71a6d1eeaae3f3600563947df2114780f4519fe6145fca0dc96d3d041c5d25dc` |
| 25 | `theorem` | [pickupEnergyAbscissa_zero_iff_weightedEnergyAll](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyabscissa-zero-iff-weightedenergyall.md) | 210 | `result-track:2ec48b00999b41b1b7a7b0a05573aefc653bac56d447787e0bb4c306bcbc411f` |
| 26 | `theorem` | [pickupEnergyAbscissa_zero_iff_crossSubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/pickupenergyabscissa-zero-iff-crosssubexp.md) | 223 | `result-track:2f40c2a1ce866f821edd822bb80ba13e979af38adc342c37f28b84ddd9c853b3` |
| 27 | `theorem` | [riemannHypothesis_of_pickupEnergyAbscissa_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/declarations/riemannhypothesis-of-pickupenergyabscissa-zero.md) | 228 | `result-track:30d26dd7ba281bac787bf5c1037c48688b7ccccf8567e292776daa3776a0d02d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=137c48b0cdb9304b355b48d67d4de041dce7dacf1684fbdcd7ab432f6613a73f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
