# Verification target: Dirac KTrace Formula Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71e9d0e3aeede20664533ef3a1aa64aebc72bf97",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71e9d0e3aeede20664533ef3a1aa64aebc72bf97`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.DiracKTraceFormula` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dirac_spectral_trace_regularized](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/declarations/dirac-spectral-trace-regularized.md) | 27 | `result-track:9c5e8f8a9ee829307621a2e40f5b71810fe22b5ea4c7ebde329ad625e42cda24` |
| 2 | `theorem` | [dirac_spectral_trace_respects_multiplicity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/declarations/dirac-spectral-trace-respects-multiplicity.md) | 33 | `result-track:266c74a1374263d127af3bd38ba878bbec956ae524f1c642ac9c88970407902b` |
| 3 | `theorem` | [k_index_trace_additive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/declarations/k-index-trace-additive.md) | 39 | `result-track:1893c980c3f013bd1245f15c07d5be84e62df2a0f0819720d99346bc2bf819e7` |
| 4 | `theorem` | [k_index_trace_compatible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/declarations/k-index-trace-compatible.md) | 46 | `result-track:dc1b27b004565487722d69c434569fc1dee9f96562b768f3cb8ca90fdc237152` |
| 5 | `theorem` | [dirac_k_index_trace_formula](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/declarations/dirac-k-index-trace-formula.md) | 53 | `result-track:4e0a376c07b372a2f2c74208150ab4ad7f28abb0083830342edfefa4ba9fa174` |
| 6 | `theorem` | [spectral_trace_eq_k_index_trace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/declarations/spectral-trace-eq-k-index-trace.md) | 62 | `result-track:7b875409fa560ebd41c34f814e402ea7732866491e2fb3c9efd94305dd7071c8` |
| 7 | `theorem` | [dirac_k_index_witt_trace_formula](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiracKTraceFormulaNamespaced.lean/declarations/dirac-k-index-witt-trace-formula.md) | 71 | `result-track:a00f0dba049f210da04ff5538f2feddfb94105b281e6948a2358fa03b02033ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e578e8234346b7d2b59eca99f63806bd746f073a27c4a5c2e0e75d9e329e0003 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
