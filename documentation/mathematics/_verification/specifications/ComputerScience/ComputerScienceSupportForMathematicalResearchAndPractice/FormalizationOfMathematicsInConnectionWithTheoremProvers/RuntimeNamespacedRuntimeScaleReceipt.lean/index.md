# Verification target: Runtime Namespaced Runtime Scale Receipt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f97494f82a1a3305f799b5454e080145043c944d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variantd055783b6fe93960c7d3b423448fcf07ba48270ce0e0227b38c3c4b343bc507b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeNamespacedRuntimeScaleReceipt.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeNamespacedRuntimeScaleReceipt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f97494f82a1a3305f799b5454e080145043c944d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variantd055783b6fe93960c7d3b423448fcf07ba48270ce0e0227b38c3c4b343bc507b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variantd055783b6fe93960c7d3b423448fcf07ba48270ce0e0227b38c3c4b343bc507b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Epistemology.Induction.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RuntimeScaleReceipt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeNamespacedRuntimeScaleReceipt.lean/declarations/runtimescalereceipt.md) | 13 | `declaration-track:c63571e29fc37d1e4537454ef2f49bfc082211beaec4ce2e0aad054150a64a55` |
| 2 | `def` | [RuntimeScaleReceipt.accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeNamespacedRuntimeScaleReceipt.lean/declarations/runtimescalereceipt-accepted.md) | 25 | `declaration-track:f64b5b4873d5f3081715f158965c08e2d74aeb887914a2d86c2083aac857dc93` |
| 3 | `def` | [RuntimeScaleReceipt.fastCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeNamespacedRuntimeScaleReceipt.lean/declarations/runtimescalereceipt-fastcheck.md) | 31 | `declaration-track:b65449353d6becf79a26bb24b7bf2219f57cba00562f433ce04490c976ce9c94` |
| 4 | `theorem` | [RuntimeScaleReceipt.kernel_unchanged_if_accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeNamespacedRuntimeScaleReceipt.lean/declarations/runtimescalereceipt-kernel-unchanged-if-accepted.md) | 37 | `result-track:a7c22e431a33580f48c2efab855aa423362ffa27b5831aded2650a1172f19206` |
| 5 | `theorem` | [RuntimeScaleReceipt.receipts_only_if_accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeNamespacedRuntimeScaleReceipt.lean/declarations/runtimescalereceipt-receipts-only-if-accepted.md) | 44 | `result-track:ce537f6cca4a29a90a8bb82cff1eecda423cb1c2fe74b190f01459eda5e8a11c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d72f046213db30cbde90148e329a767b85a1101f4cc024a66abe06d4e15f034 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variantd055783b6fe93960c7d3b423448fcf07ba48270ce0e0227b38c3c4b343bc507b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variantd055783b6fe93960c7d3b423448fcf07ba48270ce0e0227b38c3c4b343bc507b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
