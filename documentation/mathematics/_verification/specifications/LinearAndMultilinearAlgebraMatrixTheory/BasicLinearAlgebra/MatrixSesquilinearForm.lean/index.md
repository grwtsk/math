# Verification target: Matrix Sesquilinear Form

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d46ebec00c62bd45c9f08109326a3a76e9828ca5",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d46ebec00c62bd45c9f08109326a3a76e9828ca5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Nondegenerate` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Bilinear` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.toLinearMap₂'Aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-aux.md) | 57 | `declaration-track:19c20aec353b1ad8b6e5ac3c67338680f330e85bdd5348c8254d51e6f09c94b9` |
| 2 | `theorem` | [Matrix.toLinearMap₂'Aux_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-aux-single.md) | 70 | `result-track:1e1831cfa5f32f07a0136a8d300d29fa86064e5a24e9834903140ae0b046e23d` |
| 3 | `def` | [LinearMap.toMatrix₂Aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-aux.md) | 98 | `declaration-track:83c1328c251bb27718f7414beedace6cf9ce09eda49c7ca9ee8f0336d664c2f6` |
| 4 | `theorem` | [LinearMap.toMatrix₂Aux_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-aux-apply.md) | 105 | `result-track:ba99eb99f9c87160fa1d009a4925d418b0fab42b7394f1a864a8df4298e77eea` |
| 5 | `theorem` | [LinearMap.toLinearMap₂'Aux_toMatrix₂Aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tolinearmap-aux-tomatrix-aux.md) | 112 | `result-track:00ab2afd54ab4cc3bd15f1b885efff817a2a0295a5884cf9156f41f09f81d5bd` |
| 6 | `theorem` | [Matrix.toMatrix₂Aux_toLinearMap₂'Aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tomatrix-aux-tolinearmap-aux.md) | 119 | `result-track:53c280446d8f9baa898b438751ca6beaabdad942199ce864472264f374f6bf1b` |
| 7 | `def` | [LinearMap.toMatrixₛₗ₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-source-edition-3.md) | 147 | `declaration-track:fd472efa2230f748762fe301ff397d241decc9dfa60fddc4699cd9e670e50f9c` |
| 8 | `def` | [LinearMap.toMatrix₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-source-edition-2.md) | 155 | `declaration-track:c3f7e83fe9e27476293b50af9e60df50587ac8df11a703cad756bea26008d03e` |
| 9 | `def` | [Matrix.toLinearMapₛₗ₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-source-edition-3.md) | 161 | `declaration-track:f7a36637102ef8791354b326df06cf1e0bf5937370da007da0ec0cca8a2bb2df` |
| 10 | `def` | [Matrix.toLinearMap₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-source-edition-2.md) | 165 | `declaration-track:b587eb9439883e0f1379aa0b1678b24aff1008ff33f922e7e0e30e3cd5488d5e` |
| 11 | `theorem` | [Matrix.toLinearMapₛₗ₂'_aux_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-aux-eq.md) | 170 | `result-track:a129a9c2ec087d64639b9b1af446ebea89b0957cde71a392a28b8771b5b83cb8` |
| 12 | `theorem` | [Matrix.toLinearMapₛₗ₂'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-apply-source-edition-3.md) | 174 | `result-track:a70fdf6c9f6c7de3c10411a2eb6db5133596fa6296169cc245a72b0a542c77bb` |
| 13 | `theorem` | [Matrix.toLinearMap₂'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-apply-source-edition-2.md) | 181 | `result-track:a520eac7ef2b877a3e7eada1a5cf9ab5ef6a05924269e369e48b913a0b1cf2d6` |
| 14 | `theorem` | [Matrix.toLinearMap₂'_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-apply.md) | 187 | `result-track:56c04e038bf5639a635ea6bdb4f2814528d0fdf75c3d06055811fff92225b727` |
| 15 | `theorem` | [Matrix.toLinearMapₛₗ₂'_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-single.md) | 196 | `result-track:38476204d897dd0d440590486f9906900c07d8aa84c9946248d25ed1e70c0041` |
| 16 | `theorem` | [Matrix.toLinearMap₂'_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-single-source-edition-2.md) | 201 | `result-track:be06c6fe2993502709cabcd56101fd8d3ab1524b67fabaef4048c9e32ac247d8` |
| 17 | `theorem` | [LinearMap.toMatrixₛₗ₂'_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-symm-source-edition-2.md) | 206 | `result-track:6f364e70f5888d01958335b52b9802d950ee2f656618d72fe1621aa46ab61066` |
| 18 | `theorem` | [Matrix.toLinearMapₛₗ₂'_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-symm-source-edition-2.md) | 211 | `result-track:a947f25beda4ae947158e56e19e1586f198d750e2e18ee63e8f9f72ee11d5785` |
| 19 | `theorem` | [Matrix.toLinearMapₛₗ₂'_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-tomatrix-source-edition-3.md) | 216 | `result-track:93f4e16ac8a2a128afa99eb6cf063f4ece90d7b4f246541fb90a245726d6ed2b` |
| 20 | `theorem` | [Matrix.toLinearMap₂'_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-tomatrix.md) | 221 | `result-track:56fb587354da407e09a2fcc2f2bd3eca4ac65333516dd47872679853f212bb53` |
| 21 | `theorem` | [LinearMap.toMatrix'_toLinearMapₛₗ₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-tolinearmap-source-edition-3.md) | 226 | `result-track:c1f1ef4623f665dee4f5a67865d06eabffe21e34c9dc542d6ccaeec68a08073c` |
| 22 | `theorem` | [LinearMap.toMatrix'_toLinearMap₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-tolinearmap-source-edition-2.md) | 231 | `result-track:b444b0004d6649b4c0501a91356a6e1c8446290d29bfc6e052d9af8f07a6e959` |
| 23 | `theorem` | [LinearMap.toMatrixₛₗ₂'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-apply.md) | 236 | `result-track:98662554b75d783ea5969a852dd9746c038c255ccfc97a5a29282173bf75719f` |
| 24 | `theorem` | [LinearMap.toMatrix₂'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-apply-source-edition-2.md) | 241 | `result-track:be7337f75d577373321c539aaad21001dd2cea4db519596ae7da8888e5d76c16` |
| 25 | `theorem` | [LinearMap.toMatrix₂'_compl₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-compl-source-edition-4.md) | 258 | `result-track:fead0acf1d050378f1b0f23365c7d75ae8d6bfa31f3a5f7ccd3139f50665da9f` |
| 26 | `theorem` | [LinearMap.toMatrix₂'_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-comp-source-edition-2.md) | 279 | `result-track:ea96fd3a956e14c6b424aec00a3ba300acad4104276abea610f6956b8f1f1493` |
| 27 | `theorem` | [LinearMap.toMatrix₂'_compl₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-compl.md) | 284 | `result-track:0667c7e2b933a9ec54e18f9693f6dfd17c730caa3f51c783633be3c848462286` |
| 28 | `theorem` | [LinearMap.mul_toMatrix₂'_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-mul-tomatrix-mul.md) | 289 | `result-track:9ef29540b442fd2d2cba1aa7f1832832baf008e1337699ffb96a108d0691f16f` |
| 29 | `theorem` | [LinearMap.mul_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-mul-tomatrix-source-edition-2.md) | 294 | `result-track:ffcf3d2691758bca60074e6b743be1063313440537cc78cab0b85e92f20edd23` |
| 30 | `theorem` | [LinearMap.toMatrix₂'_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-mul-source-edition-2.md) | 298 | `result-track:f3e2f2d3c2d0328f151a87c329e7137b6147cc8085041fc8f778c2ec7976c8b4` |
| 31 | `theorem` | [Matrix.toLinearMap₂'_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-comp.md) | 302 | `result-track:a518ae5676d0daf8c6b2dee347f2bbf6f04fa5bfc0e6e3f45096145954ea1a46` |
| 32 | `def` | [LinearMap.toMatrix₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix.md) | 331 | `declaration-track:338f75bd3c9237a7042dc5baafb949621fea6f513bf7263499116af47ac77fe6` |
| 33 | `def` | [Matrix.toLinearMap₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap.md) | 338 | `declaration-track:331e8a296db47ad048116bac2752513e6d4d486d382e8925dca5a629196ad0e7` |
| 34 | `theorem` | [LinearMap.toMatrix₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-apply-source-edition-3.md) | 343 | `result-track:d3c7637d3655ac5c0d5a4c97e101e85d7cfd2048b7da7bab43bdc9bcafaf2f81` |
| 35 | `theorem` | [Matrix.toLinearMap₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-apply-source-edition-4.md) | 350 | `result-track:bed188cf2a6f80f1222fd8dc771994f344beebc1d9a09c7dbd129c748f0737ad` |
| 36 | `theorem` | [LinearMap.toMatrix₂Aux_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-aux-eq.md) | 357 | `result-track:30ed04bf10508c3f53c53a5f785a1a95827fc34900b9f9448296c9ffcf7ef9ac` |
| 37 | `theorem` | [LinearMap.toMatrix₂_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-symm.md) | 362 | `result-track:3a5d4bc91bcb7c3b0952a1bb1f5788ea2af544bf73540dbeedd9ef1d3f00acfb` |
| 38 | `theorem` | [Matrix.toLinearMap₂_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-symm.md) | 367 | `result-track:1d9b1982db778c7e5647e9ff5606124f25722892c2605b65772bca6504c0b41b` |
| 39 | `theorem` | [Matrix.toLinearMap₂_basisFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-basisfun.md) | 371 | `result-track:9104a9131a4d8d9139e0d0a2f55b02f20d444184b2ae6c9be39a44168c8da493` |
| 40 | `theorem` | [LinearMap.toMatrix₂_basisFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-basisfun.md) | 378 | `result-track:d591607feac27fa71294af2af65b5a7d10678b0d1e2f0ea2eb288c92cb95284e` |
| 41 | `theorem` | [Matrix.toLinearMap₂_toMatrix₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-tomatrix-source-edition-2.md) | 385 | `result-track:73995d200dd9365bff1d14e2a2bf23bb2fc3ae45e7b348edda76a14a550f02b9` |
| 42 | `theorem` | [LinearMap.toMatrix₂_toLinearMap₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-tolinearmap.md) | 390 | `result-track:61be31971910985714f9d8a21a8ff471a53ec00b610b324e9298b7e5e65db882` |
| 43 | `theorem` | [LinearMap.toMatrix₂_compl₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-compl-source-edition-2.md) | 403 | `result-track:4720c703b7445cd13529bc4299ae7c59ecc757ac00a0a86a119244c28ff1ce8f` |
| 44 | `theorem` | [LinearMap.toMatrix₂_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-comp.md) | 425 | `result-track:7be42c02d659e91ce63e97e4b9444c4c2e0cb41c2796899ac8a872414c37ef9f` |
| 45 | `theorem` | [LinearMap.toMatrix₂_compl₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-compl-source-edition-3.md) | 431 | `result-track:585c7ed7700a5deef2f5e02b586139bac3cc58e2d4f8c78ca04b3aaeb1214539` |
| 46 | `theorem` | [LinearMap.toMatrix₂_mul_basis_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-mul-basis-tomatrix.md) | 438 | `result-track:aad00e6a1b8db1f745f73d58a532ae7cec8424245cdddca01841a4b237a7b976` |
| 47 | `theorem` | [LinearMap.mul_toMatrix₂_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-mul-tomatrix-mul-source-edition-2.md) | 445 | `result-track:a0877e7b0d4e53a474868149fc96bfd048aaff83b60b95b1f2f24c3de67539e9` |
| 48 | `theorem` | [LinearMap.mul_toMatrix₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-mul-tomatrix.md) | 451 | `result-track:6a843c28a6006584337ff346d7ff17305d53d68a6fdc6f35c24a734e03c3a46d` |
| 49 | `theorem` | [LinearMap.toMatrix₂_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/linearmap-tomatrix-mul.md) | 456 | `result-track:220eaea4ca4eddc85eb58d528b9f105a993ae7a124d11eeb886d4b1947a33937` |
| 50 | `theorem` | [Matrix.toLinearMap₂_compl₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-tolinearmap-compl.md) | 461 | `result-track:a9a7a14dbb44d22ba3f72e051b81675d22784882bf538a284dc3ce8211f9d1c0` |
| 51 | `def` | [Matrix.IsAdjointPair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-isadjointpair.md) | 490 | `declaration-track:cfcb22fef741b66dfa57c30ae23bcd3568939b7608405a5564d35b89c35b816a` |
| 52 | `def` | [Matrix.IsSelfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-isselfadjoint.md) | 495 | `declaration-track:b243ed356f8c555145aef2f9a040df115d1c7fae63a589cd24a8347bf56ec325` |
| 53 | `def` | [Matrix.IsSkewAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-isskewadjoint.md) | 500 | `declaration-track:ab083997d1d93b6141cfd0281ccd47e783828199d278be81dcfa97b1b48e86f9` |
| 54 | `theorem` | [isAdjointPair_toLinearMap₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/isadjointpair-tolinearmap.md) | 506 | `result-track:48cb37c58a6f18816d981ff6fdcc58fa6bfefd55d51726ddc23e57a5cd747f58` |
| 55 | `theorem` | [isAdjointPair_toLinearMap₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/isadjointpair-tolinearmap-source-edition-2.md) | 523 | `result-track:f4c51a48f8b94e7ec04043e5a8bee213e86a3f536fca0609286743df71e03bee` |
| 56 | `theorem` | [Matrix.isAdjointPair_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/matrix-isadjointpair-equiv.md) | 539 | `result-track:fc2fc08f71d12b5fe1e6428773f2fb391c1ae7ec935f1608c17e4fee1edc9463` |
| 57 | `def` | [pairSelfAdjointMatricesSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/pairselfadjointmatricessubmodule.md) | 562 | `declaration-track:0729084abb7249b8cd96576009a885a9d4afc735175c85e1358d6919b94f5c42` |
| 58 | `theorem` | [mem_pairSelfAdjointMatricesSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/mem-pairselfadjointmatricessubmodule.md) | 569 | `result-track:dfe335f9da8185ffacd8b1ae10ffc4bfc2ce9ed8581d4ef60dcce993f16c4a15` |
| 59 | `def` | [selfAdjointMatricesSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/selfadjointmatricessubmodule.md) | 577 | `declaration-track:d97f6faa0787396b91b6b78eb91f09564a5098f92f33d382501bf33edb78a4f6` |
| 60 | `theorem` | [mem_selfAdjointMatricesSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/mem-selfadjointmatricessubmodule.md) | 581 | `result-track:31d7a7778761e5013c30b9e79da24177abb19d92454830e693bf1719a4a2916d` |
| 61 | `def` | [skewAdjointMatricesSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/skewadjointmatricessubmodule.md) | 587 | `declaration-track:070662131790e6b80255c7b915f3147c76287a55f5eea9e753bc537cbc21e594` |
| 62 | `theorem` | [mem_skewAdjointMatricesSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/mem-skewadjointmatricessubmodule.md) | 591 | `result-track:9fc2f4c9e02aba1dcf6d67510d11f2e77b5ea2086c53e9f1ddfab792264ba3a7` |
| 63 | `theorem` | [_root_.Matrix.separatingLeft_toLinearMap₂'_iff_separatingLeft_toLinearMap₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/root-matrix-separatingleft-tolinearmap-iff-separatingleft-tolinearmap.md) | 610 | `result-track:3ef34e72f2313bba2b28a9fdfe1346192e2477b0f1dcd9382eddc7e56364693f` |
| 64 | `theorem` | [_root_.Matrix.Nondegenerate.toLinearMap₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/root-matrix-nondegenerate-tolinearmap-source-edition-2.md) | 617 | `result-track:e75a6819fbe298a28a2784560741e0063d29c05c7722b73c500ac9208f3737f3` |
| 65 | `theorem` | [_root_.Matrix.separatingLeft_toLinearMap₂'_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/root-matrix-separatingleft-tolinearmap-iff.md) | 622 | `result-track:9d5f614dfdc04f22d96f45d81a8e5ca6901b9e1f453d344b57f59e6eaa6ebca3` |
| 66 | `theorem` | [_root_.Matrix.Nondegenerate.toLinearMap₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/root-matrix-nondegenerate-tolinearmap.md) | 627 | `result-track:3708179284819815be4a26a836cb1d6d445086ed1732114f274da02991d1a5f7` |
| 67 | `theorem` | [_root_.Matrix.separatingLeft_toLinearMap₂_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/root-matrix-separatingleft-tolinearmap-iff-source-edition-2.md) | 632 | `result-track:f1883fc39ab8ddd9e7a321ebc2c60f67e3096d9f7b3983d0f76fac82add308a3` |
| 68 | `theorem` | [nondegenerate_toMatrix₂'_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/nondegenerate-tomatrix-iff-source-edition-2.md) | 639 | `result-track:9f2701d1ca28b920361dea487ceacafd43f0c3f7764de27b63438defe5126329` |
| 69 | `theorem` | [SeparatingLeft.toMatrix₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/separatingleft-tomatrix-source-edition-2.md) | 644 | `result-track:a60492875aa7aa6566b0c299c7d9ce3d95c175969a82480cbad210fe5f0f0aef` |
| 70 | `theorem` | [nondegenerate_toMatrix_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/nondegenerate-tomatrix-iff.md) | 649 | `result-track:03dca8d73f4d4a6acd98e2138ee1929f046d6b841f34201effabb310045544bc` |
| 71 | `theorem` | [SeparatingLeft.toMatrix₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/separatingleft-tomatrix.md) | 654 | `result-track:2d0dc5de7bbedf109d6ce239a2973f4c67c25786130dc74e6734bb1bfcd78b04` |
| 72 | `theorem` | [separatingLeft_toLinearMap₂'_iff_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/separatingleft-tolinearmap-iff-det-ne-zero.md) | 661 | `result-track:978b4b7f0f1d4c42ff47d878f8376e60f20bdc5c0ac9258d2d8cd7ab4c40e0a1` |
| 73 | `theorem` | [separatingLeft_toLinearMap₂'_of_det_ne_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/separatingleft-tolinearmap-of-det-ne-zero.md) | 665 | `result-track:bcf706d499449b9858323e2e9a212e61c488663c186251f01206c5190ffee7c8` |
| 74 | `theorem` | [separatingLeft_iff_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/separatingleft-iff-det-ne-zero.md) | 669 | `result-track:4148ce99c166698813fa87b47e80d3bc59dbfc8b8bbaf1a0d5d400e0b8c20753` |
| 75 | `theorem` | [separatingLeft_of_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearForm.lean/declarations/separatingleft-of-det-ne-zero.md) | 673 | `result-track:7101bfd5582f43b71395341d144d7639de231afb8595f4baed01e9ae589acbb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=611a585df7c132f86f314c27de728a5ac0f1c126a4d373d267f13aec6a935cc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
