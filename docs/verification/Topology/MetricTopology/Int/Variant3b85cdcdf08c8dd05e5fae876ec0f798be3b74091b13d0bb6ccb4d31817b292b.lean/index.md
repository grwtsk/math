# Verification target: GRWTSK.Topology.MetricTopology.Int.Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a09965657b4066caeef9c037aaabe2ed74e55ba7",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a09965657b4066caeef9c037aaabe2ed74e55ba7`.

Source path: `GRWTSK/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Archimedean` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/instance--2edeec84fb57bf6d299abfb7.md) | 25 | `declaration-track:2edeec84fb57bf6d299abfb788e23a9093417867bfd7117821cbcca5e53d0eee` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/dist-eq--1c3b7c9c416b60c0dfb2bc79.md) | 28 | `result-track:1c3b7c9c416b60c0dfb2bc7923a4bc57cb99dd69ebbb9ff9a45955aa3063c408` |
| 3 | `theorem` | [dist_eq'](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/dist-eq--4b892fa6d00fd13df746be25.md) | 31 | `result-track:4b892fa6d00fd13df746be2527c5267a3ba675adde601c511fdc6c73adf4c861` |
| 4 | `theorem` | [dist_cast_real](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/dist-cast-real--beeb581c66f11f3caa527a08.md) | 34 | `result-track:beeb581c66f11f3caa527a0876cc9bfcdf773a66010542fc23345928d088bb3a` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/pairwise-one-le-dist--09998ec0245729950fe23e71.md) | 38 | `result-track:09998ec0245729950fe23e718f5ec847593ca2302b1c821467dd4d16a4cf4e07` |
| 6 | `theorem` | [uniformEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/uniformembedding-coe-real--11489cef82e35f715a97db0b.md) | 43 | `result-track:11489cef82e35f715a97db0bef693cfb3f8c04ccd2fcefc6e3b971d040df9b85` |
| 7 | `theorem` | [closedEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/closedembedding-coe-real--2f9cd9818ecf8718edb29769.md) | 47 | `result-track:2f9cd9818ecf8718edb29769655a634015eabc38cfabc01789bb3c26c6ca273f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/instance--30bad779ee3c70236f406598.md) | 51 | `declaration-track:30bad779ee3c70236f4065984024682928d37143639405202b9798a1763732a2` |
| 9 | `theorem` | [preimage_ball](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/preimage-ball--3f5e3135f22f43f465b59647.md) | 53 | `result-track:3f5e3135f22f43f465b59647d309ff6975d7a0c7292e8fd61ca9b063325423e7` |
| 10 | `theorem` | [preimage_closedBall](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/preimage-closedball--239ac9a972ab3c787d925039.md) | 56 | `result-track:239ac9a972ab3c787d925039c68b60d48f7c05e29253fa62b91baff89196254c` |
| 11 | `theorem` | [ball_eq_Ioo](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/ball-eq-ioo--64518bf3db69cc5a63081bff.md) | 59 | `result-track:64518bf3db69cc5a63081bff9afb6370531785062db6d7a66358f2f4c6384f4c` |
| 12 | `theorem` | [closedBall_eq_Icc](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/closedball-eq-icc--0d855e9dc3cbd3420ce96791.md) | 63 | `result-track:0d855e9dc3cbd3420ce967911828cfe6be8075c97cc009f960ddada9b78ee2c9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/instance--99819ef3e477f3f8d4ceb86d.md) | 67 | `declaration-track:99819ef3e477f3f8d4ceb86d598cf09b33113a63f081a85ddb8d906d64db5dcb` |
| 14 | `theorem` | [cocompact_eq](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/cocompact-eq--2d72737a1fb6c09c9651302b.md) | 73 | `result-track:2d72737a1fb6c09c9651302b1cd9eb01520c470a5414e0d581e3c0bd8e70c1b1` |
| 15 | `theorem` | [cofinite_eq](../../../../../mathematics/Topology/MetricTopology/Int/Variant3b85cdcdf08c8dd05e5fae876ec0f798be3b74091b13d0bb6ccb4d31817b292b.lean/declarations/cofinite-eq--72f805a2411fda5157ca2dd5.md) | 79 | `result-track:72f805a2411fda5157ca2dd5b994fc5c7d95585c04e0c542e02bc68c31d5abae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
