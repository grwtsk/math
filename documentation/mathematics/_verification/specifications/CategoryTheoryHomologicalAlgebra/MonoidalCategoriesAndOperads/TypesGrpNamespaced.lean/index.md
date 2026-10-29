# Verification target: Types Grp Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5783eeda57df8bff3eb93c9cb40c7b1df7ab1abd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4a120deb7683404e5456f5ee2b4de6b150155da7c369a7800447f07a6d322ef5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesGrpNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesGrpNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5783eeda57df8bff3eb93c9cb40c7b1df7ab1abd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4a120deb7683404e5456f5ee2b4de6b150155da7c369a7800447f07a6d322ef5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4a120deb7683404e5456f5ee2b4de6b150155da7c369a7800447f07a6d322ef5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Internal.Types.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Grp_` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [grpGroup](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesGrpNamespaced.lean/declarations/grpgroup.md) | 33 | `declaration-track:27b1f263defbb56b1760d2db2ddf5c4a607d81e85efd0d50d95d588826653d0e` |
| 2 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesGrpNamespaced.lean/declarations/functor.md) | 39 | `declaration-track:ba92414873a4ca2ac3ebe5f8d9fe1880d9c49a6b97588eaf9eec15de493d534c` |
| 3 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesGrpNamespaced.lean/declarations/inverse.md) | 44 | `declaration-track:a1b6d371d60623402247476581798a17ac6c728c1270e69f17658b4943ae59df` |
| 4 | `def` | [grpTypeEquivalenceGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesGrpNamespaced.lean/declarations/grptypeequivalencegrp.md) | 59 | `declaration-track:383583d44b50c5dc32635a43e9353ec562499401fec01cdaae796ec3d323ea19` |
| 5 | `def` | [grpTypeEquivalenceGrpForget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesGrpNamespaced.lean/declarations/grptypeequivalencegrpforget.md) | 70 | `declaration-track:6fc145779e0209b8ac709cab943fa317fa69246e06c973f42f73f5669fe2720e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=291ce42cc8a21f5c76472c9083884a64d3a79b9c2f047f5e8dfb7f915a8898ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4a120deb7683404e5456f5ee2b4de6b150155da7c369a7800447f07a6d322ef5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4a120deb7683404e5456f5ee2b4de6b150155da7c369a7800447f07a6d322ef5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
