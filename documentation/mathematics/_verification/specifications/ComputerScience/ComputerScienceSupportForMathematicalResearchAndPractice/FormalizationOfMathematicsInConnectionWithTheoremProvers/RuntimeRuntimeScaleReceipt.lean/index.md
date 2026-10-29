# Verification target: Runtime Runtime Scale Receipt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc3398999f6076f7f0f6e73b405547cdc55239bc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variant7f77d296c5ab6645f1369dd8562dfc0599d89fae5a4a572ad571271009b23c86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeRuntimeScaleReceipt.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeRuntimeScaleReceipt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc3398999f6076f7f0f6e73b405547cdc55239bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variant7f77d296c5ab6645f1369dd8562dfc0599d89fae5a4a572ad571271009b23c86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variant7f77d296c5ab6645f1369dd8562dfc0599d89fae5a4a572ad571271009b23c86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Epistemology.Induction.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RuntimeScaleReceipt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeRuntimeScaleReceipt.lean/declarations/runtimescalereceipt.md) | 5 | `declaration-track:1e44d1b6ee20a0f2996e81d865602c83c3e4859807757196af49af694a9fcc30` |
| 2 | `def` | [RuntimeScaleReceipt.accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeRuntimeScaleReceipt.lean/declarations/runtimescalereceipt-accepted.md) | 17 | `declaration-track:8c63defa8d8fe2eb9b554903e65118dc25011948da713f778ff787783b8291f3` |
| 3 | `def` | [RuntimeScaleReceipt.fastCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeRuntimeScaleReceipt.lean/declarations/runtimescalereceipt-fastcheck.md) | 23 | `declaration-track:1c3e97459c2536c2076b600bfb2b41d78ae6caf3998589509b70773e8bdc93d9` |
| 4 | `theorem` | [RuntimeScaleReceipt.kernel_unchanged_if_accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeRuntimeScaleReceipt.lean/declarations/runtimescalereceipt-kernel-unchanged-if-accepted.md) | 29 | `result-track:a7472e53be48036d482567d6a8aec71435ad853bba4f4f1c971f75b5f8c5a9d9` |
| 5 | `theorem` | [RuntimeScaleReceipt.receipts_only_if_accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RuntimeRuntimeScaleReceipt.lean/declarations/runtimescalereceipt-receipts-only-if-accepted.md) | 36 | `result-track:ff226b911817b5f2b0978cb62fcb4fa4f6e715e544d65ac23344a7a2ba29472a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fc1fa7fcb42cf30f958637026a783d3118fcdac029dc089e113fe4bfddd98f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variant7f77d296c5ab6645f1369dd8562dfc0599d89fae5a4a572ad571271009b23c86.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtime/Variant7f77d296c5ab6645f1369dd8562dfc0599d89fae5a4a572ad571271009b23c86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
