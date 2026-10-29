# Verification target: Attempt06 Namespaced Normalized Transform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c6f152648d81a9d059997bcf077928305504739",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c6f152648d81a9d059997bcf077928305504739`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean.json)

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
| 1 | `def` | [normalizedTransform](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/declarations/normalizedtransform.md) | 33 | `declaration-track:40b32d17026b398a6c5c07d7273005976b048733af8573ebcb1b1f7a4958696a` |
| 2 | `def` | [boundaryTransform](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/declarations/boundarytransform.md) | 38 | `declaration-track:7698c6421f22d9fee7b1b1edc956bf0966b9059e06e27d406efc89b0e9b5811e` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/declarations/normalizedtransform-dictionary.md) | 41 | `result-track:6258287c0e283bc136fd761f7006c0e6a161a39925469a33ce870a251c5807c3` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/declarations/normalized-integrand-integrable.md) | 51 | `result-track:1b3f61866e77c260f697bd435b8b47bebdfdba34c0e388f8f43fe9f6c7e13a23` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/declarations/full-complex-correlation-square.md) | 62 | `result-track:fd2bcf935f0de7bc92f01022e0d6816b9702abfed34064c4e7bf3a9892e3cb3d` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/declarations/interval-complex-correlation-square.md) | 92 | `result-track:581c05cc52fbf17f9962e80e1e9d2c7318804f870f8417b76c1f9bff95cd6300` |
| 7 | `theorem` | [critical_complex_ibp](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/declarations/critical-complex-ibp.md) | 113 | `result-track:85088ce892821292fed6d9eed73705530296c4eb348153ec7d7b3419be4a860f` |
| 8 | `theorem` | [boundary_transform_exact](../../../../MeasureAndIntegration/Attempt06NamespacedNormalizedTransform.lean/declarations/boundary-transform-exact.md) | 161 | `result-track:43e6cf85699db3cdb4cce12dbab2e4bab78764de1ee5b025e3a74d0a644bf563` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95ddff119f7446019176cea9e4ac9278d0213fe924ad74c24c9b91a0e9f19df8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
