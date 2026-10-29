# Verification target: Realization Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79bfa1f9294415a4e47fb56eb6ff22359e67e9bf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79bfa1f9294415a4e47fb56eb6ff22359e67e9bf`.

Source path: `GRWTSK/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Attention.Observation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.TensorNetwork.Recovery` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BiaxialAttentionRealizationProfile](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/declarations/biaxialattentionrealizationprofile.md) | 24 | `declaration-track:fac43e7ede08c31a96660bc0628d5221d719615bbf3ac4876d88ef105cf614b4` |
| 2 | `def` | [BiaxialAttentionRealizationProfile.Certified](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/declarations/biaxialattentionrealizationprofile-certified.md) | 40 | `declaration-track:293f6f1fb995aaffb5a3b20542bd052d171086cc9c1289e4653cc78d4d7eb4d1` |
| 3 | `inductive` | [BiaxialAttentionObservationResult](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/declarations/biaxialattentionobservationresult.md) | 59 | `declaration-track:7ab83e033ab740edf2a725e97f9752f368189cccf2b949f3fbecfa3604971522` |
| 4 | `def` | [observeBiaxialAttention](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/declarations/observebiaxialattention.md) | 68 | `declaration-track:3aea7442775af9218efc7479014df364dadb445629faf92249dc1acdb170523f` |
| 5 | `theorem` | [observe_biaxial_attention_total](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/declarations/observe-biaxial-attention-total.md) | 77 | `result-track:8be886c7d51f768455bc1d1a0057315bb18301ab242417409d926123c0be40cb` |
| 6 | `structure` | [BiaxialReplayCertificate](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/declarations/biaxialreplaycertificate.md) | 85 | `declaration-track:c80d85298003d69cd9529071b9e2c6de26860f7e11c3e2c070abd24a0a0a4d86` |
| 7 | `theorem` | [exact_biaxial_replay_of_zero_budget](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RealizationNamespaced.lean/declarations/exact-biaxial-replay-of-zero-budget.md) | 95 | `result-track:cc167ce3437eec33d3ebeb0aa27e5053ab1d56e203909e4635ea990965b08d47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f223df6807aa84454b0ac23d13acd90d45999857ceea974d72b2428ccb43eec5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Realization/Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
