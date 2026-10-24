# Verification target: GRWTSK.Topology.MetricTopology.UnitizationL1.Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d902e1e8e9f294f3b0232a5dde3e1c7a7997be7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d902e1e8e9f294f3b0232a5dde3e1c7a7997be7`.

Source path: `GRWTSK/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean.json)

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
| 1 | `def` | [unitization_addEquiv_prod](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-addequiv-prod--22c5ca55cd5142919ba54358.md) | 40 | `declaration-track:22c5ca55cd5142919ba543585610752a75d1a9f8efc5deab2b53f34113d8b1d6` |
| 2 | `instance` | [instUnitizationNormedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/instunitizationnormedaddcommgroup--ae274e6280128a89aeb4462f.md) | 44 | `declaration-track:ae274e6280128a89aeb4462f1a71a14a62d736f27a793175fc9be9a6337ddda8` |
| 3 | `def` | [uniformEquiv_unitization_addEquiv_prod](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/uniformequiv-unitization-addequiv-prod--ebd79a24b870ad6e3857491c.md) | 50 | `declaration-track:ebd79a24b870ad6e3857491c32371d530e3409970d5bda2be801d6e750eedfe8` |
| 4 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/instcompletespace--d17a758973d7aa319618f627.md) | 56 | `declaration-track:d17a758973d7aa319618f6275243cf538f6b4dbebac72b8e3b0ff2e8daf00357` |
| 5 | `lemma` | [unitization_norm_def](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-norm-def--384aaa8fc4f0aa3d190b84c2.md) | 64 | `result-track:384aaa8fc4f0aa3d190b84c279cacfcb92c2fd96159c5ba49ccf4f810112459b` |
| 6 | `lemma` | [unitization_nnnorm_def](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-nnnorm-def--83957082df31a33c5b7d4b4d.md) | 71 | `result-track:83957082df31a33c5b7d4b4d9f6df19e2126eb50753cc010f99c31bd3bf5252a` |
| 7 | `lemma` | [unitization_norm_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-norm-inr--36466d4f40cdcfd4c829c3de.md) | 75 | `result-track:36466d4f40cdcfd4c829c3ded9df7fce38fbb65d2d7dba2e59958874ff27cf88` |
| 8 | `lemma` | [unitization_nnnorm_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-nnnorm-inr--ae6b2b4218cf742929e3de86.md) | 78 | `result-track:ae6b2b4218cf742929e3de86f49646402e388aebc2e6c492d17067ea294b3077` |
| 9 | `lemma` | [unitization_isometry_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-isometry-inr--f325179f51e5c2d5ce5faed5.md) | 81 | `result-track:f325179f51e5c2d5ce5faed51b8a3940a2d122098eb109bba53e14e6c64b9203` |
| 10 | `instance` | [instUnitizationRing](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/instunitizationring--40cebeb7655b0142d0b9c93e.md) | 88 | `declaration-track:40cebeb7655b0142d0b9c93e8578e571b636afb70e4bee59a3920d287cb449c2` |
| 11 | `lemma` | [unitization_mul](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-mul--e4d5a31a28fa0661566e4e4b.md) | 92 | `result-track:e4d5a31a28fa0661566e4e4b7faac7ec887ce6d6f985d61786de73506189cfb1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/instance--b1bcf59209dcba132442f739.md) | 94 | `declaration-track:b1bcf59209dcba132442f739f1d6d4c6cb6195d1fbdeb394c2026c17897e4c2c` |
| 13 | `lemma` | [unitization_ofLp_one](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-oflp-one--28b7f97edd8595aceac0f7cc.md) | 99 | `result-track:28b7f97edd8595aceac0f7ccbcaa8e1aa29fa7efda10037e82d8295e9117aa16` |
| 14 | `lemma` | [unitization_toLp_one](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-tolp-one--602e8988be47b2cec15080a1.md) | 102 | `result-track:602e8988be47b2cec15080a1e31f839cafd93794d4b8a0a1977e53de6aca6675` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/instance--7d91c46fd2c19262f52a0c14.md) | 104 | `declaration-track:7d91c46fd2c19262f52a0c141115f5c3c0ecabdd025dabd7cc84817c19bc82f3` |
| 16 | `lemma` | [unitization_algebraMap](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitization-algebramap--0ee193d4649472fc85ec89d3.md) | 108 | `result-track:0ee193d4649472fc85ec89d3c1258b5dc6e97502820c5fbd9b2845044847d2a1` |
| 17 | `def` | [unitizationAlgEquiv](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/unitizationalgequiv--0634785d6a990d016418759c.md) | 113 | `declaration-track:0634785d6a990d016418759cff4dab452900c0392115e26765cd0c4cd21da295` |
| 18 | `instance` | [instUnitizationNormedRing](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/instunitizationnormedring--65c694afbae0f6e62ca504af.md) | 120 | `declaration-track:65c694afbae0f6e62ca504af2a28add0c5c46f12bbb5e02b7e1b11f052f2a626` |
| 19 | `instance` | [instUnitizationNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant65dc4021546e5513d3b4e9df9847bd08a5784481c761a92a25ec866144d2f4b8.lean/declarations/instunitizationnormedalgebra--76fc3ca3a9a4684fa36a97ba.md) | 135 | `declaration-track:76fc3ca3a9a4684fa36a97ba12bb1f723d3d452fe66697ad54973383ab0fdc2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
