# Verification target: Alg Cat Filtered Colimits Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5300d26e4801becb8d6f518755927e6c811823b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5300d26e4801becb8d6f518755927e6c811823b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean.json)

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
| 1 | `abbrev` | [AlgCat.algebraOfIsFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/declarations/algcat-algebraofisfiltered.md) | 48 | `declaration-track:09135cd78d18800993c6d168f33f789fa6d940bc9ac6cee03f7c2a745f314ff5` |
| 2 | `def` | [AlgCat.coconeOfIsFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/declarations/algcat-coconeofisfiltered.md) | 57 | `declaration-track:693c98c5922c76e0b5083be3eaacfb6a4776c34b4f6e08aa71368375d5beb403` |
| 3 | `def` | [AlgCat.isColimitCoconeOfIsFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/declarations/algcat-iscolimitcoconeofisfiltered.md) | 72 | `declaration-track:a9d48bb94955b8613ac96978a9eff2b22d5097d676580a87b157ede4866990d2` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:43583c961e2521129e9e65a6d3a96a9640621c867af9d43348d63db32fda6983` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 95 | `declaration-track:c850994908e3929c0ea2fd45ae54c8316631adb2c49f49083b14d0d7a0f2dcd9` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/declarations/instance.md) | 99 | `declaration-track:23d33ae96aff6f3e0e67a99605cf4f5efb9b49d7cd147ca49e51a13c1ad61b73` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatFilteredColimitsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 102 | `declaration-track:b3bd4bb8ce315eac6005cbe71f6ed2d048412fb28fcc962df6ad9f2c3b5c1907` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afa13632ed0b5f194c8fe21e9bdf127d7117c7ac663d6efe6fa46a8ae13a1965 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant98877e6b3c082d484c36c0366c79c544244891115a08666fe6f7c8e3f2e94f37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
