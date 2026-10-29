# Verification target: Linear Algebra Matrix Spectrum Eigenvector Matrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9d44b833de758419e3a71f83f0575b4b17abfd0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9d44b833de758419e3a71f83f0575b4b17abfd0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eigenvalues₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvalues.md) | 41 | `declaration-track:498090a6147565b8df7391cb9d516622ed70d6d1060c35435884b20c64d902ac` |
| 2 | `def` | [eigenvalues](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvalues-source-edition-2.md) | 46 | `declaration-track:c7e8fb364b6a5f6266b7b8229b640fb1f747e9d885128e06c98600a7b70f0ea4` |
| 3 | `def` | [eigenvectorBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvectorbasis.md) | 51 | `declaration-track:22fc67196cbee6c07e19c2a46b09d587db2d56b5a764ed35477947a9635037e4` |
| 4 | `def` | [eigenvectorMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvectormatrix.md) | 57 | `declaration-track:09b470fdf966262210bcfe008889e9aebd5eabe565ac3fa022f94c910bc7941d` |
| 5 | `def` | [eigenvectorMatrixInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvectormatrixinv.md) | 62 | `declaration-track:e515987a3ec8296d4e6cee73d1daafaac2a606cc109b17ad0fbf587301326536` |
| 6 | `theorem` | [eigenvectorMatrix_mul_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvectormatrix-mul-inv.md) | 66 | `result-track:f9da7385531d5a25eddb1916e34a20a5e237ca00f6514f3b06fac10434c10061` |
| 7 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/instance.md) | 70 | `declaration-track:8dfb304a7a2d2c2d6c6d3b6e13aead68e0ce5b45f7d0bd82a5c7ad17fc0f3d3a` |
| 8 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/instance-source-edition-2.md) | 73 | `declaration-track:e8d5409581360c0f8699774dfdea8c88a36a79ecd270fe16a852d9fe6d26b3fb` |
| 9 | `theorem` | [eigenvectorMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvectormatrix-apply.md) | 76 | `result-track:af25718626bb8e976f96b16185287b73a76f8ee8f0fdb91e83b672bf35acf9bc` |
| 10 | `theorem` | [transpose_eigenvectorMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/transpose-eigenvectormatrix-apply.md) | 82 | `result-track:8f3cf8d52a98d9547ee3c8f5567de2832b1184875813a8595551bb35ac984cd0` |
| 11 | `theorem` | [eigenvectorMatrixInv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvectormatrixinv-apply.md) | 86 | `result-track:02201de9e481477af3b6a892219d19d4a3444df81f3a2f72886f7683e0785e25` |
| 12 | `theorem` | [conjTranspose_eigenvectorMatrixInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/conjtranspose-eigenvectormatrixinv.md) | 93 | `result-track:09dda4e6d2b397914ade45a4e4cdd31e23dbc7194621287df44c8d364644e6c7` |
| 13 | `theorem` | [conjTranspose_eigenvectorMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/conjtranspose-eigenvectormatrix.md) | 98 | `result-track:bcedf6258621f2943075568d27d9f23d1831bf1518ffe9c62fbac6f29a2f3c32` |
| 14 | `theorem` | [spectral_theorem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/spectral-theorem-source-edition-2.md) | 107 | `result-track:6fb00851ff829014bb48728d2b1437182a69f74a22e4480d14d2234471da25e2` |
| 15 | `theorem` | [eigenvalues_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/eigenvalues-eq.md) | 124 | `result-track:586f981da354ed0a6548a33f01e7f04689eb6b39cc7626ed6ad702edfb886f24` |
| 16 | `theorem` | [det_eq_prod_eigenvalues](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/det-eq-prod-eigenvalues.md) | 137 | `result-track:cd7e63b19bfbac3d4f28a0c5cb4e67afcef7aa8b06977874e8f5dbfa697d8383` |
| 17 | `lemma` | [spectral_theorem'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/spectral-theorem.md) | 146 | `result-track:228b65ee72e906b6cb0de6eee3d116e672fabb5f9b330413d5efd39f2bcc08e1` |
| 18 | `lemma` | [rank_eq_rank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/rank-eq-rank-diagonal.md) | 152 | `result-track:507ed01ceb9c4f74bddd968020e55bc506f78d02a70f9cc261f2cf839067d0f0` |
| 19 | `lemma` | [rank_eq_card_non_zero_eigs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixSpectrumEigenvectorMatrix.lean/declarations/rank-eq-card-non-zero-eigs.md) | 161 | `result-track:21044e700f42776dda50c47e7579ab97b832615abfc375361d8ced5777efc074` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cfba540ad10f48cd48891baac54725dbfc384db2e414961ed75ea6ae1b68549 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
