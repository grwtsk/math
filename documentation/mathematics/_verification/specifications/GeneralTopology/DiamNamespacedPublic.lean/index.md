# Verification target: Diam Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec304b9eaf48300a6604e3889dcd0f0af5ab82da",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DiamNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/DiamNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec304b9eaf48300a6604e3889dcd0f0af5ab82da`.

Source path: `GRWTSK/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ediam](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam.md) | 38 | `declaration-track:fd8a5ee22e1d3c916742d744569272db9f902d8c3757807ffb232bc8d762d876` |
| 2 | `theorem` | [ediam_eq_sSup](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-eq-ssup.md) | 43 | `result-track:016dc5b84604c12b49821225de45d0d3e4bf32c41092c1a65e8f49cebe1102f1` |
| 3 | `theorem` | [ediam_le_iff](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-le-iff.md) | 45 | `result-track:60b42dec1eb68f5c85b6a50282472c96be091edc1414e1e3525583ba1c41701e` |
| 4 | `theorem` | [ediam_image_le_iff](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-image-le-iff.md) | 48 | `result-track:730d71b67f2a488070aa93d128961e7e689535d615fb178c4a04b40a2b56abdd` |
| 5 | `theorem` | [edist_le_of_ediam_le](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/edist-le-of-ediam-le.md) | 52 | `result-track:7b70c268b9e1214a6ff7f3f88ae508d2d85b0df8f15b7efd00cdfb50b07a7fc5` |
| 6 | `theorem` | [edist_le_ediam_of_mem](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/edist-le-ediam-of-mem.md) | 56 | `result-track:390799be281d584ce7e008d9d9ce96aa6b2572abbe7b8bfed7069c5d07e84b2a` |
| 7 | `theorem` | [ediam_le](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-le.md) | 61 | `result-track:2dda8b83d78a69e3ac32f4e25b47266bd1658ea16fb839aab28980608c9cb9fb` |
| 8 | `theorem` | [ediam_subsingleton](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-subsingleton.md) | 65 | `result-track:8ececc5d08e6b95fc712291e3d7c7060f409bdd4760c3f5b33c4755f34b0eeef` |
| 9 | `theorem` | [ediam_empty](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-empty.md) | 72 | `result-track:d08a0b041413eb08c1f438a31ad055110493e0d0e59d40eceaeee7ae65c6b887` |
| 10 | `theorem` | [ediam_singleton](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-singleton.md) | 77 | `result-track:2c63530a0b02919655f32b5f55b79c415f9ec23af0da1429c1d95465e3329430` |
| 11 | `theorem` | [ediam_one](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-one.md) | 81 | `result-track:c6778f2edbf45e4780c0dc22cc29a7ab10c7190b90c299d9e967dd4a649a2672` |
| 12 | `theorem` | [ediam_iUnion_mem_option](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-iunion-mem-option.md) | 84 | `result-track:41a4a3820550b97701e0c140a964a736fe99743156d2892d0c385f208cf11d20` |
| 13 | `theorem` | [ediam_insert](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-insert.md) | 87 | `result-track:2ba6ff940e5d44a7379b1f1d0aa31cfaf3a5584ca7b891b720a59442255f90bb` |
| 14 | `theorem` | [ediam_pair](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-pair.md) | 90 | `result-track:ee2f86aaf0b9c6cd071309158c7f9c2ebf83bd103f2dadd455b59f9d28460e1b` |
| 15 | `theorem` | [ediam_triple](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-triple.md) | 92 | `result-track:239625a18b5a339f7013a05add9a3dd8e3e2cfee1fae45e06bcbc5f879012a32` |
| 16 | `theorem` | [ediam_mono](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-mono.md) | 97 | `result-track:64ec081034c84f1ef68a22ef62149d95c499696f102e1156581cc9f908dd8859` |
| 17 | `theorem` | [ediam_union_le_add_edist](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-union-le-add-edist.md) | 102 | `result-track:e67c3e0faaa91214c623d77f0da8d0918e1e9c2c5a0f951033069413a439d440` |
| 18 | `theorem` | [ediam_union_le](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-union-le.md) | 126 | `result-track:886da3144dfab391b8ed676766c2266894ddbfeba5cd8803529dffe4ef4281d8` |
| 19 | `theorem` | [ediam_closedEBall_le](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-closedeball-le.md) | 130 | `result-track:e044750fceb7bc57448aa57f50449873d0be031a7f127483625090836e290bf9` |
| 20 | `theorem` | [ediam_eball_le](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-eball-le.md) | 137 | `result-track:112f7a2229fea372f6926bc7d16627fc546f6e5ae264b17d2fe75fba3454a723` |
| 21 | `theorem` | [ediam_pi_le_of_le](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-pi-le-of-le.md) | 140 | `result-track:d0e913f38c65aad58c0c1496f2a3d0746bbaaf8fe7c1070e5987029a8e3e8dc8` |
| 22 | `theorem` | [ediam_eq_zero_iff](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-eq-zero-iff.md) | 152 | `result-track:38efca946fdfc3e6dc883017df777b3deb59fbc59a1dceaf8f06c6f973c697fa` |
| 23 | `theorem` | [ediam_pos_iff](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-pos-iff.md) | 155 | `result-track:3d43c328d328a2417224edb78590191824f44a830acdf43d221f2ca3034a4497` |
| 24 | `theorem` | [ediam_pos_iff'](../../../../GeneralTopology/DiamNamespacedPublic.lean/declarations/ediam-pos-iff-source-edition-2.md) | 158 | `result-track:859b59867542d99b83152c5ccb96e153ac548503a416940715ac4a2a6b0984bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=faa8b437c6aa9378ee68f79a4ec8ab9b75eefe24c6908abceeca18480318bb40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
