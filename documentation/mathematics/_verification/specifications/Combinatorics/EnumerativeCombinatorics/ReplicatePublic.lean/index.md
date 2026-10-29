# Verification target: Replicate Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd06015a1194972218e55e6ef9dfcbf9000db54c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variantbab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd06015a1194972218e55e6ef9dfcbf9000db54c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variantbab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variantbab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate.md) | 35 | `declaration-track:e3067bb81ade9a2fc0620d17c74708003557e3a8406009eefce3763ac46ef486` |
| 2 | `theorem` | [coe_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/coe-replicate.md) | 38 | `result-track:fa4c321806cdfe6009b633b2e14d095905755d37b5a6f2eb151809249444e334` |
| 3 | `theorem` | [replicate_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-zero.md) | 40 | `result-track:c89e2c9257c53b409b9ab02ef7f7cf20ec87705f13b856c52469af68ae3379dd` |
| 4 | `theorem` | [replicate_succ](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-succ.md) | 42 | `result-track:43954076577d287ac9d53080cbfca8db03e62b7b9574ff6d40b5654153010fde` |
| 5 | `theorem` | [replicate_add](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-add.md) | 44 | `result-track:1263e4c841c7d74f606aa3efb479b080172f61ffbb60a0d5ed6b0d2c995daa80` |
| 6 | `theorem` | [replicate_one](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-one.md) | 47 | `result-track:984712cd50f6facf9339c527f4a530e6da02cc805800dd4e778440e2418ef132` |
| 7 | `theorem` | [card_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/card-replicate.md) | 49 | `result-track:f658d9d0fecc328a0d16dab7af9784e2e65ce415360795cb6f6dc5479c1433b2` |
| 8 | `theorem` | [mem_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/mem-replicate.md) | 52 | `result-track:a5fdf5be67861d5c63528f5a99009f1609fbe37cd334519f675d46d853de2f23` |
| 9 | `theorem` | [eq_of_mem_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/eq-of-mem-replicate.md) | 55 | `result-track:6ad84829419806d8675c1c5f6a9bfd7bf4065ac41219d714ea94fe2152f5457d` |
| 10 | `theorem` | [eq_replicate_card](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/eq-replicate-card.md) | 58 | `result-track:50ce56a270a844086cf567c674099581f3d6c2529c057729cc217e3542194bf4` |
| 11 | `theorem` | [eq_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/eq-replicate.md) | 63 | `result-track:98b683062e35c76de4f357122accc1db8437e5a9d9fb9819c3683811c18bdf9f` |
| 12 | `theorem` | [replicate_right_injective](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-right-injective.md) | 68 | `result-track:5b7dd07db1f6383a8ac47727896522546ddbbd36020d2476d6a4e69fd91eb004` |
| 13 | `theorem` | [replicate_right_inj](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-right-inj.md) | 71 | `result-track:7a8be1459c948c12a80be0eb37517d4e20e517bc0c1de81e16241d3c808f4cf2` |
| 14 | `theorem` | [replicate_left_injective](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-left-injective.md) | 75 | `result-track:807a4e8b474dd88e19a2b38cc9633938d131af8eaa1e1c7fe6a1b5fac22cc51f` |
| 15 | `theorem` | [replicate_subset_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-subset-singleton.md) | 78 | `result-track:9129e666c6ab44beca1e56b34696481fa0c6cd7d52c4cde479b377322c5706d3` |
| 16 | `theorem` | [replicate_le_coe](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-le-coe.md) | 81 | `result-track:d2c723f5624c4811a7827395cd7860f530a68c10dd16f270caa8050e0f60c2b6` |
| 17 | `theorem` | [replicate_le_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-le-replicate.md) | 84 | `result-track:dc438c7f65b9d415f50e25b5ab05da42a2eb69e800a6678346b9fa6318f5738f` |
| 18 | `theorem` | [replicate_mono](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/replicate-mono.md) | 88 | `result-track:a68d5f414096cd4578d781135927c0e2e637b2634c660c6dbce24e008ecefb24` |
| 19 | `theorem` | [le_replicate_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/le-replicate-iff.md) | 91 | `result-track:75e8f5c4a23686cd0038d05e7ccffb6539256cd493a67a5b404df631b25664b3` |
| 20 | `theorem` | [lt_replicate_succ](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/lt-replicate-succ.md) | 97 | `result-track:cecdf6a0e9693e0b56f5eebf16b2fff77cf6181597d8a94081d1325c4406df36` |
| 21 | `theorem` | [count_replicate_self](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/count-replicate-self.md) | 115 | `result-track:cfa030fe27cca5c86560e4d0b1f60207bfcacf5da42179235fde5dccafc70ebb` |
| 22 | `theorem` | [count_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/count-replicate.md) | 119 | `result-track:485c3c4d24f5c3da62b4fb18bfb6b24963d38d0c54adde52d15c42eb9d1e1e08` |
| 23 | `theorem` | [le_count_iff_replicate_le](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/le-count-iff-replicate-le.md) | 124 | `result-track:7d6ca495924371772d1bf93f7a10c4a012bcd2f57babd131328ea814e9347600` |
| 24 | `theorem` | [rel_replicate_left](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/rel-replicate-left.md) | 138 | `result-track:b62b4c764478c5440921326143e98e4f31b48362a41242ad0fde5b46a4eb020d` |
| 25 | `theorem` | [rel_replicate_right](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/rel-replicate-right.md) | 148 | `result-track:035db195400f7828e99c77e3930aa649663b05579678a6a3804a5dfaeccf4f43` |
| 26 | `theorem` | [nodup_iff_le](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/nodup-iff-le.md) | 158 | `result-track:4f83f6380a3b34fff4b49b205977e3c17d9228afa696c97c5c2876cacc473de2` |
| 27 | `theorem` | [nodup_iff_ne_cons_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/nodup-iff-ne-cons-cons.md) | 162 | `result-track:6f55eed85fbc452ea14a5b293182ef3e8b84c99e3d141cda7b63289bc6a65ad4` |
| 28 | `theorem` | [nodup_iff_pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/nodup-iff-pairwise.md) | 168 | `result-track:073a616f468fed9d932ae4967f5aef2195f838cc2705147cdeaf1c6597d7ce33` |
| 29 | `theorem` | [Nodup.pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicatePublic.lean/declarations/nodup-pairwise.md) | 171 | `result-track:bd629fc811bdb2b36631c14d46899c4a4e57e39b87d025b297b62910507fb78e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=340e832a3a35dfe56dc518f86c3a9f6a16b63c502937cb9d72adefe550b85d08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variantbab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variantbab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
