# Verification target: Lazy Computation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8bca12c9080136deb8388550b0eeae80e92c9ae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyComputation/Variant016087e1ae0d51d007461afb9bcbe45f03b324b7457297a4580238bb340db19f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8bca12c9080136deb8388550b0eeae80e92c9ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyComputation/Variant016087e1ae0d51d007461afb9bcbe45f03b324b7457297a4580238bb340db19f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyComputation/Variant016087e1ae0d51d007461afb9bcbe45f03b324b7457297a4580238bb340db19f.lean.json)

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
| 1 | `structure` | [MetaMStringCont](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/declarations/metamstringcont.md) | 19 | `declaration-track:f60a4048d65e4bd904522b8594e94c9e093aa0e8a9b591cb4dc409df3380907a` |
| 2 | `structure` | [RunnerWidgetProps](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/declarations/runnerwidgetprops.md) | 26 | `declaration-track:3cc84a74a3b0e944e5139eb4a4dac3ee80e935c384ce6134aabb0b5a0880deed` |
| 3 | `def` | [runMetaMStringCont](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/declarations/runmetamstringcont.md) | 33 | `declaration-track:35f5b00e1c5c8ea22db2ee6371dbb931220c40efe62634ad89196e949dad280e` |
| 4 | `def` | [runnerWidget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/declarations/runnerwidget.md) | 39 | `declaration-track:23a4adcc1988c7da0862d54dd3c3384a093d68646a2e95d640efdc6569a58d32` |
| 5 | `syntax` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/declarations/syntax.md) | 57 | `declaration-track:e66ac15d7d81b2c43d08f926301cb1b631647c6067470f81d60d4eb69dc37d79` |
| 6 | `def` | [makeRunner](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/declarations/makerunner.md) | 59 | `declaration-track:4d9d3267a227e23012b3f57f65f550d522b7d78d657f9e66d7bcf26e6337c49e` |
| 7 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LazyComputationNamespacedPublic.lean/declarations/example.md) | 75 | `declaration-track:7bf98efd6a8182d5e1768786bff88def27b8365b8d9bbc24eeb6b4920e35a7cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=223261526d22dc7fbbcb274d94a0a3d350c4ead9671328fd809d6533fb5a7a5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyComputation/Variant016087e1ae0d51d007461afb9bcbe45f03b324b7457297a4580238bb340db19f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyComputation/Variant016087e1ae0d51d007461afb9bcbe45f03b324b7457297a4580238bb340db19f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
