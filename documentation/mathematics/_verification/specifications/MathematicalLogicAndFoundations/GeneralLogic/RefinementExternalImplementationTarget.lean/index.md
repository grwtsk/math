# Verification target: Refinement External Implementation Target

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a59d079b79825ba74f5a461e83a2564b7c0a3c20",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant3141fd5a2806122c623f34b3ea9ce141c1b500f80a2cbfb7b8360c19cca57287.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a59d079b79825ba74f5a461e83a2564b7c0a3c20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant3141fd5a2806122c623f34b3ea9ce141c1b500f80a2cbfb7b8360c19cca57287.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant3141fd5a2806122c623f34b3ea9ce141c1b500f80a2cbfb7b8360c19cca57287.lean.json)

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
| 1 | `inductive` | [ExternalImplementationTarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/declarations/externalimplementationtarget.md) | 16 | `declaration-track:4bc1815605ec35b9b439911c1edb4e644c0866afe7178519348cb9755ae08924` |
| 2 | `inductive` | [RuntimeRefinementSubmissionStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/declarations/runtimerefinementsubmissionstatus.md) | 31 | `declaration-track:163987b3481c0d1e85fe9f0b2ab90b7a5cad2145bfa4dd27eca3554acd53cf31` |
| 3 | `def` | [rustAuditRuntimeRefinementStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/declarations/rustauditruntimerefinementstatus.md) | 42 | `declaration-track:5b0fcd41315dffecf8e1dd9a2d3c94c7250cd738a716b7f6d3d0a7cf58ba94a3` |
| 4 | `def` | [interactiveDevelopmentRuntimeRefinementStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/declarations/interactivedevelopmentruntimerefinementstatus.md) | 49 | `declaration-track:567292c9011a894b1fc8e7ccfe71c43347d343093eff3f25b610569ee611ee7d` |
| 5 | `theorem` | [rustAuditRuntimeRefinement_notSubmitted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/declarations/rustauditruntimerefinement-notsubmitted.md) | 55 | `result-track:7938ce8b71d0abf0e212eeef42fe64dc0b9783a2c6059297af1431f45be8f8ed` |
| 6 | `theorem` | [interactiveDevelopmentRuntimeRefinement_notSubmitted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/declarations/interactivedevelopmentruntimerefinement-notsubmitted.md) | 61 | `result-track:2bbd061baaf5c45629232411de5eb5c5be5981b2d9c6285723b53434a982db3e` |
| 7 | `structure` | [Refinement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/declarations/refinement.md) | 66 | `declaration-track:b2e6bf5b36bce24d5877ae01a4358ff40c39d0de1058145ed7b237481cb2d15e` |
| 8 | `theorem` | [step_refines](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RefinementExternalImplementationTarget.lean/declarations/step-refines.md) | 103 | `result-track:f5a4dd56df0efba96d388e3f5c468ce4588cc31e30f4b510c991fc67603964ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85bf588064b398f79bea78c5b695c5dfae64886894137570bdb32f3e00cf4755 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant3141fd5a2806122c623f34b3ea9ce141c1b500f80a2cbfb7b8360c19cca57287.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant3141fd5a2806122c623f34b3ea9ce141c1b500f80a2cbfb7b8360c19cca57287.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
