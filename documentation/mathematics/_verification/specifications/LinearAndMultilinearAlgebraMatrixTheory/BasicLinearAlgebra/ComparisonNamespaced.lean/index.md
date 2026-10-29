# Verification target: Comparison Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b50bfcd4453f14d6915f9e3953e0bbcc1cd41e59",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b50bfcd4453f14d6915f9e3953e0bbcc1cd41e59`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Padding` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixComparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/matrixcomparison.md) | 15 | `declaration-track:a4a60f8ba00ae029219cba6eefd9741c00dfd23352fe88851b1d29732d04e77c` |
| 2 | `theorem` | [MatrixComparison.ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/matrixcomparison-ext.md) | 21 | `result-track:8cd48a3a3ef3d980b296843d2507c404941b5dffb37c659aad4d127f5191ad3a` |
| 3 | `def` | [zeroComparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/zerocomparison.md) | 30 | `declaration-track:f0d24015912234416cd4cca4eb6cbafbf63eaa32eeea08c93f2d511609120174` |
| 4 | `def` | [compare](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/compare.md) | 35 | `declaration-track:8e169cbad86de1d2008b0e780a4fa38502cb4be4684fa0d7260da65455c2fc33` |
| 5 | `theorem` | [comparison_self_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/comparison-self-zero.md) | 51 | `result-track:f37a9fcb832259d3a9bb0f5b3bbad75a3cb0dd4a43111af9423ff53771c2f291` |
| 6 | `theorem` | [comparison_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/comparison-symmetric.md) | 64 | `result-track:21693c0ac47140c75554ff01a1b9adbd228c1ba93f8e6ae7e261b7e61f296176` |
| 7 | `theorem` | [totalDiff_decomposes](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/totaldiff-decomposes.md) | 82 | `result-track:89e27e345eee227e859358d39702fb7a3ab113106d3cf222ad1f823878130cfa` |
| 8 | `theorem` | [valueDiff_requires_both_active](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/valuediff-requires-both-active.md) | 88 | `result-track:83f317c4927416c63b5593899faee74b2d2b99dd3ad37630d73d68ca743221c0` |
| 9 | `theorem` | [paddingDiff_detects_active_disagreement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/paddingdiff-detects-active-disagreement.md) | 96 | `result-track:9fd4327aed281de274428b0da099cb6396ea6c12d685ce20b4eb4930f1dcb9d1` |
| 10 | `structure` | [ComparisonWeights](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/comparisonweights.md) | 104 | `declaration-track:18123bd4032db6150092ebcd39a66ebb412ecba11838f348534bcc2cd0568fa9` |
| 11 | `structure` | [ComparisonDistance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/comparisondistance-source-edition-2.md) | 109 | `declaration-track:7db9ee2faa96ac869d960520952d4bc4728fce08ec13b16e2b78c68982b14405` |
| 12 | `def` | [comparisonDistance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/comparisondistance.md) | 115 | `declaration-track:27d725126b7d46a4e697b883ad4d7c7cefd13fafea17c228e33c2636c2365460` |
| 13 | `theorem` | [comparisonDistance_total_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/comparisondistance-total-eq.md) | 123 | `result-track:62d1052d2bb9c659e41e7298547d05980b94cd46871946f4402d745dbf4a44d4` |
| 14 | `theorem` | [comparisonDistance_self_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/comparisondistance-self-zero.md) | 130 | `result-track:4f3fa0b14bb6a8b174458fb6e2835286d658c361dd8b7bfb3558503ad85a3860` |
| 15 | `theorem` | [comparisonDistance_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/comparisondistance-symmetric.md) | 135 | `result-track:480267f023acdbc50450be3804a75055a141a3c8999e1189305fb78bc9658a97` |
| 16 | `theorem` | [totalDistance_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ComparisonNamespaced.lean/declarations/totaldistance-nonnegative.md) | 140 | `result-track:4dbd1952ff855d34fa255f4a72734c9ef0fbc20df68bbd1153a31980408a2f27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cc718d965891a43bf6e983a19fc2e033a688dce536bebcec7ff345c577230b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Comparison/Variant314f7b18fd4dc2bdb92949d11758b5624f99bdab48a5df22826492faa978b6d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
