# Verification target: GRWTSK.Topology.GeneralTopology.Range.Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69768fb899bfd8f8603196e0287fce9d51d923bc",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69768fb899bfd8f8603196e0287fce9d51d923bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Submonoid` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_cfcHom](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfchom--665613c3edddf90346227a5c.md) | 54 | `result-track:665613c3edddf90346227a5ca75d2368432ac77181609e5d199b99380322b00c` |
| 2 | `lemma` | [range_cfc](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc--f59e0824be28bd20f1f4bb4e.md) | 62 | `result-track:f59e0824be28bd20f1f4bb4ef251acbfed95684177d752ff973e44bcbe692196` |
| 3 | `theorem` | [range_cfcHom_le](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfchom-le--b965f48fd499d794371bed62.md) | 71 | `result-track:b965f48fd499d794371bed62990c3bb06f8ce127adc3163371a54f97a22597d2` |
| 4 | `lemma` | [range_cfc_subset](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-subset--b04bbd791a5d0b1053178c65.md) | 78 | `result-track:b04bbd791a5d0b1053178c6536c25dc55661ddba14af0bad60da7e170d37ba06` |
| 5 | `theorem` | [cfcHom_mem_elemental](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/cfchom-mem-elemental--1eeb7961bc47be8d8ee92c61.md) | 83 | `result-track:1eeb7961bc47be8d8ee92c614dabb6099e638951c2c143890c07cc9fc421fba2` |
| 6 | `theorem` | [cfc_mem_elemental](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/cfc-mem-elemental--770384d5c32fd325799987b2.md) | 90 | `result-track:770384d5c32fd325799987b22e8aab67b4e39b321f3f89b258c307a4acfc32dd` |
| 7 | `lemma` | [cfc_mem](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/cfc-mem--c5615eb7aa063d88cccaea52.md) | 97 | `result-track:c5615eb7aa063d88cccaea52ad194caa63c6cce376901009ec5cd308cf4a439e` |
| 8 | `lemma` | [range_cfc_nnreal_eq_image_cfc_real](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-nnreal-eq-image-cfc-real--0dd4da26e92cb5fe82b7236d.md) | 112 | `result-track:0dd4da26e92cb5fe82b7236d13bd9d3d28f9470d54f846c819436556f68c188a` |
| 9 | `lemma` | [range_cfc_nnreal_subset](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-nnreal-subset--8b335c7665b4feb0d55362b2.md) | 126 | `result-track:8b335c7665b4feb0d55362b2618848e1f97b8a0ab91c941c336c7b7d11254c82` |
| 10 | `lemma` | [range_cfc_nnreal](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-nnreal--56891ed6e7c65e332f15d55e.md) | 133 | `result-track:56891ed6e7c65e332f15d55ee0418b5a8c7869f2e55437ca5d0d90eeb0ed49ca` |
| 11 | `theorem` | [cfc_nnreal_mem](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/cfc-nnreal-mem--755c31ca4e0cd1bd7a992c86.md) | 143 | `result-track:755c31ca4e0cd1bd7a992c865ef14746b464c1f4056d52de82b5943df40d67ca` |
| 12 | `theorem` | [range_cfcₙHom](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-hom--bb1e1db44bdebc61449690a3.md) | 171 | `result-track:bb1e1db44bdebc61449690a3b3a00deeed963dd0e1323f745aa3c31b32c4027d` |
| 13 | `theorem` | [range_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc--a2a9b7b17a567a6f05db808b.md) | 180 | `result-track:a2a9b7b17a567a6f05db808b2dbcef9b79d7a7ae7026734b52749bbe6f63face` |
| 14 | `theorem` | [range_cfcₙHom_le](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-hom-le--cef4b604dd0c29247f6aebb2.md) | 188 | `result-track:cef4b604dd0c29247f6aebb24031d11a0ce5720d4c6de3bdfc5b4631390d7558` |
| 15 | `theorem` | [range_cfcₙ_subset](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-subset--6d896673eea4905c48d648ce.md) | 196 | `result-track:6d896673eea4905c48d648ce0c61f087fbe8b8cc0d7efe67f695a88d1607203d` |
| 16 | `theorem` | [cfcₙHom_mem_elemental](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/cfc-hom-mem-elemental--8a4cfad7d47dce40a9422e11.md) | 203 | `result-track:8a4cfad7d47dce40a9422e1162ce452e97611fe28e29ba598e06f659eae71852` |
| 17 | `theorem` | [cfcₙ_mem_elemental](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/cfc-mem-elemental--0519f958987aa89905ce57c3.md) | 210 | `result-track:0519f958987aa89905ce57c31cd648506d8bc0862d2d3ba0307ca160e1f9ac0d` |
| 18 | `lemma` | [cfcₙ_mem](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/cfc-mem--c56311ae26e5df4213f93e25.md) | 217 | `result-track:c56311ae26e5df4213f93e25d498234125bb13b0807abbbd6cc4b915e0d841ec` |
| 19 | `lemma` | [range_cfcₙ_nnreal_eq_image_cfcₙ_real](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-nnreal-eq-image-cfc-real--dd4512effcb56693988b8fa6.md) | 233 | `result-track:dd4512effcb56693988b8fa65d8c49c6cd8b3bb189efeb4325c3208c0fe04cf1` |
| 20 | `lemma` | [range_cfcₙ_nnreal_subset](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-nnreal-subset--9044f2a22f7708977603e30e.md) | 247 | `result-track:9044f2a22f7708977603e30ec87c2f2544e91dc1b85e8dc0f9b587346f444985` |
| 21 | `lemma` | [range_cfcₙ_nnreal](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/range-cfc-nnreal--99207d2d86da2fb4bc9eca5d.md) | 254 | `result-track:99207d2d86da2fb4bc9eca5d3ccace38532786460dbe427dbc394c8478d88e18` |
| 22 | `theorem` | [cfcₙ_nnreal_mem](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/cfc-nnreal-mem--b29a344e9eb879b0e9213cc9.md) | 272 | `result-track:b29a344e9eb879b0e9213cc90e97333293dbf39fcfd20735de1bd3f123e23ba6` |
| 23 | `instance` | [Subtype.starOrderedRing](../../../../../mathematics/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/declarations/subtype-starorderedring--b15dd6e33b81d67d50c2a2ef.md) | 295 | `declaration-track:b15dd6e33b81d67d50c2a2ef0cdfce56b99b6244cb77ba13546ecb538d6f0534` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
