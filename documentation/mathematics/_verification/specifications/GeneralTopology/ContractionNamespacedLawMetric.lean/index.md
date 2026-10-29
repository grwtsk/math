# Verification target: Contraction Namespaced Law Metric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af942319600b35487b72352111d34cf8e6797141",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/index.md) · [Full source](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af942319600b35487b72352111d34cf8e6797141`.

Source path: `GRWTSK/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Kernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LawMetric](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/lawmetric.md) | 24 | `declaration-track:f8b17cbb43ca48e9b39463d62487b6fc71ddb038d60b58068108f0289a321b36` |
| 2 | `structure` | [ContractionCertificate](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/contractioncertificate.md) | 29 | `declaration-track:856c25e6723a451bb7590815540b90fbd848ef6d0375130d54747c4e4e6e091f` |
| 3 | `structure` | [UniformContractionMargin](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/uniformcontractionmargin.md) | 51 | `declaration-track:4ae71a90bae0a900d18bf5bc523dfc8ec7905b796b564feed21761cb0c2595a4` |
| 4 | `def` | [UsesUniformContractionMargin](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/usesuniformcontractionmargin.md) | 58 | `declaration-track:6a20bc909b17bab86a3ce057052263523833b2a238ae8daa80166dbb60d3b009` |
| 5 | `def` | [IsInvariantLaw](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/isinvariantlaw.md) | 66 | `declaration-track:c3d948d9e941858156d74e5beac954afdf5d2b6b1e8537366f26f1f7204a9441` |
| 6 | `structure` | [ScheduleKernelFamily](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/schedulekernelfamily.md) | 80 | `declaration-track:9938ec23788b11942e8915535f2c8e950305780fd9835b4d133dc64afde95253` |
| 7 | `def` | [ScheduleKernelFamily.iterate](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/schedulekernelfamily-iterate.md) | 103 | `declaration-track:3a579a45dba4056679eb4b609f88fa300f180b0ba780ce39c7fc52ec778a2598` |
| 8 | `theorem` | [ScheduleKernelFamily.iterate_zero](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/schedulekernelfamily-iterate-zero.md) | 120 | `result-track:5f50c69b8d4a4803c20cd9a50190ea9cc024313b3943aaba11e12b608d4fbcd2` |
| 9 | `theorem` | [ScheduleKernelFamily.iterate_succ](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/schedulekernelfamily-iterate-succ.md) | 134 | `result-track:1c69e837d6c8c1efe15df425f2eb44cc3bffd7602b5c0782a6d6ff3705ec6f42` |
| 10 | `theorem` | [arbitrary_schedule_sequence_contraction_bound](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/arbitrary-schedule-sequence-contraction-bound.md) | 151 | `result-track:03192bb4ff96c27ad14b5bd4232b5cb07a5cd3b9efcc8187ca2a3b144405fe70` |
| 11 | `theorem` | [arbitrary_schedule_sequence_converges_in_law](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/arbitrary-schedule-sequence-converges-in-law.md) | 209 | `result-track:507974429de9205c02c4c5356af51361b636eb2f2ececf2d3179d674e9d3ed51` |
| 12 | `theorem` | [invariantLaw_unique_under_strict_contraction](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/invariantlaw-unique-under-strict-contraction.md) | 240 | `result-track:0ca8bbaa45e9260700e5800e2aa8371d799168a5bcab92d2be8720568246dfee` |
| 13 | `theorem` | [stableInvariantLawPerturbation](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/stableinvariantlawperturbation.md) | 256 | `result-track:d7d0278152524010b69709304b450a458603672534e0caf66ac7f526815c8104` |
| 14 | `def` | [boundaryResidual](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/boundaryresidual.md) | 268 | `declaration-track:bb186c9dcb67b693ec972af90e50d7692c9e2d9b905010731ce78a54941d05d6` |
| 15 | `def` | [implementedTraversalBound](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/implementedtraversalbound.md) | 277 | `declaration-track:8d469343b38ec0bbacd457c80bf4494a98914ce6435e9d0ec98c6b8019c437f6` |
| 16 | `theorem` | [boundaryResidual_zero](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/boundaryresidual-zero.md) | 289 | `result-track:3650ab4cce6a11205ab41bd2981cee40f471d0c4202dde89db121a6b31cf9a31` |
| 17 | `theorem` | [boundaryResidual_succ](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/boundaryresidual-succ.md) | 295 | `result-track:7cb3841207ce2bef9641c5aed50a2f9927e67dc1d8cccb6fafdd097bd190a6b1` |
| 18 | `theorem` | [implementedTraversalBound_zero](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/implementedtraversalbound-zero.md) | 304 | `result-track:ca01a05eef1127b75207c8bcb014eb0f3747732450750fa0a88ada54fa202419` |
| 19 | `theorem` | [implementedTraversalBound_succ](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/implementedtraversalbound-succ.md) | 313 | `result-track:304129a779b216f32951accfdd6b0c2417be7c2d1a0a20f32b64bc72146f55f4` |
| 20 | `theorem` | [implementedTraversalBound_decomposes](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/implementedtraversalbound-decomposes.md) | 326 | `result-track:173402b7063f20db2dc91550b406d2862638eebddb0c7619ae4ed544c2315d37` |
| 21 | `theorem` | [iterated_variable_defect_bound](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/iterated-variable-defect-bound.md) | 343 | `result-track:1d761cf5e4073b21c02461bf99ab8dc1e26ed391f2a242eedeec13b8cba4e6cd` |
| 22 | `def` | [affineDefectBound](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/affinedefectbound.md) | 369 | `declaration-track:3d570802b877777a5be467301d36c38156ee099dac62d80fd0a6a3e2f3298a36` |
| 23 | `theorem` | [affineDefectBound_zero](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/affinedefectbound-zero.md) | 378 | `result-track:1bbbaefdd6162303b45d879edb86971ebdb01ab669ebbc954bcefe59ae4ad117` |
| 24 | `theorem` | [affineDefectBound_succ](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/affinedefectbound-succ.md) | 384 | `result-track:8cd25db717787b85648fec57a5756d501b4a6976345bc7edfc8d543d736d182e` |
| 25 | `theorem` | [iterated_affine_law_bound](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/iterated-affine-law-bound.md) | 393 | `result-track:2e400f6d3565ccbe5e78b7110552a38bc1207efc7e0f883b35312b0a9afc8c68` |
| 26 | `structure` | [CrossScheduleConvergenceObligation](../../../../GeneralTopology/ContractionNamespacedLawMetric.lean/declarations/crossscheduleconvergenceobligation.md) | 417 | `declaration-track:0deff154c046d48a1990f99ee22586905cd0dcd4ea9cc5f6be4eb6877313011f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e7db0d59cde1f8c102ef0fedba42db7322875ec6d769a05839578c2d32b3f73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
