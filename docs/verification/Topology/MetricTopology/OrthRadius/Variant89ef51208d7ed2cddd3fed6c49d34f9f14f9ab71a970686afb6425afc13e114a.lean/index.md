# Verification target: GRWTSK.Topology.MetricTopology.OrthRadius.Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de7647a3031d40b9dc9023c37541d35ef7f37a03",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de7647a3031d40b9dc9023c37541d35ef7f37a03`.

Source path: `GRWTSK/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean.json)

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
| 1 | `def` | [orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/orthradius--c4ae6e0577c0836f2fce4124.md) | 50 | `declaration-track:c4ae6e0577c0836f2fce4124058db8e4face03214a6794e13c43dc63851a5f6f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/instance--daa75eb777ed3e6e41b2c705.md) | 53 | `declaration-track:daa75eb777ed3e6e41b2c7051a52e4d15166658107e9b29c0b5728f2c821f27f` |
| 3 | `lemma` | [self_mem_orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/self-mem-orthradius--56f1016e99ee0f675dd99789.md) | 57 | `result-track:56f1016e99ee0f675dd99789ed982dd105e035b8da4fcb4cbc116108d8901d90` |
| 4 | `lemma` | [mem_orthRadius_iff_inner_left](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/mem-orthradius-iff-inner-left--c4d5a34d43e849dbec932104.md) | 60 | `result-track:c4d5a34d43e849dbec93210446b208f3334a4e9fe0208d693ae563ee324d41b9` |
| 5 | `lemma` | [mem_orthRadius_iff_inner_right](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/mem-orthradius-iff-inner-right--07c4ec4b2a461fe10bb07e21.md) | 64 | `result-track:07c4ec4b2a461fe10bb07e21a0b78ab9f17fae6173e1f6a14c423f81895b105a` |
| 6 | `lemma` | [direction_orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/direction-orthradius--e727606071c26de6e3cd382f.md) | 68 | `result-track:e727606071c26de6e3cd382f05858909244229aa07f417d29176981e460285b7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/instance--4c4a1bd7737ada571a836f75.md) | 72 | `declaration-track:4c4a1bd7737ada571a836f756bc6a55288f3a505ce591eec79d565bddc1da9cd` |
| 8 | `lemma` | [orthRadius_center](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/orthradius-center--81bf3484bface73744fdc34b.md) | 76 | `result-track:81bf3484bface73744fdc34b6405b8ddd448ae107e3fc90d9fb68e818c0880d8` |
| 9 | `lemma` | [center_mem_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/center-mem-orthradius-iff--8bf4d0170c2973a114ae0666.md) | 79 | `result-track:8bf4d0170c2973a114ae0666ad26b38d7b45b73f1911401be87767ba5895d3ed` |
| 10 | `lemma` | [orthogonalProjection_orthRadius_center](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/orthogonalprojection-orthradius-center--bb76ac2f8c88334a7588077c.md) | 85 | `result-track:bb76ac2f8c88334a7588077c9677083acd7943bdeb29f17f979262a22c0589d3` |
| 11 | `lemma` | [orthRadius_le_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/orthradius-le-orthradius-iff--d6aff58b36a5035c5fc47228.md) | 91 | `result-track:d6aff58b36a5035c5fc47228f0b2bc385e10329db5c88992f49ad216fdca5d49` |
| 12 | `lemma` | [orthRadius_eq_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/orthradius-eq-orthradius-iff--d0c77ebbd98b3b5f833a987d.md) | 118 | `result-track:d0c77ebbd98b3b5f833a987d90c3d7aeecd6860ddbff95cc21ae0377cfe9caa7` |
| 13 | `lemma` | [orthRadius_injective](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/orthradius-injective--c81cdbb1ef1e9e6cae73d404.md) | 125 | `result-track:c81cdbb1ef1e9e6cae73d4046365f2ad714afcefa4567d22cc2063f02b8d20a3` |
| 14 | `lemma` | [finrank_orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/finrank-orthradius--19dae8d9dbfde92ea74a6ac3.md) | 128 | `result-track:19dae8d9dbfde92ea74a6ac3fcf119cdd5ba488a1a8b1541444b353a1eef7155` |
| 15 | `lemma` | [orthRadius_map](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/orthradius-map--bd6fd5f9fa938694a5686f08.md) | 134 | `result-track:bd6fd5f9fa938694a5686f089d8c1a983a151a86b20340209e97313f7722cbc8` |
| 16 | `lemma` | [direction_orthRadius_le_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/direction-orthradius-le-iff--35eee9df64eea1e4067f1ccf.md) | 141 | `result-track:35eee9df64eea1e4067f1ccf2f6fc460af397c335172af371ac7b2e9ee2da519` |
| 17 | `lemma` | [orthRadius_parallel_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/orthradius-parallel-orthradius-iff--f17aee98fe67cac621baf27b.md) | 146 | `result-track:f17aee98fe67cac621baf27bdf7288a25c8b80f86dfa7019bda540d9fe6befe8` |
| 18 | `lemma` | [dist_sq_eq_iff_mem_orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/dist-sq-eq-iff-mem-orthradius--f79b4f987199a989e264b8ec.md) | 154 | `result-track:f79b4f987199a989e264b8ec459f24eb26f19d5f8194c446553f81e148684aba` |
| 19 | `lemma` | [mem_inter_orthRadius_iff_radius_nonneg_and_vsub_mem_and_norm_sq](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/mem-inter-orthradius-iff-radius-nonneg-and-vsub-mem-and-norm-sq--0a5a4694ae70b43b2d21f7f1.md) | 163 | `result-track:0a5a4694ae70b43b2d21f7f18a633c4e7b4ee770a07f0a109151a7fa49d9c1fc` |
| 20 | `lemma` | [mem_inter_orthRadius_iff_vsub_mem_and_norm_sq](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/mem-inter-orthradius-iff-vsub-mem-and-norm-sq--46dba30a22b4b0824dac72bd.md) | 180 | `result-track:46dba30a22b4b0824dac72bd7234ee09a6c8d1a0efcbd717c2c6525ecb36d18b` |
| 21 | `lemma` | [vadd_mem_inter_orthRadius_iff_norm_sq](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/vadd-mem-inter-orthradius-iff-norm-sq--185ddd737f93c7b03fb1bb85.md) | 186 | `result-track:185ddd737f93c7b03fb1bb85caece352dfef8b905829d6266b31dc5f2b82c7b6` |
| 22 | `lemma` | [inter_orthRadius_eq_singleton_of_dist_eq_radius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/inter-orthradius-eq-singleton-of-dist-eq-radius--c96a018dd3f56c29efe21915.md) | 194 | `result-track:c96a018dd3f56c29efe21915ef80029c9ecf443d8f6115725c28a4b2ebd8fefb` |
| 23 | `lemma` | [inter_orthRadius_eq_singleton_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/inter-orthradius-eq-singleton-iff--ab654a432890c0da1287e66a.md) | 206 | `result-track:ab654a432890c0da1287e66a1e92cf55079260533bd01c2d8189f61233b64ba5` |
| 24 | `lemma` | [inter_orthRadius_eq_empty_of_radius_lt_dist](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/inter-orthradius-eq-empty-of-radius-lt-dist--5fbe20933ba7d0d3c057fd9e.md) | 227 | `result-track:5fbe20933ba7d0d3c057fd9e2c66789d2870d1feaa267476cd397d3833c2be4f` |
| 25 | `lemma` | [inter_orthRadius_eq_empty_of_finrank_eq_one](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/inter-orthradius-eq-empty-of-finrank-eq-one--5ee7a7cf3fba6cc671635b9a.md) | 235 | `result-track:5ee7a7cf3fba6cc671635b9a42d3dcfad9248a10189b78c8ab418395a87e025c` |
| 26 | `lemma` | [inter_orthRadius_eq_empty_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/inter-orthradius-eq-empty-iff--4aaa81858d205a13534a607b.md) | 251 | `result-track:4aaa81858d205a13534a607b38daff8dbe46f8fcd769ab0c42d9d02ac253eb94` |
| 27 | `lemma` | [inter_orthRadius_eq_of_dist_le_radius_of_norm_eq_one](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/inter-orthradius-eq-of-dist-le-radius-of-norm-eq-one--6805d3427a29842b4e275241.md) | 316 | `result-track:6805d3427a29842b4e275241c858a4a101a6e1f52984f87710e69add35f9ffd8` |
| 28 | `lemma` | [inter_orthRadius_eq_of_dist_le_radius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/inter-orthradius-eq-of-dist-le-radius--1c8c84f94b4ee8316ff6b315.md) | 357 | `result-track:1c8c84f94b4ee8316ff6b31520d5b410f402017a2665e44872a90eac7fa6382b` |
| 29 | `lemma` | [ncard_inter_orthRadius_eq_two_of_dist_lt_radius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/ncard-inter-orthradius-eq-two-of-dist-lt-radius--befa4d5a42172eb8f8555bd2.md) | 371 | `result-track:befa4d5a42172eb8f8555bd2d112c17d52f3510191f54aae860570daa1ac923e` |
| 30 | `lemma` | [ncard_inter_orthRadius_le_two](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/declarations/ncard-inter-orthradius-le-two--63f4073b8ac085a4e4e88465.md) | 388 | `result-track:63f4073b8ac085a4e4e884652fb36d67897c767186d4d0ee7f403a938fc563a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
