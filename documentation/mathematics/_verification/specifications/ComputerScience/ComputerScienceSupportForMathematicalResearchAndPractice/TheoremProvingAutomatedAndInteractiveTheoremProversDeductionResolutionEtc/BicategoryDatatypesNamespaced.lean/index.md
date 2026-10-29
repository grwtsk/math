# Verification target: Bicategory Datatypes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff2e31c79c8cb2375943b65d1d7edc88fa97d293",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff2e31c79c8cb2375943b65d1d7edc88fa97d293`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Datatypes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.BicategoricalComp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [srcExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/srcexpr.md) | 32 | `declaration-track:b80c1b7bcbee6e1b31a13ad552fc966a36961ac8e6547566f8f2fb943d0a7095` |
| 2 | `def` | [tgtExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/tgtexpr.md) | 38 | `declaration-track:e0812582d9cbc69b743752ad4a71d885a4c5f398c77b5bdd4117099868b4c594` |
| 3 | `def` | [srcExprOfIso](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/srcexprofiso.md) | 44 | `declaration-track:647d3b57513c33aea281c5a72ad168cdf5c6e14327f49c4d1a86da4cfcbf4bb8` |
| 4 | `def` | [tgtExprOfIso](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/tgtexprofiso.md) | 50 | `declaration-track:791eee7057bc726ff25905518e43b5cadc57435699737f576fcbe6fdaa94219a` |
| 5 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/initialize.md) | 55 | `declaration-track:bef94eb117707477d538685192fb8c4d56778a5ac3788062b67378c95eb27ada` |
| 6 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/context.md) | 58 | `declaration-track:055dc533c958d2d1797ebd59fe0390aad056bd036316b337e38a6e05c35d0548` |
| 7 | `def` | [mkContext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/mkcontext.md) | 71 | `declaration-track:23e57dab4bb2c6a847ab30153dc199c905b0c73950b8c4ad08582dd37312703b` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:6797a540acdf5fc70b99338afb49aed0611c28f8e4d9359c1b2eb6039230bfa2` |
| 9 | `abbrev` | [BicategoryM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/bicategorym.md) | 93 | `declaration-track:cf0f45af0221d13513ca904e55ea9e4c7af6a52ecb93b86167f8c66e0110cb18` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/instance-source-edition-6.md) | 95 | `declaration-track:e0f1f4a21870dcc86d1fa7addcdc0e37c4383021494a2fe0a23faffd738454e4` |
| 11 | `theorem` | [structuralIso_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/structuraliso-inv.md) | 116 | `result-track:a55717946bb11fed6e8df1f48c0742121a699b9c688c6b5177912f3cc4602e59` |
| 12 | `theorem` | [structuralIsoOfExpr_comp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/structuralisoofexpr-comp.md) | 120 | `result-track:7505a5d498bd20e95ca106c956c9591cdb4425a1a762f697b06e6a737e1a3edf` |
| 13 | `theorem` | [structuralIsoOfExpr_whiskerLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/structuralisoofexpr-whiskerleft.md) | 126 | `result-track:6d09e9edc62a9cfe2db15edea7dd0f5b1e95e7089ef0b1ac6f699b3f00553560` |
| 14 | `theorem` | [structuralIsoOfExpr_whiskerRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/structuralisoofexpr-whiskerright.md) | 131 | `result-track:80daef03bf98ab6451b609b558dd4d2744fafc3f43e2804e48bd09db7130eebb` |
| 15 | `theorem` | [StructuralOfExpr_bicategoricalComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/structuralofexpr-bicategoricalcomp.md) | 136 | `result-track:8b29e5487c4dc3f46c7447e79232635ddc803e803d6af5fc16fbebfc7252d69b` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/instance.md) | 145 | `declaration-track:56ee82b878a6388e8039dcc21ceedd58a52bf9bcf8a46baa4e33b84866aa1c13` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/instance-source-edition-5.md) | 263 | `declaration-track:cc6437bc5ce856436e9d3ae37fd23001037bd39e2e168ee17201a5b32638f4da` |
| 18 | `def` | [id₁?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/id.md) | 418 | `declaration-track:01744429c844b4471027ae099139be362180b9ffb0c8bc0375a8886f26233d39` |
| 19 | `def` | [comp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/comp.md) | 428 | `declaration-track:a09eb766ee70e08baa7949bbfed85a83f4b66ef6ba19e3a17ec83c0d16e1dcd5` |
| 20 | `def` | [mor₁OfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/mor-ofexpr-source-edition-2.md) | 447 | `declaration-track:e68318992ce17bc0a2a560722b9e64b5ed577af3905926aec9ce2cb3e4d1133e` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/instance-source-edition-7.md) | 460 | `declaration-track:f145f0e388e77424f87e5fc855341d557f991f3bc1e915cd09e7094d8fa53ff6` |
| 22 | `def` | [Mor₂IsoOfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/mor-isoofexpr.md) | 464 | `declaration-track:d38f7fcba0529b8941a85c5629781394fa792f5abe86c537d534dddbd9521e09` |
| 23 | `def` | [Mor₂OfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/mor-ofexpr.md) | 492 | `declaration-track:514778f9dda15512313dcd90ed9f852a6f42b782a44609c6baf8a9236f6bea79` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/instance-source-edition-4.md) | 513 | `declaration-track:a96f26b77c24942c9cee2526a1a6e7ce4bc9e931114c48505f217befaa4b0c21` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryDatatypesNamespaced.lean/declarations/instance-source-edition-3.md) | 516 | `declaration-track:7670b400f9d77b2489f1bf083e0f47c601345b4756bbe658d96900eefb030889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae030a5456c4b694d05e2c986657730856d858e89d275bd136a014ed92f3ae0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
