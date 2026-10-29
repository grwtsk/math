# Verification target: Spectral Unification Of Computability And Algebraic Symmetry Results Alternative5 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27a078c0f289151a33db11bc1bde27ecf3e7d660",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27a078c0f289151a33db11bc1bde27ecf3e7d660`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePoleReducedBump` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleReducedCorrelation](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation.md) | 23 | `declaration-track:08953b1eeb340502942b7bf8a526c3b9288a46a56c96e73685d6a6942e5277a5` |
| 2 | `theorem` | [poleReducedCorrelation_product_integrable](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation-product-integrable.md) | 27 | `result-track:806d1d64d7207217e32e5b74cc5a4996ae1a6c05c38cb38b999f4324628e24c8` |
| 3 | `theorem` | [poleReducedCorrelation_second_product_integrable](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation-second-product-integrable.md) | 36 | `result-track:a7a89d89c2f250672008896c6a405e7e23873b8d5246b0d5af07589013ba1864` |
| 4 | `theorem` | [poleReducedCorrelation_eq_convolution](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation-eq-convolution.md) | 48 | `result-track:851095e947a07e490d9d2275fbc325d849cd43ffa2c22c88a1c3f873c5a16e26` |
| 5 | `theorem` | [reflected_bump_compact](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/reflected-bump-compact.md) | 57 | `result-track:c38e310d0e772c172bf12c9c03a6ec2b3608f9d8074f5431d3e68db97585789e` |
| 6 | `theorem` | [reflected_bump_contDiff](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/reflected-bump-contdiff.md) | 66 | `result-track:4acf4b3574ad7f1af5be7b9bf4b6897b8f0a6491e91267505999dd08e68d6c49` |
| 7 | `theorem` | [poleReducedCorrelation_contDiff](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation-contdiff.md) | 71 | `result-track:d35a3bc28cff343a5aabc3909f3e2096cc1958b0f10b03824a9cd04641dc9c0b` |
| 8 | `theorem` | [poleReducedCorrelation_hasDerivAt](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation-hasderivat.md) | 79 | `result-track:4e1e416692ab4c4d79503f64bea30f90c6ed0af481d4fc18bc1dbee2f909a127` |
| 9 | `theorem` | [poleReducedCorrelation_second_deriv](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation-second-deriv.md) | 95 | `result-track:cc493096c80ea04b5337a3a8494d472264a34948e8c803b295495ac0bde5071a` |
| 10 | `theorem` | [poleReducedCorrelation_pole_operator](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation-pole-operator.md) | 120 | `result-track:df5c4efe3647b473ed3abf7bef9c37566a1d9e084c0d37e6edc5ab19907990ba` |
| 11 | `theorem` | [poleReducedCorrelation_zero_of_two_mul_le_abs](../../../../MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative5SourceEdition1.lean/declarations/polereducedcorrelation-zero-of-two-mul-le-abs.md) | 133 | `result-track:49f34e86f0decb16291913423b2012b6906daa2dbadcd025680eb47e01d38ca9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b438ac2f7be5b1a0645411652b45d94d6451795363bb79f7551c0d35b9138d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
