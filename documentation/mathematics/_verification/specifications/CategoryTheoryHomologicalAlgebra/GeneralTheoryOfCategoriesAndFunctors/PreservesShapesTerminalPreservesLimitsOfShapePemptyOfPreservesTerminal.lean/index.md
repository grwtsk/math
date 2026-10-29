# Verification target: Preserves Shapes Terminal Preserves Limits Of Shape Pempty Of Preserves Terminal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75a7502289835c63f5dc6ff18fa5c93623a79d00",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantd63e2eefd74c9afbe62d5019b871e3602390116a771aba53a1df2c30c31de274.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75a7502289835c63f5dc6ff18fa5c93623a79d00`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantd63e2eefd74c9afbe62d5019b871e3602390116a771aba53a1df2c30c31de274.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantd63e2eefd74c9afbe62d5019b871e3602390116a771aba53a1df2c30c31de274.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeEmptyConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/islimitmapconeemptyconeequiv.md) | 38 | `declaration-track:e4878e1c0d97e0b0279a36186d7efcfe165dfa9af15103e4c7e24851585e489c` |
| 2 | `def` | [IsTerminal.isTerminalObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/isterminal-isterminalobj.md) | 43 | `declaration-track:558430efb8519a850f9f01d0f86e653aa3d0fcc6470b6f25f2a793934844f428` |
| 3 | `def` | [IsTerminal.isTerminalOfObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/isterminal-isterminalofobj.md) | 48 | `declaration-track:363f1075bca439ca409b1aabd21df47fc29e904c4f1b4ab68d5aa899aef29b8f` |
| 4 | `def` | [IsTerminal.isTerminalIffObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/isterminal-isterminaliffobj.md) | 54 | `declaration-track:923b8467c40fde9cf25ba07a8879c532cea05d30f9afc6489ec86903eb847a5c` |
| 5 | `lemma` | [preservesLimitsOfShape_pempty_of_preservesTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preserveslimitsofshape-pempty-of-preservesterminal.md) | 63 | `result-track:99428c57ab76379a1787f52fb64b31a4821721e1c18d4ffa1d0b1eeb1fab4600` |
| 6 | `def` | [isLimitOfHasTerminalOfPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/islimitofhasterminalofpreserveslimit.md) | 73 | `declaration-track:87d35aaf7a46482dd1bed2478456623d4bec41dfb4efb276988910fcba725ff5` |
| 7 | `theorem` | [hasTerminal_of_hasTerminal_of_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/hasterminal-of-hasterminal-of-preserveslimit.md) | 83 | `result-track:315bdd82f386cdc777c5a6d7ccaf04d76fa24259fa1654cb575e71928d57394d` |
| 8 | `lemma` | [PreservesTerminal.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesterminal-of-iso-comparison.md) | 92 | `result-track:671972e2816b7eb8aee2411c842b4af01d00d4fbbb10aca1a83258b4fdb2f54e` |
| 9 | `lemma` | [preservesTerminal_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesterminal-of-isiso.md) | 99 | `result-track:59371e57f90e9af85e066841bdf755221b2e14d544f6fc488fc2c881e1a3f913` |
| 10 | `lemma` | [preservesTerminal_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesterminal-of-iso.md) | 105 | `result-track:7d96565198f427a0dedf7e7337e74022595fde971f858227e9db44c952987abf` |
| 11 | `def` | [PreservesTerminal.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesterminal-iso.md) | 112 | `declaration-track:db6a44aa3feaaffd9bdb0a4b87e85827c86141c8e6ef2254214c9490fdb0569b` |
| 12 | `theorem` | [PreservesTerminal.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesterminal-iso-hom.md) | 116 | `result-track:77337561715ab596e6b379e746d4d349f52e1a66a21e43160aafe5e48c4abbc1` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:a20f103c95c37296f8d4e17c69ef1378c26167fa2c4dd7ef6fe6b17ef9ad162f` |
| 14 | `def` | [isColimitMapCoconeEmptyCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/iscolimitmapcoconeemptycoconeequiv.md) | 129 | `declaration-track:19687c66d158ded235d899d3509a3f38498736e4b26bf58b76393a088ae3700a` |
| 15 | `def` | [IsInitial.isInitialObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/isinitial-isinitialobj.md) | 134 | `declaration-track:014dcfb41b51ec7fe809b4b11144a1c49656b70d17ab45890b6fc5850eccfe7f` |
| 16 | `def` | [IsInitial.isInitialOfObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/isinitial-isinitialofobj.md) | 139 | `declaration-track:497920d0356e2116d305ed6f1923174fe9cdb5b8bc59c02e8038a682c70ab27e` |
| 17 | `def` | [IsInitial.isInitialIffObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/isinitial-isinitialiffobj.md) | 144 | `declaration-track:3b4283f4230b5e9236fc25dfb4617deecf6435564fc2821b0e03f882f7a7c58b` |
| 18 | `lemma` | [preservesColimitsOfShape_pempty_of_preservesInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservescolimitsofshape-pempty-of-preservesinitial.md) | 153 | `result-track:deae65c619433986bf2ff441fef13922451d7f48867931d2c0a4bf2a64e76517` |
| 19 | `def` | [isColimitOfHasInitialOfPreservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/iscolimitofhasinitialofpreservescolimit.md) | 164 | `declaration-track:c2b9fc268a4b2e19ec2df76de97a52c54af9c34f55eb3a5214016e1f8a9fceac` |
| 20 | `theorem` | [hasInitial_of_hasInitial_of_preservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/hasinitial-of-hasinitial-of-preservescolimit.md) | 174 | `result-track:cae708886dbd304d9b2f0d08cc0fd2e203034d8f40cac1ee8e523ff10d834b57` |
| 21 | `lemma` | [PreservesInitial.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesinitial-of-iso-comparison.md) | 184 | `result-track:89dd513ecdb90a19335d4885d2e811c68690f8a2327652beac43b708f714941d` |
| 22 | `lemma` | [preservesInitial_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesinitial-of-isiso.md) | 191 | `result-track:171ff608c31df7969fb5d0210300c701cab57218135e48d68c56a4a4e7f85c49` |
| 23 | `lemma` | [preservesInitial_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesinitial-of-iso.md) | 197 | `result-track:7ecf7f8ed4fce2dab6b8c36598d424ec11cc814a71d19e99d2010acd584bccb7` |
| 24 | `def` | [PreservesInitial.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesinitial-iso.md) | 204 | `declaration-track:7dee7086e9d4b33739f239ca6c1a3094aa63e7c09bfeb5aa0319eb57b08c964e` |
| 25 | `theorem` | [PreservesInitial.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/preservesinitial-iso-hom.md) | 208 | `result-track:04cb1a7faf56efcf4ba75b9f4505f7b785bb4f3be55ee2242b090a67290447c9` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminal.lean/declarations/instance.md) | 211 | `declaration-track:860d4996827dd775e7d2917e8035dbb4a9bb0ceb17b0654b5f35f5450e7f8269` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89495088aa35b190964ec5706a3a59dfdda8ce24f983c003b16b5b8376819944 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantd63e2eefd74c9afbe62d5019b871e3602390116a771aba53a1df2c30c31de274.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantd63e2eefd74c9afbe62d5019b871e3602390116a771aba53a1df2c30c31de274.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
