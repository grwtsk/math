# Verification target: Products Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4545b00c2a58deab6ed8330316f068dadd778da4",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProductsNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ProductsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4545b00c2a58deab6ed8330316f068dadd778da4`.

Source path: `GRWTSK/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean.json)

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
| 1 | `abbrev` | [piπ](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/pi.md) | 40 | `declaration-track:0f78f2b2ffb6725cf5f1c7f34c39fe50a325b5e1b3b32954316997b185bd8cdc` |
| 2 | `def` | [piFan](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/pifan.md) | 45 | `declaration-track:b149c805bf7e9b8a961febaf6a55e704a2e956ba8468ed4e79a10c8b91ad2f3f` |
| 3 | `def` | [piFanIsLimit](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/pifanislimit.md) | 51 | `declaration-track:a9f6182c52d0fe38f089b164b557528ae84b36784288b2d30ecdb1523ae541dc` |
| 4 | `def` | [piIsoPi](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/piisopi.md) | 65 | `declaration-track:4db265e37e3625e05cfd238eff42787b0b562e1ba73d563529c1fb575b0135f4` |
| 5 | `theorem` | [piIsoPi_inv_π](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/piisopi-inv.md) | 70 | `result-track:089ac2927028cf7330867f426973606abe3cb3ba183a0c89a1d07ee4f7f29d4d` |
| 6 | `theorem` | [piIsoPi_inv_π_apply](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/piisopi-inv-apply.md) | 73 | `result-track:046e51a9e6f75bb50ffb5fa6d78d96ccab90c4c39d864a7e376be4a00d90c37a` |
| 7 | `theorem` | [piIsoPi_hom_apply](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/piisopi-hom-apply.md) | 77 | `result-track:76aa2c1845cdcb3015f0a8dfea17fd22c9b20f062a579e27ab556e76a1e2dfac` |
| 8 | `abbrev` | [sigmaι](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/sigma.md) | 81 | `declaration-track:9cefbaef7a5a5161fa62a9e16f268f86d4054e6f2a8f97e66f17f8d9ca59928b` |
| 9 | `def` | [sigmaCofan](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/sigmacofan.md) | 88 | `declaration-track:bbd6ebc6bc75788dabd43db7f84bccbbc1c7a314a7628c28eb6cf09c1ea9837a` |
| 10 | `def` | [sigmaCofanIsColimit](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/sigmacofaniscolimit.md) | 92 | `declaration-track:292b6ad1e795fe4629c58315aafe55d624431819472a8a3a659fbfdaac0f5463` |
| 11 | `def` | [sigmaIsoSigma](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/sigmaisosigma.md) | 107 | `declaration-track:f627494e5b6c67403217ff066d9dab73c5413152cc010729a98b83a51f6d83a8` |
| 12 | `theorem` | [sigmaIsoSigma_hom_ι](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/sigmaisosigma-hom.md) | 112 | `result-track:a6e00425c57688110b884864eb0a35dd70da45f6663713042168fde5016a91e4` |
| 13 | `theorem` | [sigmaIsoSigma_hom_ι_apply](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/sigmaisosigma-hom-apply.md) | 115 | `result-track:9dae34bfd5d114e1feff7e85b3f6a7d8e7c570e92f652f478485c2b320339973` |
| 14 | `theorem` | [sigmaIsoSigma_inv_apply](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/sigmaisosigma-inv-apply.md) | 119 | `result-track:677314a90134adac1073c173ce1299df5112fe315f3ff9f66efc09369b53a941` |
| 15 | `abbrev` | [prodFst](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodfst.md) | 127 | `declaration-track:62ae4293adbebb5a1f3d3349e17d45506ab99ac7863a6d1d972822018b037276` |
| 16 | `abbrev` | [prodSnd](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodsnd.md) | 131 | `declaration-track:337755a111766f614b47396960f569b9811dc3d52de94ca43934f7f160895d7a` |
| 17 | `def` | [prodBinaryFan](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodbinaryfan.md) | 135 | `declaration-track:398ca5eb2971353015e16a999009ab303a5303d0a06af57eedbc6af875404e65` |
| 18 | `def` | [prodBinaryFanIsLimit](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodbinaryfanislimit.md) | 139 | `declaration-track:9f6faad578a2049b4c450b52829e07a260aaf143ad2d363edf3d19a40d76276e` |
| 19 | `def` | [prodIsoProd](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodisoprod.md) | 158 | `declaration-track:7295c8860ede81e97679a2d2fb436df420de9702f97b81af24545a591df11ac9` |
| 20 | `theorem` | [prodIsoProd_hom_fst](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodisoprod-hom-fst.md) | 162 | `result-track:cd5ff52580fc2181853610c519da21eeaeb86e09d7012abebe20456b7df19c91` |
| 21 | `theorem` | [prodIsoProd_hom_snd](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodisoprod-hom-snd.md) | 167 | `result-track:db7c16f8640ac33a04d61cb327abd7a72788da92c40b375253aee8add5160994` |
| 22 | `theorem` | [prodIsoProd_hom_apply](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodisoprod-hom-apply.md) | 172 | `result-track:1639c3b09ec03480a8e79943f0453c79ce07bd4581b9eed19de317425bce5c4d` |
| 23 | `theorem` | [prodIsoProd_inv_fst](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodisoprod-inv-fst.md) | 177 | `result-track:bf093d84da7ca6a614974f4ce8d03e61b07d406b8bbfcb804b2e3324b2f431f1` |
| 24 | `theorem` | [prodIsoProd_inv_snd](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prodisoprod-inv-snd.md) | 181 | `result-track:ba20f2eb972efb13a2b94b83444233d84229816ee83763955bff06f51cdf5b37` |
| 25 | `theorem` | [prod_topology](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/prod-topology.md) | 184 | `result-track:655ebcc6157bb6a32554c91ab05d3547068994abe11bbbcbc8e0d9f6a19c24fb` |
| 26 | `theorem` | [range_prod_map](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/range-prod-map.md) | 194 | `result-track:15ed1c2459794d7c8cc439de9cc180046fc412f72d846c9c1e70c5aac1822d88` |
| 27 | `theorem` | [isInducing_prodMap](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/isinducing-prodmap.md) | 217 | `result-track:e0a71bcaa3f3b14c388449667851909327d42abe3122a1dbae8f0f3ba7f3865d` |
| 28 | `theorem` | [isEmbedding_prodMap](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/isembedding-prodmap.md) | 224 | `result-track:44fa2b8b12b15f471bf9dca123f31ee75779c2dea4305f7e3e6d0f7dc3cab601` |
| 29 | `def` | [binaryCofan](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/binarycofan.md) | 234 | `declaration-track:3bc89098b6b4902981a4faf9e72173e5b0af0f07d6be987fe82d2e75a3195faa` |
| 30 | `def` | [binaryCofanIsColimit](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/binarycofaniscolimit.md) | 238 | `declaration-track:686ecbe8274d405d067756f0250b79f939bd0db612d67d935bcc970fc3ab99ff` |
| 31 | `theorem` | [binaryCofan_isColimit_iff](../../../../GeneralTopology/ProductsNamespacedPublic.lean/declarations/binarycofan-iscolimit-iff.md) | 252 | `result-track:fe37f83b47140699c16e3a936f94b2fe09e413848290dfdf7a05398edb3029d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bb18d45327a66eb1db086629195a381249ad6f1af4de0036baeceb42a58f332 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
