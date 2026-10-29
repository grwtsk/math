# Verification target: Refinement Namespaced External Implementation Target

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf04c935a6af0dcece9dbca548784d88fc8feefb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf04c935a6af0dcece9dbca548784d88fc8feefb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean.json)

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
| 1 | `inductive` | [ExternalImplementationTarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/declarations/externalimplementationtarget.md) | 24 | `declaration-track:5c01495c2c705e6cc3141036cc92674ef536a65c43a0f01b47776367391089bc` |
| 2 | `inductive` | [RuntimeRefinementSubmissionStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/declarations/runtimerefinementsubmissionstatus.md) | 39 | `declaration-track:3b9087868657afa827a96b92eee1bbdf7e33e18e98aa0c6c653bc05d98fffd86` |
| 3 | `def` | [rustAuditRuntimeRefinementStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/declarations/rustauditruntimerefinementstatus.md) | 50 | `declaration-track:4ce944bf66bae79d9eaddc75d9bd61c477b21aa96f8793f48e78d3f9a40225a6` |
| 4 | `def` | [interactiveDevelopmentRuntimeRefinementStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/declarations/interactivedevelopmentruntimerefinementstatus.md) | 57 | `declaration-track:e6c0d4c8c817e299970b8df40a475d2d22e4b171304948d4349c6003657f1abf` |
| 5 | `theorem` | [rustAuditRuntimeRefinement_notSubmitted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/declarations/rustauditruntimerefinement-notsubmitted.md) | 63 | `result-track:f04ec42bd17dbeb0b89183347ac12672f319dc97cdcd74d02a5b21aec82e7ce0` |
| 6 | `theorem` | [interactiveDevelopmentRuntimeRefinement_notSubmitted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/declarations/interactivedevelopmentruntimerefinement-notsubmitted.md) | 69 | `result-track:b7066de051062debaeb6b0d87e2780e59dc89d9625f24a10d142b97670bb408f` |
| 7 | `structure` | [Refinement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/declarations/refinement.md) | 74 | `declaration-track:15529f9b6c5187054a721703aaf78ba11281d3cc3696a4241341fefd34b643df` |
| 8 | `theorem` | [step_refines](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementNamespacedExternalImplementationTarget.lean/declarations/step-refines.md) | 111 | `result-track:7a884622a34091950cdafa15861f3f9cc64b06d249391f171f0fef2a7c3b7532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47d6e1dc9269d3b390467652bead8147961b311ad5ac9841b966cc62effb06d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantb164a23aa27f26e0c8caac4ebb52bcf226cfd5ac5f5f66732fe52ba7ce1e145b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
