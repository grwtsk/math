# Verification target: GRWTSK.Topology.MetricTopology.Tangent.Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a7f5481966cd1a194bb0ba3c7840825129541bb",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a7f5481966cd1a194bb0ba3c7840825129541bb`.

Source path: `GRWTSK/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Sphere.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthRadius](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/orthradius--7eeea47dcae65c4a34da3755.md) | 71 | `declaration-track:7eeea47dcae65c4a34da375544ebf7329b4b9f3ae176f70b7418d4dcdf88f0c1` |
| 2 | `lemma` | [self_mem_orthRadius](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/self-mem-orthradius--cba18aac859b7b1f1fbdab4c.md) | 73 | `result-track:cba18aac859b7b1f1fbdab4cd3b58ab61a79f82655c94c83f7b749204be6add0` |
| 3 | `lemma` | [mem_orthRadius_iff_inner_left](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-orthradius-iff-inner-left--0ce3a798029f7aa16321ec01.md) | 76 | `result-track:0ce3a798029f7aa16321ec0146b2fff96c5bbd6794e158f0d5d4b5d913321617` |
| 4 | `lemma` | [mem_orthRadius_iff_inner_right](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-orthradius-iff-inner-right--1a3bd37b706df629db7e9d68.md) | 80 | `result-track:1a3bd37b706df629db7e9d689945406b7f52a580f8b903707150d497bbf5799d` |
| 5 | `lemma` | [direction_orthRadius](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/direction-orthradius--802d8e1529d46d86439920eb.md) | 84 | `result-track:802d8e1529d46d86439920eb9d40bb2e6f6e3ccbd1b764501a630358b92a94e3` |
| 6 | `lemma` | [orthRadius_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/orthradius-center--88f0a0a091ef604957e13ccb.md) | 88 | `result-track:88f0a0a091ef604957e13ccb59b2989e4be833e00645f48e77e71b197e5783f7` |
| 7 | `lemma` | [center_mem_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/center-mem-orthradius-iff--2c85f550e357747f2adeb4f8.md) | 91 | `result-track:2c85f550e357747f2adeb4f866a9d8aef4ed11a69d33c8200e9bd29acea5a68b` |
| 8 | `lemma` | [orthRadius_le_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/orthradius-le-orthradius-iff--c0d7fd1bc3ee76312aa376bb.md) | 96 | `result-track:c0d7fd1bc3ee76312aa376bbde5efc89822b42e4d1db10319d32f9c071a8e7d0` |
| 9 | `lemma` | [orthRadius_eq_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/orthradius-eq-orthradius-iff--2930a196f891c3014c5a9556.md) | 123 | `result-track:2930a196f891c3014c5a955661a1e14c0e8190366b45aef2d60d611d1856ed69` |
| 10 | `structure` | [IsTangentAt](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangentat--3cc13c1983f9ed9c872f8846.md) | 135 | `declaration-track:3cc13c1983f9ed9c872f884652f8ef299ed0309d67c7a204c290844f589d5735` |
| 11 | `lemma` | [isTangentAt_orthRadius_iff_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangentat-orthradius-iff-mem--546191675de474921fe7193a.md) | 140 | `result-track:546191675de474921fe7193a571080085630e659d129d09fd661229dd34ab6d2` |
| 12 | `lemma` | [IsTangentAt.inner_left_eq_zero_of_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangentat-inner-left-eq-zero-of-mem--c9a883977dd3f602528364d4.md) | 144 | `result-track:c9a883977dd3f602528364d4ece8683ace5cf973145df7a9cc25add51067bd2a` |
| 13 | `lemma` | [IsTangentAt.inner_right_eq_zero_of_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangentat-inner-right-eq-zero-of-mem--5f10d66b5e79056ef0e2f5d2.md) | 148 | `result-track:5f10d66b5e79056ef0e2f5d2b3c1b299b62a636ed2eefeaa5fc48ad32e63f778` |
| 14 | `lemma` | [IsTangentAt.eq_of_isTangentAt](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangentat-eq-of-istangentat--b8f7bebbab6d76c321c02f7f.md) | 152 | `result-track:b8f7bebbab6d76c321c02f7f2cfdafffac030a45608fbf5130e22f5569081cb4` |
| 15 | `lemma` | [isTangentAt_center_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangentat-center-iff--ae009782fda0802491c81b4e.md) | 160 | `result-track:ae009782fda0802491c81b4e07145ab249c427f7539e122e2beb622fca1ae41f` |
| 16 | `def` | [IsTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangent--a5f8c829c5af6e23f420d28b.md) | 172 | `declaration-track:a5f8c829c5af6e23f420d28be0ff114ec67124b31894d25e1640f339d9ad1de2` |
| 17 | `lemma` | [IsTangentAt.isTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangentat-istangent--d9a961d721665e74f109daea.md) | 175 | `result-track:d9a961d721665e74f109daeaaa4c2a2a31c60a5a711ffd39d8110d162c86037a` |
| 18 | `lemma` | [isTangent_orthRadius_iff_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangent-orthradius-iff-mem--e67b0b7fa019da3ba217fad1.md) | 179 | `result-track:e67b0b7fa019da3ba217fad1beeffd0134af6f6ebd6d03bcbf0baa6d6f329b0f` |
| 19 | `def` | [tangentSet](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/tangentset--fff5e1b05e7db78173274ea3.md) | 190 | `declaration-track:fff5e1b05e7db78173274ea328fd0ee4af8250de43f550fe05ff6bb50b64c13e` |
| 20 | `lemma` | [mem_tangentSet_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-tangentset-iff--49bf25ebcbbc6e7ec70d3475.md) | 193 | `result-track:49bf25ebcbbc6e7ec70d3475c7fbccaf2e5dce85e0da2e5349c2c37fa0238b89` |
| 21 | `lemma` | [isTangent_of_mem_tangentSet](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangent-of-mem-tangentset--ef06def450a338e9bf9cbb62.md) | 197 | `result-track:ef06def450a338e9bf9cbb62798d480b1d8cbf10812f8fc83953913fcfa75fcf` |
| 22 | `def` | [tangentsFrom](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/tangentsfrom--32eab1347c8fd546d8cfe526.md) | 203 | `declaration-track:32eab1347c8fd546d8cfe526334f8709002af2173c8c450215d8d495a708d465` |
| 23 | `lemma` | [mem_tangentsFrom_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-tangentsfrom-iff--4acce5861b13df073ad5e3bf.md) | 206 | `result-track:4acce5861b13df073ad5e3bf090b3e5f66bb9c3d84dc8409ff66699167698773` |
| 24 | `lemma` | [mem_tangentSet_of_mem_tangentsFrom](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-tangentset-of-mem-tangentsfrom--574c65ace3eaf51e00fc471b.md) | 210 | `result-track:574c65ace3eaf51e00fc471b1b7500e93e420f469e6e25e689d32cb392673b07` |
| 25 | `lemma` | [mem_of_mem_tangentsFrom](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-of-mem-tangentsfrom--4f714deac955b9b55caba766.md) | 214 | `result-track:4f714deac955b9b55caba76686e186f89012a624ed1b09d9f32371f1f6007085` |
| 26 | `lemma` | [isTangent_of_mem_tangentsFrom](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/istangent-of-mem-tangentsfrom--e6f42b900938c719f62a929a.md) | 218 | `result-track:e6f42b900938c719f62a929a5ff46820a5832330fa21c429557130cb7ba7e5a9` |
| 27 | `def` | [commonTangents](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/commontangents--22f53c8b34da2527823edd85.md) | 223 | `declaration-track:22f53c8b34da2527823edd85e6ff892f221234677c9ab71708a99b3ddc1858cf` |
| 28 | `lemma` | [mem_commonTangents_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-commontangents-iff--100f6ac70e2cf0bf20ab847b.md) | 226 | `result-track:100f6ac70e2cf0bf20ab847b307fcb6751ea18d1dece22b29a1f465749332691` |
| 29 | `lemma` | [commonTangents_comm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/commontangents-comm--d65285b443afdbf3b5d5cbaa.md) | 230 | `result-track:d65285b443afdbf3b5d5cbaa1e6be49450792526d40639e37b8d9300421e71c0` |
| 30 | `def` | [commonIntTangents](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/commoninttangents--d1c135905812c75e910da822.md) | 235 | `declaration-track:d1c135905812c75e910da8221efd2afb3f50ad2850123e7948753fa94fd77a0f` |
| 31 | `def` | [commonExtTangents](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/commonexttangents--089c488cdf7b6abb795d1717.md) | 242 | `declaration-track:089c488cdf7b6abb795d1717e63fe0abb846fa9f99e870ea1696e9052c799d2c` |
| 32 | `lemma` | [mem_commonIntTangents_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-commoninttangents-iff--ef3ee85b170f7674e0e4dbed.md) | 245 | `result-track:ef3ee85b170f7674e0e4dbedb100b7086553469a7254e1cc9dff88fccc921ed5` |
| 33 | `lemma` | [mem_commonExtTangents_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/mem-commonexttangents-iff--a8525ec54a078a38aba7647b.md) | 250 | `result-track:a8525ec54a078a38aba7647bbdd9d6e897c96ac429c817c60e216686c052149b` |
| 34 | `lemma` | [commonIntTangents_union_commonExtTangents](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/commoninttangents-union-commonexttangents--1e748e8f4720b8a96cd4f16b.md) | 255 | `result-track:1e748e8f4720b8a96cd4f16b6611a47df82a75b618fc619ee5fdf5ead58f9809` |
| 35 | `structure` | [IsExtTangentAt](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangentat--ae1b1f317f4185f02f1ba12a.md) | 269 | `declaration-track:ae1b1f317f4185f02f1ba12a3a8a2b530900f8d3008696e9c594df0cc0e6fd70` |
| 36 | `lemma` | [IsExtTangentAt.symm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangentat-symm--37fc506628b29f5b216ee6c4.md) | 274 | `result-track:37fc506628b29f5b216ee6c4a695a78fa7429804fe0309fb3eb15286e834737a` |
| 37 | `lemma` | [isExtTangentAt_comm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangentat-comm--89b82d6c54e61da48254e119.md) | 280 | `result-track:89b82d6c54e61da48254e119e106e680ae09a35114c6d14e78a55bf7178eaad5` |
| 38 | `lemma` | [isExtTangentAt_center_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangentat-center-iff--9fb43340ce9b5a6bef980e82.md) | 284 | `result-track:9fb43340ce9b5a6bef980e8253dfb9ac853d304d5dd833df9ab9870b22f98474` |
| 39 | `structure` | [IsIntTangentAt](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isinttangentat--023861f4c5d2550f680c7d69.md) | 298 | `declaration-track:023861f4c5d2550f680c7d69a39ed1ed976a2d524f589e5d6e94f89edc3d2bcc` |
| 40 | `lemma` | [isIntTangentAt_center_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isinttangentat-center-iff--69e40368236f456a2f0bd543.md) | 303 | `result-track:69e40368236f456a2f0bd543352e643e022c42e1cbadd3418cad202c135b8e00` |
| 41 | `lemma` | [isIntTangentAt_self_iff_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isinttangentat-self-iff-mem--1fc9dbdcb077e14a8e9e85b8.md) | 314 | `result-track:1fc9dbdcb077e14a8e9e85b8a2d925f2c20259c422359573ddf9cf4cac9803c1` |
| 42 | `def` | [IsExtTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangent--b6516aad72a7457cf0727f07.md) | 319 | `declaration-track:b6516aad72a7457cf0727f07a693579016d7f70bcdc9c6c86039ab2ca3a8a9c8` |
| 43 | `lemma` | [IsExtTangent.symm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangent-symm--9de052a69ad9b395ea50ac2e.md) | 322 | `result-track:9de052a69ad9b395ea50ac2e017b81f398fa3c694fa0bd5cb9db68162e33ca1b` |
| 44 | `lemma` | [isExtTangent_comm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangent-comm--c60f258e5acbd4c63cba03d5.md) | 326 | `result-track:c60f258e5acbd4c63cba03d5e531503f0f5687980221bfdab029d94ea8905a5a` |
| 45 | `def` | [IsIntTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isinttangent--f0ec58540a670f56d9cbba61.md) | 330 | `declaration-track:f0ec58540a670f56d9cbba616ad96b43922b0710ee3643d22fc36a79b3bc2497` |
| 46 | `lemma` | [IsExtTangentAt.isExtTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangentat-isexttangent--f08315a8168c09acfc72948b.md) | 333 | `result-track:f08315a8168c09acfc72948bb4faa4ab47a1122985b345f669d8427e77b0cf46` |
| 47 | `lemma` | [IsIntTangentAt.isIntTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isinttangentat-isinttangent--58bb3c4b2e67efa65516ff4b.md) | 337 | `result-track:58bb3c4b2e67efa65516ff4bed2ec41c0a7da0e8fae8d4ec33be53bee6542c45` |
| 48 | `lemma` | [isIntTangent_self_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isinttangent-self-iff--1de9bb888986192af02533d2.md) | 341 | `result-track:1de9bb888986192af02533d2be6ae502ea569650de09e0f89412c57aac54282e` |
| 49 | `lemma` | [IsExtTangent.dist_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangent-dist-center--8503acb80628c4c7feaa413f.md) | 347 | `result-track:8503acb80628c4c7feaa413f4b1620ea1b71be59d8e2d2cdd53278f0d03abd42` |
| 50 | `lemma` | [IsIntTangent.dist_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isinttangent-dist-center--c663e9b5736bb409bf75486b.md) | 353 | `result-track:c663e9b5736bb409bf75486b73c065aebd6f9b4302c084336c1632770a78ed44` |
| 51 | `lemma` | [isExtTangent_iff_dist_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isexttangent-iff-dist-center--9f229401d13aed101b4b4cc8.md) | 359 | `result-track:9f229401d13aed101b4b4cc82ed7e2f87d25c8724bcbd6afe7b2545c4f6c7e2a` |
| 52 | `lemma` | [isIntTangent_iff_dist_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/declarations/isinttangent-iff-dist-center--a92bb1569538deb8689c81cc.md) | 383 | `result-track:a92bb1569538deb8689c81cce0653ee768c46d6b1a6ac75b71f4b69be25224b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
