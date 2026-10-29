# Verification target: Matrix Bilinear Form Namespaced Is Adjoint Pair To Bilin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c446134845b5873fa5d6f1cbda1ad4a91953108",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c446134845b5873fa5d6f1cbda1ad4a91953108`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Nondegenerate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SesquilinearForm` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.toBilin'Aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-aux.md) | 76 | `declaration-track:4d9b40a0adb82af258681438edb17355832a351ecdd9dfa2742f510e4c7a0b6f` |
| 2 | `theorem` | [Matrix.toBilin'Aux_stdBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-aux-stdbasis.md) | 85 | `result-track:3249be2c827fcae417f5236381c6674302234e8be3418f2381c9609fa0119caa` |
| 3 | `def` | [BilinForm.toMatrixAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrixaux.md) | 111 | `declaration-track:04d182a03448655465717623b5c05308c232ead15466f65bffdb56207052b10d` |
| 4 | `theorem` | [BilinForm.toMatrixAux_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrixaux-apply.md) | 118 | `result-track:31de8a2d0c6a9815395403610ba6b6dc9cf41f1fae064eadd08edde35809f13d` |
| 5 | `theorem` | [toBilin'Aux_toMatrixAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/tobilin-aux-tomatrixaux.md) | 126 | `result-track:2e93c031c241c47daae2faeeaaaed57b12a9909b0de479a6a5a8dcb5c810e34a` |
| 6 | `def` | [BilinForm.toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix.md) | 146 | `declaration-track:39e7560baa7ca0f5f8584a4af622a05345563a9d8bf1c082713c674d26001cb1` |
| 7 | `theorem` | [BilinForm.toMatrixAux_stdBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrixaux-stdbasis.md) | 158 | `result-track:e2331892de2b6d721642e099dc11cba7ade59853d4a87105141c6c48efa2bcfc` |
| 8 | `def` | [Matrix.toBilin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin.md) | 166 | `declaration-track:13db7254a976b1e3f8fee0babfe6f716082745e4033d8f0ec56d8da2e55e4000` |
| 9 | `theorem` | [Matrix.toBilin'Aux_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-aux-eq.md) | 171 | `result-track:ede835fee20d8458a748c129ee2b949925b0f9de3149589395a27ae2e89f39c8` |
| 10 | `theorem` | [Matrix.toBilin'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-apply-source-edition-2.md) | 175 | `result-track:2cc14bed93271fc5e8b037decd3c6a8f398b153271b1b4c1e2f3ea54452f580b` |
| 11 | `theorem` | [Matrix.toBilin'_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-apply-source-edition-3.md) | 180 | `result-track:70b3b244c5b05d64447d157aedeb994903a5526e776ac06612626ae24a5cd8fd` |
| 12 | `theorem` | [Matrix.toBilin'_stdBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-stdbasis.md) | 190 | `result-track:4b4fa2b450db5d30543185b0c3e24ffd78962a0abf3a5a05fb952d37816e212d` |
| 13 | `theorem` | [BilinForm.toMatrix'_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-symm-source-edition-2.md) | 198 | `result-track:b21f8984a7e3b9831e5cce6696ab00b91346abddf82d938e277f5f6ad373bcb5` |
| 14 | `theorem` | [Matrix.toBilin'_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-symm.md) | 204 | `result-track:3dd050d3fe14f67588863037119ff03d63ad7b0a2d3fb246a9b7c9f6f5589f2c` |
| 15 | `theorem` | [Matrix.toBilin'_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-tomatrix.md) | 210 | `result-track:8a56f88893b0e2fa84f8f090a72cf401045e77ef2f24a3a7cbceeba0cfff7bcc` |
| 16 | `theorem` | [BilinForm.toMatrix'_toBilin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-tobilin-source-edition-2.md) | 216 | `result-track:4e5cfbfdc18f33788a07b741e0c03ff92cf1a1a246808bd9454419bec5c8f8df` |
| 17 | `theorem` | [BilinForm.toMatrix'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-apply-source-edition-2.md) | 222 | `result-track:ce031dc6a348041e10a84b7d5ec0f80eea8933bcd9b305eb8a37d1a4aac2ada3` |
| 18 | `theorem` | [BilinForm.toMatrix'_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-comp-source-edition-2.md) | 229 | `result-track:ad72753c955c5583722b26a23b5f51ad5047baf9577861cf3bb0d0ef446f3119` |
| 19 | `theorem` | [BilinForm.toMatrix'_compLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-compleft.md) | 251 | `result-track:6018b48b03962cdd8dc188f18f67ba61cc4950c3b6219633d56883817a4faee3` |
| 20 | `theorem` | [BilinForm.toMatrix'_compRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-compright-source-edition-2.md) | 256 | `result-track:f51c88e945ed70094a50a283952c7bd92e7d626146716a25e65f2b5c4f6deb3f` |
| 21 | `theorem` | [BilinForm.mul_toMatrix'_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-mul-tomatrix-mul-source-edition-2.md) | 262 | `result-track:d0cf10e1c72c4df982ec9d928dd6c2411916744d72600bc88dbb94203b7bb407` |
| 22 | `theorem` | [BilinForm.mul_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-mul-tomatrix.md) | 268 | `result-track:1c9400007ea2f79e215494b1f1f478232649df297e8ab68c38cc60181faab5f5` |
| 23 | `theorem` | [BilinForm.toMatrix'_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-mul.md) | 273 | `result-track:cbd02a5016788242389c9b4f63ca904621b49b2ed3ca2fb966193e1f3528d09d` |
| 24 | `theorem` | [Matrix.toBilin'_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-comp-source-edition-2.md) | 278 | `result-track:d8b242ba39227aa943fc545f7358adef962353a3094c01be08f8dc10591cc97c` |
| 25 | `def` | [BilinForm.toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-source-edition-2.md) | 299 | `declaration-track:441c2e10d59ce83523962a26624f44ea3b08668804aab4274df57a42cfbe969d` |
| 26 | `def` | [Matrix.toBilin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-source-edition-2.md) | 305 | `declaration-track:f05217829d0b805a2349087aeeeafe19ee2ee532786c1a4c21a0811d22f2e83e` |
| 27 | `theorem` | [BilinForm.toMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-apply.md) | 310 | `result-track:451fbc7583e223a6669336302e21b3039653142997f27d7f08b7d3ef4009321b` |
| 28 | `theorem` | [Matrix.toBilin_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-apply.md) | 317 | `result-track:27febcf9ac59d4a357b25229129bf25e4341e8b6497ca44790761ce0a85110cf` |
| 29 | `theorem` | [BilinearForm.toMatrixAux_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinearform-tomatrixaux-eq.md) | 325 | `result-track:fcdaa2441df42e4e1e8a99ac56d06fdaf02ecbd6c0d45f49cad8a1dc270b20e4` |
| 30 | `theorem` | [BilinForm.toMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-symm.md) | 331 | `result-track:648a1277ca5140973ae7a312dc8be212ceecd81caa45e9c2a02447c795636bd1` |
| 31 | `theorem` | [Matrix.toBilin_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-symm-source-edition-2.md) | 336 | `result-track:45d623ae3b04fdab3c321471a7cbfe699de363a708cfb61af38d453d55a39fb1` |
| 32 | `theorem` | [Matrix.toBilin_basisFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-basisfun.md) | 340 | `result-track:b53d31dccbabb2cdba54785e4a8f9114cd18246acdb73eae554f1d89d1af581d` |
| 33 | `theorem` | [BilinForm.toMatrix_basisFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-basisfun.md) | 345 | `result-track:f7d9df83167f509f2771651b5d9ccab52f7d0db618b2273f22049974927c9e2b` |
| 34 | `theorem` | [Matrix.toBilin_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-tomatrix-source-edition-2.md) | 352 | `result-track:e7941e560a70ff40e66c59bc19bddd5766cc7ca9f6fef203a3d7a6b1448b22b2` |
| 35 | `theorem` | [BilinForm.toMatrix_toBilin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-tobilin.md) | 358 | `result-track:0c61a0966073972db47402e6c3c2d8bc9abac9fb11b13854da62594274d3c207` |
| 36 | `theorem` | [BilinForm.toMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-comp.md) | 370 | `result-track:3da082d02a457bef780ead0d8a1531346a94dd5686561c4503e633767384afd7` |
| 37 | `theorem` | [BilinForm.toMatrix_compLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-compleft-source-edition-2.md) | 392 | `result-track:7e8a578928184dcd4566076d2e385ffaf27b768d22fcd725993e6b7f3f91898c` |
| 38 | `theorem` | [BilinForm.toMatrix_compRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-compright.md) | 397 | `result-track:80972c3bdbf01f2f188f4b4eb50c8c41fc386bb8f1eb4aab230bd47132f558c5` |
| 39 | `theorem` | [BilinForm.toMatrix_mul_basis_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-mul-basis-tomatrix.md) | 404 | `result-track:8dd396e0af2e9cebd78eaeb15d58c53800020c583e5c62eac4ffaff6124ddb09` |
| 40 | `theorem` | [BilinForm.mul_toMatrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-mul-tomatrix-mul.md) | 409 | `result-track:c5e4bb685cf4a9854425ac51083bb6bb77769e8b5314a886daec97accd7cf277` |
| 41 | `theorem` | [BilinForm.mul_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-mul-tomatrix-source-edition-2.md) | 415 | `result-track:5a7b741d7b449d7806345f047a76b57ff3f3c8d71a4837b811dd271f5bf11af4` |
| 42 | `theorem` | [BilinForm.toMatrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/bilinform-tomatrix-mul-source-edition-2.md) | 420 | `result-track:d63b88476db5e3f0517989f089000a6b0cf32669c96b3dbfe8668efba231dedc` |
| 43 | `theorem` | [Matrix.toBilin_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-tobilin-comp.md) | 425 | `result-track:a0716a06563647f8caa9abe2cbfb94bd55db53bcdf85c81d0a1ad40667cbc4f5` |
| 44 | `theorem` | [isAdjointPair_toBilin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/isadjointpair-tobilin.md) | 446 | `result-track:cd93ee4f7cbf7c11d67d9e991f7785ed20ce0acf61fcf9799467d09370da7bf1` |
| 45 | `theorem` | [isAdjointPair_toBilin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/isadjointpair-tobilin-source-edition-2.md) | 463 | `result-track:f0f8d72ef06895cc02d71a8866ce3dd5595adc9f238c84f11fbf1e11c9954621` |
| 46 | `theorem` | [Matrix.isAdjointPair_equiv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/matrix-isadjointpair-equiv.md) | 478 | `result-track:ef6c19d771c2db3dbed6fe9d4899a8b013275de1198b33599d33d237ce19cb8a` |
| 47 | `def` | [pairSelfAdjointMatricesSubmodule'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/pairselfadjointmatricessubmodule.md) | 506 | `declaration-track:5081dbe31ee9daecc3525a121b8cc6d5ef8b0a7295b3b8f49bc45a638a8135a3` |
| 48 | `theorem` | [mem_pairSelfAdjointMatricesSubmodule'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/mem-pairselfadjointmatricessubmodule.md) | 512 | `result-track:0b1579b47b9bd759f95588792d8f92b9ebeb5fe82e80fcc808dafa4a7952e878` |
| 49 | `def` | [selfAdjointMatricesSubmodule'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/selfadjointmatricessubmodule.md) | 519 | `declaration-track:8777e8bca4c35014347faf0d2afec516b18431989bb3a99b9f9e4fbc181761d5` |
| 50 | `theorem` | [mem_selfAdjointMatricesSubmodule'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/mem-selfadjointmatricessubmodule.md) | 523 | `result-track:44ce1edd7d194db72efa8a14a1f1b973a4e16f93d68aaf2e677e42829d72584d` |
| 51 | `def` | [skewAdjointMatricesSubmodule'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/skewadjointmatricessubmodule.md) | 530 | `declaration-track:9b712b6d64c303ed3167c6418019cf726d99da2ba3fef29f7f334c0cf2d85b1a` |
| 52 | `theorem` | [mem_skewAdjointMatricesSubmodule'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/mem-skewadjointmatricessubmodule.md) | 534 | `result-track:786931a5d35d39a525540078ed2434ce70af251a967c3974a9bf7924e22dbdc4` |
| 53 | `theorem` | [Matrix Bilinear Form Namespaced Is Adjoint Pair To Bilin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tobilin-iff-nondegenerate-tobilin.md) | 551 | `result-track:72f6fbcf149fb333b50a7774210124dc3a532241cb21b6613e7513331723063d` |
| 54 | `theorem` | [Matrix Bilinear Form Namespaced Is Adjoint Pair To Bilin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/tobilin-source-line-557-occurrence-2.md) | 557 | `result-track:bd6611fe09bd9e30d5722b25cd6a571290263b9bb1deee0d36dc95a1b1b5846c` |
| 55 | `theorem` | [Matrix Bilinear Form Namespaced Is Adjoint Pair To Bilin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tobilin-iff-source-line-563-occurrence-2.md) | 563 | `result-track:553c1fcdd2b5f9e10d40f436ebcbc8e675f394df647a16c3282380612555388a` |
| 56 | `theorem` | [Matrix Bilinear Form Namespaced Is Adjoint Pair To Bilin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/tobilin.md) | 568 | `result-track:ae77002d69dacd442f4d3cf30cdedf213c930631de71045b073a743416836cf8` |
| 57 | `theorem` | [Matrix Bilinear Form Namespaced Is Adjoint Pair To Bilin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tobilin-iff.md) | 574 | `result-track:0c8ec9a6235cb0fb8c95bc85c2b99ffa0ad97a531eb3b67e55cb72896e43f9b5` |
| 58 | `theorem` | [nondegenerate_toMatrix'_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tomatrix-iff.md) | 581 | `result-track:22e55e9dcf8cde4773577d977746a78d6876bb921f3405ee02578a8b002edcd6` |
| 59 | `theorem` | [Nondegenerate.toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tomatrix-source-edition-2.md) | 586 | `result-track:5e31cc21afc0e4133c16ec9edc7ecb2c0538dc3a85f82a2e07e6cf43bba6c279` |
| 60 | `theorem` | [nondegenerate_toMatrix_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tomatrix-iff-source-edition-2.md) | 592 | `result-track:f6722179cbe6388497cbb2253446873e1a8ba635884233f9278875d4a492e754` |
| 61 | `theorem` | [Nondegenerate.toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tomatrix.md) | 597 | `result-track:4b0eabc8293f3f4389aaef401db4fd08f219129a094ac240b7b2f79987c89659` |
| 62 | `theorem` | [nondegenerate_toBilin'_iff_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tobilin-iff-det-ne-zero.md) | 603 | `result-track:88681924ddff61af512a65ed67095b8a2af4ff6ee9c900848a4df68efbe3104b` |
| 63 | `theorem` | [nondegenerate_toBilin'_of_det_ne_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-tobilin-of-det-ne-zero.md) | 608 | `result-track:de43e43a035e3e8fb6ba5e43c4a1e0b2c1d5112938d99128dba74e05cdc18917` |
| 64 | `theorem` | [nondegenerate_iff_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-iff-det-ne-zero.md) | 613 | `result-track:73c4e0250afff8c968fd8aa02e377359f34926314a6c6569b2668a756e29be8c` |
| 65 | `theorem` | [nondegenerate_of_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormNamespacedIsAdjointPairToBilin.lean/declarations/nondegenerate-of-det-ne-zero.md) | 618 | `result-track:bbd1b7b901e619ac8f3131181087eabf611b25a41b0b81ce7d7fa0396e784aa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cb4c2eeb320f2e3a1e86ab062f49d70c2fa92a0133d93e0a78b000405f6cd03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
