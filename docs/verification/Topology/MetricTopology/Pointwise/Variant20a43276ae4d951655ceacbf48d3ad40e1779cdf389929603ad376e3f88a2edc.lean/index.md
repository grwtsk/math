# Verification target: GRWTSK.Topology.MetricTopology.Pointwise.Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dded1b56b521e54f1f90bcc6f550b2d4602112c",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dded1b56b521e54f1f90bcc6f550b2d4602112c`.

Source path: `GRWTSK/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ediam_smul_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/ediam-smul-le--223664083015ce498af2b68d.md) | 29 | `result-track:223664083015ce498af2b68d34d657ad6f237cbb1a7e02b66ef3fac59e7b9374` |
| 2 | `theorem` | [ediam_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/ediam-smul--6db3012c47e2e2ffbdba7288.md) | 39 | `result-track:6db3012c47e2e2ffbdba7288d2c6fbba24cc05589c9b70e7c44df2682208ee0a` |
| 3 | `theorem` | [diam_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/diam-smul--85c9e6b9a19003e7a9f11d8b.md) | 49 | `result-track:85c9e6b9a19003e7a9f11d8bc2baaa7130c08f6677102e9626f9958fb5b33084` |
| 4 | `theorem` | [infEdist_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/infedist-smul--c8748d208106e43e0ee60688.md) | 52 | `result-track:c8748d208106e43e0ee60688dc4cf46359c14cddb12602f4f4b1ece35b7ab637` |
| 5 | `theorem` | [infDist_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/infdist-smul--b2a064bd3e8caad0949a0fcc.md) | 63 | `result-track:b2a064bd3e8caad0949a0fcca58b0765ccdc16c00fb4941fcd791b09f1b68d51` |
| 6 | `theorem` | [smul_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-ball--717f4e54db7ba02d0b32c3f7.md) | 77 | `result-track:717f4e54db7ba02d0b32c3f7fdf19f1949f69e165a22d8d94e4dbb3ae61f25c9` |
| 7 | `theorem` | [smul_unitBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-unitball--b7eeb410d4f71c164ccd9a1e.md) | 83 | `result-track:b7eeb410d4f71c164ccd9a1eaaa79acf8b6e2e79109e0f0ac430a5a39d0bdf73` |
| 8 | `theorem` | [smul_sphere'](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-sphere--ac1c662dd4deb646897e2285.md) | 86 | `result-track:ac1c662dd4deb646897e228540876eff7df5265a30f98cc5d4fcb604cb37a156` |
| 9 | `theorem` | [smul_closedBall'](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-closedball--de0ce2eadd3bbadd3ceef1ce.md) | 94 | `result-track:de0ce2eadd3bbadd3ceef1cee35cb8a66166387a003941fa58cc91bd0456a174` |
| 10 | `theorem` | [set_smul_sphere_zero](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/set-smul-sphere-zero--2adf4c117380849325e25e5d.md) | 98 | `result-track:2adf4c117380849325e25e5dbf450e5adb526479662893955df485e0f1782f00` |
| 11 | `theorem` | [Bornology.IsBounded.smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/bornology-isbounded-smul--b1cf0397775adedb631a945c.md) | 108 | `result-track:b1cf0397775adedb631a945cab26b0e7958faa58aed055924792d6d125bca2ff` |
| 12 | `theorem` | [eventually_singleton_add_smul_subset](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/eventually-singleton-add-smul-subset--7dd5cf731442e11675c3b0c7.md) | 113 | `result-track:7dd5cf731442e11675c3b0c73f10248949d8783bca352434b1dbcdd96384f768` |
| 13 | `theorem` | [smul_unitBall_of_pos](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-unitball-of-pos--70a2a38728c10fb8ce3684ca.md) | 137 | `result-track:70a2a38728c10fb8ce3684cad993d3dbe6438408b73fea8ece13e2d7e882092b` |
| 14 | `lemma` | [Ioo_smul_sphere_zero](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/ioo-smul-sphere-zero--a2edc4a42db6984e14261cc9.md) | 140 | `result-track:a2edc4a42db6984e14261cc98514260d6acf9c6e0c0e321ebd3784ad28b76cf4` |
| 15 | `theorem` | [exists_dist_eq](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/exists-dist-eq--3cf14415eedc1ac35b102522.md) | 148 | `result-track:3cf14415eedc1ac35b102522e03103aee87d3a43efce2d12cbe32b1b9142b199` |
| 16 | `theorem` | [exists_dist_le_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/exists-dist-le-le--a2d40d3844be3174f5498575.md) | 155 | `result-track:a2d40d3844be3174f5498575a300dff7792e27ab0b502aaf69723499a5ec829d` |
| 17 | `theorem` | [exists_dist_le_lt](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/exists-dist-le-lt--59420a88ea780493f6b094d0.md) | 169 | `result-track:59420a88ea780493f6b094d03ece2e257819efe9944f65a79c1801623f65c9c0` |
| 18 | `theorem` | [exists_dist_lt_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/exists-dist-lt-le--eb0bce74e682bdb6913ada40.md) | 180 | `result-track:eb0bce74e682bdb6913ada406f26859f357f934df49b8e0f0ba2e032b6877b93` |
| 19 | `theorem` | [exists_dist_lt_lt](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/exists-dist-lt-lt--6f9baaa30efa274d0d9c8fde.md) | 187 | `result-track:6f9baaa30efa274d0d9c8fde35640612ff96296274aa754e2c3e5ed9c39a2064` |
| 20 | `theorem` | [disjoint_ball_ball_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/disjoint-ball-ball-iff--bc568cc0186559de544452d4.md) | 198 | `result-track:bc568cc0186559de544452d406012927c7fad96854eda55ab2148a480b93ca72` |
| 21 | `theorem` | [disjoint_ball_closedBall_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/disjoint-ball-closedball-iff--c91069f42599864782f8d33d.md) | 207 | `result-track:c91069f42599864782f8d33d04e3f52bfa21078e9f644771b511f77ad37ab4a6` |
| 22 | `theorem` | [disjoint_closedBall_ball_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/disjoint-closedball-ball-iff--4c07627450ee30ce84a3a1a2.md) | 216 | `result-track:4c07627450ee30ce84a3a1a2ff012a60aee7a83a59459cee528fdbc9f3b504fb` |
| 23 | `theorem` | [disjoint_closedBall_closedBall_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/disjoint-closedball-closedball-iff--10d65da3b95e472cb6d8ee66.md) | 220 | `result-track:10d65da3b95e472cb6d8ee6630194d161bd3fc0cdd99ea01ae9bcbc9e66c516e` |
| 24 | `theorem` | [infEdist_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/infedist-thickening--8b222c2660b3b6fbcc6ef50e.md) | 231 | `result-track:8b222c2660b3b6fbcc6ef50eb0ac5bd2110c2828b0839490ded4ce22dbf8dd6a` |
| 25 | `theorem` | [thickening_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/thickening-thickening--f9c6f778d6d50653ecad2572.md) | 256 | `result-track:f9c6f778d6d50653ecad25728fa3ede47f607af8eb9366eb69f2739079994cb1` |
| 26 | `theorem` | [cthickening_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/cthickening-thickening--ed185a1bafed9ab0df32e26e.md) | 266 | `result-track:ed185a1bafed9ab0df32e26e0df973275b330937525c036fe35db1f81314589d` |
| 27 | `theorem` | [closure_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/closure-thickening--f9b23245a0fcd80fac5240cd.md) | 274 | `result-track:f9b23245a0fcd80fac5240cdff58f1cd21bba73606f53425744f180db8266e04` |
| 28 | `theorem` | [infEdist_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/infedist-cthickening--fe80c9d27ce739beeab8979b.md) | 279 | `result-track:fe80c9d27ce739beeab8979be28913474cc38947d91545a4bc0a14df93deb180` |
| 29 | `theorem` | [thickening_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/thickening-cthickening--f1ad1fc568cd61d8e20615d6.md) | 286 | `result-track:f1ad1fc568cd61d8e20615d679ffd9d27710cae48c49d390377dc134d2ebb5f8` |
| 30 | `theorem` | [cthickening_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/cthickening-cthickening--e36094a6a38240c38dd8f885.md) | 293 | `result-track:e36094a6a38240c38dd8f8852533576e05dc02194678c8331292fc8f0f34e147` |
| 31 | `theorem` | [thickening_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/thickening-ball--4d4988e45436317a4db099ca.md) | 300 | `result-track:4d4988e45436317a4db099ca9f4bf757d82af09d26b29ad446829d9c4b57091b` |
| 32 | `theorem` | [thickening_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/thickening-closedball--5abf869f9334a8e6eeb52b65.md) | 305 | `result-track:5abf869f9334a8e6eeb52b65e963c6aa850d2483fe51d88039cd53ec2e3532ad` |
| 33 | `theorem` | [cthickening_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/cthickening-ball--7786a851629819be4fabc2c5.md) | 310 | `result-track:7786a851629819be4fabc2c5ff38ab149afc49b8405eb12d52333bfa0f1a8de7` |
| 34 | `theorem` | [cthickening_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/cthickening-closedball--471e7c0499447a20b93fb575.md) | 316 | `result-track:471e7c0499447a20b93fb57503be48960f78f4f6088773b6606e21524a6d24bf` |
| 35 | `theorem` | [ball_add_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/ball-add-ball--326177cfbb20db32155317d9.md) | 321 | `result-track:326177cfbb20db32155317d967c117a6c0de776ce331f301459f8e3fe5cbe4bf` |
| 36 | `theorem` | [ball_sub_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/ball-sub-ball--3a2684c8359c8608ee81157c.md) | 325 | `result-track:3a2684c8359c8608ee81157c7f08db29e4d003a3036f2e4986b61a6b1941400c` |
| 37 | `theorem` | [ball_add_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/ball-add-closedball--cb766ca14a0d1eab66619824.md) | 329 | `result-track:cb766ca14a0d1eab66619824e716d03d84b99787e0b96060750de73167905cbf` |
| 38 | `theorem` | [ball_sub_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/ball-sub-closedball--3116ac62263fd41772f8dafd.md) | 333 | `result-track:3116ac62263fd41772f8dafdc092b0d883b3b372bdc99b2cdf8fa3ac323747fe` |
| 39 | `theorem` | [closedBall_add_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/closedball-add-ball--a806ed45b2fed60b8d15fbce.md) | 337 | `result-track:a806ed45b2fed60b8d15fbce33f9cae188b3ea325c3c766b417e2a096f6552fb` |
| 40 | `theorem` | [closedBall_sub_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/closedball-sub-ball--635e71f1aac4c681ffdac6c2.md) | 341 | `result-track:635e71f1aac4c681ffdac6c2ef218a2d49effb8a13c1feb1b56497331acacb95` |
| 41 | `theorem` | [closedBall_add_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/closedball-add-closedball--c194030ffef0ae6a4db9a3f2.md) | 345 | `result-track:c194030ffef0ae6a4db9a3f21df2917307caa3b1f7c08bd743ff9ff6912a9aa9` |
| 42 | `theorem` | [closedBall_sub_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/closedball-sub-closedball--8b19bfb0d82456c5a96d55c2.md) | 350 | `result-track:8b19bfb0d82456c5a96d55c2d32f9202367924afb1fd6147df1f795895fe770c` |
| 43 | `theorem` | [smul_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-closedball--242a0003946cbd01155c33a5.md) | 360 | `result-track:242a0003946cbd01155c33a5924fd04ea3cea85d0a69797e50c4f211af3b5062` |
| 44 | `theorem` | [smul_unitClosedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-unitclosedball--2e33c5261214b1c85b320437.md) | 366 | `result-track:2e33c5261214b1c85b3204372b2442690e15d241594ad0e922f73a587262650e` |
| 45 | `theorem` | [smul_unitClosedBall_of_nonneg](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-unitclosedball-of-nonneg--e6b643c0c4df3bf457e29e3c.md) | 375 | `result-track:e6b643c0c4df3bf457e29e3c60f0e9e3ddc7e6619960cb092a0046166a50352c` |
| 46 | `theorem` | [NormedSpace.sphere_nonempty](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/normedspace-sphere-nonempty--330563c83149b286e4bdd10f.md) | 385 | `result-track:330563c83149b286e4bdd10f1b09cdd7ad8525428a92cf8db2a2f8e174f2e7ef` |
| 47 | `theorem` | [smul_sphere](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/smul-sphere--d7eedc37458cb4d2948dfd10.md) | 396 | `result-track:d7eedc37458cb4d2948dfd10007fbcc25de8a97a8807b9b40dfa7117ba84609e` |
| 48 | `theorem` | [affinity_unitBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/affinity-unitball--79546f8c5662e0abf5897930.md) | 403 | `result-track:79546f8c5662e0abf5897930796cba3c39adca0bd15eec1a9ef6bdcb00196767` |
| 49 | `theorem` | [affinity_unitClosedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/declarations/affinity-unitclosedball--acc8d353774fa02903d57084.md) | 408 | `result-track:acc8d353774fa02903d570845d72ad21f068585862496057ad1a569d78dc745e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
