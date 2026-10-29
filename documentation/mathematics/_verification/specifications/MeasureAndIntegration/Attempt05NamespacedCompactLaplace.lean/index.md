# Verification target: Attempt05 Namespaced Compact Laplace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad327886557b76f9af5d98950b9325230c2e96b2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant5bf4e75c286a2d0aa61b1df004a9b75132ac33df7022fb38e115eb6f798bffbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad327886557b76f9af5d98950b9325230c2e96b2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant5bf4e75c286a2d0aa61b1df004a9b75132ac33df7022fb38e115eb6f798bffbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant5bf4e75c286a2d0aa61b1df004a9b75132ac33df7022fb38e115eb6f798bffbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/compactlaplace.md) | 30 | `declaration-track:bba7f7b97492e2a09c1c92faa0ed7d8138c82cab6b22cd66f81d279d388d9a50` |
| 2 | `def` | [primitiveTransform](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/primitivetransform.md) | 33 | `declaration-track:f7a91a1d5c5ed44a146f644de7c44f32532e0de1851d1e0e30097e190cc183df` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/normalizedprimitivetransform.md) | 35 | `declaration-track:abb8736322a386c7acee480e14385f00b8b2d3feafd4c2d38a72633a0259b7c2` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/compactlaplace-integrable.md) | 38 | `result-track:f98b8ed1563f7ad3dcaad49894027c276459009f62cadfda4428b38b157e58cf` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/complex-weighted-derivative.md) | 45 | `result-track:d2b2f3c2017254315f07c91e676796246fd88682a13a590c33e2a1a8b695f9e8` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/actual-complex-pole-filter.md) | 74 | `result-track:ccc6ddd34a92fa3e4190be912e6b9206da4636c9c560242a3a4abfac67379080` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/primitive-transform-normalization.md) | 101 | `result-track:386275c5391ef520e95ccbbde3c3b0888d3a391b338391af070e2d0751317a56` |
| 8 | `theorem` | [boundary_transform_factored](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/boundary-transform-factored.md) | 111 | `result-track:ced57f527e8287b5336e421d90790872643b1ded82525bf55af6f879e450ab63` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/boundary-transform-factored-unnormalized.md) | 118 | `result-track:9a6a7b719dde22343a0dccad22503cab4211684ec9edfebd9101d56afd6aaffb` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/compactlaplace-hasderivat.md) | 128 | `result-track:f276db78bb650089fd2a444f5c62f6cf5abcfcba9f1e47f23879b37b12ca9f83` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/compactlaplace-differentiable.md) | 173 | `result-track:eacd57db64250971311664b1fd65fc2ea281635d4ce7745009b57a79452e2783` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/normalized-primitive-differentiable.md) | 177 | `result-track:775403ab717e6b8fc296f465cfa9f5f8ac34b7560f5992c618df798acc995f70` |
| 13 | `theorem` | [primitive_differentiable](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/primitive-differentiable.md) | 182 | `result-track:ea9e30b5f7120d22a08ed8aee87a15236c310a55d39307968d9a12d77d052456` |
| 14 | `theorem` | [boundary_differentiable](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/boundary-differentiable.md) | 190 | `result-track:c088f5742322aab067e4295517c6c81eb60710d26f5d4959e7d437c6c46d6924` |
| 15 | `theorem` | [normalized_primitive_half](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/normalized-primitive-half.md) | 199 | `result-track:ffa91f393bb5e2733e39a75814a0e2bbc378c2ce10f9a0cd49a5c3323c745778` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../MeasureAndIntegration/Attempt05NamespacedCompactLaplace.lean/declarations/normalized-primitive-half-ne-zero.md) | 212 | `result-track:b256917faf88c9d555531f3158783b4b036d5c0df20fd570c2e661a10aa6359f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca791c9cc7458efbf3f22f668d20b619178a0a33abf68b9fc846ae2898bf70cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant5bf4e75c286a2d0aa61b1df004a9b75132ac33df7022fb38e115eb6f798bffbf.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant5bf4e75c286a2d0aa61b1df004a9b75132ac33df7022fb38e115eb6f798bffbf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
