# Verification target: Matrix Basic Of Linear Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e71002f0d5fbcb179719f239c1a747c64879caf4",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e71002f0d5fbcb179719f239c1a747c64879caf4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.RingEquiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [decidableEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/decidableeq.md) | 40 | `declaration-track:391e0262aa1c8a26c313bb34bf43843df82e0c51e0a6d8c57a04f74cdd9f14db` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:5d4e632f253d3248a61e03972d7f4d75e2e1d1094ac73def93ba31cd550ac2a7` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/instance.md) | 46 | `declaration-track:412de07256293b5ad9f493183753e2eb252b2ff12bf4bbb5baf8de0f588ab0f5` |
| 4 | `def` | [ofLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/oflinearequiv.md) | 53 | `declaration-track:e140e1831ea5239b019bb799c26a77e7ca219e4f27796a9f6b6776d7dc84b643` |
| 5 | `lemma` | [coe_ofLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/coe-oflinearequiv.md) | 57 | `result-track:759a84f64a152e82837d175c69bf461be0896255d0fd535da21ff7aee6a99c47` |
| 6 | `lemma` | [coe_ofLinearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/coe-oflinearequiv-symm.md) | 59 | `result-track:8ee5b068b662439d945e5f2df2fd85e907bb4c4c741d4ef995dac4d97c0f3882` |
| 7 | `theorem` | [sum_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/sum-apply.md) | 64 | `result-track:7f1b149d56adb7a0b4ea3182960511450ddaa7f35ab49c00a4bb0782838b31f9` |
| 8 | `def` | [diagonalAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diagonaladdmonoidhom.md) | 82 | `declaration-track:b426d210cee3a126edae8740bda7e180c9b8cc622c57d7dfddf2e0313e3ee18c` |
| 9 | `def` | [diagonalLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diagonallinearmap.md) | 91 | `declaration-track:06dc395dea05d9da25ff3cb6693d502c16e89898364cb2bcae4ad1c8a86525bd` |
| 10 | `lemma` | [zero_le_one_elem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/zero-le-one-elem.md) | 100 | `result-track:bffc06839118efbed4aeb16881c5e2ad9a364307f8095cfe77e94b16fcdddd9c` |
| 11 | `lemma` | [zero_le_one_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/zero-le-one-row.md) | 107 | `result-track:975816befc8ae73cdfaee57898dad396faf4d6d22fa7008de666cd705f4952ae` |
| 12 | `def` | [diagAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diagaddmonoidhom.md) | 121 | `declaration-track:de448c0f5c535a4cd4c7b5b71e75b5ed80972eb8a9611b7e281f50a6c193b443` |
| 13 | `def` | [diagLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diaglinearmap.md) | 130 | `declaration-track:c549af0172605bcf43f8115ec9c2835dd9ed25999d693e1ef9f021b980cc4288` |
| 14 | `theorem` | [diag_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diag-list-sum.md) | 136 | `result-track:7a8e55e0c3af19eb4cfb9717da3ebcb46a1325eacb8fdca3c26114951534fd35` |
| 15 | `theorem` | [diag_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diag-multiset-sum.md) | 140 | `result-track:5c46759b6df7103b462e662d436a6ab814c85504d05bfa7f0c87a5c3415344f3` |
| 16 | `theorem` | [diag_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diag-sum.md) | 145 | `result-track:1dc88e4ecad71db9514fd19414778b2bc131afbc39ac7b4e622eff80fa3e4167` |
| 17 | `def` | [diagonalRingHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diagonalringhom.md) | 167 | `declaration-track:51f15a796b36a3f5866e39b0ded3947e739d9a364a871cb93d096d04ae0f9feb` |
| 18 | `theorem` | [diagonal_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diagonal-pow.md) | 179 | `result-track:4b4667dd436f0a6770de100502737a604e00bea06de7b6ebf90af42be521dd6e` |
| 19 | `def` | [scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/scalar.md) | 186 | `declaration-track:47636dbfcbcc42c2432a1c9606544971a58355b50fce9b9a19a3635e1a5471bb` |
| 20 | `theorem` | [scalar_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/scalar-apply.md) | 194 | `result-track:44ff88e41a2c70e0d5b5cd08927239930da54fed8644a37d86e02e6971c2bea1` |
| 21 | `theorem` | [scalar_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/scalar-inj.md) | 197 | `result-track:308480363b380ede29a58822e8429b63b1e44806357029cf28742a1018fdfe02` |
| 22 | `theorem` | [scalar_commute_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/scalar-commute-iff.md) | 200 | `result-track:b3109bc59bb0425eea64172e56a38ccfbdded8c58a536f2fbba7f56a1ebe8aac` |
| 23 | `theorem` | [scalar_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/scalar-commute.md) | 204 | `result-track:66a8b3feeea1b6d5ae1ac32db41a3ab4f7524ff2af36c2465ccd2bd9b52b25bd` |
| 24 | `instance` | [instAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/instalgebra.md) | 216 | `declaration-track:ab97d7538d6c7af13178d4017d3575c684d213a30f1554e8f7f933a3fbd4e585` |
| 25 | `theorem` | [algebraMap_matrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/algebramap-matrix-apply.md) | 221 | `result-track:06917967c35177bf1d2ae68a7e1b28d334fa00b912f68bfffae9fb9255564570` |
| 26 | `theorem` | [algebraMap_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/algebramap-eq-diagonal.md) | 226 | `result-track:aab57675f57ac6a97a204ef6d2a3ff42345f80cc9e112c9fdcc2d4afbc68d932` |
| 27 | `theorem` | [algebraMap_eq_diagonalRingHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/algebramap-eq-diagonalringhom.md) | 229 | `result-track:8579ca8214fabf898e7d74add3b3ca9818a7b1fbfd81be01b5ff29314c004743` |
| 28 | `theorem` | [map_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/map-algebramap.md) | 233 | `result-track:13ace412e3f826d48ee8ef91bd447106e82ae60822074e1415e0563e58870f7a` |
| 29 | `def` | [diagonalAlgHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/diagonalalghom.md) | 243 | `declaration-track:cc55797dcc3742c3b65ab0a4ea9e3b2ec8c3e59c2308391e4a3e9059aa7d8c74` |
| 30 | `def` | [entryAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entryaddhom.md) | 257 | `declaration-track:214feace4331f4cde3ef4e651561c87b0d34a15388a0b410f9ae057c78fcf7c9` |
| 31 | `lemma` | [entryAddHom_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entryaddhom-eq-comp.md) | 263 | `result-track:fd57dbcd9d194c0c341fbbf371e8e0ac3cc78c330ec9e043e66b72a1aa49145c` |
| 32 | `def` | [entryAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entryaddmonoidhom.md) | 281 | `declaration-track:6f52fa24065054ef437ff67e3688d9638c8fe70980f0437a8cfb2988cb20ebe7` |
| 33 | `lemma` | [entryAddMonoidHom_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entryaddmonoidhom-eq-comp.md) | 288 | `result-track:f3d72d9fc53dca083ae45d26e482d11d7fa70c0af010f56b52be6d2f98bc8570` |
| 34 | `lemma` | [evalAddMonoidHom_comp_diagAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/evaladdmonoidhom-comp-diagaddmonoidhom.md) | 294 | `result-track:8e439f81b10f79884767415e1d1dc4ca4295dc634e6d8c5c8cb1085c97654ac1` |
| 35 | `lemma` | [entryAddMonoidHom_toAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entryaddmonoidhom-toaddhom.md) | 298 | `result-track:eb5f88ffbc986bc734b36f163f90c753c5e8ebf42c12ec33c41df6252f9d10d8` |
| 36 | `def` | [entryLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entrylinearmap.md) | 313 | `declaration-track:8e94bbc6bcbda17deaebac4adaa21b526bce215ad41ab4c5605dd26565f69aaa` |
| 37 | `lemma` | [entryLinearMap_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entrylinearmap-eq-comp.md) | 321 | `result-track:fbdc9ce2e7ef231aa53b589472c70f4a13bfc68b08889b7f97275eaffe8c390c` |
| 38 | `lemma` | [proj_comp_diagLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/proj-comp-diaglinearmap.md) | 326 | `result-track:688324852cbfa79e4d25b2833dab2197edff77cc1cb247dcfa28b2c6c6a12098` |
| 39 | `lemma` | [entryLinearMap_toAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entrylinearmap-toaddmonoidhom.md) | 330 | `result-track:108467d5ed1783ec3145f2c4b2e0be88873a293968df771b954de21719e65281` |
| 40 | `lemma` | [entryLinearMap_toAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entrylinearmap-toaddhom.md) | 333 | `result-track:0166634f9f4116f470cd6e365d83adf3e01e6c49aff4ce57d883a2b22dc4e7dd` |
| 41 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix.md) | 350 | `declaration-track:1d1df567d7337874990fca0d2f3647d798e5022e55f8f84abdcb211396fbb815` |
| 42 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-refl-source-edition-5.md) | 357 | `result-track:9dd39892805fbab86aa3b86f18d6f9109b8d90ff3b270fd22d0b9517caaebe4d` |
| 43 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-symm-source-edition-4.md) | 361 | `result-track:b55b520998ccf3a0442e6af59f9bc459971a9228d2a3e43ba5e5093f3efa9b0f` |
| 44 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-trans.md) | 365 | `result-track:4a405aa3a777dbce4a3b0413cd1c529768b30ad3d3eb350308005e3e1686d737` |
| 45 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-source-edition-8.md) | 378 | `declaration-track:e334b65b84c6df240b9f71c0690c747fffd7f886e356312e33dc6b9e94b19df0` |
| 46 | `theorem` | [mapMatrix_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-id.md) | 384 | `result-track:1501fb5688b5821c6892d5c0e45d16a8525ba52bf029026dc22c5e08954c909b` |
| 47 | `theorem` | [mapMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-comp-source-edition-2.md) | 388 | `result-track:458efe9110989e142459cbab81e426118f6b2be83cf6f64c9d57345935b6336a` |
| 48 | `lemma` | [entryAddMonoidHom_comp_mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entryaddmonoidhom-comp-mapmatrix.md) | 392 | `result-track:eb4e5822565d1b557a1a3fa2a4adc00f85c1f1ca100d43620270a0c25fbbcca1` |
| 49 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-source-edition-9.md) | 404 | `declaration-track:f21a1307f96a0c4565060d99af1c06c688ad6b03a9e2c374ad65794bba0e5c8d` |
| 50 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-refl-source-edition-4.md) | 411 | `result-track:530abb9417ce41406c7eb03a2378dbf8e1096a6204a709bf26ac34e5b0a05913` |
| 51 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-symm-source-edition-3.md) | 415 | `result-track:7c928f0e625bc84903fc84a2386bd1c9820a83b3c79ff311ed106d22cf7576a9` |
| 52 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-trans-source-edition-4.md) | 419 | `result-track:eea6a1afe67f8e439ba6449957feb9c28e25c79d58e59b3b0815e3289702e727` |
| 53 | `lemma` | [entryAddHom_comp_mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entryaddhom-comp-mapmatrix.md) | 423 | `result-track:f83c5aecc5ff9b042600b52a7b75814b9eab800013627bb18f8c32a2f62ed26d` |
| 54 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-source-edition-3.md) | 437 | `declaration-track:569bda46d81663a21e5a2ea33467af18ff376d7a9f7e6b93b4b500fbdf1220c2` |
| 55 | `theorem` | [mapMatrix_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-id-source-edition-4.md) | 443 | `result-track:ad14d0065267ccc82768b093bdcd8b73562394f528860f96fc9a82f4ff12455f` |
| 56 | `theorem` | [mapMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-comp-source-edition-4.md) | 447 | `result-track:703eac3d952db02dc75f9ed619a3b24fef228898088677574d4a9541fba6d879` |
| 57 | `lemma` | [entryLinearMap_comp_mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entrylinearmap-comp-mapmatrix.md) | 451 | `result-track:36890bd57dc64effe5d8c4b8546a143a44201f8a44158da8e0515edfbf2fddd6` |
| 58 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-source-edition-4.md) | 464 | `declaration-track:6e16acc54ceab6c09ed017872b0688599c0f29a29eb8d741b272249a1a2eff0f` |
| 59 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-refl-source-edition-3.md) | 471 | `result-track:3d298f3726b25796469c8bc3980ac1d548249c94e81d2d9e05a83ca31ce75fd0` |
| 60 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-symm-source-edition-5.md) | 475 | `result-track:cd9decd763f1756eb5470401125e60bec8549bee2ac17a2d161597c0517fd0d6` |
| 61 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-trans-source-edition-3.md) | 480 | `result-track:d5bd19cd8ddb1f2673bfc6c127acc7922a2c66f1afd3b1acbd8a47b28c1a6028` |
| 62 | `lemma` | [mapMatrix_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-tolinearmap.md) | 484 | `result-track:e4f147c340c47479de33431ccbeaf624de201316559592f08909f0fa4c5834de` |
| 63 | `lemma` | [entryLinearMap_comp_mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/entrylinearmap-comp-mapmatrix-source-edition-2.md) | 488 | `result-track:825207385bc72fd04f59d48c3ff5d694142bb5189e205215dcd1032647651353` |
| 64 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-source-edition-7.md) | 503 | `declaration-track:d5125c1b094a9e3013c3fdf8c48b125374ec2c1999ae3f397b94d64aa8e97415` |
| 65 | `theorem` | [mapMatrix_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-id-source-edition-2.md) | 510 | `result-track:3ab749a8907f09f62628ee5c7c89a6a86f0458aae8c097725dd9a1e5da0174d2` |
| 66 | `theorem` | [mapMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-comp-source-edition-3.md) | 514 | `result-track:4a5b89cecd88096555b8c557fdccc475798820b72ee1399d6b34eed55d2a9e29` |
| 67 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-source-edition-2.md) | 528 | `declaration-track:3761544ec98c10040b429ba20ec0573182f31ad55df5904db0dd41e180b69fbf` |
| 68 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-refl.md) | 535 | `result-track:13f46cd42504a004c718a113fb0bb88a21574222459407450dd4efd6c2056126` |
| 69 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-symm-source-edition-2.md) | 539 | `result-track:6efa08a2127845e40869baa6a6ac93d71aa89023e81f8699dee7470b992afd17` |
| 70 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-trans-source-edition-2.md) | 543 | `result-track:96605f677cf1e63a5ad07fe3e91374a0e48318627ed7ebf25522928d5eae285c` |
| 71 | `def` | [mopMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mopmatrix.md) | 552 | `declaration-track:4881b1271234449673a2263990b69f1dd684ba57ef0b7b3388a3819f17912e7a` |
| 72 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-source-edition-6.md) | 571 | `declaration-track:a4bfcbc988e5396c0a581113778e8a9bce23361601f1d1b77bfe4ae3a76d8b86` |
| 73 | `theorem` | [mapMatrix_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-id-source-edition-3.md) | 577 | `result-track:9e6f09aedd9ba3f5007c2a63163d67da5ffa0e8012a1c7cab67e2525d6ef0fc9` |
| 74 | `theorem` | [mapMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-comp.md) | 581 | `result-track:2408917c627999bf0cbc28d6fffe3b1aedc699f2dcfd9f70a2fa3b0fc546f73d` |
| 75 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-source-edition-5.md) | 596 | `declaration-track:8b7b2f60b13c59ec6ac059f19b44dc6d282b178250b060c694e9f2e9df822696` |
| 76 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-refl-source-edition-2.md) | 603 | `result-track:38422df94d2e1a0e90a1ef654db34e1619c78f836ecfd9e64f79198b058fe822` |
| 77 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-symm.md) | 607 | `result-track:4bf99ee8321132e77da0e254beb02658cc859711e11a5def9b10658e2f79b587` |
| 78 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mapmatrix-trans-source-edition-5.md) | 612 | `result-track:fa30fece0e8a57d3708879ee8d45b7e98cde83fadc5bc5b9076ef688285b804d` |
| 79 | `def` | [mopMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/mopmatrix-source-edition-2.md) | 619 | `declaration-track:e8be0b2c25ad21e6b6a6fd2725f0cbe28715823e70d7da65817125c6b7549c82` |
| 80 | `def` | [transposeAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transposeaddequiv.md) | 638 | `declaration-track:d0f098457690c908b80234fe374ae21de3d263f78c46526627012d623c5dc4b4` |
| 81 | `theorem` | [transposeAddEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transposeaddequiv-symm.md) | 646 | `result-track:13c9153fda0509644ca41dc6dffda86fceecb0e576342413b23f719738b152ce` |
| 82 | `theorem` | [transpose_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transpose-list-sum.md) | 651 | `result-track:d5a868fc81a0a3540fceab6813e66a7b04fcf987ea80727dc5ff3d5e3919a5a7` |
| 83 | `theorem` | [transpose_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transpose-multiset-sum.md) | 655 | `result-track:b84dfb5d22fa91de7c491b8e0cca06eae125aa03a29e2e57c68fbee3d4a78112` |
| 84 | `theorem` | [transpose_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transpose-sum.md) | 659 | `result-track:55da3b78d8ef7e4f384e2674b7070af1453ddee10ee669a4cc782ff0acaa7084` |
| 85 | `def` | [transposeLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transposelinearequiv.md) | 667 | `declaration-track:7ed5a267ee232b1f8d3c7cc85c15e17d4de20c2056985c34cf751563cf7ba412` |
| 86 | `theorem` | [transposeLinearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transposelinearequiv-symm.md) | 672 | `result-track:fc09dcabe706261babba3b29bec91cdf8b0f69c8d8bb3ffcdf507f716c909fe6` |
| 87 | `def` | [transposeRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transposeringequiv.md) | 681 | `declaration-track:303a9217aa4cac41186f81f9034ee884818b80e7c286194674970b91bad255bd` |
| 88 | `theorem` | [transpose_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transpose-pow.md) | 694 | `result-track:37e7d1ad2c7cbe6ebc62c1b0e813240aab12c36dc7ebacca4eefb5d5fec7e9bf` |
| 89 | `theorem` | [transpose_list_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transpose-list-prod.md) | 698 | `result-track:44d3630684bf68f5bc3676c971f34fc09b52d8906fd219ff4543ece9892bc78e` |
| 90 | `def` | [transposeAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicOfLinearEquiv.lean/declarations/transposealgequiv.md) | 706 | `declaration-track:9484ddbf7b8aeca97e5ef76020bf6cdb570997737a3d54bb187dd09afd4c4310` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=064db5afaf668ed52293bceb52cd473ad7e2ffa8f952447748755e41c51f59dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
