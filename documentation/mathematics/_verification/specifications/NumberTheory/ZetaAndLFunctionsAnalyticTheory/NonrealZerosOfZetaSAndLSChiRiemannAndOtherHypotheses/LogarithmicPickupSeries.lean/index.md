# Verification target: GRWTSK.NumberTheory.Moebius.LogarithmicPickupSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "813d381298ab1415230ce94eb10edf05338aadba",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `813d381298ab1415230ce94eb10edf05338aadba`.

Source path: `GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/LogarithmicPickupSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.LogarithmicPickupSampling`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSampling.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleResidue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue.md) | 32 | `declaration-track:967599360a1b13c4b06bf686d8754dea8b850b1a1ba5d359f6dee52bdf697240` |
| 2 | `def` | [logarithmicCell](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/logarithmiccell.md) | 37 | `declaration-track:7b8be50e01cea3ff88c5472434074f0a740ea89b9f5c444cc8c491cf30ed0e8b` |
| 3 | `def` | [sampleCellMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/samplecellmass.md) | 42 | `declaration-track:6850f7058853716285655019d64393f72098002487e308fe673b66e0ae969693` |
| 4 | `theorem` | [wholePickup_log_eq_sampleResidue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/wholepickup-log-eq-sampleresidue.md) | 47 | `result-track:4e1d55323ce77e7f519871d122f7c37b8c3e730b79b6e8474c25362edd5074e2` |
| 5 | `theorem` | [sampleResidue_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-one.md) | 53 | `result-track:e79045e8940dca7e1f0aeb5a45b756a53eeadf46ad59acb477f91cf12ac14be6` |
| 6 | `theorem` | [closed_prefix_succ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/closed-prefix-succ.md) | 58 | `result-track:c4cbddd18bff2fbfc86f2bc98efd9ffd164ca2c58207ba93ed580fdc1eab50bf` |
| 7 | `theorem` | [mertensPrefix_nat_succ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/mertensprefix-nat-succ.md) | 69 | `result-track:dcd4589eb093147b0f2c993f1b1f83c2c8e2cc070a3ccc23eee90230ed50f7fd` |
| 8 | `theorem` | [sampleResidue_succ_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-succ-sub.md) | 76 | `result-track:40e11d8b08e7f7fe2ee0bc4a165e1c01455f363c71c74e42835033b6fc11366d` |
| 9 | `theorem` | [sampleResidue_square_step](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-square-step.md) | 85 | `result-track:cd6871dbae4ce524dce39affd21dd4ae66bcb86b21fcac9d73e6c5f9b6ab7996` |
| 10 | `theorem` | [sampleResidue_square_telescope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-square-telescope.md) | 100 | `result-track:5059554811d0920b5ca341cade1b6820c5201ff5355747a0aca3b054ae33860b` |
| 11 | `theorem` | [sampleResidue_increment_abs_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-increment-abs-le.md) | 115 | `result-track:2657b63fcb900a663ee7ffeb4ecfa52e30450133cba7bb0a73507fa0bc3b61e6` |
| 12 | `theorem` | [sampleResidue_increment_sq_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-increment-sq-le.md) | 139 | `result-track:9a6c479b9721e080ddb2694882d3440f4abb4295a60b61c4fda30bf8c569f8c6` |
| 13 | `theorem` | [sampleResidue_diagonal_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-diagonal-le.md) | 152 | `result-track:d04a3ba017c259d58c9bc0ea0606ee5256c5fd3add1f1a8488e2e32f33b2940b` |
| 14 | `theorem` | [sampleResidue_weighted_telescope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-weighted-telescope.md) | 164 | `result-track:2ca3abd0307c56fcc3a91dc42b1a4c415158ffd869104b414b359aa3acdcb6e8` |
| 15 | `theorem` | [sampleCellMass_partial_sum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/samplecellmass-partial-sum.md) | 182 | `result-track:4864df533fe3299221302e7f62b6db0553f09b3be7f2702cfcfde049d3239138` |
| 16 | `theorem` | [sampleResidue_weighted_diagonal_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampleresidue-weighted-diagonal-le.md) | 202 | `result-track:9a1fec654400c6955ffe5ed567a36690f5c622bfa4098a1a2bc11f6604fd093f` |
| 17 | `theorem` | [logarithmicCell_measurable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/logarithmiccell-measurable.md) | 217 | `result-track:b1ac60a36a61f3b108a27d990bb850378e702f111eebd608606e3b8bdf64328c` |
| 18 | `theorem` | [logarithmicCell_floor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/logarithmiccell-floor.md) | 220 | `result-track:7fc8b2e2c0c250e45bd11ecb5d1b56e478127adfe5292f00e5c89d67c17fef1b` |
| 19 | `theorem` | [logarithmicCell_pairwise_disjoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/logarithmiccell-pairwise-disjoint.md) | 232 | `result-track:eedf78a60ca794f93a21bb155b46ad699cb564988e91f57b905ff25ef9b5b346` |
| 20 | `theorem` | [iUnion_logarithmicCell](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/iunion-logarithmiccell.md) | 242 | `result-track:6dc13af5282cdd0461657c62a9b9cdb32699091ed9436941f206bcb503b6a059` |
| 21 | `theorem` | [sampledPickup_eq_on_logarithmicCell](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampledpickup-eq-on-logarithmiccell.md) | 266 | `result-track:36c8507824eb6769b7c67d727d54fb04afad53f7e605eeaa914ab497b7fbc6b8` |
| 22 | `theorem` | [sampled_integrableOn_logarithmicCell](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampled-integrableon-logarithmiccell.md) | 273 | `result-track:3b4d20d01748da83d8ce732ac77f89be56afea96a5b83d535ccb5a811fbeb872` |
| 23 | `theorem` | [integral_exp_neg_mul](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/integral-exp-neg-mul.md) | 286 | `result-track:ba251e11a1aa629cd25e856dca11ddadc0bf6e9bb194c311b528e02a5249fa77` |
| 24 | `theorem` | [integral_sampled_logarithmicCell](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/integral-sampled-logarithmiccell.md) | 301 | `result-track:e5329ef8d34db9a21dfbdf9d355d984d6ed2532975c3794d41b63fcdd9aeff20` |
| 25 | `theorem` | [sampleCellMass_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/samplecellmass-nonneg.md) | 319 | `result-track:a73f363ff56240b0e3016c8d82ddb59623bea0c533d903b165fc856819f254f1` |
| 26 | `theorem` | [sampleCellMass_eq_rpow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/samplecellmass-eq-rpow.md) | 325 | `result-track:b4bd544fdfbcfc7e40a83a16e06f317f40d1b08a218539de8470f692072de252` |
| 27 | `theorem` | [sampled_integrable_iff_summable_cellMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/sampled-integrable-iff-summable-cellmass.md) | 334 | `result-track:f6d54d5f34f8397bf25bda4e38e5ce9f87550a7c6a996ddcfb6d2e19e45aca28` |
| 28 | `theorem` | [pickup_integrable_iff_summable_cellMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/pickup-integrable-iff-summable-cellmass.md) | 357 | `result-track:f600372498029899468ead48732446d8f3a42d652e89751dcc344163067fbee2` |
| 29 | `theorem` | [hasSum_sampleCellMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/hassum-samplecellmass.md) | 364 | `result-track:8e4e876b1a1688b42a9c1bcd0377736a0d182e3de85d88846127fb5fb7c26640` |
| 30 | `theorem` | [actual_energy_le_cellMass_tsum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/actual-energy-le-cellmass-tsum.md) | 376 | `result-track:80bb4ad396fb6f6647e665ab1ee45cf693ad8c5d3b48a2202222d5a9dc25e588` |
| 31 | `theorem` | [abscissa_zero_iff_reciprocal_cellMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/abscissa-zero-iff-reciprocal-cellmass.md) | 384 | `result-track:3e39843acdb018b3fff9b54f1b4bb6eea0dc204c732bdb9a48f7f5e5c6e5d43a` |
| 32 | `theorem` | [riemannHypothesis_of_reciprocal_cellMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/declarations/riemannhypothesis-of-reciprocal-cellmass.md) | 397 | `result-track:3f171f8d44ecc615a39fc1ddbfaf3696eda25bbd04d6511dadca17c34094cbb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95c420f7dd8373eb97f82e97d3e132f1a134dbc8493c8c0ebf41d8d2dd35d9f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/LogarithmicPickupSeries.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
