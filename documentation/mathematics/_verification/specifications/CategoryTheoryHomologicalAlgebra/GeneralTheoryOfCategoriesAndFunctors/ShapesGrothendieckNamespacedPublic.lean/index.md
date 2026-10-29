# Verification target: Shapes Grothendieck Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ea3eeef05b0c26383bec89cef39d2017bd00a44",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ea3eeef05b0c26383bec89cef39d2017bd00a44`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean.json)

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
| 1 | `lemma` | [hasColimit_ι_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/hascolimit-comp.md) | 54 | `result-track:93bb8c942b7952f68d0b817a22e6301a1f57d8b676d7094084ad9365622c5b17` |
| 2 | `def` | [fiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/fiberwisecolimit.md) | 63 | `declaration-track:f35f1052e1747c13bc2ef7a088822456312e8fd82b455279ba7f89c9b029aa2b` |
| 3 | `def` | [fiberwiseColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/fiberwisecolim.md) | 100 | `declaration-track:2af5cc4225fcf91cd4e4c7398166a748996474c3f6f5a521c32bf83307851d6b` |
| 4 | `def` | [natTransIntoForgetCompFiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/nattransintoforgetcompfiberwisecolimit.md) | 113 | `declaration-track:0cf3f7c922ad40cacb39d148ca0ee73b890ca5b1aeb235ee9bd7dc363a0fccb4` |
| 5 | `def` | [coconeFiberwiseColimitOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/coconefiberwisecolimitofcocone.md) | 132 | `declaration-track:9d3402b2f0771df7e10e560c78a08cfa404d708e6eb3befaf80841a13b917890` |
| 6 | `def` | [isColimitCoconeFiberwiseColimitOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/iscolimitcoconefiberwisecolimitofcocone.md) | 142 | `declaration-track:4039ebc12cca15b668103309880bb4ab298e41eca2274a980b93a6788fb7ab06` |
| 7 | `lemma` | [hasColimit_fiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/hascolimit-fiberwisecolimit.md) | 155 | `result-track:ce6008dd373eebc59805f714574a35eac510258ba75a39b5dec655d0575311b2` |
| 8 | `def` | [coconeOfCoconeFiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/coconeofcoconefiberwisecolimit.md) | 165 | `declaration-track:97f7ab17fdf7d9e42dbf958c1335bcef15d25ad2a21c3cf8553596f61e565326` |
| 9 | `def` | [isColimitCoconeOfFiberwiseCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/iscolimitcoconeoffiberwisecocone.md) | 181 | `declaration-track:285c1eb06ebdc364edf2af4d61ce6c2ce681c42b1c127267107bc6d5791d5b61` |
| 10 | `lemma` | [hasColimit_of_hasColimit_fiberwiseColimit_of_hasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/hascolimit-of-hascolimit-fiberwisecolimit-of-hascolimit.md) | 200 | `result-track:f18c3508cd21dc3862065a76c633211775765f59f8bc93c21192d6bd245f61e6` |
| 11 | `def` | [colimitFiberwiseColimitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/colimitfiberwisecolimitiso.md) | 206 | `declaration-track:8f585433210c1bddb943b67a3794446ff3a2fb7428f7ce57ea464ce85ffee25c` |
| 12 | `lemma` | [ι_colimitFiberwiseColimitIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/colimitfiberwisecolimitiso-hom.md) | 213 | `result-track:3ab24d8f1f06396e4c8980ec3f6884f67f6cfe88ed5266a861355d4c522895a4` |
| 13 | `lemma` | [ι_colimitFiberwiseColimitIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/colimitfiberwisecolimitiso-inv.md) | 220 | `result-track:14336338e48a6a7445d693f39d5c7ed9b854e9d548da57b8642d3b3b0dbbe64c` |
| 14 | `theorem` | [hasColimitsOfShape_grothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/hascolimitsofshape-grothendieck.md) | 230 | `result-track:b3f0ec68782c38c1cb4d004fca23518bc2d7ed8197bf605b83ae8a7504917740` |
| 15 | `def` | [fiberwiseColimCompColimIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/fiberwisecolimcompcolimiso.md) | 243 | `declaration-track:44434584ae726a8f772a7228b9667f9eadcba81274e9f44141dd3dc087057172` |
| 16 | `def` | [fiberwiseColimCompEvaluationIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieckNamespacedPublic.lean/declarations/fiberwisecolimcompevaluationiso.md) | 250 | `declaration-track:2856a90fe0abc96e03715c000f50aef72e8b707f2233f6ac183808ef22457f44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e3c1963d76d6e98615e10e4d27a50597661fd0fef31515d1103dfcee7e50f3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
