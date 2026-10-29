# Verification target: Test Edge Discovery Seticc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2be65ac402f4878e625e4ffceac185bef1365ed",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeDiscoverySeticc/Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeDiscoverySeticc.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeDiscoverySeticc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2be65ac402f4878e625e4ffceac185bef1365ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeDiscoverySeticc/Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeDiscoverySeticc/Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.Discovery` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Icc01](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeDiscoverySeticc.lean/declarations/icc01.md) | 3 | `declaration-track:9efd018649777890c151dc37a0951c1945562b32aceb86d73d420d2de4c024e2` |
| 2 | `theorem` | [edge_minimize_seticc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeDiscoverySeticc.lean/declarations/edge-minimize-seticc.md) | 5 | `result-track:f0ca979a5a255cb6bc018eb7a0546d59bcddbb2ab157a69fb8e31a14f327664f` |
| 3 | `theorem` | [edge_maximize_seticc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeDiscoverySeticc.lean/declarations/edge-maximize-seticc.md) | 8 | `result-track:74f8a756f44d3a0594339a3679360dcf0fc000270e9916b3c0bf4b38e6801e56` |
| 4 | `theorem` | [edge_root_seticc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeDiscoverySeticc.lean/declarations/edge-root-seticc.md) | 11 | `result-track:243d0b7132cb87f5459ddf0918c6b80c77c15e1610f493a441f8f70a7c3d4207` |
| 5 | `theorem` | [edge_unique_root_seticc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeDiscoverySeticc.lean/declarations/edge-unique-root-seticc.md) | 14 | `result-track:eb97df2a7dabea6ebe8ebe8ac37fab11198d21f3dc7e55aab71d2b3094673451` |
| 6 | `theorem` | [edge_argmax_seticc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeDiscoverySeticc.lean/declarations/edge-argmax-seticc.md) | 17 | `result-track:2eb891ca2406080c49c85374d7c16ae7c06f050fd10b5f21393b8aacf0c2dc09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2793f30a20b63608ce24c6f233ff041375e286cad794d0aa5aa0d81ad959f6dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeDiscoverySeticc/Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeDiscoverySeticc/Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
