# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerQuadraticCorrelationTarget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b021e3265e9c78a8f13944cc3cf9b28d27384c19",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b021e3265e9c78a8f13944cc3cf9b28d27384c19`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticGainSplit`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticReduction`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticReduction.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonAliasingFejerWeightedPrimeAtom](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/nonaliasingfejerweightedprimeatom.md) | 45 | `declaration-track:fba5358ef56c5fa646b354b0b81bc93cfd67d6cc9528dfd841ea0844e440597b` |
| 2 | `theorem` | [nonAliasingPrimePrefixFejerOperator_value_eq_weightedPrimeAtom_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/nonaliasingprimeprefixfejeroperator-value-eq-weightedprimeatom-sum.md) | 52 | `result-track:d6f4c1424c92927dcafa46c29d09d4343504763d86121dfe1cbca0bda3f90d26` |
| 3 | `def` | [nonAliasingFejerQuadraticCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/nonaliasingfejerquadraticcorrelation.md) | 62 | `declaration-track:4527b0def8a97b39e15846725dbc9dd89d01d3d17dc5b8eef88eccd6a0014b8d` |
| 4 | `theorem` | [nonAliasingFejerQuadraticCorrelation_eq_value_sq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/nonaliasingfejerquadraticcorrelation-eq-value-sq.md) | 71 | `result-track:564aa3bdfaeb8f700898e746c1d056c30117fd208a4efd2b2b3e65920ba1ffe9` |
| 5 | `theorem` | [nonAliasingFejerQuadraticCorrelation_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/nonaliasingfejerquadraticcorrelation-nonnegative.md) | 83 | `result-track:0e0e45ebf0b4561041b868ad14fba884b5eb90ccb4c6eb62aec6cfd4982a37cc` |
| 6 | `def` | [nonAliasingFejerQuadraticDiagonal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/nonaliasingfejerquadraticdiagonal.md) | 90 | `declaration-track:3d77acc6515120695c81436b16b64492998b9b56a5437c81dca6bdc0a9d80b67` |
| 7 | `def` | [nonAliasingFejerQuadraticOffDiagonal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/nonaliasingfejerquadraticoffdiagonal.md) | 96 | `declaration-track:815f84528058f24db77971a1f339cfe675bca24986061be7335914f729736ba6` |
| 8 | `theorem` | [nonAliasingPrimePrefixFejerOperator_value_sq_eq_diagonal_add_offDiagonal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/nonaliasingprimeprefixfejeroperator-value-sq-eq-diagonal-add-offdiagonal.md) | 102 | `result-track:864212cfce9a47086576d8ab0a2a40b9001e687674622e86dcc8cdf5bb75d089` |
| 9 | `def` | [gradedQuadraticCorrelationExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/gradedquadraticcorrelationexponent.md) | 113 | `declaration-track:59f3eab29358bbfba2705965b244f574543923094b6ce1c5eea6dfb269a3cffa` |
| 10 | `def` | [gradedQuadraticCorrelationAmplitudeExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/gradedquadraticcorrelationamplitudeexponent.md) | 119 | `declaration-track:77759de54805caa9d7fd9e400470346c30a439090d76d1f231aa7c0254f19a71` |
| 11 | `def` | [gradedQuadraticCorrelationArithmeticGain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/gradedquadraticcorrelationarithmeticgain.md) | 125 | `declaration-track:a4e5cb5b27075ed408f36a37efece4e954553010eb56afa720d179f81ac8fa1e` |
| 12 | `theorem` | [gradedQuadraticCorrelationAmplitudeExponent_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/gradedquadraticcorrelationamplitudeexponent-eq.md) | 129 | `result-track:63367baad5c24c2fa98b803d1fcf9df009d1330384f909f0fc747f54c5083dc1` |
| 13 | `theorem` | [gradedQuadraticCorrelationArithmeticGain_eq_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/gradedquadraticcorrelationarithmeticgain-eq-half.md) | 139 | `result-track:5c77a764e98a4a49beb190354b66e74e14aea8a91f97529abc398d76e3cdb950` |
| 14 | `theorem` | [gradedQuadraticCorrelationAmplitude_le_quadratic_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/gradedquadraticcorrelationamplitude-le-quadratic-iff.md) | 145 | `result-track:3947bc8b34626e98ebfaaac6199eff49a6390efb0dd0301d4e29747b91bcea5e` |
| 15 | `theorem` | [gradedArithmeticGain_le_quadraticCorrelationGain_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/gradedarithmeticgain-le-quadraticcorrelationgain-iff.md) | 155 | `result-track:fd5bcb2ec09c87a32b4fa756cd00c6472883de15317bbc31ad6c7f5f0eb5c9da` |
| 16 | `theorem` | [gradedSplitSmoothedValueExponent_quadraticCorrelationGain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/gradedsplitsmoothedvalueexponent-quadraticcorrelationgain.md) | 166 | `result-track:739be25f0da993417e9a19e52e06d0d123eaae9da11c2c2ef7c6d2810dbaa9a8` |
| 17 | `structure` | [DyadicFejerPowerCutoffSchedule](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/dyadicfejerpowercutoffschedule.md) | 182 | `declaration-track:64872b538ea80622648171df164c71745a8076c1031e5d77f0455bce78e6e23b` |
| 18 | `def` | [DyadicPrimeFejerQuadraticCorrelationBoundAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/dyadicprimefejerquadraticcorrelationboundat.md) | 202 | `declaration-track:304600125c1a11e6f9b13e1f27fc2c8c1d9703e5903bf8c755c51a18d0611b8c` |
| 19 | `def` | [DyadicPrimeFejerQuadraticCorrelationReadoutAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/dyadicprimefejerquadraticcorrelationreadoutat.md) | 222 | `declaration-track:980c5187ec918c2a9ef932e21eab74e17dab56dac62f9db0201d7aef8161fb4c` |
| 20 | `structure` | [ThresholdGradedPrimeFejerQuadraticCorrelationSupplier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/thresholdgradedprimefejerquadraticcorrelationsupplier.md) | 233 | `declaration-track:8feb1119aeb2c0c177863bd3e22c245c49353167a4a8097366c3bc67b2b5ed30` |
| 21 | `theorem` | [thresholdGradedPrimeFejerQuadraticCorrelationSupplier_saving_requirement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/thresholdgradedprimefejerquadraticcorrelationsupplier-saving-requirement.md) | 257 | `result-track:af404b8056ea4cfacfca940d1ff270f74a9361adec321939d438d0b5009988b3` |
| 22 | `def` | [ThresholdGradedPrimeFejerQuadraticCorrelationSupplier.toSplitSupplier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/thresholdgradedprimefejerquadraticcorrelationsupplier-tosplitsupplier.md) | 268 | `declaration-track:a2e8b63fde4b9fd170d7fb4f4d7702f4ac81c90a73cb26a3f159d48d8c976e9a` |
| 23 | `theorem` | [sevenEighths_quadraticCorrelationSavingRequirement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/seveneighths-quadraticcorrelationsavingrequirement.md) | 294 | `result-track:b6152be73b2e6a0ad918bf51c87df4b5251c81a40d68df03dc349d502cff5e90` |
| 24 | `theorem` | [sevenEighths_quarterCorrelationSaving_arithmeticGain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/seveneighths-quartercorrelationsaving-arithmeticgain.md) | 300 | `result-track:c71bd980f0aff7a02309a0f146bd590a5fe892d928421169a1cd15b8cf70eb61` |
| 25 | `theorem` | [sevenEighths_quarterCorrelationSaving_amplitudeExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/seveneighths-quartercorrelationsaving-amplitudeexponent.md) | 308 | `result-track:86152237b030957cd1582aaa0e5b912178b50ed06a9c0a1b7dcc9f367d13a2b6` |
| 26 | `theorem` | [sevenEighths_boundaryMinimal_quadraticCorrelationGainSplit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/seveneighths-boundaryminimal-quadraticcorrelationgainsplit.md) | 318 | `result-track:afeff87027a6557556a3840c84c8d152241569d08da2401e325c63c141213f8b` |
| 27 | `theorem` | [sevenEighths_quadraticCorrelationSupplier_saving_ge_quarter](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/seveneighths-quadraticcorrelationsupplier-saving-ge-quarter.md) | 327 | `result-track:62f7613c8a9e382c43fecb805279ebc6cea6eb7f72b739bb73d2336cb5b82416` |
| 28 | `theorem` | [sevenEighths_quadraticCorrelationSupplier_arithmeticGain_ge_eighth](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/seveneighths-quadraticcorrelationsupplier-arithmeticgain-ge-eighth.md) | 341 | `result-track:8fe53454f290c6df30780c9fb214e5ac61c02992f42d1e4b1e6b9f44823dd0c3` |
| 29 | `theorem` | [sevenEighths_quadraticCorrelationSupplier_to_partialDiscrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/declarations/seveneighths-quadraticcorrelationsupplier-to-partialdiscrepancy.md) | 356 | `result-track:6fe888a3784db71845be2bca3f4afe8b224b422a4af114c0b766699972fe865c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3461637e3686c7e60a67dbc9237e2e3ef9262107e8530f359c16cf4487e44b25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
