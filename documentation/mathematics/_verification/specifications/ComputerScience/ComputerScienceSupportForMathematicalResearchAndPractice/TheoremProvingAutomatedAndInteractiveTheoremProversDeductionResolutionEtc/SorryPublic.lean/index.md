# Verification target: Sorry Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "186eaad6ad5bb831e345bc4f50e7632238a346dc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `186eaad6ad5bb831e345bc4f50e7632238a346dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.isSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/expr-issorry.md) | 17 | `declaration-track:308de227a999af6b0d3bb268eec37859c0fc06416e083271685f08df09c17b8d` |
| 2 | `def` | [Expr.isSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/expr-issyntheticsorry.md) | 21 | `declaration-track:566a0552e9122fe6b321d0c165bb65daeeaa8c2180ba37567542587324936b7b` |
| 3 | `def` | [Expr.isNonSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/expr-isnonsyntheticsorry.md) | 25 | `declaration-track:23e1248458392cc9c046c65a503484391ba62ef181ec56dcfa1bf4714c349cfb` |
| 4 | `def` | [Expr.hasSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/expr-hassorry.md) | 28 | `declaration-track:ae0361afe66ec5a4088643f83f078dce7342d98ce6426eb2e706f4c3fee83187` |
| 5 | `def` | [Expr.hasSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/expr-hassyntheticsorry.md) | 31 | `declaration-track:172c5b07c1af84b6aab100b35e7ec3ce22af926a14e9b52a220bee28a1a93188` |
| 6 | `def` | [Expr.hasNonSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/expr-hasnonsyntheticsorry.md) | 34 | `declaration-track:252571d7fd49331f1f4d8c3f3628d7b273fd14fa94f7ea3f7cd236f8ba104f85` |
| 7 | `def` | [Declaration.hasSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/declaration-hassorry.md) | 37 | `declaration-track:5f42490c927a35bfb072e4ac8de34f74c19fb0a68b29815a65d3a2e74b3dd102` |
| 8 | `def` | [Declaration.hasSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/declaration-hassyntheticsorry.md) | 40 | `declaration-track:c2dd1fd64e1e62a3a4441422aede1f32eb3268b5c8c83d22facfb468db1c32c5` |
| 9 | `def` | [Declaration.hasNonSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryPublic.lean/declarations/declaration-hasnonsyntheticsorry.md) | 43 | `declaration-track:47af47ca4049395cffe45eb817f6d295fcd24e7ce11120c8679b6ea1e33bf186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c112fe318909df7401ad79f01b83a85d5fed98e859882eef954aa177a8a4b438 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
