# Verification target: Monoidal Datatypes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63915ec6e79d03391ac2738557d7e0e86795514a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63915ec6e79d03391ac2738557d7e0e86795514a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Datatypes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.MonoidalComp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [srcExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/srcexpr.md) | 32 | `declaration-track:65af203bd6cafd46f23d609b755df60016219b55061bbb9f71656376350f5184` |
| 2 | `def` | [tgtExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/tgtexpr.md) | 38 | `declaration-track:62bf90bf82b64d5f62f9cc1e2d1e1c7e8c29e2c910cc36da75e979faaaa18b6a` |
| 3 | `def` | [srcExprOfIso](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/srcexprofiso.md) | 44 | `declaration-track:9a6a6db8bf2c6f2978d254c8173dbefe3f16251c6cc92512f94eef8d50f3d4bd` |
| 4 | `def` | [tgtExprOfIso](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/tgtexprofiso.md) | 50 | `declaration-track:6a9728e75d09a73eb7a6416ac11b47736fe56a0154286f225f9e3737c186e792` |
| 5 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/initialize.md) | 55 | `declaration-track:8ee996f67c537bdf0cc5bcf8651e5cbf37d6ab679d4e4bf5a4c98dbed9e3f585` |
| 6 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/context.md) | 58 | `declaration-track:3830f7d85e2c2fbf7b7be0ebabcc86b9b47c54a83c88eb04fa005d956f8fc1d9` |
| 7 | `def` | [mkContext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/mkcontext.md) | 71 | `declaration-track:5c5d27cd1f8f1b5106957f1299ed00a5d3fbdb3499e049ea88ae67eeb5595a83` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/instance-source-edition-5.md) | 86 | `declaration-track:9286e64c92748d4cd6b45a4d5bedc7d381adb4d377990bcc234cf0578a9f6a0b` |
| 9 | `abbrev` | [MonoidalM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/monoidalm.md) | 90 | `declaration-track:bbc91953ca5442786ce92fa26f114f1f8e3bb5655d56e180781a4be6a3256a6a` |
| 10 | `def` | [synthMonoidalError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/synthmonoidalerror.md) | 93 | `declaration-track:e1639bc99be9654eb23d827211c4b79e39a7cd2798b3de2c80d94d3730b8689b` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/instance.md) | 96 | `declaration-track:3664c6bb74f4a567613f00461e2f7dfa457a03aa63f0138f84931770ce4d0f2e` |
| 12 | `theorem` | [structuralIsoOfExpr_comp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/structuralisoofexpr-comp.md) | 113 | `result-track:16aa2faf53b1b5e86ea6d196231e5ff6bd0e4ff2584e543858186cc1ee6037af` |
| 13 | `theorem` | [StructuralOfExpr_monoidalComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/structuralofexpr-monoidalcomp.md) | 119 | `result-track:23b67f2bf10b09a14878a31afa415ccc5cc869c09ef9b1d6b32c7d58a8b9033d` |
| 14 | `theorem` | [structuralIsoOfExpr_whiskerLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/structuralisoofexpr-whiskerleft.md) | 126 | `result-track:0c5b17d7cf3c916cdcac2838d1dd23d7d46c0eb3bc35465b959364c263657452` |
| 15 | `theorem` | [structuralIsoOfExpr_whiskerRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/structuralisoofexpr-whiskerright.md) | 131 | `result-track:cd153e4b022ea45cc61f375629b2233a280bbe23e225901e3c9e506a3f352376` |
| 16 | `theorem` | [structuralIsoOfExpr_horizontalComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/structuralisoofexpr-horizontalcomp.md) | 136 | `result-track:50e3af327dcf6334495bd677e7149ad64e960f57f7c24988daa2216ccbc8194f` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/instance-source-edition-4.md) | 146 | `declaration-track:5ffe0653dbe878d84d901c9d5fd821ab3abde124e2f8684ba6ed9fda4daab151` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/instance-source-edition-2.md) | 253 | `declaration-track:44bb03db51b5814694b5ca61d9309c30c0a67ee9b83dae7418fb501f9a6d794e` |
| 19 | `def` | [id₁?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/id.md) | 411 | `declaration-track:634fb098922573e6411fc03918616562f8ca6feb0464e49dae9f2a212a44d46b` |
| 20 | `def` | [comp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/comp.md) | 422 | `declaration-track:2f74f934214250b6beb32f612f5901984131f6b70f3c04e1d29e7e994267128d` |
| 21 | `def` | [mor₁OfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/mor-ofexpr-source-edition-2.md) | 437 | `declaration-track:60de45a246afc2e34b5847c21690708bc2f8d660a0ff2d1e17c45e2f8ca2ac91` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/instance-source-edition-7.md) | 450 | `declaration-track:c13e988c3447fd1daaa54306b82281d9507890c5463bee6de00c574e85eb93c9` |
| 23 | `def` | [Mor₂IsoOfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/mor-isoofexpr.md) | 454 | `declaration-track:6356d0eb60682498ddf54f26e0fbff19b46b1dbcb2d09e2d847631a35f0f19b4` |
| 24 | `def` | [Mor₂OfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/mor-ofexpr.md) | 484 | `declaration-track:58a5ca8d77e44dc47492e25698b766e19dcc653f76ced594a17a58eec65485fa` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/instance-source-edition-3.md) | 507 | `declaration-track:57e8f05d1e725a6f57ec7f32c0b1f0c6c7c2946e4bb6161958a2e5f5bebe100e` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonoidalDatatypesNamespaced.lean/declarations/instance-source-edition-6.md) | 510 | `declaration-track:9fd13d63274321949a1d27f2e3b728a84e77f7ddd51f27de20937d375839b983` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa89a5bd14552e87c9f59dbbfccd65fb2f937e7bfca297b57ceb25a11f55d784 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
