# Verification target: Success If Fail With Msg Namespaced Success If Fail With Message

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c86eba91cbd8088d26d859846720ce2f4ad2d71",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SuccessIfFailWithMsgNamespacedSuccessIfFailWithMessage.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SuccessIfFailWithMsgNamespacedSuccessIfFailWithMessage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c86eba91cbd8088d26d859846720ce2f4ad2d71`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Eval` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.BuiltinTactic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SuccessIfFailWithMsgNamespacedSuccessIfFailWithMessage.lean/declarations/syntax.md) | 36 | `declaration-track:f754e73783dab2f07d52fac716bdbbf93018255cdb2360eb782beb572819528a` |
| 2 | `def` | [successIfFailWithMessage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SuccessIfFailWithMsgNamespacedSuccessIfFailWithMessage.lean/declarations/successiffailwithmessage.md) | 40 | `declaration-track:8fc3d4eaf96452c2d35d78811ef8a69409bbc451700c20bf487786b5dc6bdfbc` |
| 3 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SuccessIfFailWithMsgNamespacedSuccessIfFailWithMessage.lean/declarations/elab-rules.md) | 66 | `declaration-track:81d75274cee00fbd938ab406eb74a263f5ea2417c12b957a212c13c43bc8afda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0b7db7ef9d275332d27bfa0cc5db567acd8361ccf7207d7e604cf90d4d799df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
