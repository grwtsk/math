# Verification target: Topology Order Left Right

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e65ba29d854c310ec5a3eadcb53bb92417cc8d14",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyOrderLeftRight.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyOrderLeftRight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e65ba29d854c310ec5a3eadcb53bb92417cc8d14`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Antichain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [frequently_lt_nhds](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/frequently-lt-nhds.md) | 33 | `result-track:4ef67c97a66ef0f3c6f79db96b816861feed2df4410e27fecb0c1501d031a9bb` |
| 2 | `lemma` | [frequently_gt_nhds](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/frequently-gt-nhds.md) | 36 | `result-track:0c0574cf3ef48c90bd9b7e2bc14a3ad52fc31313b8f126aa54939da609b3e262` |
| 3 | `theorem` | [Filter.Eventually.exists_lt](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/filter-eventually-exists-lt.md) | 39 | `result-track:69a1f46028b1f1fbb2a85d497daa4cdded6f503b942e964e2083e5c623f62733` |
| 4 | `theorem` | [Filter.Eventually.exists_gt](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/filter-eventually-exists-gt.md) | 43 | `result-track:ab9bb58abf4f071c508bd56cbb272e2f93b0f71265218d256f043198ba072a75` |
| 5 | `theorem` | [nhdsWithin_Ici_neBot](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdswithin-ici-nebot.md) | 47 | `result-track:033903e0dffcf391c30af18ebb248766f06ebf2417a50f09c82784de68c59637` |
| 6 | `instance` | [nhdsGE_neBot](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdsge-nebot.md) | 50 | `declaration-track:e0a19561106f19a0daa9462b078a6b7742301ec4ffbe46b864dfb6a6da829a07` |
| 7 | `theorem` | [nhdsWithin_Ici_self_neBot](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdswithin-ici-self-nebot.md) | 53 | `result-track:80c7903d8ed7a68ab79f83bb985572e11914624af9f25352951207a824e4eb6e` |
| 8 | `theorem` | [nhdsWithin_Iic_neBot](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdswithin-iic-nebot.md) | 55 | `result-track:758490870bf6a210e3ccf3214564c5b3991c9424a3b076aac6f9a77d8145c418` |
| 9 | `instance` | [nhdsLE_neBot](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdsle-nebot.md) | 58 | `declaration-track:9f823b2edff625de1fac57cef0e2784fcb3287c482787d5cb9070b87c62a579a` |
| 10 | `theorem` | [nhdsWithin_Iic_self_neBot](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdswithin-iic-self-nebot.md) | 61 | `result-track:df23319fefb1da293b088c3cefe6c507f406f5f407a6f2a13d92d91405f0dd68` |
| 11 | `theorem` | [nhdsLT_le_nhdsNE](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdslt-le-nhdsne.md) | 63 | `result-track:9d27063ed85612503a71106bef50fde9cebe3b7e463b6f9098598974e59c9fe3` |
| 12 | `theorem` | [nhdsGT_le_nhdsNE](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdsgt-le-nhdsne.md) | 68 | `result-track:b3f84269720beecf8c367337912e73c62b839d9b778932c6a189dacd33f062d0` |
| 13 | `lemma` | [IsAntichain.interior_eq_empty](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/isantichain-interior-eq-empty.md) | 74 | `result-track:0481b17ebca2856b40a133e17501bd61695f1213bfad26e7bef1cb1f1f226271` |
| 14 | `lemma` | [IsAntichain.interior_eq_empty'](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/isantichain-interior-eq-empty-source-edition-2.md) | 81 | `result-track:a16797b0e65c158171465106354a24dc7b2d8d27ff01c2b6b447329af0cf4060` |
| 15 | `theorem` | [continuousWithinAt_Ioi_iff_Ici](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/continuouswithinat-ioi-iff-ici.md) | 92 | `result-track:5492fa49b51e5ea941a0914b4268fc5c8b2620adf319bb8ad1cda69956cabb95` |
| 16 | `theorem` | [continuousWithinAt_Iio_iff_Iic](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/continuouswithinat-iio-iff-iic.md) | 96 | `result-track:cabe68e6a709a3d87774b297565d9fe2126ebcbf0a89000499c2f3ab62d43b27` |
| 17 | `theorem` | [nhdsLE_sup_nhdsGE](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdsle-sup-nhdsge.md) | 106 | `result-track:9709e22e9bfd3a497cbd80ab626a0595442b4c4e346d03fb71075dde772f35e3` |
| 18 | `theorem` | [nhdsLT_sup_nhdsGE](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdslt-sup-nhdsge.md) | 111 | `result-track:afa19fd2c6f86d5e20f879b5a8a07cc6bff721f7b471872610f9596ad874bfc0` |
| 19 | `theorem` | [nhdsLE_sup_nhdsGT](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdsle-sup-nhdsgt.md) | 116 | `result-track:1f9d3ad2cef7a39c56be144ec6973e38b2aee4a7d40cd32ce4503f3bd522a17b` |
| 20 | `theorem` | [nhdsLT_sup_nhdsGT](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdslt-sup-nhdsgt.md) | 121 | `result-track:ece9392e99caae0b5f879b994ad2b293e38b9a939278fc4252b3bef6ba314548` |
| 21 | `lemma` | [nhdsWithin_right_sup_nhds_singleton](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/nhdswithin-right-sup-nhds-singleton.md) | 126 | `result-track:91ff78b2b67ee2f47fbd3f7d9e1c0efdf883e6f9b9bf76a35d84637031a5ab30` |
| 22 | `theorem` | [continuousAt_iff_continuous_left_right](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/continuousat-iff-continuous-left-right.md) | 130 | `result-track:14df6167c7cfec14ca8346f12f423facc95c706867f00064b5b69710abcdc66d` |
| 23 | `theorem` | [continuousAt_iff_continuous_left'_right'](../../../../GeneralTopology/TopologyOrderLeftRight.lean/declarations/continuousat-iff-continuous-left-right-source-edition-2.md) | 134 | `result-track:9274e174016e4efadf5d94493dae242e2c2cab109a7f24f7a1d0f9b5c633a215` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07987f8a50418b772c4fffcd3e8e666c398ba11433469951f2b93a64ab5722b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
