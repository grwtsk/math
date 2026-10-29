# Verification target: Ring Units Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c617763067e715057d4e4482c2adaa56ee4e1d4e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c617763067e715057d4e4482c2adaa56ee4e1d4e`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean.json)

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
| 1 | `def` | [add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/add.md) | 48 | `declaration-track:2b4f7e68092fbe72b3d07c7faca981ad27904a2196a0236b14e1ae5cca29c288` |
| 2 | `def` | [ofNearby](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/ofnearby.md) | 63 | `declaration-track:efaaca211c009c343a989f23400dc5c877b67ed4ba3b16d563b835943daa7ed0` |
| 3 | `theorem` | [isOpen](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/isopen.md) | 68 | `result-track:49aae9b4d3879aa9dcd6459e06376d6500e60b27f97fd4a5636de421444e5dcf` |
| 4 | `theorem` | [nhds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/nhds.md) | 76 | `result-track:5709c05a045bf45049bf47ce4d0036718071a6c8919bc5a52437f807b022d4cc` |
| 5 | `theorem` | [subset_compl_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/subset-compl-ball.md) | 85 | `result-track:960c82e71d22961538b4212c87d157379a272995ce328395d82bff51fa252712` |
| 6 | `theorem` | [isClosed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/isclosed.md) | 89 | `result-track:9d7a367882352fd38aae36035c296512e212aa48b35a9878e94fce1d218ab72c` |
| 7 | `theorem` | [inverse_one_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-one-sub.md) | 98 | `result-track:1b95a72bd9abde02709908af891ede11d6804becc328c90628cdd687058b8c17` |
| 8 | `theorem` | [inverse_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-add.md) | 103 | `result-track:4521e19e54b81f03eed3a3df42a6d01ad392f4dace0f06918923397505f3cd86` |
| 9 | `theorem` | [inverse_one_sub_nth_order'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-one-sub-nth-order.md) | 112 | `result-track:aa0ec273e65573cc45eb4a0246b62edf040d99af48f475e77859c9b0c33cad04` |
| 10 | `theorem` | [inverse_one_sub_nth_order](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-one-sub-nth-order-source-edition-2.md) | 120 | `result-track:f6cc47904db0d745b33826c8e99499fb80c4ddc3aafdf5d10398123cac4e2f8c` |
| 11 | `theorem` | [inverse_add_nth_order](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-add-nth-order.md) | 130 | `result-track:cad90bd640235e81c534f515d28973d8dabb9196f2edacf5881bfbfd8258088b` |
| 12 | `theorem` | [inverse_one_sub_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-one-sub-norm.md) | 140 | `result-track:a91194ee2e00b54309a5674b7be70736f3e9e467761b82e8d94cf7b27b82357e` |
| 13 | `theorem` | [inverse_add_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-add-norm.md) | 152 | `result-track:5649e6fb7371e34798bb13e268df465d1276547e0fb3a912c56c80bca84a0037` |
| 14 | `theorem` | [inverse_add_norm_diff_nth_order](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-add-norm-diff-nth-order.md) | 162 | `result-track:0d29c2803db76b8b284d4a5904f571f7971aad6ec38c213412882f5dbca4b203` |
| 15 | `theorem` | [inverse_add_norm_diff_first_order](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-add-norm-diff-first-order.md) | 172 | `result-track:c321d5750a2269cfb4aee4d2f7dc4e447992197ddc6ab13d3e8bb718914ff429` |
| 16 | `theorem` | [inverse_add_norm_diff_second_order](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-add-norm-diff-second-order.md) | 177 | `result-track:d5aea7f8f52b0c8b2021b00f977c088498c824e8ea64ea22040cce3e7fdc2be6` |
| 17 | `theorem` | [inverse_continuousAt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/inverse-continuousat.md) | 184 | `result-track:c302d94cb037854aed5e4c59478173dd2bb15856f11adff515fe92d3dda9d63e` |
| 18 | `theorem` | [isOpenEmbedding_val](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/isopenembedding-val.md) | 201 | `result-track:096142fa51e2e342260bc8ad5c0ab648cf9031dbf29fde69f01ca4cdf402a482` |
| 19 | `theorem` | [isOpenMap_val](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/isopenmap-val.md) | 208 | `result-track:933a5bf34d03b80f2f3a6fa05f46fad30e066a0d8bee0723126a0eb03c6e47b2` |
| 20 | `theorem` | [eq_top_of_norm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/eq-top-of-norm-lt-one.md) | 216 | `result-track:e9b96e304350f180b2d6d2a98042e53d40b3d184c4be633202600b90e5f3bc30` |
| 21 | `theorem` | [closure_ne_top](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/closure-ne-top.md) | 223 | `result-track:aa678c82553d6b02529ef5565ae48852194891c42ebc48471452d63bda8b2f79` |
| 22 | `theorem` | [IsMaximal.closure_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/ismaximal-closure-eq.md) | 229 | `result-track:f902ed4f9137bda9745f6fff41baa3968bcec42be495a68f32893c973cacbb41` |
| 23 | `instance` | [IsMaximal.isClosed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingUnitsPublic.lean/declarations/ismaximal-isclosed.md) | 233 | `declaration-track:6a5e9181a3dfb792cc374b4cdcaf9f76e779fd83fe99d1ea2c16daf4089135de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b542b25677d8c630b9d9abd7cc79d030ce2db2f24cc0251afee47f3c76d7f3c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
