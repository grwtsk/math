# Verification target: Local Cohomology Namespaced Has Colimit Diagram

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cebfd9b542eb9e8203bfbcb806ae9f1adc818d5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cebfd9b542eb9e8203bfbcb806ae9f1adc818d5`.

Source path: `GRWTSK/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Projective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Ext` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Ideal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringModIdeals](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/ringmodideals.md) | 76 | `declaration-track:e42490d3a34375500ca2d1fdb7f3ec8873bee5e7948271ace372d2823ef4402f` |
| 2 | `def` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/diagram.md) | 82 | `declaration-track:e7c3457aa02cd8a84360f21b52591a3efe55faa97621d9c3dd0312ba12d21e13` |
| 3 | `lemma` | [hasColimitDiagram](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/hascolimitdiagram.md) | 93 | `result-track:76ab93c515bb2569467c3437cd7c88e193d183648fa7e9b06aeb5a1716445a59` |
| 4 | `def` | [ofDiagram](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/ofdiagram.md) | 106 | `declaration-track:f045f0cb81eec9b1ad61d2f19b53fff4d575b9da5466f37ca235b7106809d52f` |
| 5 | `def` | [diagramComp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/diagramcomp.md) | 118 | `declaration-track:4747d0618354a9e13ccb9bac36ec2c42e3b76adfc05f93b8464c7fb336d998be` |
| 6 | `def` | [isoOfFinal](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/isooffinal.md) | 123 | `declaration-track:ac777cd29f782ddd9f5f5fabac24a5f40cf9f4ddd80cd943f951fc5c6a080833` |
| 7 | `def` | [idealPowersDiagram](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/idealpowersdiagram.md) | 136 | `declaration-track:4b3ac6324f38f9d731694a31a7d549b38e8514c3100e69b2ffb45dba0c464a91` |
| 8 | `def` | [SelfLERadical](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/selfleradical.md) | 141 | `declaration-track:8d326f9575749bf0ef646813f1487c89873a537290e5b0d6726938bc4c138d57` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/instance.md) | 146 | `declaration-track:19fbc74d0ca70ab6095e2b03e0cf5957558fc634c011d97b8aa81fd0d8b9b54a` |
| 10 | `instance` | [SelfLERadical.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/selfleradical-inhabited.md) | 149 | `declaration-track:90ea047509a3eeda55277a4edc916e392d8cfc91d800ce4f9c76160012ceaa4b` |
| 11 | `def` | [selfLERadicalDiagram](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/selfleradicaldiagram.md) | 154 | `declaration-track:4544f7a7cad772338b91f91a7af6bc736bf3db0fd9f3cf07d8c90e267c656403` |
| 12 | `def` | [localCohomology](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/localcohomology.md) | 175 | `declaration-track:3471c6c7ea22ecd735f85a7805b299c60bd4debb93e889e412e80c6d128f5564` |
| 13 | `def` | [localCohomology.ofSelfLERadical](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/localcohomology-ofselfleradical.md) | 180 | `declaration-track:00cb0fab4f3db362b7f1be978db8c24c10c3809149506ebbe65545b97b08cfda` |
| 14 | `def` | [idealPowersToSelfLERadical](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/idealpowerstoselfleradical.md) | 201 | `declaration-track:c1d72a45d9ea7e407b2ce9580c8512a76b746ef81cd937e7176d1c67ce1dd503` |
| 15 | `instance` | [ideal_powers_initial](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/ideal-powers-initial.md) | 212 | `declaration-track:42af556b8da6d8291dc8d427cc84e67cfdb3fdf2573a58ef33fe20dce64967bb` |
| 16 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/example.md) | 226 | `declaration-track:f2b5a4ea3dcd22048bfebad4364043c7337760235afba7db2e54f8bfca37a8a1` |
| 17 | `def` | [isoSelfLERadical](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/isoselfleradical.md) | 229 | `declaration-track:6bee8f59f0276caaae94f707fcbf0194d224710d4a7bbb7fdec20d38e5992e4e` |
| 18 | `def` | [SelfLERadical.cast](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/selfleradical-cast.md) | 237 | `declaration-track:d4b0b428396adf15d0edf625bf5f4b6c059f4057b8617e3ba07a33539a554aee` |
| 19 | `def` | [SelfLERadical.castEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/selfleradical-castequivalence.md) | 245 | `declaration-track:86f371e004f6d8beee9a93d4edf045909df9042119597943fc47a1206ce52191` |
| 20 | `instance` | [SelfLERadical.cast_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/selfleradical-cast-isequivalence.md) | 252 | `declaration-track:3b9511b5e37583643294daf8561799d1d64a2db86f1581a2850db53d9b3df8dc` |
| 21 | `def` | [SelfLERadical.isoOfSameRadical](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/selfleradical-isoofsameradical.md) | 258 | `declaration-track:f7dafc5ec470aac5058488bd59234b5362e052b01fb0ee04eff9cfc75c21d1e6` |
| 22 | `def` | [isoOfSameRadical](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalCohomologyNamespacedHasColimitDiagram.lean/declarations/isoofsameradical.md) | 263 | `declaration-track:e042e9314b9351941ac84a5cb125aceca5e0362ee31dd3bfba2d309ef03edd25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0805994638740c9a3ee2d96d5e5954ae8129b072204bba8e214102a4fe271fd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean","GRWTSK/_verification/specifications/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
