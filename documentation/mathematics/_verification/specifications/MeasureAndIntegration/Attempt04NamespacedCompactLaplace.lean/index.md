# Verification target: Attempt04 Namespaced Compact Laplace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb27fbc7e7e73c5b8b8a51ed69162c1105fdc2b1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb27fbc7e7e73c5b8b8a51ed69162c1105fdc2b1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean.json)

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
| 1 | `def` | [compactLaplace](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/compactlaplace.md) | 29 | `declaration-track:604c55ef1b3464878dc8f09536307222aa3023719d56f83f013e165fd3b576dc` |
| 2 | `def` | [primitiveTransform](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/primitivetransform.md) | 32 | `declaration-track:1c949e669f0878387f9af91b25b71cef1f18bcf2a7aeb9d88fcdddbdc0aa2469` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/normalizedprimitivetransform.md) | 34 | `declaration-track:272dc2caf0d6ff7e4c1e88774b072b801a50b7916e70bfbf033861175bc41bd1` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/compactlaplace-integrable.md) | 37 | `result-track:fdc5beac8bd4f0de8e9b83d948f5b197f61fdeb31fabe9ca1b7015974a5c2dff` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/complex-weighted-derivative.md) | 44 | `result-track:045481474e3e74c4658d19249863e8162e6800f185afd5fb3ea0dd04ff7b236d` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/actual-complex-pole-filter.md) | 73 | `result-track:1cda6713b3fae4be9cf5d19d337de6a52516cc507bab907821a7069bd43dc8f5` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/primitive-transform-normalization.md) | 100 | `result-track:cd896829130e2654c483a285c8aa8912d1c69975973a4b3629b3cff2f3eb0dd1` |
| 8 | `theorem` | [boundary_transform_factored](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/boundary-transform-factored.md) | 110 | `result-track:7091b4760d424559b784baa5822370b37c89d182a18830ea907a1885af31d5d1` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/boundary-transform-factored-unnormalized.md) | 117 | `result-track:9c9e76cf5b7ee2c5c7f572292b06c155636544b067167900b16db159b218b4f8` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/compactlaplace-hasderivat.md) | 127 | `result-track:07724bd3a8d5f1db9f39207163f39933c0a1b5500dd0df271c71d45b79c3a930` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/compactlaplace-differentiable.md) | 172 | `result-track:19312594e38e89fa32caa603e420a359e09a3dcf49dd08b53b184930b8aeeedf` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/normalized-primitive-differentiable.md) | 176 | `result-track:53f476d770f833c48e1f6da4be6b99453d2d0b20cd889b7893f341ec1ae64e7f` |
| 13 | `theorem` | [primitive_differentiable](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/primitive-differentiable.md) | 181 | `result-track:6221e63d8dedc832c637970f15eb47501c018453af3ca9d058c1e45d833bca9f` |
| 14 | `theorem` | [boundary_differentiable](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/boundary-differentiable.md) | 186 | `result-track:9c79d5b75fd3d6ef7d062f59fba28caaf336194cd267b207d6973009ae8f7766` |
| 15 | `theorem` | [normalized_primitive_half](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/normalized-primitive-half.md) | 195 | `result-track:bd5b33bb608c70644b8a1c73c43131c66e105fdbec8b90a96816d239754a196a` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../MeasureAndIntegration/Attempt04NamespacedCompactLaplace.lean/declarations/normalized-primitive-half-ne-zero.md) | 210 | `result-track:201f58b9ac43223f0760d2bba51e150b3b77a1481e2b69469ddb07d4ebd6c208` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00fb99965f86bcb7a5f89cefc28633309602abb3035be53dd7b3c1fc9c13926c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
