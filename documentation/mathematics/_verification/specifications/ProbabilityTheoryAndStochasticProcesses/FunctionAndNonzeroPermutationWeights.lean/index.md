# Verification target: Function And Nonzero Permutation Weights

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d66e45eb46c4ef59752f5bce53f655323864a78",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/WidthThreeFixedEdgeDistributions/Variant50b38a23487e8948/FunctionAndNonzeroPermutationWeights.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d66e45eb46c4ef59752f5bce53f655323864a78`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/WidthThreeFixedEdgeDistributions/Variant50b38a23487e8948/FunctionAndNonzeroPermutationWeights.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/WidthThreeFixedEdgeDistributions/Variant50b38a23487e8948/FunctionAndNonzeroPermutationWeights.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/declarations/example-source-edition-3.md) | 39 | `declaration-track:7c89ac9d1dcfc63b82c8491bfdb8c0ecba422ebc1d470e8438c2900064c21010` |
| 2 | `example` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/declarations/example-source-edition-7.md) | 40 | `declaration-track:f0685522e0e6285e2d569fde5f531713ec40a6b7f1efb0cc0bd0a5ba10d32aa5` |
| 3 | `example` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/declarations/example-source-edition-6.md) | 41 | `declaration-track:a1154053ffbb4dbdcbfe171e68496ba14fe4d0648d489f13b57567e11db6e359` |
| 4 | `example` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/declarations/example.md) | 42 | `declaration-track:05ef9ef1a6dc16fe5f11bd34dca4a8736d40efdb17ef193e954b98d745ae3c33` |
| 5 | `example` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/declarations/example-source-edition-5.md) | 46 | `declaration-track:88e32c70c6c48af25e841032fb84feccb233cd1d7411989d15b6a8b2a5fe1d59` |
| 6 | `example` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/declarations/example-source-edition-8.md) | 47 | `declaration-track:f63a333104c9a46de86ca76d75c19d9bf35e3b36e6af497f8d35405e2a7433a5` |
| 7 | `example` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/declarations/example-source-edition-4.md) | 48 | `declaration-track:86c874e16e26f6c02800ddc9defa6450ffce7f058abfed1eaff12572349e181c` |
| 8 | `example` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FunctionAndNonzeroPermutationWeights.lean/declarations/example-source-edition-2.md) | 49 | `declaration-track:5b15a5aa0877d468d668df9453fd68afe26ea7134b3d02c71df2a78fe9cc19e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9205a6cef05ddcb2ec4441b7fb99437b804fdb3551e7c3f6dee5e72d0c262bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/WidthThreeFixedEdgeDistributions/Variant50b38a23487e8948/FunctionAndNonzeroPermutationWeights.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/WidthThreeFixedEdgeDistributions/Variant50b38a23487e8948/FunctionAndNonzeroPermutationWeights.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
