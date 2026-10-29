# Verification target: Attempt01 Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5a5d946d2fda3d362f140e4ac412c1e65fea440",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5a5d946d2fda3d362f140e4ac412c1e65fea440`.

Source path: `GRWTSK/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean.json)

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
| 1 | `def` | [compactLaplace](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/compactlaplace.md) | 29 | `declaration-track:c7324ada1176037fffa8ce84e8baaa954a1c0ffdcbe2f2ccf7a378d6fc2a6f75` |
| 2 | `def` | [primitiveTransform](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/primitivetransform.md) | 32 | `declaration-track:cfacab826deb3785ce242e895ecacaed08638fe3265c525f4362e806b181c54a` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/normalizedprimitivetransform.md) | 34 | `declaration-track:cfd7fb16f4973e83dff3fbc9823cc954f29250060b0c2a3ba801762cbef2af2b` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/compactlaplace-integrable.md) | 37 | `result-track:06a04eacb0d7e442d85fd052a65c2e972b06a34a9ca0f72dbf3d966b68a79e17` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/complex-weighted-derivative.md) | 44 | `result-track:2d0033bc424e593b232e686af7a8c77eefacbd538330734bc7a994844f24ebd4` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/actual-complex-pole-filter.md) | 73 | `result-track:6e21b5e9ae9e8c11d65fc2467d79a6e10acebcf6f473227c358e6e0316fc1289` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/primitive-transform-normalization.md) | 100 | `result-track:8745a85bfb278e8d017525d625ae84c4c680164ef64c8b5f3ee0f3013179eaef` |
| 8 | `theorem` | [boundary_transform_factored](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/boundary-transform-factored.md) | 110 | `result-track:c46afdfd6565d9ff094ff80b3de06fb05d251942fa89c9a0a24d1c3a5a20127d` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../MeasureAndIntegration/Attempt01NamespacedSourceEdition1.lean/declarations/boundary-transform-factored-unnormalized.md) | 117 | `result-track:5a3a92e8c4169a6f5e038e5df91c7293df60875e81e8fa6aab3a3cb121f87385` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17569927940b1089e35616eea41330248e22d12b0b420d03a9ff1468e959c7b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean","GRWTSK/_verification/specifications/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
