# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c12090cb3cfafe01f653c6269412cccaf4ad67d7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c12090cb3cfafe01f653c6269412cccaf4ad67d7`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Ring.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oneSub](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/onesub--e6ea75c80ce5bccb7de63a96.md) | 43 | `declaration-track:e6ea75c80ce5bccb7de63a967859b7c1d073bab7010213f0bfdc257b5211437b` |
| 2 | `def` | [add](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/add--68053eff9ddf7293824efe54.md) | 54 | `declaration-track:68053eff9ddf7293824efe5492deac5a65fa3238726a7c7f3afaee9266e1f20f` |
| 3 | `def` | [ofNearby](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/ofnearby--5c763329642d43f5e1aaf951.md) | 71 | `declaration-track:5c763329642d43f5e1aaf951d1448af967d449a53963b6ff487a1f314617b612` |
| 4 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/isopen--f0586483e4fb34628edb816e.md) | 77 | `result-track:f0586483e4fb34628edb816ec0f7f72a382a4d6af1d2c1044098652ba8d0bd15` |
| 5 | `theorem` | [nhds](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/nhds--fde225fbfea0763e169d263f.md) | 86 | `result-track:fde225fbfea0763e169d263f16c35da1bc6ab3d7beef67e251e46d0fd6345c2e` |
| 6 | `theorem` | [subset_compl_ball](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/subset-compl-ball--04214a5a09f3653b0f36ebd8.md) | 96 | `result-track:04214a5a09f3653b0f36ebd885c1b6970875e1482cd0753d1e078b64991519e3` |
| 7 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/isclosed--751f642031c972b3f87d2c91.md) | 101 | `result-track:751f642031c972b3f87d2c91783ee3ab91c2348aa496a66346a354f03011eeae` |
| 8 | `theorem` | [inverse_one_sub](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-one-sub--77a54dd71c017e80bdbfd981.md) | 113 | `result-track:77a54dd71c017e80bdbfd981195d15299a4d8d6f3d8718bec9fa6db80204dfc2` |
| 9 | `theorem` | [inverse_add](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-add--b5fd85882c79f04992f7c6a6.md) | 119 | `result-track:b5fd85882c79f04992f7c6a6f1d7b3b55c2bea414399991eafbc62adbb47ac18` |
| 10 | `theorem` | [inverse_one_sub_nth_order'](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-one-sub-nth-order--7e242bed839e6b1532f469ae.md) | 129 | `result-track:7e242bed839e6b1532f469aec1cda7ae48c839b09fffe0d6a9302f1ebd0abee6` |
| 11 | `theorem` | [inverse_one_sub_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-one-sub-nth-order--dfe90cd3a95faad64997daee.md) | 137 | `result-track:dfe90cd3a95faad64997daee27a4cb72690c56805c8125bcf68a52a7a4342238` |
| 12 | `theorem` | [inverse_add_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-add-nth-order--a2b51663ae8398351bce044f.md) | 148 | `result-track:a2b51663ae8398351bce044f1493ae35d16dd13053f677109e94a45e0111c141` |
| 13 | `theorem` | [inverse_one_sub_norm](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-one-sub-norm--12a07a8d915363c6c5b09594.md) | 159 | `result-track:12a07a8d915363c6c5b0959403e5f8d6fefc3f8897c2ea3fcb9dffef566bc63a` |
| 14 | `theorem` | [inverse_add_norm](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-add-norm--82229d5942b36396fb23863a.md) | 178 | `result-track:82229d5942b36396fb23863a7813193824099b0031bd2f08d8110563d2172ef1` |
| 15 | `theorem` | [inverse_add_norm_diff_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-add-norm-diff-nth-order--b7bcf6688683c0d410c3762f.md) | 189 | `result-track:b7bcf6688683c0d410c3762f794f6f02258ce84daa638528d1b9034149ae2c15` |
| 16 | `theorem` | [inverse_add_norm_diff_first_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-add-norm-diff-first-order--fc01806eaca4bf9b9f56b430.md) | 200 | `result-track:fc01806eaca4bf9b9f56b43005a33d79b8fe11bd181daa544842735232578329` |
| 17 | `theorem` | [inverse_add_norm_diff_second_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-add-norm-diff-second-order--02b7eeeeb2836737541fd116.md) | 206 | `result-track:02b7eeeeb2836737541fd116c15baa8658b4ad7310ec5692faf5963f1712ae77` |
| 18 | `theorem` | [inverse_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/inverse-continuousat--1549929527a3a20d78ac0651.md) | 214 | `result-track:1549929527a3a20d78ac065132b24fe3bf888f9e84f42c3349d4f91e128b2f53` |
| 19 | `theorem` | [openEmbedding_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/openembedding-val--f8c977b4cbf880037fd2928c.md) | 232 | `result-track:f8c977b4cbf880037fd2928cd003e25038622b20f24f7ecff8ce2eb5fc4ef257` |
| 20 | `theorem` | [isOpenMap_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/isopenmap-val--53c097e4a251e89628075157.md) | 240 | `result-track:53c097e4a251e89628075157d5e53705ca8d6e055534da8a3018a191eab4d994` |
| 21 | `theorem` | [eq_top_of_norm_lt_one](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/eq-top-of-norm-lt-one--42e75660e6a7c7e345dcb903.md) | 249 | `result-track:42e75660e6a7c7e345dcb9037dbcfb344a46a42d45d7cdb3e3668ba37a1beebb` |
| 22 | `theorem` | [closure_ne_top](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/closure-ne-top--4d358fd0c9b62779e35623b4.md) | 255 | `result-track:4d358fd0c9b62779e35623b4173bb4fe1488131a45754de982669ba2d8671887` |
| 23 | `theorem` | [IsMaximal.closure_eq](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/ismaximal-closure-eq--5ad4efcdd103a578ec4eb7f7.md) | 261 | `result-track:5ad4efcdd103a578ec4eb7f7262b16ff923cb8e8c9f2ef892ec476033d572616` |
| 24 | `instance` | [IsMaximal.isClosed](../../../../../mathematics/Topology/GeneralTopology/Units/Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5.lean/declarations/ismaximal-isclosed--8cf325ad96988b1e4441b5f4.md) | 266 | `declaration-track:8cf325ad96988b1e4441b5f46ae781aaff2b96aea8ef2164aecd5a21594cad42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
