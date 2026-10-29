# Verification target: Eigenspace Basic Mem Spectrum Of Has Eigenvalue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac57b8661000f2da4445779737b9c044bb1a47fd",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac57b8661000f2da4445779737b9c044bb1a47fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenspace.md) | 63 | `declaration-track:aabaf9c30106c5802b484052cf777268052b8a135d95e75f6f42102bef88b7dc` |
| 2 | `theorem` | [eigenspace_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenspace-zero.md) | 68 | `result-track:a071228d2ae83088739a7c69f9b31320a6e87a91e54c6661c8cf8bdb7dea7ea3` |
| 3 | `def` | [HasEigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/haseigenvector.md) | 72 | `declaration-track:cae7f486c6b86c6bba2307c143a26924c5bff58278db07e07becd0af3cb9ab19` |
| 4 | `def` | [HasEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/haseigenvalue.md) | 78 | `declaration-track:f24f26c86fb4ab37893ab2d8093688b06079a16e8dc3dbf64bf46d10f390e8ed` |
| 5 | `def` | [Eigenvalues](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenvalues.md) | 83 | `declaration-track:9a6184aa57c702c9bd80cb6e0059dea7dc9313dadce1eead908c4ea73644084e` |
| 6 | `def` | [Eigenvalues.val](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenvalues-val.md) | 88 | `declaration-track:fe8349c973cb113b4658b8f69e2c380529ca126cb92c4f38049660b252fc8266` |
| 7 | `instance` | [Eigenvalues.instCoeOut](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenvalues-instcoeout.md) | 90 | `declaration-track:287b14271a58aecf1a60f445eb5f4d5e91bad12fd26f16586222732f8724f65d` |
| 8 | `instance` | [Eigenvalues.instDecidableEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenvalues-instdecidableeq.md) | 93 | `declaration-track:21679a08fcd78255bb1617dd08618ce984e9fb1c558a655f00ce3f651363c5c4` |
| 9 | `theorem` | [hasEigenvalue_of_hasEigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/haseigenvalue-of-haseigenvector.md) | 97 | `result-track:662afad1a31461755b5fa929a517c1bc96639232420f08b4f025ead468fc9e91` |
| 10 | `theorem` | [mem_eigenspace_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/mem-eigenspace-iff.md) | 103 | `result-track:bef0b315dfb75ce976bf737d0b631e8ea3e6a04e44e6739e7fb8575a7805bd2a` |
| 11 | `theorem` | [HasEigenvector.apply_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/haseigenvector-apply-eq-smul.md) | 107 | `result-track:74628448344e0e02630e6678fa011ad912a26f68aefcb9c1ef11abdc58b824ad` |
| 12 | `theorem` | [HasEigenvalue.exists_hasEigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/haseigenvalue-exists-haseigenvector.md) | 112 | `result-track:a2c54adf9d32329944c5ac3270d4526d0efe8ff2aaf0dabeef8a4e3b6a72c537` |
| 13 | `theorem` | [mem_spectrum_of_hasEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/mem-spectrum-of-haseigenvalue.md) | 117 | `result-track:9200f020198400fb31a1289716fa300d23590fb26d5f9e03c5356ad1cdeb45a2` |
| 14 | `theorem` | [hasEigenvalue_iff_mem_spectrum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/haseigenvalue-iff-mem-spectrum.md) | 126 | `result-track:994c58733ee1efd1ee752ddf6722dbe3d64a5cd136521592e6154859b7741877` |
| 15 | `theorem` | [eigenspace_div](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenspace-div.md) | 132 | `result-track:2cedec131e6e0258c7e16e445668fdf8c85558de491884bf4153b8126b2e301d` |
| 16 | `theorem` | [eigenspaces_independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenspaces-independent.md) | 146 | `result-track:3e177ae539cadf01190fa1487587f01179322601f4a09bbfad3afc7f1be86b74` |
| 17 | `theorem` | [eigenvectors_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenvectors-linearindependent.md) | 248 | `result-track:9889d3734693101838160906bc578bf36705ac5d6dba40224fcc26c0c4d79353` |
| 18 | `def` | [generalizedEigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/generalizedeigenspace.md) | 258 | `declaration-track:9c389a16afadc02dee87af9295626313fd9c7f8e19c080558c82146d313cb74c` |
| 19 | `theorem` | [mem_generalizedEigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/mem-generalizedeigenspace.md) | 268 | `result-track:9f92d51675dc8acf9d7faa4a522516e44179a7afaeac0e0b8fbb9357ae3c1d6c` |
| 20 | `theorem` | [generalizedEigenspace_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/generalizedeigenspace-zero.md) | 273 | `result-track:50196233385c20866bfcd9d8d476e90692f8ce5a8d0f7b95e8911332ad0b1b51` |
| 21 | `def` | [HasGeneralizedEigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/hasgeneralizedeigenvector.md) | 280 | `declaration-track:2e8b3f6ee822fd79ad6af81638741eb2717d054c975e00596edee88d8d2ed0f6` |
| 22 | `def` | [HasGeneralizedEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/hasgeneralizedeigenvalue.md) | 286 | `declaration-track:0700e967a7142393885f75e2dee3189ff6bdf43a604ebe257f4689dd960f0a5e` |
| 23 | `def` | [generalizedEigenrange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/generalizedeigenrange.md) | 292 | `declaration-track:8499f3ded44f9ff680b14c7712f13365bce1b6ea4ff46a23cd6b27863fb833fb` |
| 24 | `theorem` | [exp_ne_zero_of_hasGeneralizedEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/exp-ne-zero-of-hasgeneralizedeigenvalue.md) | 297 | `result-track:6fa6d2a8ed050e8ba917ae1440a078ba53025ef6bbcb5bcf059077615f37e564` |
| 25 | `def` | [maximalGeneralizedEigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/maximalgeneralizedeigenspace.md) | 304 | `declaration-track:e971566733326ec4aa6414c36a10b4b50a5f7455c105906bd5654d4217b1240a` |
| 26 | `theorem` | [generalizedEigenspace_le_maximal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/generalizedeigenspace-le-maximal.md) | 308 | `result-track:340df18d1b6e3a95179bd539f2a91c500814d5eb2d00c0708b324006e7e64db5` |
| 27 | `theorem` | [mem_maximalGeneralizedEigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/mem-maximalgeneralizedeigenspace.md) | 314 | `result-track:933f96d146f7e6ac4def1ead339819a50ca8df6bde8778addc98a424f4df0519` |
| 28 | `def` | [maximalGeneralizedEigenspaceIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/maximalgeneralizedeigenspaceindex.md) | 322 | `declaration-track:8e8258c15170a42d2422fdc9167bb5ebf51e00cf0dee64afa248a095c5f0b381` |
| 29 | `theorem` | [maximalGeneralizedEigenspace_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/maximalgeneralizedeigenspace-eq.md) | 328 | `result-track:3f71739a195a31f0b5f6347133af14f3c21be8f7e80316a1d234e8c3496f3ce5` |
| 30 | `theorem` | [hasGeneralizedEigenvalue_of_hasGeneralizedEigenvalue_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/hasgeneralizedeigenvalue-of-hasgeneralizedeigenvalue-of-le.md) | 337 | `result-track:f7f0d0f46a7b5b35a61cd89968ad89df035694a0c8d9a39a017f915fe6ab36af` |
| 31 | `theorem` | [eigenspace_le_generalizedEigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenspace-le-generalizedeigenspace.md) | 347 | `result-track:9bb38e2430ef55bd86dc3086d5f086513bad10a1af52a5c047b2fd04b727d29f` |
| 32 | `theorem` | [hasGeneralizedEigenvalue_of_hasEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/hasgeneralizedeigenvalue-of-haseigenvalue.md) | 353 | `result-track:2d998a24cc0660288209e4a6e09cf1049c5609581d1e29629dd60676663c88ae` |
| 33 | `theorem` | [hasEigenvalue_of_hasGeneralizedEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/haseigenvalue-of-hasgeneralizedeigenvalue.md) | 361 | `result-track:093c020968d68f0927da7ea57e245b3389ff5d678c1bf0331291f4f0a5022940` |
| 34 | `theorem` | [hasGeneralizedEigenvalue_iff_hasEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/hasgeneralizedeigenvalue-iff-haseigenvalue.md) | 370 | `result-track:9d9243833edf07b619dfdd8bd76c83d4c7dc7ef99ad144dba1895a1aa1460f2c` |
| 35 | `theorem` | [generalizedEigenspace_le_generalizedEigenspace_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/generalizedeigenspace-le-generalizedeigenspace-finrank.md) | 377 | `result-track:7698fae54276554ceafc800b89ea4f2859e2365bf944baf332ee7c8124a77e21` |
| 36 | `theorem` | [generalizedEigenspace_eq_generalizedEigenspace_finrank_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/generalizedeigenspace-eq-generalizedeigenspace-finrank-of-le.md) | 383 | `result-track:c8fae98e416dad678b27faa349c13a5630887ba6550adf91f1dea3fb3e74c458` |
| 37 | `theorem` | [generalizedEigenspace_restrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/generalizedeigenspace-restrict.md) | 391 | `result-track:5a011e09ac8b0c34981f46068c1d9d507bd87087841f79a2eae9054c70e7c0c6` |
| 38 | `theorem` | [eigenspace_restrict_le_eigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenspace-restrict-le-eigenspace.md) | 405 | `result-track:5dff8811aab5323d3abad7ee14d82260d98271bcf38275ea5ca373426531e213` |
| 39 | `theorem` | [generalized_eigenvec_disjoint_range_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/generalized-eigenvec-disjoint-range-ker.md) | 413 | `result-track:ef418dca37fa35aec6b5787cc9d29afa70b1cd983cb203d4f228c11fd3281ec9` |
| 40 | `theorem` | [eigenspace_restrict_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/eigenspace-restrict-eq-bot.md) | 433 | `result-track:e78f62e687f90e74d412adb7b7e3a3a3077f090718e2fd329a9c6f9e8f88090b` |
| 41 | `theorem` | [pos_finrank_generalizedEigenspace_of_hasEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/pos-finrank-generalizedeigenspace-of-haseigenvalue.md) | 441 | `result-track:65b156ab198ab93b3fa1fec59655b773f4ad2d037a36595e90d1372cadcad000` |
| 42 | `theorem` | [map_generalizedEigenrange_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/declarations/map-generalizedeigenrange-le.md) | 453 | `result-track:1d579b0bbb6636cbefbd32e1edd5732e9576c067f09fbe6f012f4adeecbf62b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d2ef6c8d99c33303a4cc55c37eb0718917ac0e90f622f95a5917355696eb963 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
