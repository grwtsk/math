# Verification target: Attempt04 Namespaced Normalized Transform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "709143b7794e1cf40b1e8a2380e9121d634de62f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant201b7faa4f62ecae93b370d58ca963aacc66e83c4c7db45c7926eb8bdce89aef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `709143b7794e1cf40b1e8a2380e9121d634de62f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant201b7faa4f62ecae93b370d58ca963aacc66e83c4c7db45c7926eb8bdce89aef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt04/Variant201b7faa4f62ecae93b370d58ca963aacc66e83c4c7db45c7926eb8bdce89aef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/declarations/normalizedtransform.md) | 33 | `declaration-track:502accf4119fb33be565837e459f0935dbbddba41eb00c53681517be77112145` |
| 2 | `def` | [boundaryTransform](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/declarations/boundarytransform.md) | 38 | `declaration-track:2d66b1b6d8bbf864730cd08f6102ae9c76d06f4fb9a0f49f17f13b6eadfd89af` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/declarations/normalizedtransform-dictionary.md) | 41 | `result-track:1d2b7607fae16efb59f5bec7e8631159b12306ebe9c9d65d885801153e5a11d6` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/declarations/normalized-integrand-integrable.md) | 51 | `result-track:cf8c3d6d1c16dc0045f7791e67b4c88135111ed45fc617e72f6a4eb2431f4e72` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/declarations/full-complex-correlation-square.md) | 62 | `result-track:e174b1a2fe2975e93e7b97ff685d61398499a47acc080431cde3a04af9ab0e3c` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/declarations/interval-complex-correlation-square.md) | 92 | `result-track:6744353aae93bd2b33cce32e96c99ae2c928de7045b66a80fa60d739db0a6979` |
| 7 | `theorem` | [critical_complex_ibp](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/declarations/critical-complex-ibp.md) | 113 | `result-track:d52722328f85d170e9d19e1a11541627496db35813f0dc1613121b3b386cd75b` |
| 8 | `theorem` | [boundary_transform_exact](../../../../MeasureAndIntegration/Attempt04NamespacedNormalizedTransform.lean/declarations/boundary-transform-exact.md) | 154 | `result-track:1868b0a0f5a55a356131684ec6f1651a8e9fc7eab4f5c515c0fc3f04f02d594b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e11823dabf8d46f4e23f5b4b7df588cc84de56819baa679b7fa3ee917d6fd2ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant201b7faa4f62ecae93b370d58ca963aacc66e83c4c7db45c7926eb8bdce89aef.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt04/Variant201b7faa4f62ecae93b370d58ca963aacc66e83c4c7db45c7926eb8bdce89aef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
