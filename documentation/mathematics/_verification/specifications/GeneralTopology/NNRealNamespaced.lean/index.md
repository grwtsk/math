# Verification target: NNReal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b64fe4009390777ea7ec931c60e5f360a682d59",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/NNRealNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/NNRealNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b64fe4009390777ea7ec931c60e5f360a682d59`.

Source path: `GRWTSK/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/instance-source-edition-7.md) | 69 | `declaration-track:e1ddb391bd34cf71f7a665d1c4e50427f9f9eeed3d1710370e5892790dd57d75` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/instance.md) | 72 | `declaration-track:259fbbe66d7d7369fe97ca474ccf1d179d7f0eb62be86cee49f0e18bae3a5bf0` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:56c8b2dd1697fb4d32868147c3c21b3adf46d1c8c28c716a151fd6232e8446b9` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/instance-source-edition-8.md) | 79 | `declaration-track:faa62987c8ac5826a6a3e8564545bde3e3bd3ff88f3f3a4e4e22e52e94b55e4a` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:55b06576093546f961b7b3c5e5dc06ad5aebd49fc73b8ec104211129784c8af1` |
| 6 | `theorem` | [NNReal Namespaced](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/continuous-real-tonnreal.md) | 91 | `result-track:2a09f1d9529ce4d81c7cdf10e3124555a572336ddaa9096e82e418a472118f41` |
| 7 | `theorem` | [continuous_coe](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/continuous-coe.md) | 95 | `result-track:61e22dc56e828dbb4b39fe2a5e606105e78bfb243d336b2acc3281e6cd41967a` |
| 8 | `def` | [NNReal Namespaced](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/coennrealreal.md) | 101 | `declaration-track:bbc29460da11ad7467371bfc64fa1b096afe655ab987fbee9fea293dd47e3dc2` |
| 9 | `instance` | [ContinuousMap.canLift](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/continuousmap-canlift.md) | 106 | `declaration-track:b23ef16e63532e00c689a4b04006dc317c75b0ff3bdde8c587aafdac87a6d3c9` |
| 10 | `theorem` | [tendsto_coe](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tendsto-coe-source-edition-2.md) | 112 | `result-track:5a76739cd765aba8b193b2cd0af108cb996ef97c8793818bea5b84991fa40c4c` |
| 11 | `theorem` | [tendsto_coe'](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tendsto-coe.md) | 117 | `result-track:1876e99e8d6df49e52ef0885ed42ef4cf9392126f934d7beef598fe7d5502f85` |
| 12 | `theorem` | [map_coe_atTop](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/map-coe-attop.md) | 122 | `result-track:01f6a7028900c5de9b9b4a5990e4253a283a2be5634e39eb544b7d5eae7fd890` |
| 13 | `theorem` | [comap_coe_atTop](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/comap-coe-attop.md) | 125 | `result-track:f7c28ad263970716a5990e3c5eb0d544b1d93cf82220a5489f714f969cf11cb7` |
| 14 | `theorem` | [tendsto_coe_atTop](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tendsto-coe-attop.md) | 129 | `result-track:c37459ff772de1f7f078665c0c08a2aa5f657b5de8f5e0e0524a6b5162df0955` |
| 15 | `theorem` | [NNReal Namespaced](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tendsto-real-tonnreal.md) | 134 | `result-track:66063b8b5e831c6546d4d217c7ad38a0b464053b91f422306a53a419d58258c7` |
| 16 | `theorem` | [NNReal Namespaced](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tendsto-real-tonnreal-attop.md) | 139 | `result-track:0ded39846aac66e047fa7f045747a98d33c48c14bbde9b2cd86c13cf5686d7b9` |
| 17 | `theorem` | [nhds_zero](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/nhds-zero.md) | 144 | `result-track:7a1695dede6eef6ea62dde0930148881ece89dec60d67bb0d0afdc63b43d0be0` |
| 18 | `theorem` | [nhds_zero_basis](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/nhds-zero-basis.md) | 148 | `result-track:240044ee9ae85d647768bc7b8df775b9bfa0b3c2035e2085529fc667f9ea928a` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/instance-source-edition-4.md) | 152 | `declaration-track:6a18ca6e348460584d70689bcb4129f315c8717975e327e88abd4487c3719c14` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/instance-source-edition-6.md) | 155 | `declaration-track:a8b42623691cf697fb13dd8e61f45961c165ddc8e7bc15d20186dcefbf1849fa` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/instance-source-edition-5.md) | 157 | `declaration-track:8800227ea4396b85e7d978b224b38b00cc4e7ddee52c4e4c9369449911e45fbf` |
| 22 | `theorem` | [hasSum_coe](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/hassum-coe.md) | 162 | `result-track:c5662510e76b183c686ae01abed79f4affa0df4c5a749fa8a5a10b13f06c57b2` |
| 23 | `theorem` | [NNReal Namespaced](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tonnreal.md) | 166 | `result-track:86c3948aea4480942baddd2dbdcf073cb583a0061d10d10191accc42c3c7956c` |
| 24 | `theorem` | [hasSum_real_toNNReal_of_nonneg](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/hassum-real-tonnreal-of-nonneg.md) | 172 | `result-track:56338966e6e5eb63266fa324f97d3e951a16888defd0df322111eaa74b19b853` |
| 25 | `theorem` | [summable_coe](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/summable-coe.md) | 178 | `result-track:00f38cf397fc224943e0ff893d9c3c739b5b708cb5a414946366ebb4b38f643b` |
| 26 | `theorem` | [summable_mk](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/summable-mk.md) | 184 | `result-track:5fe6afe1b2a4ff963cb85098a9b873e7b01d97f1da17d43b8aa768a4e839f255` |
| 27 | `theorem` | [coe_tsum](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/coe-tsum.md) | 192 | `result-track:ce12da1d73c3fa613f747d9301f2c177585b2412021fba595c22053d0af3c2d3` |
| 28 | `theorem` | [coe_tsum_of_nonneg](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/coe-tsum-of-nonneg.md) | 197 | `result-track:0a0241cea2e4ab6f05ffe2089f76b9458295392b7a5dfe9ca3c47a46d17e2b35` |
| 29 | `theorem` | [tsum_mul_left](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tsum-mul-left.md) | 202 | `result-track:ccff41f8ab1794bc142da4d31deae488dd7fa4079637285c673d2d3f32e07017` |
| 30 | `theorem` | [tsum_mul_right](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tsum-mul-right.md) | 206 | `result-track:19ae7cc815242a4f85a7412527b6e23658c639804a122f448d469cff632810c2` |
| 31 | `theorem` | [summable_comp_injective](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/summable-comp-injective.md) | 210 | `result-track:87ea150d3ad4cf509be86e67994346900b5b8b9b0ae45469d3202a22ff4fc0b8` |
| 32 | `theorem` | [summable_nat_add](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/summable-nat-add.md) | 216 | `result-track:9c04faf922438e26146f3947ac56cd7f2c127580106e8f9161e4cea39b2f053b` |
| 33 | `theorem` | [summable_nat_add_iff](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/summable-nat-add-iff.md) | 220 | `result-track:09df34df169ee4137c99a6fbf9721b0907295c8fdb63f29b767a0720f4cfd38e` |
| 34 | `theorem` | [hasSum_nat_add_iff](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/hassum-nat-add-iff.md) | 226 | `result-track:a004059838b90f09d5dbcb6a766a05ff80058c603b3b2e342b3b2912664fabe7` |
| 35 | `theorem` | [sum_add_tsum_nat_add](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/sum-add-tsum-nat-add.md) | 231 | `result-track:ed609e6b4a6d5356a79f3794ae79aff898b4d1e90e217b16386b30221a4e10b3` |
| 36 | `theorem` | [iInf_real_pos_eq_iInf_nnreal_pos](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/iinf-real-pos-eq-iinf-nnreal-pos.md) | 236 | `result-track:0ae3db837fb4f9fc4101711152d16a204200a7b7a7882f5974ee4389dd51d663` |
| 37 | `theorem` | [tendsto_cofinite_zero_of_summable](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tendsto-cofinite-zero-of-summable.md) | 243 | `result-track:cecc6fb588de40729f32877ac4e86657bee8f012b633799f9d25314ef07d6460` |
| 38 | `theorem` | [tendsto_atTop_zero_of_summable](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tendsto-attop-zero-of-summable.md) | 249 | `result-track:f59313926d0d5bb6fba5e9863fb6f0eba5fd5f413e510576ef38ce5df6a9f9dd` |
| 39 | `theorem` | [tendsto_tsum_compl_atTop_zero](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/tendsto-tsum-compl-attop-zero.md) | 256 | `result-track:6efcf52c887035e5913181966581b0c01725c6b4319f274e49daeeaac5ce5509` |
| 40 | `def` | [powOrderIso](../../../../GeneralTopology/NNRealNamespaced.lean/declarations/poworderiso.md) | 263 | `declaration-track:d7163ce269499aa1693daac0bebcdad13646c497c323576d725d71303f707960` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e814d9c6c5be9f34e96bac22a28f16bda2145bc32aa7e29d1c5558c1305f03d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
