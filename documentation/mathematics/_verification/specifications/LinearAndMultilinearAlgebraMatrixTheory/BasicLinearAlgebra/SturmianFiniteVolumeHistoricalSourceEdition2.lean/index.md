# Verification target: GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba2acf4237b1f2c5cf7146a727d841a42dcdb030",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba2acf4237b1f2c5cf7146a727d841a42dcdb030`.

Source path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.Sturmian`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianHistoricalSourceEdition2.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.MatrixCountComparison`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCountComparison.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport`](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/GapTransportHistoricalSourceEdition2.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Topology.Order.OrderClosed` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeDirichlet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/freedirichlet.md) | 22 | `declaration-track:dc8d3e2e125e4313381f8a8f5aba5810fc501cfc707b346e6eb3553f4c44d545` |
| 2 | `def` | [hamiltonian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/hamiltonian.md) | 26 | `declaration-track:5165062a3afb32ac1e494bb65e813222471ccb7e82c3ec96eedead19bec630ef` |
| 3 | `theorem` | [freeDirichlet_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/freedirichlet-ishermitian.md) | 29 | `result-track:7bf5027dec2747c47d5799ff408c13d3c2c9a226c865a4798e8d0c5c22ae598d` |
| 4 | `theorem` | [hamiltonian_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/hamiltonian-ishermitian.md) | 33 | `result-track:c35d8769cfe8d3d5b2b64b4e281915059a25462eca784b9e24ed1eb5660641ca` |
| 5 | `theorem` | [hamiltonian_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/hamiltonian-zero.md) | 37 | `result-track:6c9ad3973866953bb67e282b1c374c20d3596a40da3523aa79ad62dc3f19653a` |
| 6 | `theorem` | [lower_difference_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/lower-difference-possemidef.md) | 41 | `result-track:5b717ac2a261ae1ef201163ddf823116d0d6fdaa805652f171848671a4907524` |
| 7 | `theorem` | [upper_difference_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/upper-difference-possemidef.md) | 53 | `result-track:e795d37e195ac5c1a2b05ad9585b171ce0a1c3d133861de4eaab6be51bbaf7bd` |
| 8 | `theorem` | [diagonal_quadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/diagonal-quadratic.md) | 65 | `result-track:7961c3e0f9acf9a8388b3977ecfeb2a8619628d867f341d90d861a8a7801d213` |
| 9 | `theorem` | [coordinate_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/coordinate-norm.md) | 74 | `result-track:e14b9407cda237b30fae1fb28bf77744b66416ff0331f7a3b28d42b4a143536c` |
| 10 | `theorem` | [hamiltonian_quadratic_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/hamiltonian-quadratic-bounds.md) | 78 | `result-track:74ec7bfd8b1bb4827d6c8ce2caa0cf7994487f69ac436d402bc6690f3bf9467c` |
| 11 | `def` | [freeCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/freecount.md) | 100 | `declaration-track:7823b340bc5cb90ec3ff578338d23587743911a5625dc1765c73d043146e6430` |
| 12 | `def` | [sturmianCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/sturmiancount.md) | 102 | `declaration-track:4ba1955fd34e5c251d95cbef6b72eae39db14887431caf2801d320f074334bcc` |
| 13 | `theorem` | [finite_count_comparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/finite-count-comparison.md) | 106 | `result-track:0ed287c0a6ca4b7521864c5f2d5d7b482e484501f3df8e63713932715a96de5d` |
| 14 | `def` | [freeNormalizedCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/freenormalizedcount.md) | 122 | `declaration-track:e152d3cdba56c0031a9b3baa73a0c07eb6de97033c92af8cfed4b06f8e2a3437` |
| 15 | `def` | [sturmianNormalizedCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/sturmiannormalizedcount.md) | 124 | `declaration-track:2adae82b5f39cb52ceef6d10afd54ec0bebee6c484e6bdf19ed1fe95c5c19f64` |
| 16 | `theorem` | [finite_normalized_comparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/finite-normalized-comparison.md) | 127 | `result-track:32cbeda69782cd9e9cac03132f5a25b152f01da5c9dfce90165f91c0bb228ee1` |
| 17 | `theorem` | [ids_comparison_of_count_limits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/ids-comparison-of-count-limits.md) | 137 | `result-track:71516a31535e5237549e83ea462d05d1be2323cb21a09984c9921d6f1b3db579` |
| 18 | `theorem` | [gap_width_le_abs_coupling_of_count_limits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/declarations/gap-width-le-abs-coupling-of-count-limits.md) | 150 | `result-track:baf7da75034938cef531fad7de8288a5619452700f429dd33ae4c0191f4d5257` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60f190a90a9d6b7dc4f58c273621a397593f130a8f98de8c640638a84b207a0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
