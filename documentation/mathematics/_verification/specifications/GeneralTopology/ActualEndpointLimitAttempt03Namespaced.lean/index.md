# Verification target: Actual Endpoint Limit Attempt03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e5dcf6022cb4cb8663d6c38c7ab52292c278f02",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e5dcf6022cb4cb8663d6c38c7ab52292c278f02`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/sourcenormalization-tendsto.md) | 30 | `result-track:fedab58287f5a1fc7eb55645553362293b3ac36c6f32c854c31b6287d994eb10` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/endpointpolynomialcorrelation-continuous.md) | 41 | `result-track:6f655ca0d69ba4cc653a8ee5db3e980e43ec05dd0e55e1790dbdd20f76ef8a0f` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/endpointpolynomialcorrelation-at-zero.md) | 47 | `result-track:445a0afbbd4ada17156f9a353e5badf4a49c3bcaf79619fb0ef57a280a0fed38` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/actual-endpoint-scaled-tendsto.md) | 54 | `result-track:e51a5b082fbe0563eda68d1947218a6824b37f96fab1d55ede0d23c8763e0f2d` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/actual-endpoint-normalized-tendsto.md) | 67 | `result-track:7a6cbc8fad9d90bc90cb8976314324a783c47e1a8b8b9388261c1f2439df4e9b` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/actual-endpoint-excursion-tendsto.md) | 79 | `result-track:a6ac8560b336108f5986d154ca6d67ac861bf66185b7781cfb30dccfef2968a8` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/actual-positivemass-tendsto.md) | 100 | `result-track:eb261994b5ddfeb6697e44dddf54352a84bd63c9c21457f02366ac85449588d7` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/actual-negativemass-tendsto.md) | 108 | `result-track:146102174c789d2f6e34c60d6dc7907f80b163aa0dc72bd83ad543507d2a7840` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt03Namespaced.lean/declarations/actual-massratio-tendsto.md) | 114 | `result-track:97ec81191d6763e7a372e081b4f29228c5f31bf587af2063041d090316a03790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da5735e999412ac422454d8b3ad91ccde9380d68fa6573279a54b49d0a63515a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
