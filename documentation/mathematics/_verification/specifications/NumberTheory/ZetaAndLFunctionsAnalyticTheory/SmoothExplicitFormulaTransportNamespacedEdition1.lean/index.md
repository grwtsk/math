# Verification target: Smooth Explicit Formula Transport Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "394dabdaa035174a9f88aceffee07cffa8e0789f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant71e20e1b9ed34fa35e1c44a390a411b7150ce2b2333a48e5bde628f12ce88a72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `394dabdaa035174a9f88aceffee07cffa8e0789f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant71e20e1b9ed34fa35e1c44a390a411b7150ce2b2333a48e5bde628f12ce88a72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant71e20e1b9ed34fa35e1c44a390a411b7150ce2b2333a48e5bde628f12ce88a72.lean.json)

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
| 1 | `def` | [weightedPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/declarations/weightedpointterm.md) | 40 | `declaration-track:fe5841ddaac50696354cf341abb97e9d2d49f913c323a78ecf1c995d7afb56e6` |
| 2 | `theorem` | [occurrence_sum_eq_weighted_points](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/declarations/occurrence-sum-eq-weighted-points.md) | 46 | `result-track:a10a095aaaecd227571b5a7c39a06cfe80740ef7d36e9aa24caa4bbf4978414b` |
| 3 | `def` | [kernelPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/declarations/kernelpointterm.md) | 58 | `declaration-track:f1f1371ace3ebc1335e5dd74f199140299bfbeb5b2a88b743f24971349817b2f` |
| 4 | `theorem` | [kernelPointTerm_eq_weightedPointTerm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/declarations/kernelpointterm-eq-weightedpointterm.md) | 63 | `result-track:049836263b41ae53e5d9829d80e09be9238a948f9cad66410236e88085951209` |
| 5 | `theorem` | [kernel_point_sum_eq_occurrence_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/declarations/kernel-point-sum-eq-occurrence-sum.md) | 71 | `result-track:bfaf563ab6e376768a7f55ed2be573bbea0e7e24e974a90222b2d12773a17284` |
| 6 | `def` | [KernelPointFormulaObligation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/declarations/kernelpointformulaobligation.md) | 85 | `declaration-track:a18a7b86e93a4fecc604405a46ee7ba063c77b505f63f0a6d004ce1f9d26ce48` |
| 7 | `theorem` | [smooth_explicit_formula_of_kernel_point_formula](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SmoothExplicitFormulaTransportNamespacedEdition1.lean/declarations/smooth-explicit-formula-of-kernel-point-formula.md) | 93 | `result-track:4182eb7fd8c2521f3ffa409c9c9bbfc18b832ee9b1cef617fdccdf6a7bfc06dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ca8d9f7e2da01680179abf297e1a678f0ffad040cef77b57ff491049c454600 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant71e20e1b9ed34fa35e1c44a390a411b7150ce2b2333a48e5bde628f12ce88a72.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variant71e20e1b9ed34fa35e1c44a390a411b7150ce2b2333a48e5bde628f12ce88a72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
