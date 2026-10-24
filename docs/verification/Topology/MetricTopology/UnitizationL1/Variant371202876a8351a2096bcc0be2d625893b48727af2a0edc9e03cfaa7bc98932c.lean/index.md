# Verification target: GRWTSK.Topology.MetricTopology.UnitizationL1.Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f068958bab79cf4fe3926a031982ec5b25893a41",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f068958bab79cf4fe3926a031982ec5b25893a41`.

Source path: `GRWTSK/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitization_addEquiv_prod](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-addequiv-prod--7c6751402c7c84b2bda53eea.md) | 48 | `declaration-track:7c6751402c7c84b2bda53eea0514185b83017a366afea0ac3e2160d93a56cab9` |
| 2 | `instance` | [instUnitizationNormedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/instunitizationnormedaddcommgroup--4e8946fd442f8f7c50f6cd7e.md) | 52 | `declaration-track:4e8946fd442f8f7c50f6cd7e19cd485f2403849fe4ad3cb18419e4d2827781c2` |
| 3 | `def` | [uniformEquiv_unitization_addEquiv_prod](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/uniformequiv-unitization-addequiv-prod--d2961e413d82fe94b0a53b4a.md) | 58 | `declaration-track:d2961e413d82fe94b0a53b4a1b2c5e83e059836e7d5d28eedde11298219ab2d6` |
| 4 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/instcompletespace--bad97e3a00c0c9dc1ba08b7d.md) | 64 | `declaration-track:bad97e3a00c0c9dc1ba08b7d6fe920828ee833b6b4807e9b15e8ef29db6ed5aa` |
| 5 | `lemma` | [unitization_norm_def](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-norm-def--a276db27b0d24893c535c72a.md) | 72 | `result-track:a276db27b0d24893c535c72a448a6ad15bf4edc596402e471b36f242e040b7b5` |
| 6 | `lemma` | [unitization_nnnorm_def](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-nnnorm-def--2942ed2b1d1194a0b8464b7b.md) | 79 | `result-track:2942ed2b1d1194a0b8464b7bdb915c3a40dfc5b14aee94f56e3fdc3a94579e77` |
| 7 | `lemma` | [unitization_norm_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-norm-inr--580e4b5459cd8aa14d40b3e4.md) | 83 | `result-track:580e4b5459cd8aa14d40b3e4e2a609c2bc54102b357fc4335a6e0d1710ebece1` |
| 8 | `lemma` | [unitization_nnnorm_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-nnnorm-inr--2082a9d29e21158028be3302.md) | 86 | `result-track:2082a9d29e21158028be3302f0fecce83a5f3b91ec3e0c63bdefa71c49530579` |
| 9 | `lemma` | [unitization_isometry_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-isometry-inr--0967ae06e057fb6e98d13dc7.md) | 89 | `result-track:0967ae06e057fb6e98d13dc7f49c2c996cedc5294957e35a95757dfc4422da05` |
| 10 | `instance` | [instUnitizationRing](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/instunitizationring--ce162b48af7a48869f9866be.md) | 96 | `declaration-track:ce162b48af7a48869f9866be754e705462cb8eebfb4be8da03352d4cd56e3415` |
| 11 | `lemma` | [unitization_mul](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-mul--0cd42e79f9f488d5ed47cc1e.md) | 100 | `result-track:0cd42e79f9f488d5ed47cc1ef61fe175f663c14a75a3f8651f2a6d066525f6fb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/instance--57242004bdea880d72e58f36.md) | 102 | `declaration-track:57242004bdea880d72e58f362787df9cda2de1636ee85c36f46cb839fda22a98` |
| 13 | `lemma` | [unitization_ofLp_one](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-oflp-one--3b02d04225607d6b90fa05c4.md) | 107 | `result-track:3b02d04225607d6b90fa05c4e39f0a818da40fedd861ae1bf35ab32bb82d2502` |
| 14 | `lemma` | [unitization_toLp_one](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-tolp-one--a4d3f80c93d00ad0a51418b3.md) | 110 | `result-track:a4d3f80c93d00ad0a51418b3c033692179ba6958565659f6a8180ba5540f3c1b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/instance--9bbb070918839d944881993c.md) | 112 | `declaration-track:9bbb070918839d944881993c9fa742b56a722e9023159c459a1b1a0463b20c0e` |
| 16 | `lemma` | [unitization_algebraMap](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitization-algebramap--0ba48d27ab97f869be52b211.md) | 116 | `result-track:0ba48d27ab97f869be52b2113f6ec151dea00b05af7543deed45b8f7b27846cc` |
| 17 | `def` | [unitizationAlgEquiv](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/unitizationalgequiv--88e83bfc5a05d1d36e5db71d.md) | 121 | `declaration-track:88e83bfc5a05d1d36e5db71dab33687911ec156cd1664824df9dcae982101668` |
| 18 | `instance` | [instUnitizationNormedRing](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/instunitizationnormedring--fc02835ab3319cd037315c09.md) | 128 | `declaration-track:fc02835ab3319cd037315c09da1808fabdc31b66e37d3c0c2765a095f15c0946` |
| 19 | `instance` | [instUnitizationNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/declarations/instunitizationnormedalgebra--134e20cdf518690ab80b36e5.md) | 143 | `declaration-track:134e20cdf518690ab80b36e5fbf040a6d750383c9a9a5ed90f7fa755be38528c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
