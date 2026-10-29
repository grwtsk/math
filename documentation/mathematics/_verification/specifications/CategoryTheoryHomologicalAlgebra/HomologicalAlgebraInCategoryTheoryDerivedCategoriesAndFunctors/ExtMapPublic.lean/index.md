# Verification target: Ext Map Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "021718fecc7699c646cf9a76621ecc1e042edbd9",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `021718fecc7699c646cf9a76621ecc1e042edbd9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [DerivedCategory.map_triangleOfSESδ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/derivedcategory-map-triangleofses.md) | 64 | `result-track:dd3627cdc45ad4e615361c10b1405fcf1fe65581919cad626b28e27d1d151476` |
| 2 | `lemma` | [ShortComplex.ShortExact.mapShiftedHom_singleδ'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/shortcomplex-shortexact-mapshiftedhom-single.md) | 86 | `result-track:0014b5e4ee72901efd7fdd8fad853b1de3c8f4909326433999e24b9eb95d215a` |
| 3 | `lemma` | [ShortComplex.ShortExact.mapShiftedHom_singleδ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/shortcomplex-shortexact-mapshiftedhom-single-source-edition-2.md) | 107 | `result-track:1db948061c871acf79f9cf290d1db2402a3f703c7fa3460294a4ff24b735d07f` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/instance.md) | 122 | `declaration-track:ab07cd06dee7e1c10f0f2ee6082cc100a3c577aabba4a136f5b7d273e802c4bd` |
| 5 | `def` | [Abelian.Ext.mapExactFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/abelian-ext-mapexactfunctor.md) | 129 | `declaration-track:519a6890ba54515edcb76e49ebba83a0003d5132edfa29db5ad36902cedb08d8` |
| 6 | `lemma` | [Abelian.Ext.mapExactFunctor_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/abelian-ext-mapexactfunctor-hom.md) | 136 | `result-track:75c6e077e0074cb1149825db8d4256f5b84d49b9f8d48facfa3c51b75e9cd36e` |
| 7 | `lemma` | [Abelian.Ext.mapExactFunctor_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/abelian-ext-mapexactfunctor-zero.md) | 160 | `result-track:66419d27ffcdbf97b08aa777ef996919e62c069032e5a60090a867ea2ad2b9d4` |
| 8 | `lemma` | [Abelian.Ext.mapExactFunctor_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/abelian-ext-mapexactfunctor-add.md) | 164 | `result-track:00195a7237b2342df8edfa18d093b05695ae3b9031d096d39b157755725490cd` |
| 9 | `def` | [Functor.mapExtAddHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/functor-mapextaddhom.md) | 169 | `declaration-track:5003049e43fdc3dc8f09be62b1c677aaf593fc4b9bd78f5a7dc4684d3f525ad2` |
| 10 | `lemma` | [Functor.mapExtAddHom_coe](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/functor-mapextaddhom-coe.md) | 176 | `result-track:4e0f8f9e11116749a8534215f06db976dce9ecc4bc5bd3c9732a13954bc263e8` |
| 11 | `lemma` | [Functor.mapExtAddHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/functor-mapextaddhom-apply.md) | 178 | `result-track:3a811848db3527fa4c34d7f3b8215132f9b696413279a351170512a00e6ff3bf` |
| 12 | `lemma` | [Functor.mapExactFunctor_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/functor-mapexactfunctor-smul.md) | 184 | `result-track:6bd91f7a6c6168c8e3c6537446062851e0b8d96930370798dcaaa1fca8ebb09d` |
| 13 | `def` | [Functor.mapExtLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/functor-mapextlinearmap.md) | 189 | `declaration-track:28bdf375b5d6d18e8e6892a1dc11c4d0a0fa009f7e9824d7f5921d5a6a9af345` |
| 14 | `lemma` | [Functor.mapExtLinearMap_toAddMonoidHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/functor-mapextlinearmap-toaddmonoidhom.md) | 195 | `result-track:6ebfa795e58bc6f828cb5db206baebe4d5ebed5552ec5cf05c9eba747977df7f` |
| 15 | `lemma` | [Functor.mapExtLinearMap_coe](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/functor-mapextlinearmap-coe.md) | 198 | `result-track:40b69eaeb58974bd26f12d33c51cd4004a0f3426157feb30f82e98353b1ca2f7` |
| 16 | `lemma` | [Functor.mapExtLinearMap_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/functor-mapextlinearmap-apply.md) | 200 | `result-track:2e0e32b9b63f2830051ae807061951fdcb1c8a551f104eb0825061add8d9b0a8` |
| 17 | `lemma` | [mapExactFunctor_mk₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/mapexactfunctor-mk.md) | 207 | `result-track:8dcc9198ee8dfc083482cba72f34cddb7623ad46a5c869ae8c9dc2467932e497` |
| 18 | `lemma` | [mapExactFunctor₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/mapexactfunctor.md) | 217 | `result-track:408558b4a0fd8642565f0570be78f039a86e1a632c5e5a0c0bd957bdc06b1fef` |
| 19 | `lemma` | [mapExactFunctor_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/mapexactfunctor-comp.md) | 223 | `result-track:2706522b7f6195d0f62fc1ec0faeaed2235dd0b4203e41519c12e15c840d2978` |
| 20 | `lemma` | [mapExactFunctor_extClass](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/mapexactfunctor-extclass.md) | 230 | `result-track:02d7cb11d927597506dd36e16af65c9f4b478a82e0ba32e38fe179c4f3d44307` |
| 21 | `lemma` | [id_mapExactFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/id-mapexactfunctor.md) | 239 | `result-track:acc94339040e052a3c0b34648d7bcb1880457c11bdde1346935c5560a848602b` |
| 22 | `lemma` | [comp_mapExactFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/comp-mapexactfunctor.md) | 250 | `result-track:16ff578d751b4556acd8ea43a0c7b89f7c2955599e88871922b8c9c7e358c6b4` |
| 23 | `lemma` | [mapExactFunctor_comp_mk₀_natTransApp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtMapPublic.lean/declarations/mapexactfunctor-comp-mk-nattransapp.md) | 265 | `result-track:e08b9decfec1e573c7fd1eda4cfcce9cb91adb1a914d49f565079701623c2fc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bce939fc320c3c826aa482b0d7c22b39247b510d3bb11052a13728de90123252 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
