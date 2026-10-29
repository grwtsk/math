# Verification target: Preserves Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0517bf3e7d4bd30dc0a680c476e846096a01f14",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0517bf3e7d4bd30dc0a680c476e846096a01f14`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preserves_lift_mapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preserves-lift-mapcone.md) | 40 | `result-track:d79fad4a43ffe65210c7e57e3f3f76ea8090bdd4fce5d1b775344694afa4763f` |
| 2 | `def` | [preservesLimitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preserveslimitiso.md) | 49 | `declaration-track:8a73d1e75da401931f630d08b2d3ac3fd306390e98e7632243c6081de6520adb` |
| 3 | `theorem` | [preservesLimitIso_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preserveslimitiso-hom.md) | 53 | `result-track:a7b09a5fe9827ea2b86f6a5cd8e8a96ab0ab80254912588ea3675db3c6efdaf1` |
| 4 | `theorem` | [preservesLimitIso_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preserveslimitiso-inv.md) | 60 | `result-track:a53bf3f967606aa6a992c4017db5dd004214af0b6840603f6c2b852232252033` |
| 5 | `theorem` | [lift_comp_preservesLimitIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/lift-comp-preserveslimitiso-hom.md) | 67 | `result-track:9891f995918f7f03316b5105230bc4378f5c853cada4010fd8b8ed6df8c6e4fc` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/instance.md) | 76 | `declaration-track:3ebc3ee6e2a3fb827ff0be33f5fc173bfb75090eb344f1c39f9bade756feb450` |
| 7 | `def` | [preservesLimitNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preserveslimitnatiso.md) | 84 | `declaration-track:e923c452af842307c0ceaa40c9898aa13ab18b1a6d847b0042bf7ca913c73679` |
| 8 | `lemma` | [preservesLimit_of_isIso_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preserveslimit-of-isiso-post.md) | 101 | `result-track:6248489cf12075f266ce4c33a78f6b9275d2eb89164a82110504b15207f28577` |
| 9 | `theorem` | [preserves_desc_mapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preserves-desc-mapcocone.md) | 113 | `result-track:17fb30a0c53e3581e34e4d4fb78cc442d88b9b77f70a31dbc7f4c848f37a4ce9` |
| 10 | `def` | [preservesColimitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preservescolimitiso.md) | 123 | `declaration-track:6c53c2376a6a4027b61ff84480bba43bbbb75dcb95a7bf3adbb9e26dde7d70fb` |
| 11 | `theorem` | [ι_preservesColimitIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preservescolimitiso-inv.md) | 127 | `result-track:86d2acda6c204ded2797b5d5ea4cadcc678fef2a29de8c6f543a032a65d961a4` |
| 12 | `theorem` | [ι_preservesColimitIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preservescolimitiso-hom.md) | 135 | `result-track:788068e704746bb679adecb6e86f7cdc7dc71748b1f619373bac0acbcda3d1c6` |
| 13 | `theorem` | [preservesColimitIso_inv_comp_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preservescolimitiso-inv-comp-desc.md) | 143 | `result-track:0b4dbc04e8a7f8a1169add1155e578eb8970f402be51add0fb63ae8121071237` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/instance-source-edition-2.md) | 152 | `declaration-track:9c182891996c69a3d84fd1dc5d134db4034d2f3da55319ccaaf16fe7c156f4de` |
| 15 | `def` | [preservesColimitNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preservescolimitnatiso.md) | 160 | `declaration-track:7c6ec4f1682c172c84bb2ff603dd00046140149389e1eb50df16b422fe47b6bf` |
| 16 | `lemma` | [preservesColimit_of_isIso_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesLimits.lean/declarations/preservescolimit-of-isiso-post.md) | 180 | `result-track:957a1a5d71b525ec3e8a01b041e41877cc743af1a21d3b2cbd1c682d544b106e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3ceabd6a5306e3e56628e8de05f2aa35d8842b806c56cf84c74fcdf901b5dbe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
