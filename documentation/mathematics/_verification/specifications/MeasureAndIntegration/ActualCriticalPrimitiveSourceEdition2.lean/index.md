# Verification target: Actual Critical Primitive Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95e39e1fce2a0e50a7d3b9a4c07a56de52db05bc",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95e39e1fce2a0e50a7d3b9a4c07a56de52db05bc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitiveDensity](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/primitivedensity.md) | 25 | `declaration-track:7b865ba8618f176f8b491a944d2cf5c1cb4c57e2f03f11082167ca8811ea9f4f` |
| 2 | `def` | [criticalPrimitive](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalprimitive.md) | 29 | `declaration-track:50bce01bdfd7fca23ff8ddfc4ad31692c42fca5d5380b97780805a28b4b93faf` |
| 3 | `def` | [criticalKernel](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalkernel.md) | 31 | `declaration-track:5155b424a96d4b845ae3ca5346a78087583df4e30ee48bacdc32319c8eeaafdc` |
| 4 | `theorem` | [primitiveDensity_intervalIntegrable](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/primitivedensity-intervalintegrable.md) | 35 | `result-track:bf3536afdd93eaf17e86b3f5c8df7b2ed2f7e2656331ce3a7957af9876535e80` |
| 5 | `theorem` | [criticalPrimitive_zero](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalprimitive-zero.md) | 53 | `result-track:0d41251b2c815f8a9d257085df74630de76c714f25c35a5e0b529627c9cd9370` |
| 6 | `theorem` | [criticalPrimitive_absolutelyContinuous](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalprimitive-absolutelycontinuous.md) | 56 | `result-track:de16cbf1d4f73229334488b9815e23b2e230a3e07c8af6abd148df2e14d8d359` |
| 7 | `theorem` | [criticalPrimitive_ae_hasDerivAt](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalprimitive-ae-hasderivat.md) | 61 | `result-track:ce4d177908dcbca818492d42a41b9bd86306473f3bf3824bf06c829a67beab76` |
| 8 | `theorem` | [criticalKernel_contDiff](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalkernel-contdiff.md) | 67 | `result-track:5a2477bab1a08d6a212077b2a4863fad21af15b333a0ad93c095e6517523edd5` |
| 9 | `theorem` | [criticalKernel_at_upper](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalkernel-at-upper.md) | 71 | `result-track:b876710b16b46dd00e28816068881c05d33addc1cc53b47ba17893cce87e5ba5` |
| 10 | `theorem` | [actual_signed_primitive_parts](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/actual-signed-primitive-parts.md) | 82 | `result-track:50bf371db8c02f8e27eea116397e749d7672cae48cebb8d0b0982c0ff69eaddf` |
| 11 | `theorem` | [criticalTest_deriv_integral](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticaltest-deriv-integral.md) | 111 | `result-track:0d33902bb0355aae53b46b3c6f90f45d29c99c4b36f546f21bca2c925e8e4674` |
| 12 | `theorem` | [actual_residual_primitive_reconstruction](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/actual-residual-primitive-reconstruction.md) | 121 | `result-track:86e96e5cc851a257595e9be65ad37db6774fc65e5bdd62da08d1f31e6203550f` |
| 13 | `theorem` | [criticalKernel_deriv](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalkernel-deriv.md) | 137 | `result-track:236fea45a7e8ce769213a8ba3157d737a89a22689e4cf967ab410c930288486f` |
| 14 | `theorem` | [source_first_derivative_coarse_bound](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/source-first-derivative-coarse-bound.md) | 144 | `result-track:8e42711dc59d3341eb7d6cfc06cf8749eeac33396afd3906196abcaf8e3f7600` |
| 15 | `theorem` | [source_second_derivative_coarse_bound](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/source-second-derivative-coarse-bound.md) | 149 | `result-track:c87fd4ff85105feab691a7befb20d675c47893c7bb427d21895ebe64d2c61922` |
| 16 | `theorem` | [criticalKernel_deriv_abs_le](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalkernel-deriv-abs-le.md) | 156 | `result-track:abec5b9fa250eac0bf5f043f5c7a48ae28395b9badeabac184b6d8cd28599bc1` |
| 17 | `theorem` | [criticalKernel_deriv_L1_bound](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/criticalkernel-deriv-l1-bound.md) | 169 | `result-track:87236a02684244b54c680caa765bc87b9ef975a42828c03defdec228b9e17719` |
| 18 | `theorem` | [primitive_work_intervalIntegrable](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/primitive-work-intervalintegrable.md) | 185 | `result-track:588be84ca12dcf5a88e7802351f1770bcbd076ee71f4e694dd8307fc6d3c58af` |
| 19 | `theorem` | [actual_primitive_work_bound](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/actual-primitive-work-bound.md) | 193 | `result-track:34f04e45b44b74ee02f9cbe5741de8485323773ccee14f0728e2deb73ce86e02` |
| 20 | `theorem` | [actual_residual_upper_of_primitive_budget](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/actual-residual-upper-of-primitive-budget.md) | 211 | `result-track:b3f4507e7daae3d7854e482de651f1f1f8c801b59e6d99e6284bb6576c3919c8` |
| 21 | `theorem` | [actual_gap_upper_of_primitive_budget](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/actual-gap-upper-of-primitive-budget.md) | 223 | `result-track:6f542236fcab36cb6606d9954b7dd0b9d59ee47c1a19d0d97e259596e7aea785` |
| 22 | `theorem` | [actual_residual_tail_of_primitive_budget](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/actual-residual-tail-of-primitive-budget.md) | 236 | `result-track:cb522897fd6886bee74096b214792ebc5202451c687d9575c95214cb7fefc136` |
| 23 | `theorem` | [actual_uniform_estimate_of_primitive_budget](../../../../MeasureAndIntegration/ActualCriticalPrimitiveSourceEdition2.lean/declarations/actual-uniform-estimate-of-primitive-budget.md) | 254 | `result-track:24996b0630c4647c02e652f93ac3e251c78bb968d99e423b9dbd848b3a891dac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8513088f08bba0c58921b607a307b3b0c41a766b694c5359baa6ac6a64eb834 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
