# Verification target: Cont MDiff Atlas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69d39c49485332b8258b44fea609205d8e143431",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69d39c49485332b8258b44fea609205d8e143431`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ModelWithCorners.contMDiff](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/modelwithcorners-contmdiff.md) | 50 | `result-track:b4454cd2375c523515e78df6af19b7169ae5f192fc6c3775423eb0870b580d38` |
| 2 | `theorem` | [ModelWithCorners.contMDiffOn_symm](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/modelwithcorners-contmdiffon-symm.md) | 58 | `result-track:d593a2878a46d7c7a1e57fcb3f497ecbd8a2446e45683e3530c1e8ae85d4df18` |
| 3 | `theorem` | [contMDiffOn_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffon-of-mem-maximalatlas.md) | 66 | `result-track:4ecdc33909b7e3cebea655b60a5dfac3a19def2cd59faafb140aa04a76c31c81` |
| 4 | `theorem` | [contMDiffOn_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffon-symm-of-mem-maximalatlas.md) | 72 | `result-track:998acb2f82b516c1552f5f38221bc72da5238449c3fbe1b31bd3ee3fa4605572` |
| 5 | `theorem` | [contMDiffAt_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffat-of-mem-maximalatlas.md) | 77 | `result-track:0461b7fc04d683d94b0adc9c5c793da233fc351c62c06baf6a410dbb27e513d4` |
| 6 | `theorem` | [contMDiffAt_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffat-symm-of-mem-maximalatlas.md) | 81 | `result-track:474a67caaf46f674ee76de3bd5968040fb808bc6911b14397672ab0c9a0c4cc0` |
| 7 | `theorem` | [contMDiffOn_chart](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffon-chart.md) | 85 | `result-track:6a2c6b3e12947be686bc14bdc03548fc37df6522b6fe9d2bbb9a9329866fffaf` |
| 8 | `theorem` | [contMDiffOn_chart_symm](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffon-chart-symm.md) | 89 | `result-track:6e9e021dd8cc4b26a0fe0fcf967f2e0fa91303ae9f96220e853580cbe4050e81` |
| 9 | `theorem` | [OpenPartialHomeomorph.contMDiffAt_extend](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/openpartialhomeomorph-contmdiffat-extend.md) | 93 | `result-track:6c0d2e57e589ebf1e17f7527fa7b8daee1299797260c354fc3276ae1b34db0ba` |
| 10 | `theorem` | [OpenPartialHomeomorph.contMDiffOn_extend](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/openpartialhomeomorph-contmdiffon-extend.md) | 98 | `result-track:c8c833d77176f112a818142b0b683f775d900d903179303ef37e18d1331408ac` |
| 11 | `theorem` | [contMDiffAt_extChartAt'](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffat-extchartat.md) | 102 | `result-track:3ca2dcd155e0d358653ddb4d70e3564715c03dea0ba200f935fd7ad93a08b8a8` |
| 12 | `theorem` | [contMDiffAt_extChartAt](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffat-extchartat-source-edition-2.md) | 106 | `result-track:cce26f985822575feb12c7566a5fb3564040931b3daea383cab8e252608c2a62` |
| 13 | `theorem` | [contMDiffOn_extChartAt](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffon-extchartat.md) | 112 | `result-track:7c1e883d3f84fd4967efa6008fc4f77118429cdb91a0f4f7b5221c853776086a` |
| 14 | `theorem` | [contMDiffOn_extend_symm](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffon-extend-symm.md) | 116 | `result-track:1c98948e0ff75bd702b937f9ebfe075187fce0cbff09dc0e5bac52e3a508ffed` |
| 15 | `theorem` | [contMDiffOn_extChartAt_symm](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffon-extchartat-symm.md) | 123 | `result-track:49f05ca074a6a2388fb5a20e346bfdb969fda034219b5e7684d75973bf2277ac` |
| 16 | `theorem` | [contMDiffWithinAt_extChartAt_symm_target](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffwithinat-extchartat-symm-target.md) | 129 | `result-track:3f3108f3b357e7e8e34644495bf52e19a3f384e5e0e93dfad31dd06a511e78dc` |
| 17 | `theorem` | [contMDiffWithinAt_extChartAt_symm_range](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffwithinat-extchartat-symm-range.md) | 134 | `result-track:0b76e5fdeb07006a3eb50f99e739df1e57452490b7f26659baa5a8a04461b117` |
| 18 | `theorem` | [contMDiffWithinAt_extChartAt_symm_target_self](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffwithinat-extchartat-symm-target-self.md) | 140 | `result-track:694a5874567db6aac396bb3b56cf904e5e4bc8d326b534575fd7be1eac8b2221` |
| 19 | `theorem` | [contMDiffWithinAt_extChartAt_symm_range_self](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffwithinat-extchartat-symm-range-self.md) | 152 | `result-track:ccd15be1ea65aab49f7bce8f2ba781a49c2b47fe948f219086d8a217ff34df3d` |
| 20 | `theorem` | [contMDiffOn_of_mem_contDiffGroupoid](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/contmdiffon-of-mem-contdiffgroupoid.md) | 158 | `result-track:5647f8980409b83e38f29c108b554999af0ad6d3aa929471b4cd82a97387ffad` |
| 21 | `lemma` | [OpenPartialHomeomorph.mem_maximalAtlas_of_contMDiffOn](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/openpartialhomeomorph-mem-maximalatlas-of-contmdiffon.md) | 162 | `result-track:f7cfbbcd89eac57fd38d23b45ec06da5cbe98f3e41af470dd04ec89bd8f4c529` |
| 22 | `lemma` | [symm_trans_trans_mem_maximalAtlas_of_contMDiffOn](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/symm-trans-trans-mem-maximalatlas-of-contmdiffon.md) | 181 | `result-track:c5c380801916b72891c75c360aeb6152c2ad564f0c49852b00ef1f00fe680a82` |
| 23 | `lemma` | [symm_trans_trans_mem_contDiffGroupoid_of_contMDiffOn](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/symm-trans-trans-mem-contdiffgroupoid-of-contmdiffon.md) | 195 | `result-track:dc0bcf53cb266488f45443ff837e054f9e28bea7b2bd29838873e76e099d5178` |
| 24 | `lemma` | [IsManifold.mem_maximalAtlas_iff_contMDiffOn](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/ismanifold-mem-maximalatlas-iff-contmdiffon.md) | 204 | `result-track:547e95bcba663beaab959c30003e7a61f08daaa2a0a01c8236730237c920e346` |
| 25 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff_aux](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff-aux.md) | 218 | `result-track:4249506f4241e44e9feb86ef9d8a2b796993879b4309d6b6790c207734bab6b2` |
| 26 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff.md) | 264 | `result-track:e5d6d95d258ab3cb101f8d83658cae5027c2d06330d76757b8607bc88cf06f41` |
| 27 | `theorem` | [OpenPartialHomeomorph.contMDiffWithinAt_writtenInExtend_iff](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/openpartialhomeomorph-contmdiffwithinat-writteninextend-iff.md) | 365 | `result-track:2acc18e4702cfaa1616965357f6e908226df0f5b9f4bd10b24e1826f3d64f385` |
| 28 | `theorem` | [OpenPartialHomeomorph.contMDiffOn_writtenInExtend_iff](../../../../DifferentialGeometry/ContMDiffAtlasPublic.lean/declarations/openpartialhomeomorph-contmdiffon-writteninextend-iff.md) | 378 | `result-track:9b9dcf95aeffc591b6a27f0685154d6f7defc5f7ff19b51e1b201ee059e95401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21fe65dc25a8883ee6451be383479915d93ebd8bd6f1f85ee07b1307da81db61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
