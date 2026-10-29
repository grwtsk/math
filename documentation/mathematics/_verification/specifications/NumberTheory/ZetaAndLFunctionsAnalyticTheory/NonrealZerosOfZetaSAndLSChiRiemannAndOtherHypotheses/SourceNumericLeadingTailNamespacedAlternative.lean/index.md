# Verification target: Source Numeric Leading Tail Namespaced Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2dc1eb43fbb136b454eff7c15f7905e440fd845",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceNumericLeadingTailNamespacedAlternative.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceNumericLeadingTailNamespacedAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2dc1eb43fbb136b454eff7c15f7905e440fd845`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceLeadingTailBudget` — import line 6; external provider; requires a separately pinned dependency.
- `ActualFullKappaNumericBounds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [leadingFixedErrorBudget_le_numeric](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceNumericLeadingTailNamespacedAlternative.lean/declarations/leadingfixederrorbudget-le-numeric.md) | 32 | `result-track:b6a2ed75899a7770ea7aa67ddbbe5a333656dfbfa687a63e0b4e5175c26330ad` |
| 2 | `theorem` | [renormalized_tail_sub_leading_abs_le_numeric](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceNumericLeadingTailNamespacedAlternative.lean/declarations/renormalized-tail-sub-leading-abs-le-numeric.md) | 38 | `result-track:d68a3ca92e0d36492b8b0e513aa8ec76b2483dea7f2410c18a9a557b50f74425` |
| 3 | `theorem` | [actual_leading_complete_pairing_numeric_comparisons](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceNumericLeadingTailNamespacedAlternative.lean/declarations/actual-leading-complete-pairing-numeric-comparisons.md) | 43 | `result-track:fee330add340ac5160b2be835e2564c6c25c0dbaf7447d0750421619493a8b57` |
| 4 | `theorem` | [residual_sub_actual_leading_sub_zeta_abs_lt_numeric](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceNumericLeadingTailNamespacedAlternative.lean/declarations/residual-sub-actual-leading-sub-zeta-abs-lt-numeric.md) | 51 | `result-track:e53959f58412f365efe6597d89cd8f3251a6fd274e781196a7c1e9a6542e4fd6` |
| 5 | `theorem` | [actual_leading_upper_iff_complete_pairing_upper_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceNumericLeadingTailNamespacedAlternative.lean/declarations/actual-leading-upper-iff-complete-pairing-upper-at-radius.md) | 67 | `result-track:3f637017537c4ef31159c5bf3b01a86215022c1497ea661d738ae061a7af2071` |
| 6 | `theorem` | [estimate_of_actual_leading_signed_tail_numeric](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceNumericLeadingTailNamespacedAlternative.lean/declarations/estimate-of-actual-leading-signed-tail-numeric.md) | 75 | `result-track:f4321e2c84f2a4e848224c014d76b73913a4b4bccbc1c22aa2306d5cb2289757` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffcf2f07eb875bd88391b21cd45ec6460b38329e8ce17273956b5896c0f57a8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTail/Variant0aa07ace6372f95b33282aecf72a4e0b95cf930f6d114d6b1a190356a63c7190.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
