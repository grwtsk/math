# Verification target: Actual Polynomial Weighted Critical Variation Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c5e65afba1f0c24c84364d80d38e4e86265fc3d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c5e65afba1f0c24c84364d80d38e4e86265fc3d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePhaseMassFTC` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPolynomialWeightedCriticalVariation](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/declarations/actualpolynomialweightedcriticalvariation.md) | 28 | `declaration-track:817f8b882492b52c7e347369a2f9bc66f62252de4618334edf2d9ee10a81fdf6` |
| 2 | `def` | [actualCriticalPolynomialVariationLowerBudget](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/declarations/actualcriticalpolynomialvariationlowerbudget.md) | 32 | `declaration-track:7877ffa83c3f3e0933caa0bb1869488293d92ae38a49e10a06989fac23b017dc` |
| 3 | `theorem` | [actualPolynomialWeightedCriticalVariation_intervalIntegrable](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/declarations/actualpolynomialweightedcriticalvariation-intervalintegrable.md) | 36 | `result-track:e2b911d582edf3b26b937c984054a44df0e7addea63fc0cf079418096ce53996` |
| 4 | `theorem` | [actualPolynomialWeightedCriticalVariation_ge_exponential](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/declarations/actualpolynomialweightedcriticalvariation-ge-exponential.md) | 52 | `result-track:ab686031105f23fe1e45139209cfc3ae70a418d2b6db3f08b6b45abb7200be23` |
| 5 | `theorem` | [actualPolynomialWeightedCriticalVariation_ge_lowerBudget](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/declarations/actualpolynomialweightedcriticalvariation-ge-lowerbudget.md) | 71 | `result-track:b559a6a6ed2ce0166d3bfbb056557556e2c36d935a01593e8a11d504d0250422` |
| 6 | `theorem` | [actualCriticalPolynomialVariationLowerBudget_tendsto_atTop](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/declarations/actualcriticalpolynomialvariationlowerbudget-tendsto-attop.md) | 84 | `result-track:3b8094dcc591d268b73f65934272a0ec3ac94fda732818a3f08775f5c68593bf` |
| 7 | `theorem` | [actualPolynomialWeightedCriticalVariation_not_eventually_bounded](../../../../MeasureAndIntegration/ActualPolynomialWeightedCriticalVariationNamespacedEdition2.lean/declarations/actualpolynomialweightedcriticalvariation-not-eventually-bounded.md) | 97 | `result-track:fb21247c580b02c5d8b4905678d2d1883f1b14ed2cb11d5c6d08236f016cce80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24265777cbeaf506b0f82f5d621171299b61caa18ece2050f208e5faeac4b032 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
