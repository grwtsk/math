# Verification target: Manifest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6dfa3a1e902b8e0a6f74030f60d66ebb02abc3b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variantdd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6dfa3a1e902b8e0a6f74030f60d66ebb02abc3b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variantdd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variantdd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.Json` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RustReducerKernel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/rustreducerkernel.md) | 23 | `declaration-track:d432f23e7f0f54aab5db306aec7903e3e6b213b971c0b5e0d4c5b05190832ef9` |
| 2 | `structure` | [ConformanceVector](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/conformancevector.md) | 31 | `declaration-track:7e1f9da8de16c36eebdeab5c34548fb356137b10452d48251e0ba4ac7a0b08c3` |
| 3 | `structure` | [Manifest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/manifest.md) | 39 | `declaration-track:7c78f42ee0459cb30bca6f37f1b2f081ec8c2f7a5e043a0f29443f1e7b8c404f` |
| 4 | `def` | [RustReducerKernel.eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/rustreducerkernel-eval.md) | 62 | `declaration-track:9cc02fb617f1ea687afc462f29469b141185d2346a605e3b0f44c465375bf4bb` |
| 5 | `def` | [makeConformanceVectors](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/makeconformancevectors.md) | 67 | `declaration-track:6f8256377a36b5cc9927edc7c40930c82afef56589b9c95e32e545b366f9f396` |
| 6 | `def` | [emitRustManifest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/emitrustmanifest.md) | 73 | `declaration-track:a44705671c9c1a18cc3c433fc2e00a63d1785161d20b272744c2ed557aa7db3d` |
| 7 | `def` | [emitConformanceVectors](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/emitconformancevectors.md) | 77 | `declaration-track:a65e872a34f56f88776bda99c3e08f241a6bc99e1d853ce9f63c071cc2848904` |
| 8 | `def` | [rustKernelBody](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/rustkernelbody.md) | 80 | `declaration-track:e29e4a6f82b21e5230bad613a63bd6833a1159eec282b0700bb6ebf051754d32` |
| 9 | `def` | [rustAssertions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/rustassertions.md) | 89 | `declaration-track:7e1046e125b35c945caecbee0eff3549a64ffd9e8f756e526680096a7006d6a2` |
| 10 | `def` | [emitRustSource](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Manifest.lean/declarations/emitrustsource.md) | 100 | `declaration-track:29e43b86321a86c6288619cdec02a140e3e8f997301d6cbda016c8f67f2877b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=345107b5bf50fa3edb3af74a1f2fcb221bb410a67b1d3deaffb6824a85a406c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variantdd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variantdd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
