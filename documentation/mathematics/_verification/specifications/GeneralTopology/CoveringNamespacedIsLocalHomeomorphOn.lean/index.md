# Verification target: Covering Namespaced Is Local Homeomorph On

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce70434e51bc2dfcff2ec3684b9c478fae34d595",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/index.md) · [Full source](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce70434e51bc2dfcff2ec3684b9c478fae34d595`.

Source path: `GRWTSK/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.IsLocalHomeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEvenlyCovered](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/isevenlycovered.md) | 37 | `declaration-track:4e824f45e5d81cf76411c5fba7af829b5177481d4283821c517031b4d4b1e855` |
| 2 | `def` | [toTrivialization](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/totrivialization.md) | 45 | `declaration-track:57e099c5f84714144a5fad72deada64883fd8909c68dfe57817a118aadd17004` |
| 3 | `theorem` | [mem_toTrivialization_baseSet](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/mem-totrivialization-baseset.md) | 50 | `result-track:71a5984c95889219302cb2a779230a852c02f45b34a4be1335d119bbc6bbe0dd` |
| 4 | `theorem` | [toTrivialization_apply](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/totrivialization-apply.md) | 54 | `result-track:2242a4f1eb7dcc550bb9098199c75160e17a2c1efd1cf7e1886ad045f00e614d` |
| 5 | `theorem` | [continuousAt](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/continuousat-source-edition-2.md) | 64 | `result-track:e2ec5ee0edb4ce1f381d51638009c274aaa0cbf75b8d6d5a44f30e5d80b143f7` |
| 6 | `theorem` | [to_isEvenlyCovered_preimage](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/to-isevenlycovered-preimage.md) | 69 | `result-track:82f177c43e982aa592e9be78d35c9360f682939262ea8cb604cf898dcb7dcae3` |
| 7 | `def` | [IsCoveringMapOn](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/iscoveringmapon.md) | 80 | `declaration-track:3fcd09121140336a9c8408b4a693cd9eb6bc874e0f46569024ff1621b496362b` |
| 8 | `theorem` | [mk](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/mk.md) | 85 | `result-track:736d985daa0a0c5cab660a85c1d542876336fc67297a390f277acc542cd753d0` |
| 9 | `theorem` | [continuousAt](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/continuousat.md) | 92 | `result-track:49b33fdeecf1e31586d52a8de8b345aca1e240fa2b50cd2ab394057c8038a65d` |
| 10 | `theorem` | [continuousOn](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/continuouson.md) | 96 | `result-track:bbaa0495b526aa194c8ed31bbe28a71458cd586150e2891410c4e285f182b96e` |
| 11 | `theorem` | [isLocalHomeomorphOn](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/islocalhomeomorphon.md) | 99 | `result-track:e56405d3ca141a5a80a45ca47c6daada5f544cfb0c84b1bc5430ad89c27fbb43` |
| 12 | `def` | [IsCoveringMap](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/iscoveringmap.md) | 128 | `declaration-track:2200e42709fdcc0922b3af786c00e344b7dedd0bd65cee7b678d0ebe8dddc9a7` |
| 13 | `theorem` | [isCoveringMap_iff_isCoveringMapOn_univ](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/iscoveringmap-iff-iscoveringmapon-univ.md) | 133 | `result-track:08685cbbdba857acd97e2bcd13033b33706a08765ffa13cb0cdb0e430c11e12f` |
| 14 | `theorem` | [IsCoveringMap.isCoveringMapOn](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/iscoveringmap-iscoveringmapon.md) | 136 | `result-track:42221a751d7bd883b7bc8d87c8322659a72b13ef4057fbd8505edaf58f90b796` |
| 15 | `theorem` | [mk](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/mk-source-edition-2.md) | 144 | `result-track:f6d03dfb4ef5b950ee5da57b3bd6e28de4f4e253dd3bc30e18d16b39f1782375` |
| 16 | `theorem` | [continuous](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/continuous.md) | 153 | `result-track:2101cdf07a19be0746feaa3503696ff181d0783126e7f8f7d98e33a166c56b05` |
| 17 | `theorem` | [isLocalHomeomorph](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/islocalhomeomorph.md) | 156 | `result-track:cabc29302d09b11f3447f653cf3d58fc0a78fa9b8ff10cba971a3d6b9b224a30` |
| 18 | `theorem` | [isOpenMap](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/isopenmap.md) | 159 | `result-track:062cb58f2f108b92e869648fb3c6ee9f8257716bca76eaa518c889ebcc2eb3bb` |
| 19 | `theorem` | [isQuotientMap](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/isquotientmap.md) | 162 | `result-track:37a8c01847d8218d5c2a3c56e211f8613f419d21a707dcd2e229d853ea8990ce` |
| 20 | `theorem` | [isSeparatedMap](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/isseparatedmap.md) | 168 | `result-track:26c0904e8fd887881c7d972638bc16515625ac55fe4fbf34cd82e89358f05b02` |
| 21 | `theorem` | [eq_of_comp_eq](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/eq-of-comp-eq.md) | 182 | `result-track:39235e41dc9675c5fbef85d9e9c10d326a2fee11c51a376053f45e8874b5ad97` |
| 22 | `theorem` | [const_of_comp](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/const-of-comp.md) | 186 | `result-track:c1f845bee459b17301a0e6446ec94d46dfb023264a8474a427aeb4321ae7c493` |
| 23 | `theorem` | [eqOn_of_comp_eqOn](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/eqon-of-comp-eqon.md) | 190 | `result-track:9a6cd8b2c87c9746a8423f3af1f35be857676e227aff8c8a15607ff8ed5414f8` |
| 24 | `theorem` | [constOn_of_comp](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/conston-of-comp.md) | 194 | `result-track:b2cf8e989a04ec0cadc291729225ffb2318da7095f408f2f2ae95562919d51b0` |
| 25 | `theorem` | [IsFiberBundle.isCoveringMap](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/isfiberbundle-iscoveringmap.md) | 203 | `result-track:1447a4d09aebc4894dd6845e012c181a6cf6682604b31f847fa8686b12b714f6` |
| 26 | `theorem` | [FiberBundle.isCoveringMap](../../../../GeneralTopology/CoveringNamespacedIsLocalHomeomorphOn.lean/declarations/fiberbundle-iscoveringmap.md) | 208 | `result-track:9e60617a2d64530e822c6298fb3d7523c274aaec2d9203ef8267bf2b6ce093a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=509c7e9d4a6ad6938d4101506f7c1721d612e487f694447731ec44df43c7b232 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
