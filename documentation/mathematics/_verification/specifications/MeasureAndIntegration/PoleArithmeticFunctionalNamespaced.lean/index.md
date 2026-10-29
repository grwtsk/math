# Verification target: Pole Arithmetic Functional Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d693dba0cdce9123961acb2b076bc8e8c4fcb8c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleArithmeticFunctional/Variant865f6da4f2aca00be3bc1080def3a1ce4d2d4f5bfeefa710491f816768dd8781.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d693dba0cdce9123961acb2b076bc8e8c4fcb8c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleArithmeticFunctional/Variant865f6da4f2aca00be3bc1080def3a1ce4d2d4f5bfeefa710491f816768dd8781.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleArithmeticFunctional/Variant865f6da4f2aca00be3bc1080def3a1ce4d2d4f5bfeefa710491f816768dd8781.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseKernelBoundary` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowerPowerFunctional](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/lowerpowerfunctional.md) | 35 | `declaration-track:bc063fa8068c6236532e30b68a6314f60247528cee26f8ad00739caeffac1390` |
| 2 | `def` | [continuousReference](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/continuousreference.md) | 41 | `declaration-track:70378015481632da407305161f9a219df6e82bbf92ed20317e33078add2974a4` |
| 3 | `def` | [lowerPowerDiscrepancy](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/lowerpowerdiscrepancy.md) | 54 | `declaration-track:86e60456a7d8c1455986ec59787a506fdaab45c6af63388f048a8c9f8e90fa2d` |
| 4 | `def` | [sourceCorrelationMap](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/sourcecorrelationmap.md) | 58 | `declaration-track:37f8bbc2daaa23341e59ea2dea5f84a3308de482e4ecc887337ab55b00c058c7` |
| 5 | `def` | [sourcePoleOperatorMap](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/sourcepoleoperatormap.md) | 63 | `declaration-track:9c820fe4b2430ef9992cf31523ff095566370269b0b67f5b82fca6d4537ffe8e` |
| 6 | `theorem` | [source_pole_operator_map_apply](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/source-pole-operator-map-apply.md) | 67 | `result-track:4efbad12def4d0e52af111f8159857c42510ee5861a82ad6efe2ca3071536f44` |
| 7 | `theorem` | [lower_power_functional_source](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/lower-power-functional-source.md) | 75 | `result-track:1c6c6b45704037016a78f7db7fcd8721cac788754e5c69170ae8540f6838000a` |
| 8 | `theorem` | [lower_power_discrepancy_source](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/lower-power-discrepancy-source.md) | 79 | `result-track:b8f9e32cacb0d2210338182fed8833b440506d28301015da57f91c4856b1c11b` |
| 9 | `theorem` | [lower_power_discrepancy_operator_identity](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/lower-power-discrepancy-operator-identity.md) | 86 | `result-track:ab7c045cd543d3900795baaa51f337efd666a20b5acd75437bbaaa9b514d398a` |
| 10 | `theorem` | [operator_discrepancy_tail_iff_prime_square_compensation](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/operator-discrepancy-tail-iff-prime-square-compensation.md) | 93 | `result-track:b458eca82e6d3afe66dbffc9d94d9f18246703292cddee7b1f64d372445311a1` |
| 11 | `def` | [poleGreenKernel](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/polegreenkernel.md) | 121 | `declaration-track:37deed81ce9f2d2cffc2f9091c52b7863051efecef9c38641219278b8005b195` |
| 12 | `def` | [poleSquaredGreenKernel](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/polesquaredgreenkernel.md) | 124 | `declaration-track:a28bb742b3718d965e8e31ff4dd7572514bea6a816f47427f8b25680a14a2b47` |
| 13 | `theorem` | [pole_squared_green_kernel_pos](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/pole-squared-green-kernel-pos.md) | 127 | `result-track:949544b26ab667d92f8cb2b28ca3eb134af20e3b2371aea0ee50f386d091ef0b` |
| 14 | `def` | [primeSquareGreenResidual](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/primesquaregreenresidual.md) | 132 | `declaration-track:2124e63be0ff3cb2607e78ba21f32889ca9756835ee470ad2461578773d3fc00` |
| 15 | `theorem` | [negative_atomic_green_potential](../../../../MeasureAndIntegration/PoleArithmeticFunctionalNamespaced.lean/declarations/negative-atomic-green-potential.md) | 138 | `result-track:3483372328156a716cc20743a6dceb541458f95d1102ed765b6a5bb20eb15213` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15b2edd9a7555c1b92afb72b2515f9c2026f3c083e0c54ade6b77d22d80c2d66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleArithmeticFunctional/Variant865f6da4f2aca00be3bc1080def3a1ce4d2d4f5bfeefa710491f816768dd8781.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleArithmeticFunctional/Variant865f6da4f2aca00be3bc1080def3a1ce4d2d4f5bfeefa710491f816768dd8781.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
