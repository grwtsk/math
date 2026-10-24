# Verification target: GRWTSK.Topology.GeneralTopology.StoneWeierstrass.Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb7a95dc9e737bf23397389e3299604cea25a84e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb7a95dc9e737bf23397389e3299604cea25a84e`.

Source path: `GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean.json)

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
| 1 | `def` | [attachBound](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/attachbound--859ff890580a6dc1dec12902.md) | 75 | `declaration-track:859ff890580a6dc1dec129021d0cd84ef8f0385841c068dc1e1d93c6fe0d7dc1` |
| 2 | `theorem` | [attachBound_apply_coe](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/attachbound-apply-coe--d80260511aafd41332cecda9.md) | 79 | `result-track:d80260511aafd41332cecda94af99deee043353a1a07b9876e4f78c0186ad3cd` |
| 3 | `theorem` | [polynomial_comp_attachBound](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/polynomial-comp-attachbound--32ad734e2e24ce40446c43c3.md) | 84 | `result-track:32ad734e2e24ce40446c43c32b4449e01e6a5474139e1e1e58eb6be715039908` |
| 4 | `theorem` | [polynomial_comp_attachBound_mem](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/polynomial-comp-attachbound-mem--5778bd065f0ce92de41c5884.md) | 99 | `result-track:5778bd065f0ce92de41c58846021f5ad91a0d3950cd26d2b84560ad6ca8e24b7` |
| 5 | `theorem` | [comp_attachBound_mem_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/comp-attachbound-mem-closure--e430700273633e3a5c813c54.md) | 104 | `result-track:e430700273633e3a5c813c54b5285957f56a629d2b80e83af624ee5f58bb9099` |
| 6 | `theorem` | [abs_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/abs-mem-subalgebra-closure--b8a7645553104cc7d253a4c6.md) | 125 | `result-track:b8a7645553104cc7d253a4c6a0e62210f4f36ca90eec4f9fe40a1e5fde6ee5a5` |
| 7 | `theorem` | [inf_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/inf-mem-subalgebra-closure--b2096efc6b694b392d74dea8.md) | 132 | `result-track:b2096efc6b694b392d74dea8bc5fe411aa2e56768900df879f8950929b1ea10d` |
| 8 | `theorem` | [inf_mem_closed_subalgebra](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/inf-mem-closed-subalgebra--52ef1f4889190f812fae410f.md) | 144 | `result-track:52ef1f4889190f812fae410f5963e0f5743da5d96558d4cb3c4309fe82eed416` |
| 9 | `theorem` | [sup_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/sup-mem-subalgebra-closure--7fb46ea7d159f7d3c9f51901.md) | 152 | `result-track:7fb46ea7d159f7d3c9f5190175edf2a98c79b4f38c71aab949a9718f513de46c` |
| 10 | `theorem` | [sup_mem_closed_subalgebra](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/sup-mem-closed-subalgebra--7202466a782b5e08302826c5.md) | 164 | `result-track:7202466a782b5e08302826c5881e648576f53b2aed37770eaa53bf434c8237cd` |
| 11 | `theorem` | [sublattice_closure_eq_top](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/sublattice-closure-eq-top--f6fd1eedba15180cfac9b243.md) | 173 | `result-track:f6fd1eedba15180cfac9b2437d47ae0f11cdf10aacc2d315c07fc8c1b262053e` |
| 12 | `theorem` | [subalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/subalgebra-topologicalclosure-eq-top-of-separatespoints--2a601cefccb08b2fd38951bc.md) | 273 | `result-track:2a601cefccb08b2fd38951bc582a36524d6c3e85cd65158e5012d23f83a5d630` |
| 13 | `theorem` | [continuousMap_mem_subalgebra_closure_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmap-mem-subalgebra-closure-of-separatespoints--5e14a2bb4a62d94728372460.md) | 294 | `result-track:5e14a2bb4a62d9472837246000afcc42c589322acb60f13f051952d8617e2630` |
| 14 | `theorem` | [exists_mem_subalgebra_near_continuousMap_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/exists-mem-subalgebra-near-continuousmap-of-separatespoints--b5ba7a6da165256b64057759.md) | 305 | `result-track:b5ba7a6da165256b640577593d0af26e511bdcb54a87aa952570212f6dee51b4` |
| 15 | `theorem` | [exists_mem_subalgebra_near_continuous_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/exists-mem-subalgebra-near-continuous-of-separatespoints--116a507976ee0b9ea5208e21.md) | 321 | `result-track:116a507976ee0b9ea5208e210520aaee4fc875defec5551df18f70374acd1c62` |
| 16 | `theorem` | [exists_mem_subalgebra_near_continuous_of_isCompact_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/exists-mem-subalgebra-near-continuous-of-iscompact-of-separatespoints--6fc0d4c29f591c4a1a4ce103.md) | 331 | `result-track:6fc0d4c29f591c4a1a4ce1033a996345ca4163f37bd9d0e996f22efd5a9c6efd` |
| 17 | `theorem` | [Subalgebra.SeparatesPoints.rclike_to_real](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/subalgebra-separatespoints-rclike-to-real--2d8c54d392a65d5397798865.md) | 379 | `result-track:2d8c54d392a65d5397798865866053eed63305061bf489ff3a50c8f787d6c235` |
| 18 | `theorem` | [ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmap-starsubalgebra-topologicalclosure-eq-top-of-separatespoint--539dd0bdc342d608bd0c9a10.md) | 409 | `result-track:539dd0bdc342d608bd0c9a1031ca9e7e4985eba405a1e28f643f920cb4d7a315` |
| 19 | `theorem` | [polynomialFunctions.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/polynomialfunctions-topologicalclosure--68e38949cd9e2dca8ac8ca72.md) | 459 | `result-track:68e38949cd9e2dca8ac8ca72426a68c85e9b663c6ef5fc12e3ac5839fbbc1e2f` |
| 20 | `theorem` | [polynomialFunctions.starClosure_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/polynomialfunctions-starclosure-topologicalclosure--37ce9a50842572cfeeceda5b.md) | 466 | `result-track:37ce9a50842572cfeeceda5b321a531b06abee8b3a3745c5e3effb40382789f5` |
| 21 | `lemma` | [ContinuousMap.elemental_id_eq_top](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmap-elemental-id-eq-top--45d9d883c47b1795999ca4c2.md) | 472 | `result-track:45d9d883c47b1795999ca4c23eb3236d10371b7b6a61db2fbf169e950cdfb244` |
| 22 | `theorem` | [ContinuousMap.induction_on](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmap-induction-on--7f5ee0e3deb60daea7af4671.md) | 481 | `result-track:7f5ee0e3deb60daea7af4671e206ca50cdb63cd15a686b635e41acc99a2ccaa3` |
| 23 | `theorem` | [ContinuousMap.induction_on_of_compact](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmap-induction-on-of-compact--c24fb34773aaeb9dd4648521.md) | 501 | `result-track:c24fb34773aaeb9dd4648521fe04e23febb5b390d93b224740ca4745cf4f4b0c` |
| 24 | `theorem` | [ContinuousMap.algHom_ext_map_X](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmap-alghom-ext-map-x--4bccce7a8ad62a2bef6f28a7.md) | 515 | `result-track:4bccce7a8ad62a2bef6f28a714ae0c34c63f683fcf22c5fcec2dce094c14ffc5` |
| 25 | `theorem` | [ContinuousMap.starAlgHom_ext_map_X](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmap-staralghom-ext-map-x--4d3375f7163a75f592cbd0d1.md) | 528 | `result-track:4d3375f7163a75f592cbd0d13916003c492671a5d0d51df9093b658a6dfe3f90` |
| 26 | `lemma` | [adjoin_id_eq_span_one_union](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/adjoin-id-eq-span-one-union--23a28ba796a5bde3f0836f64.md) | 549 | `result-track:23a28ba796a5bde3f0836f6485753e893df688986bc79ce0be1f2d345a28db4a` |
| 27 | `lemma` | [adjoin_id_eq_span_one_add](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/adjoin-id-eq-span-one-add--a26104b0972e2ccf7c926100.md) | 558 | `result-track:a26104b0972e2ccf7c92610088ccbb083f7cd43d1dd6cd30ed72be9a7036eb90` |
| 28 | `lemma` | [nonUnitalStarAlgebraAdjoin_id_subset_ker_evalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/nonunitalstaralgebraadjoin-id-subset-ker-evalstaralghom--2825b6cd3d5df02e02cf5e77.md) | 567 | `result-track:2825b6cd3d5df02e02cf5e770329627637c18366ae853e12d27bb8ce3934918f` |
| 29 | `lemma` | [ker_evalStarAlgHom_inter_adjoin_id](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/ker-evalstaralghom-inter-adjoin-id--fcb127eabdba87bbe997bed7.md) | 585 | `result-track:fcb127eabdba87bbe997bed7cc5579ad02801b4d63baee286992b538b35ae3e5` |
| 30 | `theorem` | [AlgHom.closure_ker_inter](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/alghom-closure-ker-inter--d3da18b4d9a03b4fdfeb4ba6.md) | 604 | `result-track:d3da18b4d9a03b4fdfeb4ba6a784954bb2539ea063a68d2b1b0e11ca21c5c8a5` |
| 31 | `lemma` | [ker_evalStarAlgHom_eq_closure_adjoin_id](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/ker-evalstaralghom-eq-closure-adjoin-id--50f6e3d5995c4a187eb3e817.md) | 621 | `result-track:50f6e3d5995c4a187eb3e817556e17a981c5eea48908bfde4a4a3195fb741f0e` |
| 32 | `lemma` | [ContinuousMapZero.adjoin_id_dense](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmapzero-adjoin-id-dense--5c826ac0030de9ac7f504af7.md) | 638 | `result-track:5c826ac0030de9ac7f504af73e7041bdf9776b321aefb9ea3470e7b99457f0fd` |
| 33 | `lemma` | [ContinuousMapZero.elemental_eq_top](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmapzero-elemental-eq-top--61df608a9b28fcd8d274327d.md) | 653 | `result-track:61df608a9b28fcd8d274327dd3c7cb6e209c62a22a250d64576c1c0eb82c1e7b` |
| 34 | `lemma` | [ContinuousMapZero.induction_on](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmapzero-induction-on--e72f12aa47ff11b90aaa15e6.md) | 659 | `result-track:e72f12aa47ff11b90aaa15e65448dc274c1222c988e891668d962300fd5e75c9` |
| 35 | `theorem` | [ContinuousMapZero.induction_on_of_compact](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmapzero-induction-on-of-compact--559cffa03e3901d452c2a2c5.md) | 679 | `result-track:559cffa03e3901d452c2a2c53994bf9ca4c76e1ca6adfcf65e50b8ff39f7a935` |
| 36 | `lemma` | [ContinuousMapZero.nonUnitalStarAlgHom_apply_mul_eq_zero](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmapzero-nonunitalstaralghom-apply-mul-eq-zero--3e244c54d30dcf0a8a58607f.md) | 689 | `result-track:3e244c54d30dcf0a8a58607f5ee453639c87971571838a05cccbf6bf6e114b85` |
| 37 | `lemma` | [ContinuousMapZero.mul_nonUnitalStarAlgHom_apply_eq_zero](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/declarations/continuousmapzero-mul-nonunitalstaralghom-apply-eq-zero--aa4f1e5f263de22878eb095e.md) | 704 | `result-track:aa4f1e5f263de22878eb095e3c9d98a68d99291dbece2bf8a5771021e4f02a91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
