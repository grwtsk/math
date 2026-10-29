# Verification target: Smooth Explicit Formula Transport Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa073348552d6e7ac8a097410ed91a06d0c0e507",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa073348552d6e7ac8a097410ed91a06d0c0e507`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/declarations/weightedpointterm.md) | 40 | `declaration-track:d81cd4f8daba6d5a27560353d8819cfef4e21a5e1270ceb8d0cbe41ad5d90ac0` |
| 2 | `theorem` | [occurrence_sum_eq_weighted_points](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/declarations/occurrence-sum-eq-weighted-points.md) | 46 | `result-track:3138192c2c5edd145527e5f7798bf86ff3d167ebc4d8c425eab58dcdf08eb11a` |
| 3 | `def` | [kernelPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/declarations/kernelpointterm.md) | 58 | `declaration-track:953a51c773939edcf3bb8e1e1191505973df9eb605556eae8e397385df4e17b2` |
| 4 | `theorem` | [kernelPointTerm_eq_weightedPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/declarations/kernelpointterm-eq-weightedpointterm.md) | 63 | `result-track:e5d5b29f5f63fa6a9d6e5cfd2c0aea83e24154088b9e5b10e6d8b21e98865aa6` |
| 5 | `theorem` | [kernel_point_sum_eq_occurrence_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/declarations/kernel-point-sum-eq-occurrence-sum.md) | 71 | `result-track:98ce1006f258c963da79048103ed09a364d10c980c96739b28a9c1c782225125` |
| 6 | `def` | [KernelPointFormulaObligation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/declarations/kernelpointformulaobligation.md) | 85 | `declaration-track:b32ace5f566e2290066293284682efb598b6d52defdbe79ffb09b787d5083027` |
| 7 | `theorem` | [smooth_explicit_formula_of_kernel_point_formula](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition2.lean/declarations/smooth-explicit-formula-of-kernel-point-formula.md) | 93 | `result-track:c67c5a7a10e57e1c5b9b8e75e563134a478786d9b70249262a422e412fd16033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c8139a7e8ede248414ba47aae9c065ffd12eda166ce87f15d07b74b4bcc22f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
