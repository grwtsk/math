# Verification target: Attempt05 Compact Laplace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aa1aa8af7c2f99a995c6991549dc12f88074959",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Varianta3c1e277623d263533012a638e51f511a6da06cad4dc628cea7107236572eba9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aa1aa8af7c2f99a995c6991549dc12f88074959`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Varianta3c1e277623d263533012a638e51f511a6da06cad4dc628cea7107236572eba9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Varianta3c1e277623d263533012a638e51f511a6da06cad4dc628cea7107236572eba9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/compactlaplace.md) | 22 | `declaration-track:65a445887618209c5357006d536cf8a13d67f9ebbf32f9b5a8c73055922f60ff` |
| 2 | `def` | [primitiveTransform](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/primitivetransform.md) | 25 | `declaration-track:548853440863e300d0512438d118a19f4afee4cd9d87993a87ce193f25ae0ed3` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/normalizedprimitivetransform.md) | 27 | `declaration-track:4a474d1b30bc6d11ac630483c90d30b43910a7d6967ee4663504a723ea0cc120` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/compactlaplace-integrable.md) | 30 | `result-track:7cb48e95a93ae8054f1ea493ee8e2d9b51f49438c68fb57e8aadaec77d734348` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/complex-weighted-derivative.md) | 37 | `result-track:007a2c0530906060ded2a2afb77119b828bfc338f69897e8907d2b8ad378cb7b` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/actual-complex-pole-filter.md) | 66 | `result-track:f114b385c31f02c690f0627f9364bbbb7809a906e15b138fb7aae875b88432b7` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/primitive-transform-normalization.md) | 93 | `result-track:e85c318def3fe6c85795624231ac33c507e0d80bb14e8790c67fbc2a534cf475` |
| 8 | `theorem` | [boundary_transform_factored](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/boundary-transform-factored.md) | 103 | `result-track:70e109025dd6dfe95b4e3db505ae2a4ff0ec16eccb8105ad07d57e1008536a65` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/boundary-transform-factored-unnormalized.md) | 110 | `result-track:fe8d74458ee40e9ed16db3c4d2c0c81360a3a10df1d70c700796d13104032d72` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/compactlaplace-hasderivat.md) | 120 | `result-track:cb1e473fcd977cbc4b3ef4b8c86a1dfc644f75698b4e8981c51586ea941dc22c` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/compactlaplace-differentiable.md) | 165 | `result-track:5b120b7c5f201269caf0f2c0d55a3ee7d28aab94eb2e85adfb864cdd7aa694d6` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/normalized-primitive-differentiable.md) | 169 | `result-track:1ae0e6a11863625f6995577c406e357814276a8c6c8e673f7ea971c98f360e44` |
| 13 | `theorem` | [primitive_differentiable](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/primitive-differentiable.md) | 174 | `result-track:63e024ed0bbaa096fde75aae6d261bea0a8a6d2f62c67540e13982aaf120de0d` |
| 14 | `theorem` | [boundary_differentiable](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/boundary-differentiable.md) | 182 | `result-track:f0c46f29b88d610c45ca0c32d898e76a2698060f26a8e0628484fa522df47acc` |
| 15 | `theorem` | [normalized_primitive_half](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/normalized-primitive-half.md) | 191 | `result-track:34b5174cb8604887fb90506affe7d55ebe0ad19de7b7c142731eb37bde3c515e` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../MeasureAndIntegration/Attempt05CompactLaplace.lean/declarations/normalized-primitive-half-ne-zero.md) | 204 | `result-track:ef1c1ddd02a52197998650a9e4a57e9855e6cc4fc6ebcb730456761a6ecb2dc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62a73a26098afe775092204d7d84919c8e1905a02ff9ed8e1a8d18f633f12e97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Varianta3c1e277623d263533012a638e51f511a6da06cad4dc628cea7107236572eba9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Varianta3c1e277623d263533012a638e51f511a6da06cad4dc628cea7107236572eba9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
