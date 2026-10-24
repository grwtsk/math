# Verification target: GRWTSK.Topology.MetricTopology.Isometry.Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25363767b52946564ba4628d4add9ebbaea884ea",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25363767b52946564ba4628d4add9ebbaea884ea`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean.json)

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
| 1 | `structure` | [Isometry](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/isometry--82a6c29b535e5a0a61b15503.md) | 44 | `declaration-track:82a6c29b535e5a0a61b15503d0a4c937dedf01ff94f1978d8ad6df2f6fe927f2` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/instfunlike--a45b2640558e59c745ea72ce.md) | 57 | `declaration-track:a45b2640558e59c745ea72cee05637bd8199b3560d46480fe5326298d9962fe0` |
| 3 | `instance` | [instLinearMapClass](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/instlinearmapclass--77ad116fb9f7777c797aef01.md) | 61 | `declaration-track:77ad116fb9f7777c797aef01876dd1ae7da10475e7b2b472426d315d0bc2f3d8` |
| 4 | `theorem` | [toLinearMap_injective](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/tolinearmap-injective--2c978798dbf7b87c6d6076be.md) | 65 | `result-track:2c978798dbf7b87c6d6076be84ea78fe9599c3ab6494eabdc0a4e097a608adac` |
| 5 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/ext--2869e8117113a88e9906558e.md) | 70 | `result-track:2869e8117113a88e9906558ed511292f98f557d316f5508a7979735014924fc6` |
| 6 | `def` | [Simps.apply](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/simps-apply--61d0f60ec1e744f2aedc3a6f.md) | 74 | `declaration-track:61d0f60ec1e744f2aedc3a6fc7248a970ea6b9f04a7fda73e3c8a6c98e2d366c` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/map-app--5670b0071004a5e7d8301fcb.md) | 79 | `result-track:5670b0071004a5e7d8301fcb825536b6e6952b3377cd342a99524d42938f1f94` |
| 8 | `theorem` | [coe_toLinearMap](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/coe-tolinearmap--5a45eefe632aea66fdd011b4.md) | 83 | `result-track:5a45eefe632aea66fdd011b494a94ea9aac7ef1310896fb0de7d2c8d4ad74d24` |
| 9 | `def` | [id](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/id--6e0d7ca42fad629b628262c6.md) | 88 | `declaration-track:6e0d7ca42fad629b628262c693f14a0e0f02b9ea67672fdbf0acbfc221a53c8c` |
| 10 | `def` | [ofEq](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/ofeq--ef32b930fec98b85833a887a.md) | 94 | `declaration-track:ef32b930fec98b85833a887acb5194f5285d5536d502d970e3330f2e134fc73d` |
| 11 | `theorem` | [ofEq_rfl](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/ofeq-rfl--44b53a7328036b2a33ec8cba.md) | 99 | `result-track:44b53a7328036b2a33ec8cba77ff7f6448342ca1f789e57389a89d25ee61fc96` |
| 12 | `def` | [comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/comp--cc4d2583b8f8c77e4a8a299f.md) | 103 | `declaration-track:cc4d2583b8f8c77e4a8a299fe26a109167b282c170ba8624484891a2f8e6cd81` |
| 13 | `theorem` | [toLinearMap_comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/tolinearmap-comp--bfd14e555a5a83122f67e131.md) | 109 | `result-track:bfd14e555a5a83122f67e13174e2187710f07809b0cb4812b350d5f14979f798` |
| 14 | `theorem` | [id_comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/id-comp--33441b03d20f1853f9488ede.md) | 114 | `result-track:33441b03d20f1853f9488edea2335c5a9553a3fa1ac45af1f992e246047d73d8` |
| 15 | `theorem` | [comp_id](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/comp-id--6babbccde4269ea457e8aa77.md) | 118 | `result-track:6babbccde4269ea457e8aa77eedc15cd7047b483498deabe5b672225ad49e736` |
| 16 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/comp-assoc--f0c37d85c2ed87cf76713d5e.md) | 121 | `result-track:f0c37d85c2ed87cf76713d5ef10aed3696569e2b761781707ea023ac015419c1` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/instance--0cb491dc4c849f0cb5f08a20.md) | 126 | `declaration-track:0cb491dc4c849f0cb5f08a2041870d5f556ee2fe1a9bf005610f43c52a027acc` |
| 18 | `instance` | [hasZeroOfSubsingleton](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/haszeroofsubsingleton--2a42ca7effcf363ff47ac8a9.md) | 130 | `declaration-track:2a42ca7effcf363ff47ac8a9d7081b7c62dd74d2feb3af89d26537e9d42e5fea` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/declarations/instance--892b11c894033749bf09b816.md) | 136 | `declaration-track:892b11c894033749bf09b816e96d75dae364508187d39a1c45cf1758478e6869` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
