# Verification target: Pr268 Analytic Multiplicity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b41e4d160b234acbc473a4191b97753739dbc68",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b41e4d160b234acbc473a4191b97753739dbc68`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [order_mul_nonvanishing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/declarations/order-mul-nonvanishing.md) | 31 | `result-track:65f92616d455fb253a5a7c99016f7636d71a533d57e271f3568520b6d730c780` |
| 2 | `theorem` | [order_eq_of_local_normalization](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/declarations/order-eq-of-local-normalization.md) | 39 | `result-track:385fdc2e478b7db025cb722d6404a0d21491d7d6afd71be50df2191792d32120` |
| 3 | `theorem` | [order_eq_of_local_coordinate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/declarations/order-eq-of-local-coordinate.md) | 47 | `result-track:37fc27f79e0bdd1ccef0ddf4c9a39a902d780a1100b72bec15429d492b38ae06` |
| 4 | `theorem` | [simple_iff_of_local_coordinate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/declarations/simple-iff-of-local-coordinate.md) | 59 | `result-track:5d73107c06a6c68898a828b44a77220959f0b1a7fc5671dda6c8247acdae8cd3` |
| 5 | `theorem` | [order_comp_square](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/declarations/order-comp-square.md) | 68 | `result-track:b45f331891af074771df33abfdd6d7b4f8c3211b12e6d7df7d9923042f34196c` |
| 6 | `theorem` | [order_comp_square_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/declarations/order-comp-square-neg.md) | 75 | `result-track:6091ae9e6f2e7789fe649cca90ec52a8798b99fd53a3584b74b54908d725821f` |
| 7 | `theorem` | [order_comp_square_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/declarations/order-comp-square-zero.md) | 82 | `result-track:01f8f2c92ea8bf5b40819243de1990c26061eab02d23da33974b18b99eface07` |
| 8 | `theorem` | [same_zero_support_different_order](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Pr268AnalyticMultiplicityNamespaced.lean/declarations/same-zero-support-different-order.md) | 92 | `result-track:90b5fadbc3495db4cab2993e6095fa93fadd13be8e8393b743986c9f32c9e18b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d71114484f60ffa2a5754d1929e483554a85d556f0fc54822321ade5225b00fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant8d0aa64a0517d4cc6d2c22cf73d3955f7fb8bfaeb13545fc3ade13afff7e6bfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
