# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticGainSplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f26232f427a5ab8833a3ed2e4b1378ebe24ad129",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f26232f427a5ab8833a3ed2e4b1378ebe24ad129`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerGradedGainBudget`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerGradedGainBudget.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gradedBandwidthGain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedbandwidthgain.md) | 53 | `declaration-track:ae66f80dbb9307d92f88be04eb18e7c88201ba1145304d07efeeb0532b59a3b5` |
| 2 | `def` | [gradedArithmeticGainRequirement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedarithmeticgainrequirement.md) | 57 | `declaration-track:ba1b0a65907b0bd61b39fff08d9399b120bb3bf7098a6344c39c31a91e10f588` |
| 3 | `def` | [gradedSplitSmoothedValueExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedsplitsmoothedvalueexponent.md) | 62 | `declaration-track:4176449d36189943556554042e1b079cacb921c1eb45103dcdd284ba13124f27` |
| 4 | `theorem` | [gradedSmoothedValueGainRequirement_eq_bandwidth_add_arithmetic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedsmoothedvaluegainrequirement-eq-bandwidth-add-arithmetic.md) | 69 | `result-track:72edf73269e50c0e8afab11c984f922f1c232f2cf1a6e7f526d64c723d85522b` |
| 5 | `theorem` | [gradedSplitSmoothedValueExponent_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedsplitsmoothedvalueexponent-eq.md) | 80 | `result-track:bfcf7eec0f24a46367d85dbd22f6028d2d1a247afc5052800b5734c396f89662` |
| 6 | `theorem` | [gradedSplitSmoothedValueExponent_le_quadratic_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedsplitsmoothedvalueexponent-le-quadratic-iff.md) | 90 | `result-track:0e2d668647923b4dd151490b733475a2e960102a3c09b85b13b4e9e289b172c6` |
| 7 | `theorem` | [bandwidthNeutralization_le_quadratic_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/bandwidthneutralization-le-quadratic-iff.md) | 101 | `result-track:9255b046dc3dc28d80707a886209714300f24788043c1539bb2e00c5b1277928` |
| 8 | `theorem` | [pureBandwidthNeutralization_misses_quadratic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/purebandwidthneutralization-misses-quadratic.md) | 112 | `result-track:03cdd7335eece1bffc49523a6cb8af9cb32eddb5074c77569d1c2709f4b27733` |
| 9 | `def` | [boundaryMinimalFejerBandwidthExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/boundaryminimalfejerbandwidthexponent.md) | 124 | `declaration-track:4e8c3555c53fcb349f6f6ed66cfbb473f425e2ef43f92e11d60c23de3da1e23d` |
| 10 | `theorem` | [truncatedFourierBoundary_boundaryMinimal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/truncatedfourierboundary-boundaryminimal.md) | 129 | `result-track:74562ed262af3b1a487c6c5fa060647604c0d2a2338b1e4a25f83673d48ce246` |
| 11 | `theorem` | [boundaryMinimal_totalSplitGain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/boundaryminimal-totalsplitgain.md) | 140 | `result-track:16582472f33b9ccd022635de1b9df10d6e21aa8d1e280c469746f1fa06f19894` |
| 12 | `structure` | [ThresholdGradedPrimeFejerSplitSupplier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/thresholdgradedprimefejersplitsupplier.md) | 152 | `declaration-track:6975f6b76dc48bd658bddbbca65cd7c3e9e91828d98de23ce1130b6fe4d47517` |
| 13 | `theorem` | [thresholdGradedPrimeFejerSplitSupplier_arithmeticGain_requirement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/thresholdgradedprimefejersplitsupplier-arithmeticgain-requirement.md) | 169 | `result-track:7abc9c749df6808da38b02d5ce47522c5681e172c91f114b1c120f8010559ecd` |
| 14 | `theorem` | [thresholdGradedPrimeFejerSplitSupplier_totalGain_floor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/thresholdgradedprimefejersplitsupplier-totalgain-floor.md) | 180 | `result-track:9287ebbe7f0e7cc9044998e9116adfe20cef73d8587400e019a5908a898a7b5e` |
| 15 | `def` | [ThresholdGradedPrimeFejerSplitSupplier.toThresholdGradedPrimeFejerSupplier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/thresholdgradedprimefejersplitsupplier-tothresholdgradedprimefejersuppli.md) | 199 | `declaration-track:7970c5dd718bb19d16157701b80dc951e461d8cbb2c96aa44302ba21bfd36282` |
| 16 | `theorem` | [sevenEighths_boundaryMinimalFejerBandwidthExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-boundaryminimalfejerbandwidthexponent.md) | 219 | `result-track:b5bd4388c291fd9c90301044363af411906d255cdda78823e9e6ca3781cbb92e` |
| 17 | `theorem` | [sevenEighths_gradedBandwidthGain_at_boundaryMinimum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-gradedbandwidthgain-at-boundaryminimum.md) | 225 | `result-track:5bb9cf98c01db8913c1db9ef980b057e04d443e79820af688738370eb11c82b6` |
| 18 | `theorem` | [sevenEighths_gradedArithmeticGainRequirement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-gradedarithmeticgainrequirement.md) | 231 | `result-track:dcb184f8bddc5c6f32011f2e2edd0c40ebe2dac6b8554917e03e57458e34019f` |
| 19 | `theorem` | [sevenEighths_boundaryMinimal_exactGainSplit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-boundaryminimal-exactgainsplit.md) | 239 | `result-track:0bdff31524574db503869dcc4115613bd81eeb4594ac037c7f40c90162d6d3c4` |
| 20 | `theorem` | [sevenEighths_splitSupplier_arithmeticGain_ge_eighth](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-splitsupplier-arithmeticgain-ge-eighth.md) | 255 | `result-track:7104feb142ccc9a09af636e3b3fd65fae616294cbe160a2c3cf8c8975dbcca72` |
| 21 | `theorem` | [sevenEighths_splitSupplier_totalGain_ge_quarter](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-splitsupplier-totalgain-ge-quarter.md) | 267 | `result-track:7d019e1c9ef44d7f70b6abebe9f9cafeef9df508efe3b7a581c6b5095466e94d` |
| 22 | `theorem` | [sevenEighths_splitSupplier_to_partialDiscrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-splitsupplier-to-partialdiscrepancy.md) | 281 | `result-track:097662eae51f5605870c6217ef069bf26d6dc467696d1d8bfad2da18fdf57965` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd5e228747438e8f8ac52c11dc140addd41a84396672e98ccde5d736e2d3880a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
