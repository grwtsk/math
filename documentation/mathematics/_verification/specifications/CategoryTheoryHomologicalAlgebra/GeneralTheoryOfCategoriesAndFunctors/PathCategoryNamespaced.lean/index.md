# Verification target: Path Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "926439a396e1ad82d021967cd1d3be2987e8ea4c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `926439a396e1ad82d021967cd1d3be2987e8ea4c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Paths](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/paths.md) | 40 | `declaration-track:8c59ae8ef420e451646ec48e8e6c36cecb36e5977e1a6569586f9c23dc3176e9` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/instance.md) | 43 | `declaration-track:14d915c2404f2acda2215cd441bf6a04e9eda700ee1e5aea28a887f4344a2af5` |
| 3 | `instance` | [categoryPaths](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/categorypaths.md) | 49 | `declaration-track:b48174f21a05f2ec01d518d8669a562c35e4028aba07e8914b9188a3c4dbc9b9` |
| 4 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/of.md) | 60 | `declaration-track:7860bde507dce3fdd861664ca730aa3c201a2ab4281c83a7cd5e7a4d4f2b7dda` |
| 5 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/lift.md) | 68 | `declaration-track:490ba234e52810586625ecb101558e6765a7c9c64dc769d591b91f58732809ab` |
| 6 | `theorem` | [lift_nil](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/lift-nil.md) | 85 | `result-track:d417f7a571f31709908406ce3706cb411c95bc64aebbb2635b1be127a4884542` |
| 7 | `theorem` | [lift_cons](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/lift-cons.md) | 90 | `result-track:e3eff342aba170e164c625c89d4e1cdbc72b5d773d6312cb2db5bf9f63daaedf` |
| 8 | `theorem` | [lift_toPath](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/lift-topath.md) | 95 | `result-track:23ba628b12e0c21a554f24f7b90e70f31d7e036c1737ae9af173be8d00c851c6` |
| 9 | `theorem` | [lift_spec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/lift-spec.md) | 101 | `result-track:ea472f76dbe2854b8c6bac4478a68bc3b55b00a1a383dbfe010f4e822d4ad6fc` |
| 10 | `theorem` | [lift_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/lift-unique.md) | 111 | `result-track:1ad4a5f420a3b3c33c84719e4715f9edb2613766c6feb66802c28f787e21ca41` |
| 11 | `theorem` | [ext_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/ext-functor.md) | 132 | `result-track:b63f5652fd5bad94cbcb8deaf036216626ab02a000ae5494efedd66c9fb3d1c5` |
| 12 | `theorem` | [Prefunctor.mapPath_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/prefunctor-mappath-comp.md) | 152 | `result-track:9721f53ee98213f6bf076f9847bbddc37839aca4da2572d9f5b6245aa35e87d9` |
| 13 | `def` | [composePath](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/composepath.md) | 169 | `declaration-track:6d2e19131f176aeddbeae86f22ee0708f0f99447908a6787de0850ba1bde1166` |
| 14 | `lemma` | [composePath_nil](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/composepath-nil.md) | 174 | `result-track:3af9cae30040baea9928c3140147695a79592cee70ead1e8f0ebdfd79cf67cdc` |
| 15 | `lemma` | [composePath_cons](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/composepath-cons.md) | 176 | `result-track:bf5253ec0835a5334d98dbfc3c779d27613b03ba46108139c847c72dffb7b6cb` |
| 16 | `theorem` | [composePath_toPath](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/composepath-topath.md) | 180 | `result-track:0817b557fb2aed5f3c6f8abcc86bd19192a0f708d0e96eac59c806738e34c4ec` |
| 17 | `theorem` | [composePath_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/composepath-comp.md) | 184 | `result-track:b9bb4924eb36f3b5d8ea54aaea63796b1c34d73085572f730df34033ef66f77f` |
| 18 | `theorem` | [composePath_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/composepath-id.md) | 193 | `result-track:d092fe639c0ceb1dbf675ab4243f0e0c33bba36a121120024586d2443658d8d4` |
| 19 | `theorem` | [composePath_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/composepath-comp-source-edition-2.md) | 197 | `result-track:f7d5f6c998ade3cc90dd9f61055a98307fc9035edaf858fff421cdaa51b58420` |
| 20 | `def` | [pathComposition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/pathcomposition.md) | 206 | `declaration-track:c8fdf990e5b6468e966a32b77b68567a04d3619d4ac2e08e8f6be83db1d9da4e` |
| 21 | `def` | [pathsHomRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/pathshomrel.md) | 218 | `declaration-track:64504f849261d44bdd5fa1129e50cdd42742951f06ddf66c8ef5e68fce8f2dba` |
| 22 | `def` | [toQuotientPaths](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/toquotientpaths.md) | 224 | `declaration-track:4a655ca5256612d4da29f25b2b3baca881bfc3f38099ecb15bb4ee82be499ea0` |
| 23 | `def` | [quotientPathsTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/quotientpathsto.md) | 234 | `declaration-track:0263370c787083cb7dbde963c243a1c417138b4d7f2cfe2c588c64758e957fa2` |
| 24 | `def` | [quotientPathsEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryNamespaced.lean/declarations/quotientpathsequiv.md) | 240 | `declaration-track:4dc6ba3529e51ec0ad726cfaea53ba536bcd21c4ef637b5c9bc297f4c2586570` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97bb4d1acde0baf3b8a50f317c07824a821318ee1bf9d5fa400bd7aac1dcf565 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
