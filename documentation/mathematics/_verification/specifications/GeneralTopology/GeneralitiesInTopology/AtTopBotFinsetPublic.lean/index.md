# Verification target: At Top Bot Finset Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "545a70a944fa011954b0261a88fb478a2f4e8190",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd7ce39d50c38284b49af5e35b8235fd4548da7fdb2ef026f3f7bc94b7053c129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `545a70a944fa011954b0261a88fb478a2f4e8190`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd7ce39d50c38284b49af5e35b8235fd4548da7fdb2ef026f3f7bc94b7053c129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantd7ce39d50c38284b49af5e35b8235fd4548da7fdb2ef026f3f7bc94b7053c129.lean.json)

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
| 1 | `theorem` | [tendsto_finset_range](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-finset-range.md) | 26 | `result-track:53c0d5fdb4be766aa34c4b50ed6ea651241a8da4d70dfca37886c91bd0e383c8` |
| 2 | `theorem` | [atTop_finset_eq_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/attop-finset-eq-iinf.md) | 29 | `result-track:2b54f98a02e799f892d2aea98f5e189ea373bfb262e232f426e41c6386937442` |
| 3 | `theorem` | [tendsto_atTop_finset_of_monotone](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-attop-finset-of-monotone.md) | 40 | `result-track:14dc1ac70b0c48e28e37b96b10049f8760c768d40bfaa46992112b5249ba62da` |
| 4 | `theorem` | [tendsto_finset_image_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-finset-image-attop-attop.md) | 49 | `result-track:f6b574264d5cfe0ed19de5e2c069658368aa6ab90515f1f19114efe2c054404c` |
| 5 | `theorem` | [tendsto_finset_preimage_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-finset-preimage-attop-attop.md) | 54 | `result-track:a3675be9ddcbeb2303e3530ced752f59d89e15f0535ce63d1faabdf91cd482da` |
| 6 | `lemma` | [tendsto_toLeft_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-toleft-attop.md) | 59 | `result-track:14aaa2cfe5e9b530dc8644fc211d073aa9043f301bce903831588626d129e3c1` |
| 7 | `lemma` | [tendsto_toRight_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-toright-attop.md) | 66 | `result-track:80ee2dcf36de0e41eb958c51f81fa09b9e95145a09c225545e3beaad7a7352de` |
| 8 | `theorem` | [tendsto_finset_powerset_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-finset-powerset-attop-attop.md) | 73 | `result-track:8cba06b3742148d86548d3039ffa9aad3a84bfc3b1313f842a87c9a6e8b105c5` |
| 9 | `theorem` | [tendsto_finset_Iic_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-finset-iic-attop-attop.md) | 78 | `result-track:5f9926ee22252035708c590523b6943cc5ea0bf28c39534c100d0cc267e892fc` |
| 10 | `theorem` | [tendsto_finset_Ici_atBot_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-finset-ici-atbot-attop.md) | 89 | `result-track:dc4c42f5567fce1772efdcf16692845298dd8b14f6659bb596505aa6b5edaede` |
| 11 | `lemma` | [eventually_finset_atTop_subset](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/eventually-finset-attop-subset.md) | 96 | `result-track:537c3e37695cda9e3f3c4dff8236438aba6c7650736624ad822b974981f9eb60` |
| 12 | `lemma` | [eventually_finset_mem_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/eventually-finset-mem-attop.md) | 100 | `result-track:23589f80186ae08ac3569d0aaec5c61cfa041f7106f4b4118f94fede8bdd191a` |
| 13 | `lemma` | [map_card_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/map-card-attop.md) | 105 | `result-track:9981b8975c96bdbaf5b65a62f999f75ad8ff3f654bbc74d0b79fae601da79cb0` |
| 14 | `lemma` | [map_card_atTop_of_fintype](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/map-card-attop-of-fintype.md) | 115 | `result-track:e6bfec3405c2dde9af7fd37419ad0cb8a448c00cdafb59345ef9a46415e975b2` |
| 15 | `lemma` | [tendsto_card_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-card-attop-attop.md) | 120 | `result-track:f2805a5b4a57f92cd063023f871c952b50564d0585b85aaa43eb4707edd5bea3` |
| 16 | `lemma` | [tendsto_card_atTop_pure_of_fintype](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-card-attop-pure-of-fintype.md) | 125 | `result-track:a74bad022441ecfed28bbe47c2be8216d4e4e3283b29a9e6b49499850f9449bc` |
| 17 | `lemma` | [tendsto_comp_card_atTop_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-comp-card-attop-iff.md) | 131 | `result-track:a1c6190b2a330a37b6f2931ab918b822f84820234af32211928ad025f97462a2` |
| 18 | `lemma` | [tendsto_comp_card_atTop_iff_of_fintype](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotFinsetPublic.lean/declarations/tendsto-comp-card-attop-iff-of-fintype.md) | 138 | `result-track:c3a5ea0a64978bea6c174a1bf7c317f676f00fa40893130a14cd9ee139176a01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d6b76c176ba02d8c41f9f4da910ce9bbf59a32b59b7cf47327e27c2326483f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd7ce39d50c38284b49af5e35b8235fd4548da7fdb2ef026f3f7bc94b7053c129.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finset/Variantd7ce39d50c38284b49af5e35b8235fd4548da7fdb2ef026f3f7bc94b7053c129.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
