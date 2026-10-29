# Verification target: Spectral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7198cfb632abd28efe5e10f62289b604bbca3800",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7198cfb632abd28efe5e10f62289b604bbca3800`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Comparison` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WeightedAdjacency](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/weightedadjacency.md) | 5 | `declaration-track:7434b67fc323a26d99640e73d2807a24cde5c0f8f70a159f00ba85942c047911` |
| 2 | `abbrev` | [DegreeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/degreematrix.md) | 6 | `declaration-track:18aca7af0c3b39952a98deaaa2668f8e33f18f24b87e0803d5ce0d0493ea3ba9` |
| 3 | `abbrev` | [GraphLaplacian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/graphlaplacian-source-edition-2.md) | 7 | `declaration-track:6b9bc0b951e3aab38d64e920958590e3c606ee5fddb3d53418392e4f3c7281ac` |
| 4 | `def` | [matrixZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/matrixzero.md) | 9 | `declaration-track:c367baf4b2aff6f8602da6968b537845bcfa71e34f8c70f774b0ac1f829cb5de` |
| 5 | `def` | [matrixIdentity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/matrixidentity.md) | 12 | `declaration-track:9209954e83592d8f2712219d0c01914e7ba3e574d4b1c7d274ec48dd6e158e10` |
| 6 | `def` | [matrixAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/matrixadd.md) | 15 | `declaration-track:cb31f1820edbb1088238b9bce5db4d93cebdcb428b2a56b88ba3a20d94860046` |
| 7 | `def` | [matrixMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/matrixmul.md) | 18 | `declaration-track:abcc4e1686c5fa61c5bd1fd7c8156d050e38a30332dccc021906c586d15ed92a` |
| 8 | `def` | [rowSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/rowsum.md) | 21 | `declaration-track:405d7c749230482ac52b6a29c51e4b97b3280918c063601d5c51e86fc8e3586b` |
| 9 | `def` | [weightedAdjacency](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/weightedadjacency-source-edition-2.md) | 24 | `declaration-track:fa4bc217c92fff94ac1f61509208b5e4d5b3e5d78d765218c241e0c5fba7af81` |
| 10 | `def` | [degreeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/degreematrix-source-edition-2.md) | 28 | `declaration-track:cd6ebc7d68bd59f8939cb1d8716debdfbc371a6502be05152d4a4c441b35927e` |
| 11 | `def` | [graphLaplacian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/graphlaplacian.md) | 31 | `declaration-track:0fb4b6b318c028175dee8affb95e32f9b710f7646d8c67d53abecdd00acde295` |
| 12 | `def` | [Symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/symmetric.md) | 34 | `declaration-track:c4f090b10247ff27c957f5c6dea366409198dd03dde0e74f5c1d5d8371641157` |
| 13 | `def` | [RowSumZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/rowsumzero.md) | 37 | `declaration-track:591b2f2e8871cacdb64623ced415a89148a3e46bae9481b38bc29ff040f7a7e7` |
| 14 | `theorem` | [weightedAdjacency_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/weightedadjacency-symmetric.md) | 40 | `result-track:5dbef5b189378f9042f33a2d78a36aeec3e9cf23483863287ca14bd982b66746` |
| 15 | `theorem` | [graphLaplacian_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/graphlaplacian-symmetric.md) | 52 | `result-track:1e8dda57b1bd6a3aec5b7512e96871b8d603a34828ed3299bb96f4521d51b84f` |
| 16 | `theorem` | [graphLaplacian_row_sum_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/graphlaplacian-row-sum-zero.md) | 64 | `result-track:3487dc136c5c45e18956cb0681a1046d3bedf2edf1d2989850cf5177e3814bdf` |
| 17 | `structure` | [PolynomialKernelPolicy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/polynomialkernelpolicy.md) | 68 | `declaration-track:02ab88e71d97e7d70b34169204dbe4aadb44665bb3d6a0df3b432b5a3433e5fa` |
| 18 | `inductive` | [SpectralPolicy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/spectralpolicy.md) | 72 | `declaration-track:03a79bacc72d24934f704af7c69c7de96904f19a1e9fba3e6e50ae08c1fc4fcd` |
| 19 | `def` | [matrixPow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/matrixpow.md) | 76 | `declaration-track:206664b2614b179f496211b2a996d3560bbd08737073880f2e0e1c488fe0ba9e` |
| 20 | `def` | [polynomialEvalMatrixFrom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/polynomialevalmatrixfrom.md) | 80 | `declaration-track:75b1d40a79820214959f523dfa4b76fb6637f113869c03ece8cba48b86db536c` |
| 21 | `def` | [polynomialEvalMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/polynomialevalmatrix.md) | 88 | `declaration-track:44f327fe9af88318b2583a7e4f40fbd5b70a81d7713a6363ff85d62e55a3fe17` |
| 22 | `def` | [spectralKernelFromPolynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/spectralkernelfrompolynomial.md) | 92 | `declaration-track:24bd2b1453504332f7446245281d343694df93ce241095e004d1906be789d6b6` |
| 23 | `theorem` | [spectralKernel_polynomial_defined](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/spectralkernel-polynomial-defined.md) | 97 | `result-track:e0cb51714b923a9f5e42bcd741702a36aeda0c0fd7332d22d4f7c557248dc1c0` |
| 24 | `structure` | [SpectralChoice](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/spectralchoice.md) | 102 | `declaration-track:301f98ecd800313556d96a6645134e817f1b4bee2675c387a8bbc329b295f384` |
| 25 | `def` | [KernelSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/kernelsound.md) | 113 | `declaration-track:27ffb0a436232f95150362f19b261926c5d98c5907b0c7e0ce27f254f3733136` |
| 26 | `def` | [SelectionSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/selectionsound.md) | 114 | `declaration-track:895a92b6e992d92cc19f17653bb9e3f48249807f13b0351fb103dfa23aaafcd3` |
| 27 | `def` | [GroupSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/groupsound.md) | 115 | `declaration-track:8ade7a491f7f9a5e4869747058959c9acb9bc3076c8bfb6660c475cdc27b2631` |
| 28 | `def` | [ScopeSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/scopesound.md) | 116 | `declaration-track:e783662256af1c2fa2f475fedcec5831d2f14a9c3f514cb53fc2b062288bf0a3` |
| 29 | `def` | [FocusSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/focussound.md) | 117 | `declaration-track:4b22ccae02ff09fa5d2897af9f7eceba6bf50961a8a7c040024561fedce0234a` |
| 30 | `def` | [DivisorSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/divisorsound.md) | 118 | `declaration-track:7d3067f03094c596a9166baaae4695480b6295bff021c785a42b84c87fa07676` |
| 31 | `theorem` | [spectralChoice_sound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Spectral.lean/declarations/spectralchoice-sound.md) | 120 | `result-track:e6c2d0d62f17e36a62aed6b2e37a4692380749d2b1cdcb7ada50f72d710e01a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bade688fe9b34eca44c0cea08dca9e268a85aa6c20ba74a5e19928368c9fcb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Spectral/Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
