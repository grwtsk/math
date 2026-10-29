# Verification target: Presheaf Colimits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77e5c38d9bb37c4a5c61551ee491c2135e3b7fae",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77e5c38d9bb37c4a5c61551ee491c2135e3b7fae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationJointlyReflectsColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/evaluationjointlyreflectscolimits.md) | 41 | `declaration-track:5da1cb14840e811aa170222798044a9110a12ce45fd081953b0dfd6a91a769c6` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/instance.md) | 64 | `declaration-track:bccb5cf6f6cad6bd95db3f3ce1ce11fc90d8316433e3820028da85ddbbea3fd4` |
| 3 | `def` | [colimitPresheafOfModules](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/colimitpresheafofmodules.md) | 72 | `declaration-track:6c6535a86789fc363b854d0a58dfea48cff7c8f9c051eca306649e7c8b299dbc` |
| 4 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/colimitcocone.md) | 99 | `declaration-track:7497bbcc663a8913d89a5eef9138ade8a0afb22b71d45e54b4b1a328ce0291b8` |
| 5 | `def` | [isColimitColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/iscolimitcolimitcocone.md) | 113 | `declaration-track:70c19c1e834c4e73aa0d800cc12271ddd3e535ad0d2196c4029f32632952a63f` |
| 6 | `instance` | [hasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/hascolimit.md) | 116 | `declaration-track:a0e487ffe67e818bd50131d9bf4ba322372d162ef4465d4f7d33d3c161554a80` |
| 7 | `instance` | [evaluation_preservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/evaluation-preservescolimit.md) | 118 | `declaration-track:87e5e901b067330bd903a8e030364988175f59c8b5ce3e7818338e410676244a` |
| 8 | `instance` | [toPresheaf_preservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/topresheaf-preservescolimit.md) | 125 | `declaration-track:90d518fac3d18134ea8601d7b1384a6a0e683a22c736f96a92fa6da7358976f7` |
| 9 | `instance` | [hasColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/hascolimitsofshape.md) | 140 | `declaration-track:3593c62c48b24d07fe6cf6ec087eba7841d046e6ed6fa84bbea258b4cb00d7c0` |
| 10 | `instance` | [evaluation_preservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/evaluation-preservescolimitsofshape.md) | 142 | `declaration-track:915538e6a520be831d9bb8bda5c12184919eccd9ba9958f830e57bb421ee7586` |
| 11 | `instance` | [toPresheaf_preservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/topresheaf-preservescolimitsofshape.md) | 145 | `declaration-track:647ef6e399f1699a7df53ff1390964fe73d6258419138d54c162e927b38e77b0` |
| 12 | `instance` | [hasFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/hasfinitecolimits.md) | 152 | `declaration-track:62453b23e3fd4c7f9310cde92caec38a82adbee0b1ea7207bd1da729c1abcb2e` |
| 13 | `instance` | [evaluation_preservesFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/evaluation-preservesfinitecolimits.md) | 155 | `declaration-track:e6cd190770ca286f006cff9c6d8a476a5c0869e889ed29d5d3c6bf69104d1f90` |
| 14 | `instance` | [toPresheaf_preservesFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafColimitsNamespaced.lean/declarations/topresheaf-preservesfinitecolimits.md) | 158 | `declaration-track:e8f1d2b9cd68051214bb6fd7c47c9dfa8f210e645a21b3e9f1f300ab002208d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97ba7c84574c77af18d7ec0278c7aff1c11fbff3ea8c1e7a09dc5bbff86ad3ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
