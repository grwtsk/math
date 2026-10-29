# Verification target: TStructure Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9242776853ad01de72b1e1c77b1060d76e0ba85",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant87035298449711d8773d8a1671addf9c567211276f5ce59b6ad4656360ba2ece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9242776853ad01de72b1e1c77b1060d76e0ba85`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant87035298449711d8773d8a1671addf9c567211276f5ce59b6ad4656360ba2ece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant87035298449711d8773d8a1671addf9c567211276f5ce59b6ad4656360ba2ece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.Shift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Pretriangulated` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/tstructure.md) | 63 | `declaration-track:13ec2a4cdb98d8ce62bdd6d66be0f7e9b4a8698e1c6e0a941bc61e31b41b1516` |
| 2 | `lemma` | [exists_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/exists-triangle.md) | 85 | `result-track:72f29478e276cbf85785507a420393ebcd7eb810d02d33389b25cbf4221008fa` |
| 3 | `lemma` | [shift_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/shift-le.md) | 98 | `result-track:ae133ee73fdb9067eb1b43ab3dbf33c13737076045c6f0f0fec1bb6cf843dc7c` |
| 4 | `lemma` | [shift_ge](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/shift-ge.md) | 108 | `result-track:f6db17b7375eb2f218533a9dd3e43f63147b2cbb3173d0c81ce0d42b2fc309dc` |
| 5 | `lemma` | [le_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/le-monotone.md) | 118 | `result-track:408688f36353c8669627984406ce4df5ab85b0143f01597a9f8bcf981ea67936` |
| 6 | `lemma` | [ge_antitone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/ge-antitone.md) | 141 | `result-track:db4c1de0ac5f60ceb946c8b31f9e80e16c1ad6ee7fa2b3b3a18c7fd053085ed6` |
| 7 | `class` | [IsLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/isle.md) | 166 | `declaration-track:90bc6491cd568aaed6c31b29e8eda17bdf65052dd1e7e0ee7d12c5e3a10f9860` |
| 8 | `class` | [IsGE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/isge.md) | 171 | `declaration-track:18c4f67a7d7507264d0d38d36abb2514d99518ae71006a672d804acb7ef24faf` |
| 9 | `lemma` | [le_of_isLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/le-of-isle.md) | 174 | `result-track:6eceeb5216aa94b439a2d5a516ae122aff1304db1c356df271ee474f79012b70` |
| 10 | `lemma` | [ge_of_isGE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TStructureBasicNamespaced.lean/declarations/ge-of-isge.md) | 176 | `result-track:0893fdf91986ffee28d278c55ddcc252764d0a979a74c4aa8d0de08d56943405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13f07fcfe3df6a6439233b8eca54e8b52effb781129fbca7bb812495a6b5ec68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant87035298449711d8773d8a1671addf9c567211276f5ce59b6ad4656360ba2ece.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant87035298449711d8773d8a1671addf9c567211276f5ce59b6ad4656360ba2ece.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
