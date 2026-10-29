# Verification target: Algebraic Geometry Sheafed Space Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2def7e1e710268ae17028b69afa0155459980f80",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant45cd72b8303936eb87a0d99b79623d2625fd973c3af8d1b11a84d49305dccc41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2def7e1e710268ae17028b69afa0155459980f80`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant45cd72b8303936eb87a0d99b79623d2625fd973c3af8d1b11a84d49305dccc41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant45cd72b8303936eb87a0d99b79623d2625fd973c3af8d1b11a84d49305dccc41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PresheafedSpace.HasColimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/sheafedspace.md) | 44 | `declaration-track:4eae7dfc075fd7e3605d9fb40ed68965eca56c3d8dc6e04dd191b78ba9f3edfb` |
| 2 | `instance` | [coeCarrier](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/coecarrier.md) | 55 | `declaration-track:dc94c686ea521cea72f11eb5f03f90f822293914979513a2b2dd77bab124ad66` |
| 3 | `instance` | [coeSort](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/coesort.md) | 59 | `declaration-track:9158f4b8e5ef765d74c22397ca5f05146624f91d9d4c3c097aab27d992223ec9` |
| 4 | `def` | [sheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/sheaf.md) | 63 | `declaration-track:1f2afa6085d5c77e344bade25cad236c28fbc82ab4f7536be266104263398b4c` |
| 5 | `theorem` | [mk_coe](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/mk-coe.md) | 77 | `result-track:768bc02aca1044b4496bb5e3d65c3d0ef4c59cef92e02e364c1dccb3b810ac6c` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/instance-source-edition-5.md) | 85 | `declaration-track:cd0ca5452d3b53e15ee793bad72830b4ed7142b47810eaf209379c7b3ab5eec7` |
| 7 | `def` | [unit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/unit.md) | 89 | `declaration-track:b27237192341a424318f3e436df12d7b48522ce0add5e8b01077c0ba5c8c9d81` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/instance.md) | 94 | `declaration-track:01339196243ef21e60828a3bb07fe945017aefb8c64253db3a551f1a0edf5be2` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/instance-source-edition-3.md) | 97 | `declaration-track:60dc2617fc5513d64cd3b33728285d0835d3c89012bdada9886d340a334a9794` |
| 10 | `theorem` | [ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/ext.md) | 104 | `result-track:202cedff637130c9b9449035bc4ede4187855487a514cf59f648495bca7d74ae` |
| 11 | `def` | [forgetToPresheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/forgettopresheafedspace.md) | 110 | `declaration-track:1db0b5ad13aab403bfa92452bb74189891d42bf18b5fe9376dbd9a2493e7dcba` |
| 12 | `instance` | [forgetToPresheafedSpace_full](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/forgettopresheafedspace-full.md) | 116 | `declaration-track:ae4ac671d038ad2fc1c46f5b7d29ec31c83cb339df43370d50a3f32f3f1d58ae` |
| 13 | `instance` | [forgetToPresheafedSpace_faithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/forgettopresheafedspace-faithful.md) | 120 | `declaration-track:595fd0542a8ef2880a1665a370999d33a2e8c62c845fef6b56c58af97693cd1a` |
| 14 | `instance` | [is_presheafedSpace_iso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/is-presheafedspace-iso.md) | 122 | `declaration-track:99d7b7ea9331231aa4e305539cf4af2869224bc8f814095a51f14c2f7ff07e14` |
| 15 | `theorem` | [id_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/id-base.md) | 133 | `result-track:eb6925726563c1df650bcb5ba2852b5432607f2489cc5a55b93be110a764825a` |
| 16 | `theorem` | [id_c](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/id-c.md) | 138 | `result-track:62ec1561f2fdba884ad021f125f5b03ce5d7efb4c16569840d8f98f250741f2e` |
| 17 | `theorem` | [id_c_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/id-c-app.md) | 145 | `result-track:6343e13b42c090f184622837c29bf03c64220a2efc63f05046a2b19409aaa565` |
| 18 | `theorem` | [comp_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/comp-base.md) | 152 | `result-track:2379e7f3380649a18b973754eca6a30438a13b9fe783641309dd0e07ad0a8e28` |
| 19 | `theorem` | [comp_c_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/comp-c-app-source-edition-2.md) | 159 | `result-track:c21722a0b4aeaa62f9098d71e98ce57061e7913c77f9cba4e4fc82bf5ce02cb8` |
| 20 | `theorem` | [comp_c_app'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/comp-c-app.md) | 165 | `result-track:7391152856745cc2a9b8b5e61ee1f41314a04eb30b0e09f68c6585de5d0b9d4f` |
| 21 | `theorem` | [congr_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/congr-app.md) | 171 | `result-track:258f0a66903c4962040112c4e5b93bd000892c97869ddf436035a1e7e576f2ec` |
| 22 | `def` | [forget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/forget.md) | 180 | `declaration-track:820088f7dd61463bae50b2ce86648faff443b00fe5d4804e60b0443ac0705e04` |
| 23 | `def` | [restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/restrict.md) | 192 | `declaration-track:7bc282f4da60307bde2bcb25ce5dd240bea5caca0e5ae932ff91e392efdbb2a2` |
| 24 | `def` | [restrictTopIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/restricttopiso.md) | 200 | `declaration-track:7efedc22d2b57259964cc8a6d4c7054d2ec4674f102be9853b0944a7dc644b7d` |
| 25 | `def` | [Γ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/anonymous.md) | 207 | `declaration-track:03b92f53b0031d4fbfeb61e097f076a447ea619f2ce0733b1b7ad3cfbd9dbd36` |
| 26 | `theorem` | [Γ_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/def.md) | 212 | `result-track:98d63b71ed70978daf2d56c04c2a53a2c24d764e00e404db53beee8d323b86d7` |
| 27 | `theorem` | [Γ_obj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/obj.md) | 218 | `result-track:f4ec44b5054a2da91c601a5f9b9aa0444c055de9d72eea3a679cbde30cc32a4c` |
| 28 | `theorem` | [Γ_obj_op](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/obj-op.md) | 223 | `result-track:8ab919f36e3aee414b82795ceecaaf1166ac1210661bdce2024d9fcc252c1b3d` |
| 29 | `theorem` | [Γ_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/map.md) | 229 | `result-track:97e05e6fc952432211224590a6e4674e7edf2ad17b3d246e2548d0371feeb250` |
| 30 | `theorem` | [Γ_map_op](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/map-op.md) | 234 | `result-track:cd2e70aafc9ee0fb5b9d1cb4e6c8be99674df4130e0adfb0f5c2fce67f45835b` |
| 31 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/instance-source-edition-6.md) | 239 | `declaration-track:ce1ae6c66f3b3aa9534988e5b22d685fd3f551d44a788c6e81a39f82257baa36` |
| 32 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/instance-source-edition-4.md) | 248 | `declaration-track:77e5f5c4bb583abe185ce27dc24465c83f9bfeb98cb1be203e0c53e9f025912d` |
| 33 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometrySheafedSpaceNamespaced.lean/declarations/instance-source-edition-2.md) | 251 | `declaration-track:40c3cb18dc1d21d1045241932451268c76cba7ded0e91c6ebd67dcb3a2588cb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b3bfeb60460dfc291e9ef26b1f5b1859e18bb643ecdc4661eba26d2ad0d3ee7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant45cd72b8303936eb87a0d99b79623d2625fd973c3af8d1b11a84d49305dccc41.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant45cd72b8303936eb87a0d99b79623d2625fd973c3af8d1b11a84d49305dccc41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
