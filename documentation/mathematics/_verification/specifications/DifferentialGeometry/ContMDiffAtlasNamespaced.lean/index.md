# Verification target: Cont MDiff Atlas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73d4c36c905c267d6dbfa3594cc854d9ea055ae0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variantdda1ecf5aff0e370dca899b4875c93a0f58e8337a828f906ea713c1243cc1e96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/index.md) · [Full source](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73d4c36c905c267d6dbfa3594cc854d9ea055ae0`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Atlas/Variantdda1ecf5aff0e370dca899b4875c93a0f58e8337a828f906ea713c1243cc1e96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Atlas/Variantdda1ecf5aff0e370dca899b4875c93a0f58e8337a828f906ea713c1243cc1e96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contMDiff_model](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiff-model.md) | 41 | `result-track:72ed27f1999ca5fcafc6574d688d5fe50a91c1e9ff036b3c4df01f856f8a8a59` |
| 2 | `theorem` | [contMDiffOn_model_symm](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-model-symm.md) | 49 | `result-track:bb2e0d806c31aecbb2cdef4b51ab0ca6f9905da25b936619115a67bc1ac48967` |
| 3 | `theorem` | [contMDiffOn_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-of-mem-maximalatlas.md) | 56 | `result-track:eaf9b355c3ba261049272cb72c3b35c7cb76b27336a33cc551179395928c8a09` |
| 4 | `theorem` | [contMDiffOn_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-symm-of-mem-maximalatlas.md) | 62 | `result-track:a8f43089fd45c7835ef65734783a6262d3b1bb806b2031e721669070c63ab7ac` |
| 5 | `theorem` | [contMDiffAt_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffat-of-mem-maximalatlas.md) | 67 | `result-track:c7ac08c0dbae49b62a1f688a87c67b6e573158c347c64886904b6c156df3f597` |
| 6 | `theorem` | [contMDiffAt_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffat-symm-of-mem-maximalatlas.md) | 71 | `result-track:46dcc3e00f846b70a13e032d99c624f13ec51eafaf8370d26333c8f74a6f432b` |
| 7 | `theorem` | [contMDiffOn_chart](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-chart.md) | 75 | `result-track:d3cd8bb95e16ea2133937c38e6a892d6597595405a7596e253f24808c08e362a` |
| 8 | `theorem` | [contMDiffOn_chart_symm](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-chart-symm.md) | 78 | `result-track:6dd47ab26dcfa29961321df88e2ee4168f6d668292c3f33bc0b8fc6f88ce6432` |
| 9 | `theorem` | [contMDiffAt_extend](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffat-extend.md) | 81 | `result-track:72add3b1985a32d2355f136702d971d1909fa085525d59957a1a9209469454ee` |
| 10 | `theorem` | [contMDiffAt_extChartAt'](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffat-extchartat.md) | 85 | `result-track:19b56879a0ca4b2897e94e7108bb58005660dbe6c72c62d2835307cee8b9b399` |
| 11 | `theorem` | [contMDiffAt_extChartAt](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffat-extchartat-source-edition-2.md) | 90 | `result-track:28811329d988b81c0113bdf4a9e6404ece6d19642774a3d1466b5332daf771fa` |
| 12 | `theorem` | [contMDiffOn_extChartAt](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-extchartat.md) | 96 | `result-track:c24052df835b80b726ecc488ead80cac78023b9c767dbd7b4ec2e7513093dd1a` |
| 13 | `theorem` | [contMDiffOn_extend_symm](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-extend-symm.md) | 99 | `result-track:c17441a425b4a37d02c6fb0afba56b31c749ae8e1c1870f161956f599783410f` |
| 14 | `theorem` | [contMDiffOn_extChartAt_symm](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-extchartat-symm.md) | 106 | `result-track:6584d0a36768438248d04c1265ce599038592a51d09ececd13e6504c4ca2c174` |
| 15 | `theorem` | [contMDiffWithinAt_extChartAt_symm_target](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffwithinat-extchartat-symm-target.md) | 113 | `result-track:dc844503bfa6dbfe4419203b235470c67613a48d715bcf5fac51ae694f98d8a0` |
| 16 | `theorem` | [contMDiffWithinAt_extChartAt_symm_range](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffwithinat-extchartat-symm-range.md) | 118 | `result-track:9fa6a481525acfa9bbc92abe1cbb4218ef45a781d815461a91cf97032f9919b5` |
| 17 | `theorem` | [contMDiffWithinAt_extChartAt_symm_target_self](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffwithinat-extchartat-symm-target-self.md) | 125 | `result-track:e459f4329481f99e479439ec0dc3621d0d1a0336dbe41c3327a7dc730553853e` |
| 18 | `theorem` | [contMDiffWithinAt_extChartAt_symm_range_self](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffwithinat-extchartat-symm-range-self.md) | 138 | `result-track:2f0ae6edc9f10deca8ba14b332bb8be59f2c4a0930d09bdc5c44bf26113c36eb` |
| 19 | `theorem` | [contMDiffOn_of_mem_contDiffGroupoid](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/contmdiffon-of-mem-contdiffgroupoid.md) | 144 | `result-track:7022f25bde10f19b678a0034c4667c84912f891e37ae897b79f9c7b01dcd6680` |
| 20 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff_aux](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff-aux.md) | 156 | `result-track:afffb23c576d3ee3c572e5dec8d957a47868bbd1dcbfc639969365ea6a9c823f` |
| 21 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff](../../../../DifferentialGeometry/ContMDiffAtlasNamespaced.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff.md) | 202 | `result-track:3887e5671d28bcc073f73df150af2c245c245282dd72f0aebe244bf8f54884c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25cfa8f3393a0be442352dc07383d181c72a9425b5f03eb535df418247e6faff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Atlas/Variantdda1ecf5aff0e370dca899b4875c93a0f58e8337a828f906ea713c1243cc1e96.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Atlas/Variantdda1ecf5aff0e370dca899b4875c93a0f58e8337a828f906ea713c1243cc1e96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
