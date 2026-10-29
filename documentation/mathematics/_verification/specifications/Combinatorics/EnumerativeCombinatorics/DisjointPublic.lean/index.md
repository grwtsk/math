# Verification target: Disjoint Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "105388337bff943981a8100054a5c54f6321bb99",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjoint/Variantc8e070e0329aa6b0272013c6f89bc010ed6dd94ca18810837e7916688ad45bc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `105388337bff943981a8100054a5c54f6321bb99`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Disjoint/Variantc8e070e0329aa6b0272013c6f89bc010ed6dd94ca18810837e7916688ad45bc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Disjoint/Variantc8e070e0329aa6b0272013c6f89bc010ed6dd94ca18810837e7916688ad45bc0.lean.json)

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
| 1 | `theorem` | [disjoint_left](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-left.md) | 47 | `result-track:42662ac9d2d814d1d44a462960db8a634508ea4c78c254971424e3dacc25e466` |
| 2 | `theorem` | [disjoint_right](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-right.md) | 54 | `result-track:9ca38b6a60c1eef63668107cbb231db7e3349f7858ddc968f3dd4838620f7fa3` |
| 3 | `theorem` | [disjoint_iff_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-iff-ne.md) | 59 | `result-track:3449a7e4479cd3bd04cfe6673a26192cb1ec04f782463786210bf93caf7978dd` |
| 4 | `theorem` | [disjoint_val](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-val.md) | 63 | `result-track:567372dce9e2f23f4bdd8609187984aae2d39e60672338914099b4882a91aad4` |
| 5 | `theorem` | [_root_.Disjoint.forall_ne_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/root-disjoint-forall-ne-finset.md) | 66 | `result-track:cdfcddd1f54164253c02f541d234fe6c4f8b96461a1482c4f570cf24ad6efeb7` |
| 6 | `theorem` | [not_disjoint_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/not-disjoint-iff.md) | 69 | `result-track:68d69d29965c294a804ac6f539280c42130de16b8f2726760250c49b97b01ca4` |
| 7 | `theorem` | [disjoint_of_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-of-subset-left.md) | 73 | `result-track:89846b0508c9ce36fb201368a9dd01826eb657cf56944005d7f56582294758f1` |
| 8 | `theorem` | [disjoint_of_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-of-subset-right.md) | 76 | `result-track:fcf39ff90564b855a6c0dfbb4605b2c78f17a3686de018114a2e22aa1b9afbe7` |
| 9 | `theorem` | [disjoint_empty_left](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-empty-left.md) | 80 | `result-track:efc43b7412e2715845e57eb537da8eff7049494bd93ea6afa4eadba20c18d3f5` |
| 10 | `theorem` | [disjoint_empty_right](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-empty-right.md) | 84 | `result-track:a9f4ff87a57d09c3382c087afcd2ad8372ed059ac5abe63876a70190dbe38e23` |
| 11 | `theorem` | [disjoint_singleton_left](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-singleton-left.md) | 90 | `result-track:3486682e6cb5f9f2fc72ca198c0aba7504682caf9da69606594cef01c4df42c5` |
| 12 | `theorem` | [disjoint_singleton_right](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-singleton-right.md) | 94 | `result-track:f70663d3f1349573de13cbe71df8e12520c14f2822db6a3bd0cdb9127ca966f0` |
| 13 | `theorem` | [disjoint_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-singleton.md) | 98 | `result-track:713637fd3c140d0d84a80aac965720974c7721bb7e2972c763f7f7e45709cf76` |
| 14 | `theorem` | [disjoint_self_iff_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-self-iff-empty.md) | 101 | `result-track:21fbf2be7e3dc2eb917fe74f0b96c00a77c9fb51ffa55e1bc349131514b56fa6` |
| 15 | `theorem` | [disjoint_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-coe.md) | 105 | `result-track:a53209f09d4d119d25cf83535a5c1cc02138c646f18cda68a7cf8d3d83a0c9dc` |
| 16 | `theorem` | [pairwiseDisjoint_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/pairwisedisjoint-coe.md) | 109 | `result-track:60f372f5841f93a443a7b015987b1e83b8669e573c0ab35c16a70ba3d63a3a4d` |
| 17 | `lemma` | [pairwiseDisjoint_singleton_iff_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/pairwisedisjoint-singleton-iff-injon.md) | 113 | `result-track:a12a81e3c2bac34e342a4679c28aaa3a87b4f2afe11ddad878c12d699249c81b` |
| 18 | `instance` | [decidableDisjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/decidabledisjoint.md) | 119 | `declaration-track:2207a2754b330d4275a1cb3b31f611a6873ca9d9d0f21de67e53aa81b7730029` |
| 19 | `def` | [disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjunion.md) | 131 | `declaration-track:08e7c7332773df28f05d6c9c6bc5a9003f20b78477ce8f1ebfdd4054c7fcdf44` |
| 20 | `theorem` | [mem_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/mem-disjunion.md) | 135 | `result-track:10c9d0359cd8bd35bb4360b1b12f009d6fa2f5fa4464bddb0f9d35fc9aa203b0` |
| 21 | `theorem` | [coe_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/coe-disjunion.md) | 139 | `result-track:c0e1e215d7c384dcb6e66b2a95ea97ee13b4e88d0c72a608b1676b608f7d4dea` |
| 22 | `theorem` | [disjUnion_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjunion-comm.md) | 143 | `result-track:ccdec2c5105febf38a06d57a07cfbbfe307a525846572049b53541f7ae52382a` |
| 23 | `theorem` | [disjUnion_inj_left](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjunion-inj-left.md) | 148 | `result-track:76ae8f5d7e155ed4b753a42acdb8b3965f859e92982f65337e61ec45c1c4382d` |
| 24 | `theorem` | [disjUnion_inj_right](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjunion-inj-right.md) | 153 | `result-track:4827bbabfb821284f124d2e5dc7c459508f6fcc240e6566a9550e352f3e3b004` |
| 25 | `theorem` | [empty_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/empty-disjunion.md) | 158 | `result-track:705a79186fa98121dd122c074cb709fe0e17dcf34f98ccde54d70790b2f534eb` |
| 26 | `theorem` | [disjUnion_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjunion-empty.md) | 163 | `result-track:f05084d1af523705385d7b8490750c3147aa698eb734cc075ba05bf53da754da` |
| 27 | `theorem` | [singleton_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/singleton-disjunion.md) | 167 | `result-track:3095e8b35cf8875687b383633bbe7e6c1bc499674bf4a6d278e974ef69b34525` |
| 28 | `theorem` | [disjUnion_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjunion-singleton.md) | 171 | `result-track:6015e08db314c6c38b3daecfdbbaa0842fe72c0d11663704d44bda1b84a8a8a1` |
| 29 | `theorem` | [disjoint_insert_left](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-insert-left.md) | 182 | `result-track:6d9c050bb45d7328e5aa91943c3f2d9f027331e9fc10d8cab3a60bdd4397e54d` |
| 30 | `theorem` | [disjoint_insert_right](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-insert-right.md) | 186 | `result-track:123b452a3e899e0713d9b412677bc0eeec7e187f76f540698dd2bd4701568ee0` |
| 31 | `theorem` | [disjoint_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-tofinset.md) | 198 | `result-track:7a610639a5a2aa66a50dc90d610d80be7780c047ad918faf761f13312ad8bc6b` |
| 32 | `theorem` | [disjoint_toFinset_iff_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DisjointPublic.lean/declarations/disjoint-tofinset-iff-disjoint.md) | 209 | `result-track:7e227fd9239e790562973109a4e2469681ca1c050ed93a0248add0a1210a4cf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=822cdb66cce21c589456dae3180a537e826a3db98447f91cbfeb90159704456d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Disjoint/Variantc8e070e0329aa6b0272013c6f89bc010ed6dd94ca18810837e7916688ad45bc0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Disjoint/Variantc8e070e0329aa6b0272013c6f89bc010ed6dd94ca18810837e7916688ad45bc0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
