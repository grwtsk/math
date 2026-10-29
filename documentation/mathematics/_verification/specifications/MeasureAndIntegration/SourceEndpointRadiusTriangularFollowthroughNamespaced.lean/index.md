# Verification target: Source Endpoint Radius Triangular Followthrough Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f433b0024ff6e08a9f8508394f11d0802396d2d9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f433b0024ff6e08a9f8508394f11d0802396d2d9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceAdaptiveTriangularConsumer` — import line 6; external provider; requires a separately pinned dependency.
- `SourceEndpointRadiusConsumer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strict_upper_of_triangular_upper](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/declarations/strict-upper-of-triangular-upper.md) | 29 | `result-track:de225b0c10117705d9f2539992b60d7317390865f186b7166d1451dbf85e27a1` |
| 2 | `theorem` | [residual_tail_of_triangular_upper](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/declarations/residual-tail-of-triangular-upper.md) | 35 | `result-track:4902d254901fe1f19ba1d666a3e760fc814d9a7082cbfdca7aade4edd125eff2` |
| 3 | `theorem` | [estimate_of_triangular_upper](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/declarations/estimate-of-triangular-upper.md) | 45 | `result-track:12a08e4582a00812c0856f4a15761d1eabf021568cf5247d9c0bd0d23e5d31d8` |
| 4 | `def` | [TruncationDiscrepancy](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/declarations/truncationdiscrepancy.md) | 55 | `declaration-track:dc8ec17b94be8f7595f3f1b27a7cf152119eddea97a440f4cfb09cf74e3d826c` |
| 5 | `theorem` | [strict_upper_of_truncated_smoothing_upper](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/declarations/strict-upper-of-truncated-smoothing-upper.md) | 61 | `result-track:91dc43017b3a4ad1ffc33fb09b9489dcf339a1384b97baf7cd0466f20adb8673` |
| 6 | `theorem` | [residual_tail_of_truncated_smoothing_upper](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/declarations/residual-tail-of-truncated-smoothing-upper.md) | 73 | `result-track:c6c517a19b50f8f491a9671590f482967a35844cfc772bc576a1556826082854` |
| 7 | `theorem` | [estimate_of_truncated_smoothing_upper](../../../../MeasureAndIntegration/SourceEndpointRadiusTriangularFollowthroughNamespaced.lean/declarations/estimate-of-truncated-smoothing-upper.md) | 83 | `result-track:cabb42866f4e61c4725623ff7ae27d45cbbb45e8925d44fabed1be0d98aa5f1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fca8f6486997347918660ba509af092ca5b4ab90e2d4c7a282a2a203ea420b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusTriangularFollowthrough/Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
