# Verification target: GRWTSK.Topology.GeneralTopology.ShrinkingLemma.Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2eee98655cba0c53c083594411994eefe9106b9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2eee98655cba0c53c083594411994eefe9106b9`.

Source path: `GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Regular` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialRefinement](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/partialrefinement--a7e607d02c7a554f656d6b4d.md) | 57 | `declaration-track:a7e607d02c7a554f656d6b4de001a39551ad6aec482dff50fc1f30b0ab5761f4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/instance--15d741df3e51176a0b6e01c3.md) | 77 | `declaration-track:15d741df3e51176a0b6e01c3a9d891bea52f73c9b0c0e48734a93225654e56d6` |
| 3 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/subset--29073bbdf88ad01f7a292bc4.md) | 79 | `result-track:29073bbdf88ad01f7a292bc42187a0cee4e2f258778f38f563298e9c5066d438` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/instance--9c6382ccf09799cd8b21981d.md) | 84 | `declaration-track:9c6382ccf09799cd8b21981de4d4858effb32bad3d5f29db073e7a92e1254e57` |
| 5 | `theorem` | [apply_eq_of_chain](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/apply-eq-of-chain--b9aa7881f4e5361a1f52c735.md) | 99 | `result-track:b9aa7881f4e5361a1f52c73598bc0f7bbd153c1afced01864bed4ddbf6dcf2e4` |
| 6 | `def` | [chainSupCarrier](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/chainsupcarrier--31884e133d0d38e431dd8f22.md) | 106 | `declaration-track:31884e133d0d38e431dd8f22844c3152df125fbdb3f45de31f78de0fc001611d` |
| 7 | `def` | [find](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/find--3766fa186469206e52a287f2.md) | 112 | `declaration-track:3766fa186469206e52a287f24e3105d06bda6e918aed0974f67ae22065e2e50c` |
| 8 | `theorem` | [find_mem](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/find-mem--bab776b43781c29d7f46d2a8.md) | 115 | `result-track:bab776b43781c29d7f46d2a8c0b6989211269f08fdb27a89053983fdc7a15e1b` |
| 9 | `theorem` | [mem_find_carrier_iff](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/mem-find-carrier-iff--adcc8eb8015d3ce5f49c5b46.md) | 121 | `result-track:adcc8eb8015d3ce5f49c5b46a4d58db10abc46972ad95762f8d12b572e39d2b2` |
| 10 | `theorem` | [find_apply_of_mem](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/find-apply-of-mem--634a36e1212110fd76cd6692.md) | 131 | `result-track:634a36e1212110fd76cd669200b6bf615ad74d788555fe7c51865ec6059c1eb2` |
| 11 | `def` | [chainSup](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/chainsup--ed5a8baa7bb4823688bd2a9b.md) | 137 | `declaration-track:ed5a8baa7bb4823688bd2a9b832b21b50cb2e508d0125a7805ce4d284018c84d` |
| 12 | `theorem` | [le_chainSup](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/le-chainsup--c1d366685b6ae2961cffe89c.md) | 165 | `result-track:c1d366685b6ae2961cffe89cd7043fa83945fdf8facbebad1e13f3c8fde74454` |
| 13 | `theorem` | [exists_gt](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/exists-gt--9f5f96757739dcf72017daf3.md) | 172 | `result-track:9f5f96757739dcf72017daf328ceb32cf71447e1b4c4f9bbf97ca77b4a62109d` |
| 14 | `theorem` | [exists_subset_iUnion_closure_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/exists-subset-iunion-closure-subset--263f5d8fe74224da8e5d43e8.md) | 220 | `result-track:263f5d8fe74224da8e5d43e81f89173e5ec4d8daf1004ca5ddaf46cf016aef2d` |
| 15 | `theorem` | [exists_subset_iUnion_closed_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/exists-subset-iunion-closed-subset--ffc76f7f2ac396bee2866b2d.md) | 238 | `result-track:ffc76f7f2ac396bee2866b2d03a5e9ac538a301a774d9e3bbf04802a96f87c89` |
| 16 | `theorem` | [exists_iUnion_eq_closure_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/exists-iunion-eq-closure-subset--ce4152df5703419113aa8d3b.md) | 248 | `result-track:ce4152df5703419113aa8d3b19f6678930c2437883215f509933925aa1aef64f` |
| 17 | `theorem` | [exists_iUnion_eq_closed_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/exists-iunion-eq-closed-subset--df4c5ccd965e97d8e271763b.md) | 257 | `result-track:df4c5ccd965e97d8e271763b28b689703bdae298f59149a95d61449e17ee6ffc` |
| 18 | `theorem` | [exists_gt_t2space](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/exists-gt-t2space--22782828128c798220e4ce68.md) | 274 | `result-track:22782828128c798220e4ce681bfdc2cd628e66111f0d456072091cbdd8bcdc01` |
| 19 | `theorem` | [exists_subset_iUnion_closure_subset_t2space](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/exists-subset-iunion-closure-subset-t2space--d8d9794b0ff2553cf7164dd3.md) | 347 | `result-track:d8d9794b0ff2553cf7164dd30bc48281b104972aaa46025fe38eff5def64e53a` |
| 20 | `theorem` | [exists_subset_iUnion_compact_subset_t2space](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/declarations/exists-subset-iunion-compact-subset-t2space--2a8badcb9ab938e8b26ad019.md) | 370 | `result-track:2a8badcb9ab938e8b26ad019839c370ed0375f62748e3047a7fa6529ec55f935` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
