# Verification target: Smooth Explicit Formula Transport Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "133ecd13a0a89109c9b9b7de790a83c0e4453d1d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `133ecd13a0a89109c9b9b7de790a83c0e4453d1d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/declarations/weightedpointterm.md) | 32 | `declaration-track:b7237ac79f6d89d4a8f1a6e77a57a7f95e9eaadded7c9c29e7326dd087e915b0` |
| 2 | `theorem` | [occurrence_sum_eq_weighted_points](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/declarations/occurrence-sum-eq-weighted-points.md) | 38 | `result-track:7390eeaf847ccb604600e2650b346f45c107bf88f220c7c6d6740af7c9776fe4` |
| 3 | `def` | [kernelPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/declarations/kernelpointterm.md) | 50 | `declaration-track:99ddb0297aad9b6c57c8aeed671560926261b368db1d3f3effb7fbd142753c40` |
| 4 | `theorem` | [kernelPointTerm_eq_weightedPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/declarations/kernelpointterm-eq-weightedpointterm.md) | 55 | `result-track:a507964a57068d54d97ce2000697e21761ccc258983c05c334637eafbf5da395` |
| 5 | `theorem` | [kernel_point_sum_eq_occurrence_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/declarations/kernel-point-sum-eq-occurrence-sum.md) | 63 | `result-track:a231e16ff7815d9a00fdaf6e34da10aa26e3ca2351e13f8763db96e6e83b719f` |
| 6 | `def` | [KernelPointFormulaObligation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/declarations/kernelpointformulaobligation.md) | 77 | `declaration-track:46525c79cc325d4ea70abd5d14cdebd35e3af8ed27f46e72ce73259367dba969` |
| 7 | `theorem` | [smooth_explicit_formula_of_kernel_point_formula](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportEdition1.lean/declarations/smooth-explicit-formula-of-kernel-point-formula.md) | 85 | `result-track:3ba3da35c9911c66d42772feaa756d8cae645584d3058ebfd2b11551f748bad4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=540f9b042852242e85633e8577be772779a0505f916a84063f60e0f7abc45a9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
