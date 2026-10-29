# Verification target: Diagnostics Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfca430ce1d3434f5c3678428c9a35b51478ac42",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfca430ce1d3434f5c3678428c9a35b51478ac42`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean.json)

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
| 1 | `inductive` | [DiagnosticKind](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/diagnostickind.md) | 22 | `declaration-track:9feaae9ee4f8d2db90983d3e8d69274365daf93b015706b29f716e23216d8d09` |
| 2 | `inductive` | [DiagnosticSeverity](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/diagnosticseverity.md) | 45 | `declaration-track:bbeb7397a6558419df17dbf521840d880d4859cacae9c1dab20ae3fa62fac7fa` |
| 3 | `structure` | [LineColumnPosition](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/linecolumnposition.md) | 53 | `declaration-track:e7d398df1019a73ff8898d7a034fa94395c2375c7eb9a8d188ba44d95ad4489d` |
| 4 | `structure` | [LineColumnRange](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/linecolumnrange.md) | 59 | `declaration-track:c543ee9144af8d6bfd773c0f60faaaac63a33adfc37b6f6022d0464ba6981fe7` |
| 5 | `structure` | [StructuredDiagnostic](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/structureddiagnostic.md) | 65 | `declaration-track:909684f97095ab221ef9aa09261fbd5efd27cc84c0a2762a22f555990b26e678` |
| 6 | `def` | [DiagnosticKind.toObligationKind](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/diagnostickind-toobligationkind.md) | 82 | `declaration-track:d064073a727d5697e9fae9f7d8b672c74f49f7b9816f147b59f82d309e9b447e` |
| 7 | `def` | [DiagnosticSeverity.toGoalStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/diagnosticseverity-togoalstatus.md) | 89 | `declaration-track:0fe5703929f3ffaa9dbcc0d4592696f31ef6e3980b3baf53a2a745824190b996` |
| 8 | `def` | [StructuredDiagnostic.toGoalCell](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/structureddiagnostic-togoalcell.md) | 96 | `declaration-track:11e2456f9b18825cfde70ec95042e9b086a5ce3a96cf324e9e79586981f92cca` |
| 9 | `structure` | [DiagnosticProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/diagnosticprojection.md) | 106 | `declaration-track:238edd3fb5dd7825ed59e2e6cddfb8f7133ac1bb7e66b5ec7f4e706fce442f44` |
| 10 | `def` | [projectDiagnostics](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/projectdiagnostics.md) | 112 | `declaration-track:bad08743b29e63bedd8ce9b409aa709e4c6d3867699bdf6cb04edec964822d51` |
| 11 | `theorem` | [diagnostic_projection_is_protocol_data](../../../../../ComputerScience/AlgorithmsInComputerScience/DiagnosticsNamespacedPublic.lean/declarations/diagnostic-projection-is-protocol-data.md) | 119 | `result-track:e64eba54a8ccbd243175370bedca716835fa9eacc31a851bd113ac1cd8575853` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0979b51f930533c46338a2c85678a98bef335341c8e1bad1c50fff16c9328e5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
