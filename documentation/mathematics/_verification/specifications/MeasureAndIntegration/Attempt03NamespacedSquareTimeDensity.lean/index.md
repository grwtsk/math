# Verification target: Attempt03 Namespaced Square Time Density

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "333f872440342247749442ff58146070982d02d9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `333f872440342247749442ff58146070982d02d9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceProperPowerMertens` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareTimeDensity](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squaretimedensity.md) | 25 | `declaration-track:31915b9ad4fcefd5de04ad8251093d9921d87c89af8f99e192cd058bc4b81e8d` |
| 2 | `def` | [squareAnchoredPrimitive](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squareanchoredprimitive.md) | 28 | `declaration-track:b2f00b101ac910230175611a3390877fa80cc083adbbbbe9896a87377695dee2` |
| 3 | `def` | [squarePrimitiveReadout](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squareprimitivereadout.md) | 31 | `declaration-track:c8195053c492ff1f5d67d182ff0ac662b0fccd5361cb1fa93f9f0f9fa5496241` |
| 4 | `def` | [squareZeroDrift](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squarezerodrift.md) | 35 | `declaration-track:79abde2e5505513929a7444e9853bdffeb7764c97ede7aa1c609262e0b8b9be6` |
| 5 | `theorem` | [theta_exp_eq_steps](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/theta-exp-eq-steps.md) | 38 | `result-track:d02e5b18ccd1e95fae099d71ca61adeef9cd4ed9ad73ed73c3cf7d6fe9d6e982` |
| 6 | `theorem` | [primitive_antiderivative](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/primitive-antiderivative.md) | 50 | `result-track:4c72497c369d1eab16bff2bf0ed818f8ec36015f145c89ec2976245625043121` |
| 7 | `theorem` | [density_eq_steps](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/density-eq-steps.md) | 56 | `result-track:a0c8e8c46d76af557349fd61345d77200bfdb2c3a86d45ee0fde05681e3dbc72` |
| 8 | `theorem` | [squareTimeDensity_intervalIntegrable](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squaretimedensity-intervalintegrable.md) | 65 | `result-track:de43bd617f8511f0ed59548ae40b8490887a1e60b5bec4a8a66c2ea65138d620` |
| 9 | `theorem` | [square_prefix_integral_eq_readout](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/square-prefix-integral-eq-readout.md) | 79 | `result-track:2d07e8959487ba954bc4160e226821aa80915735bd6e6077f45d152ea6dde28f` |
| 10 | `theorem` | [squareAnchoredPrimitive_eq_readout](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squareanchoredprimitive-eq-readout.md) | 115 | `result-track:598e8806ea5a1df68fe0713b942689fd027f7a3da5852d4af983d80231eca4ff` |
| 11 | `theorem` | [squareAnchoredPrimitive_at_lower](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squareanchoredprimitive-at-lower.md) | 128 | `result-track:90a47773debc5690d744644ff91d3d719464efb07510db66c1bc2d481b991500` |
| 12 | `theorem` | [squareZeroDrift_eq_actual_error](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squarezerodrift-eq-actual-error.md) | 132 | `result-track:d2611e8d44a02159ec64f59e78cd800b63c15cfeeeb53414f940d13879a198db` |
| 13 | `theorem` | [squareZeroDrift_uniform_bound](../../../../MeasureAndIntegration/Attempt03NamespacedSquareTimeDensity.lean/declarations/squarezerodrift-uniform-bound.md) | 142 | `result-track:f9611df2ea038efb53f13af17d80c1c98b877d679d51cc8956ef3b2e94e003ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fd5889891accb0409fa1ceb2faaba1177db6e349fbf580bee5b5ceb66d2188e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
