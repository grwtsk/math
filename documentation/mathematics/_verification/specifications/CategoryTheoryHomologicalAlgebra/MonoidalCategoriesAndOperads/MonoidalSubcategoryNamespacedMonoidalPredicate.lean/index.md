# Verification target: Monoidal Subcategory Namespaced Monoidal Predicate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4585d3f10c7c0d9f3c01d9d943af187d2d05e48",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4585d3f10c7c0d9f3c01d9d943af187d2d05e48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalPredicate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/monoidalpredicate.md) | 49 | `declaration-track:776e70fc3fea455d9151c7e36df6319bc5a28b1e5238ff29efdcf762dcff6f16` |
| 2 | `instance` | [fullMonoidalSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategory.md) | 62 | `declaration-track:67171d23c9d7917691f84ec1a17973a4250f3c7ffec5a77ed936bc19ca56b208` |
| 3 | `def` | [fullMonoidalSubcategoryInclusion](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategoryinclusion.md) | 89 | `declaration-track:4bc78fcf4255fe6730d6028b0cb44a8c89102eaa564c7c4aa89e2137f643708f` |
| 4 | `instance` | [fullMonoidalSubcategory.full](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategory-full.md) | 95 | `declaration-track:5c9a3aa11007caf4fe964a921b8d5f2a41a18327194a5881bbda572187531575` |
| 5 | `instance` | [fullMonoidalSubcategory.faithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategory-faithful.md) | 99 | `declaration-track:06bf54f516ef070b94bf1a1de6cbc7041ecfbce8a9cf5b1729de102f3a42224e` |
| 6 | `instance` | [fullMonoidalSubcategoryInclusion_additive](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategoryinclusion-additive.md) | 108 | `declaration-track:da95ba86947324b63a08662c6f440ba5b4ce381dc4abd22548c311b38cd06dde` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:e94902ce00b0d22d9d34972db12ef8b43c54327539e4e154e2986171df770229` |
| 8 | `instance` | [fullMonoidalSubcategoryInclusion_linear](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategoryinclusion-linear.md) | 118 | `declaration-track:db180383ebdfa18db735d684849fe019b6811c4c2fbb9b1c05a1da57d8710b0a` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/instance.md) | 123 | `declaration-track:8927b3005aff11a3ae1be94f02eee9df3a5079b75467c07302c513576f79a025` |
| 10 | `def` | [fullMonoidalSubcategory.map](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategory-map.md) | 133 | `declaration-track:3da6b73965a24d669d319aa163666d98b719939ec275cd1e24c34ea426ae579d` |
| 11 | `instance` | [fullMonoidalSubcategory.mapFull](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategory-mapfull.md) | 140 | `declaration-track:1889b895f23db0a073a285ba5b87980ec7c80bd09fd53b3ff53ed14db38dd8da` |
| 12 | `instance` | [fullMonoidalSubcategory.map_faithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalsubcategory-map-faithful.md) | 145 | `declaration-track:38963b1cfb3aaf687fdcf5350d3311a0c56116332ee1db3f5fb47327c8a3d555` |
| 13 | `instance` | [fullBraidedSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullbraidedsubcategory.md) | 155 | `declaration-track:e6fa14160da905b9523f194247e8dd43388e433ca5fdea72a20afc771392710b` |
| 14 | `def` | [fullBraidedSubcategoryInclusion](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullbraidedsubcategoryinclusion.md) | 166 | `declaration-track:2319456a4bfbe909bc22c7d38cee43a7296a2a0e6127173f307e3624cf59ce30` |
| 15 | `instance` | [fullBraidedSubcategory.full](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullbraidedsubcategory-full.md) | 171 | `declaration-track:3231b2986d40c225c6756a03eb639f8a906cb974708d83497fdc81701ba1d1b1` |
| 16 | `instance` | [fullBraidedSubcategory.faithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullbraidedsubcategory-faithful.md) | 175 | `declaration-track:2edef56f7b6e1d0f85d33a62c1f7da5587aa99c93469e39b4679aed345efd63b` |
| 17 | `def` | [fullBraidedSubcategory.map](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullbraidedsubcategory-map.md) | 184 | `declaration-track:630c6959e569b57747af5215c88b428db3d5cdc607b47ca294c5d55ac1b16c6d` |
| 18 | `instance` | [fullBraidedSubcategory.mapFull](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullbraidedsubcategory-mapfull.md) | 190 | `declaration-track:6505a11dd12df17497d56e64afba27e1d922912e63f694777b2caddb42b0aaed` |
| 19 | `instance` | [fullBraidedSubcategory.map_faithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullbraidedsubcategory-map-faithful.md) | 195 | `declaration-track:ccbfe7411caa430f00b8722cb34a071d4c44c2aae817e9ba824357fbe4cdc721` |
| 20 | `instance` | [fullSymmetricSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullsymmetricsubcategory.md) | 206 | `declaration-track:4b7b75c9acc349e4d8465ed7f45ddf60584ab938b4596bffc9205dbe07a355c1` |
| 21 | `class` | [ClosedPredicate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/closedpredicate.md) | 218 | `declaration-track:dec2f926b2f70d2b2d281514d3c5e0312432ccc375209b4613276090aa1aef82` |
| 22 | `instance` | [fullMonoidalClosedSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalclosedsubcategory.md) | 226 | `declaration-track:26037531439f19434cfcd861cecbe9cb0d3f1e4f4e62268908a7610c03690f8a` |
| 23 | `theorem` | [fullMonoidalClosedSubcategory_ihom_obj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalclosedsubcategory-ihom-obj.md) | 244 | `result-track:3c3412a3826dcaaa8961151943ab74269873e18a66b2a8205df6afcfa51671e1` |
| 24 | `theorem` | [fullMonoidalClosedSubcategory_ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedMonoidalPredicate.lean/declarations/fullmonoidalclosedsubcategory-ihom-map.md) | 250 | `result-track:b03f848f9e03186915854d0d7c70d45fb87aac7974e786e15bf876397a77911c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72f774e2ee55ea1ca24e67f037e6b609ac3a982f4d723e6ee368b1db5b17aa09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
