# Verification target: Derived Category Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3b689b75821570ae108f4547b078bf1f33622f6",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant339765bfd35c1ec55a09ae9147879058db04704887877493e00e0a561bd96a3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3b689b75821570ae108f4547b078bf1f33622f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant339765bfd35c1ec55a09ae9147879058db04704887877493e00e0a561bd96a3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant339765bfd35c1ec55a09ae9147879058db04704887877493e00e0a561bd96a3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.HomologicalFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.ShiftSequence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.SingleFunctors` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.Triangulated` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Localization` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subcategoryAcyclic](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/subcategoryacyclic.md) | 80 | `declaration-track:07b30f2fe3e90cb2e6ccd3b0f680b2202eb3210ce9c11afb1475a06e31317a38` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 84 | `declaration-track:2acf7eeb703e6dd53b7e3fac4db06684eca2f9f7fbc934ba86cce77255c20bd8` |
| 3 | `lemma` | [mem_subcategoryAcyclic_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/mem-subcategoryacyclic-iff.md) | 90 | `result-track:7055f3531732fe20cfcf7a7bda6c2d4f4ac1e92ab6c063c3305713805068e36c` |
| 4 | `lemma` | [quotient_obj_mem_subcategoryAcyclic_iff_exactAt](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/quotient-obj-mem-subcategoryacyclic-iff-exactat.md) | 94 | `result-track:759f928bd3d05c6389d4f0776e7c6a5550a4d0ddaece983636cc1bd3fe0a12b2` |
| 5 | `lemma` | [quasiIso_eq_subcategoryAcyclic_W](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/quasiiso-eq-subcategoryacyclic-w.md) | 103 | `result-track:a76030eb4d51bdf24a3e6423cded215be16fa79614c0aab34874c3cf19cbbb21` |
| 6 | `abbrev` | [HasDerivedCategory](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/hasderivedcategory.md) | 113 | `declaration-track:1521d23d03c1f99dab7d086605d99f9376eb070b0779d0a67627a514d3776a0e` |
| 7 | `def` | [HasDerivedCategory.standard](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/hasderivedcategory-standard.md) | 119 | `declaration-track:e80a2c72058d7e7fd5d30e069a51da49ade484f74651ec8fee56a6b265eb43fd` |
| 8 | `def` | [DerivedCategory](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/derivedcategory.md) | 125 | `declaration-track:f8373c759265af57d18c6b56e243b7702dcec354566f6fbfbf306534b0225d4c` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance.md) | 129 | `declaration-track:050355a1559cd7c2e79f194f409116294e11c310f1a3f9ea9dd61ec289f3c04b` |
| 10 | `def` | [Q](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/q.md) | 136 | `declaration-track:8abafcd772283d23c1ee56c6df4416bc3195a95aef040abcae7f55392ea8a929` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 138 | `declaration-track:50802d445d036f26c4f632bf065a98b3771beff54bdc355eaf8fd78650d8b9c2` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 143 | `declaration-track:058bb3a08f66a766d90d6ab8d0e8e1e37dfd1fc40f295292d30bfa82f1f7f726` |
| 13 | `def` | [Qh](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/qh.md) | 149 | `declaration-track:1e1e7dbbc162f73af682f281ed9dac07593dd19a868b1522f63c40c6c7e0beae` |
| 14 | `def` | [quotientCompQhIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/quotientcompqhiso.md) | 155 | `declaration-track:8b5c508fb4c5f59515840608161cf1d4dcf668bf02899d46e9c047539fdf730f` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 158 | `declaration-track:0a7ea3ce1ff684ed2ae7d0d2c074349c1dbb598c9ed5dd797f367d3895da34a2` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-20.md) | 162 | `declaration-track:d789400035bdc47bf9c69bb66d8f360d8ddfa2aa2a4172c7fa15db6bbd037b43` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 166 | `declaration-track:a069d4f6311834958127c790c74272f7c945e34b09201893bb7ad706db809e7a` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-17.md) | 169 | `declaration-track:b863e459bb16e49a516da0512b3927880cc992faf182b7e18bac88674817e4ba` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-18.md) | 172 | `declaration-track:c0f1bedc2e294c52a6409f33d5c20fabb5ad6efc873dc092a744762ebcbd4bb9` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 175 | `declaration-track:3f18aa110997c3146ba36b7365392ba161755164b1bf131142140b7e5538afa4` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-19.md) | 178 | `declaration-track:c7d2263cc15f8ec524bb15dc828bbd142002c5583c273bcf69d536db8d89ee29` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-16.md) | 181 | `declaration-track:b197c74a5c9cada904408127f09009e18149ac7c479df29a06ab3ad2b6670d80` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 184 | `declaration-track:739b04551869a0033c8136a56271252b67dcfee4336945b26e27f633cf2cdce0` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 187 | `declaration-track:3a6aba8329bb421d486290c5e85cad0a1911e0c70c0573aef5b793a92a907e15` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 190 | `declaration-track:45a8826b6d3556cb99e557531033f5fc7a9d3df7b9683abe79d447a1d78d4d72` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 195 | `declaration-track:16bf7c11b3c552b616ea07845b66e5721f4d8713d58a91d177a5c4d6a7932f1d` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-22.md) | 199 | `declaration-track:ed665cc67eb15b462815245063549e50c29d41085f9e043ec68ff09c28d1c1b4` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 203 | `declaration-track:8bde9cf2844813793e6612dd8e8ac029e8bf359e7f17fac0a21c96389c6b48d5` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 207 | `declaration-track:5d6c7be810a328d968725a264046413f9339fafd56b3445e05b473e72cc42104` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 210 | `declaration-track:80d6cd5dda33c80466471d89fb972af38f09c595a714bc6c4ef21938068f22f0` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 214 | `declaration-track:0b00c1fb6e4ae49be84e083aed4755257c391f913edffd980edbbc94511addb5` |
| 32 | `lemma` | [mem_distTriang_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/mem-disttriang-iff.md) | 219 | `result-track:2da1cda182ba39d990bbeb7625aa88edc593873a762526877820f0feb7d77733` |
| 33 | `def` | [singleFunctors](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/singlefunctors.md) | 236 | `declaration-track:12115002ff1995256e64815116ee4ada5101290122fa806ffcc71acea3f5ebaa` |
| 34 | `abbrev` | [singleFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/singlefunctor.md) | 241 | `declaration-track:b0a1d053f76efbe50838f1061c02da4380ad56f327c00d2eddc0d8ed65fdd80f` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/instance-source-edition-21.md) | 243 | `declaration-track:e8834825b28622bf552fbb035201c110eabd136e26ee7b3fe9154aea0d847011` |
| 36 | `def` | [singleFunctorsPostcompQhIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/singlefunctorspostcompqhiso.md) | 250 | `declaration-track:cd06774051a0bda6f6e206cf72abddd4ce2f9912382e4cff0ec20c5be6c89fb0` |
| 37 | `def` | [singleFunctorsPostcompQIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/singlefunctorspostcompqiso.md) | 256 | `declaration-track:f9de0d65fa91e211b2f61028eb366854cf0a5c513cdb1341f35522e8d460904f` |
| 38 | `lemma` | [singleFunctorsPostcompQIso_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/singlefunctorspostcompqiso-hom-hom.md) | 264 | `result-track:d6b64455c21b401b2f66452b399f27a9ed787085e88719f08d03a5e38e60bcf6` |
| 39 | `lemma` | [singleFunctorsPostcompQIso_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/singlefunctorspostcompqiso-inv-hom.md) | 273 | `result-track:ebcf01bd44c67808403fa0de8e95122d8248938e8d084d6e5c3dc796f7885ce4` |
| 40 | `lemma` | [isIso_Q_map_iff_quasiIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryBasicNamespaced.lean/declarations/isiso-q-map-iff-quasiiso.md) | 283 | `result-track:a4c7ad9a45d7ac553163d31b6b99456613ffa6d1b743f6cb2e88659a1bec2450` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17a661d3bf9eae0799f61a21d31aff85736e59fb38e60663b1b1953611081e6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant339765bfd35c1ec55a09ae9147879058db04704887877493e00e0a561bd96a3d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant339765bfd35c1ec55a09ae9147879058db04704887877493e00e0a561bd96a3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
