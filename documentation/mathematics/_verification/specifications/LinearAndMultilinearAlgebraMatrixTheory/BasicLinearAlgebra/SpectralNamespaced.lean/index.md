# Verification target: Spectral Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38887fd963452a54f7582026ed4dd39e824ca6f9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38887fd963452a54f7582026ed4dd39e824ca6f9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Comparison` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WeightedAdjacency](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/weightedadjacency.md) | 13 | `declaration-track:2b2579e0c18845a9c0517116a237d3e17c874242b9df1747506efdf37e60c8a5` |
| 2 | `abbrev` | [DegreeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/degreematrix-source-edition-2.md) | 14 | `declaration-track:a5c380424b8e0cc3034db1f6b46daffbbcf0547b045b42f65b0d3c1004a8c46d` |
| 3 | `abbrev` | [GraphLaplacian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/graphlaplacian.md) | 15 | `declaration-track:620c75475c99819700aa74fc2f57eef1ac76bccffd14cad6ad0b1a0d8b57bead` |
| 4 | `def` | [matrixZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/matrixzero.md) | 17 | `declaration-track:df49a7ee52d2c787894de48a52b0f657a38d1ac5a961e871da51534797f083a5` |
| 5 | `def` | [matrixIdentity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/matrixidentity.md) | 20 | `declaration-track:ce3d2a03ff14aa1b843c61aaf802878a13237e60dfd5e4b8a837bc94f391bf77` |
| 6 | `def` | [matrixAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/matrixadd.md) | 23 | `declaration-track:d3b800ccf3c753cbd42d36c7469f8546dba86f0b7beb55f92275966c4cbe3df7` |
| 7 | `def` | [matrixMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/matrixmul.md) | 26 | `declaration-track:2715c512b9a09ad0020cf93710dc119a00d73d4f9ea9b1feac94b77a37c2d375` |
| 8 | `def` | [rowSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/rowsum.md) | 29 | `declaration-track:29e263a83b4c2219d01a75a50fd71d565ad9d5bc3335bf42ec334ffcf5d00da6` |
| 9 | `def` | [weightedAdjacency](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/weightedadjacency-source-edition-2.md) | 32 | `declaration-track:bce6ee0d59842520371f7a5c959aec13c39fd18c09864ee7241aba7f49780068` |
| 10 | `def` | [degreeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/degreematrix.md) | 36 | `declaration-track:44fdeaaead3ccc2e27b2b44a70ead9b7b26c7d24c297d3010b65a63650b0946a` |
| 11 | `def` | [graphLaplacian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/graphlaplacian-source-edition-2.md) | 39 | `declaration-track:62873de461b1ac8e0cbcd7e38fee49f840c4ddde7805e3328b28c10bc438b377` |
| 12 | `def` | [Symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/symmetric.md) | 42 | `declaration-track:4e47f348e3d9473398b17b6e6588e06309e42e8247dbdf743e3c57ca759ac35c` |
| 13 | `def` | [RowSumZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/rowsumzero.md) | 45 | `declaration-track:c54215c2f029782c2e47f70ff0e96f536bc15f829b0d5a9f28d75f0eb6754a33` |
| 14 | `theorem` | [weightedAdjacency_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/weightedadjacency-symmetric.md) | 48 | `result-track:b84f0b2fc3bb6cf4e48b454173ab799cb02ea7810945eb50f5016f87cd5a0d51` |
| 15 | `theorem` | [graphLaplacian_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/graphlaplacian-symmetric.md) | 60 | `result-track:dacaf771ce66e13862f8dda039dbfade5ff70cc369d27465179063ca5c19da04` |
| 16 | `theorem` | [graphLaplacian_row_sum_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/graphlaplacian-row-sum-zero.md) | 72 | `result-track:c941c077bafbbffa8ef166b2603f5427b5c241a79ebdf4b3b22bc1b722527ca6` |
| 17 | `structure` | [PolynomialKernelPolicy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/polynomialkernelpolicy.md) | 76 | `declaration-track:5f91022d2b34d96c243f14292c82b9239855cff53e3dfe4dd6e212ff83062503` |
| 18 | `inductive` | [SpectralPolicy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/spectralpolicy.md) | 80 | `declaration-track:1ebcb05025ac1cfbe9f40f800efea1c75425e57cf0ef880a9b429773aa754095` |
| 19 | `def` | [matrixPow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/matrixpow.md) | 84 | `declaration-track:3e3fdece8235d4ceb123baa413161469df71c88d5bccaccc3695e24e25c8aad6` |
| 20 | `def` | [polynomialEvalMatrixFrom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/polynomialevalmatrixfrom.md) | 88 | `declaration-track:3ad4ddf8184e77e48b7b26199bd8d06aba1281e9ffe391918f20102d6f531627` |
| 21 | `def` | [polynomialEvalMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/polynomialevalmatrix.md) | 96 | `declaration-track:d00977f6baab6414f6243cf19d70182cfb70ea5217994f82b7455d1f5acc4446` |
| 22 | `def` | [spectralKernelFromPolynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/spectralkernelfrompolynomial.md) | 100 | `declaration-track:bae5e768a08fc8c108a1d575bfbb645f96f1bfdf3b26970207b8706add881fa5` |
| 23 | `theorem` | [spectralKernel_polynomial_defined](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/spectralkernel-polynomial-defined.md) | 105 | `result-track:924b5ebb3a9f3ef439c6c7a9dadbb40afbd8c8fe3c66a1fa5a27b3a59f35db6a` |
| 24 | `structure` | [SpectralChoice](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/spectralchoice.md) | 110 | `declaration-track:e05dea91ef7a7f9644c1f2e24fb4810e8391b1c30ce50335eba81a98bd71b519` |
| 25 | `def` | [KernelSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/kernelsound.md) | 121 | `declaration-track:27cbb4346d82ed3d043c56554d06671ae4a6c47be651b00aad696299217ba769` |
| 26 | `def` | [SelectionSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/selectionsound.md) | 122 | `declaration-track:2a72ae7f75404f45ffb9d2b62912a4d38028ac498347b5ef2027bbe0e5e65b2d` |
| 27 | `def` | [GroupSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/groupsound.md) | 123 | `declaration-track:e179f01a5977931453a1cf92cedd6bef702eb60d8ce582cc38e9afffd65bdf41` |
| 28 | `def` | [ScopeSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/scopesound.md) | 124 | `declaration-track:492136e47b027455f03093a08e30d9bf37f301569892639d265b4d0c01404e02` |
| 29 | `def` | [FocusSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/focussound.md) | 125 | `declaration-track:f10d8fd46fc11d53b151e4eae3e9469c1def53224b69ccf16497025d1c1a9393` |
| 30 | `def` | [DivisorSound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/divisorsound.md) | 126 | `declaration-track:fc35f267f3d80668b8f153fd39059d471886fbac75ba9bc6de1c160f7b23cdcb` |
| 31 | `theorem` | [spectralChoice_sound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/declarations/spectralchoice-sound.md) | 128 | `result-track:f69454d85d94f12b58bee1466d9aee8eb7afeaa5225632099f2ba755404d2e68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e2bfc7fbf5c82114a72f8e45d487cbb6d767597247d9863b6137d34e19aa429 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
