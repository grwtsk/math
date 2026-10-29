# Verification target: Actual Endpoint Limit Attempt04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6046f3f003b96e93f577aa869245bc0990e6e395",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variant574b6c26f9e613ef54989d541268d8c6f8eaf1f9d735fe1b306a33941a1c0c79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/index.md) · [Full source](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6046f3f003b96e93f577aa869245bc0990e6e395`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variant574b6c26f9e613ef54989d541268d8c6f8eaf1f9d735fe1b306a33941a1c0c79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variant574b6c26f9e613ef54989d541268d8c6f8eaf1f9d735fe1b306a33941a1c0c79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/sourcenormalization-tendsto.md) | 22 | `result-track:8bcece5fe4d1641eff5ec51c80a27d781d9f3956612aed6013875faa22ddfcc8` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/endpointpolynomialcorrelation-continuous.md) | 33 | `result-track:53b879c170a3edff9a2d51d3d633e65f3a269d50b73832fb321588de5df82c90` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/endpointpolynomialcorrelation-at-zero.md) | 39 | `result-track:b71ccedc4f3319dd0fc5442dadeb0a1a33b031c8430025a6cafaac75cf618b90` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/actual-endpoint-scaled-tendsto.md) | 46 | `result-track:c22c47552c619aa168e14a6a01175678b1e3efb8c78f388d1fde6357048e61b1` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/actual-endpoint-normalized-tendsto.md) | 59 | `result-track:0611256149c92ee5e660b111ef83b293950945e8ce8a86eaf2bdaba534c65201` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/actual-endpoint-excursion-tendsto.md) | 71 | `result-track:fc2afa391d368f98d5a15b1553c76f52a39715439c771c7318f585422c67c7dc` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/actual-positivemass-tendsto.md) | 92 | `result-track:6c0beac0af7d63b39e1d6e9a279a95c0606d234d72fdc34982f4e8b286b7330a` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/actual-negativemass-tendsto.md) | 100 | `result-track:90aec693fb88cfcd1f0333be6a91426c1b86425a8465cb471c4a851b321bf8a9` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../GeneralTopology/ActualEndpointLimitAttempt04.lean/declarations/actual-massratio-tendsto.md) | 106 | `result-track:ea25821efc071df2deb8723f6d25da937b0a3f7a324996cb7477717ef603c29a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0a84c106f4ce466582fde4cf7cbb3d72caf0f7fdb76b7527764ccd3133efa6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variant574b6c26f9e613ef54989d541268d8c6f8eaf1f9d735fe1b306a33941a1c0c79.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variant574b6c26f9e613ef54989d541268d8c6f8eaf1f9d735fe1b306a33941a1c0c79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
