# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aa9c5aa227b221afc78e2b75d464025a45459e8",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aa9c5aa227b221afc78e2b75d464025a45459e8`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/instance--bf399cfa20fb20bb817adb7a.md) | 42 | `declaration-track:bf399cfa20fb20bb817adb7ab8d31edbd69d88c94223899d2461b23fdb5563fd` |
| 2 | `theorem` | [isUniformEmbedding_iff'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/isuniformembedding-iff--c1e114836649272afe3e3b0f.md) | 47 | `result-track:c1e114836649272afe3e3b0f14e5778914aab4d87186597a44c79218b24f693d` |
| 3 | `abbrev` | [_root_.GRWTSK.Topology.MetricTopology.IsUniformEmbeddingIffPrime.Variant436cca315c86e33d4101560d75087e75b5ccb6c96419960c68d1aeb147eed49b.MetricSpace.ofT0PseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/root-grwtsk-topology-metrictopology-isuniformembeddingiffprime-variant43--6ebe50ffc68fbf1c087fa1be.md) | 54 | `declaration-track:6ebe50ffc68fbf1c087fa1bed4446adb091de1c6fde2be7dcfec19c3586cd6ab` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/instance--9cebc7573fba90571a4b0157.md) | 61 | `declaration-track:9cebc7573fba90571a4b0157fbbc110987b42e19b6f1f9e6045ec311c0ac3994` |
| 5 | `theorem` | [isClosed_of_pairwise_le_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/isclosed-of-pairwise-le-dist--e45ffe6a88ea8ce4ca8569e0.md) | 64 | `result-track:e45ffe6a88ea8ce4ca8569e0f31f0ce259e62d617675ea7f4de866d8a3f4ca2d` |
| 6 | `theorem` | [isClosedEmbedding_of_pairwise_le_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/isclosedembedding-of-pairwise-le-dist--68404225dba73650f2525c1f.md) | 68 | `result-track:68404225dba73650f2525c1ffd033b330924dd7b4d554ddc36adb08bcc4390c2` |
| 7 | `theorem` | [isUniformEmbedding_bot_of_pairwise_le_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/isuniformembedding-bot-of-pairwise-le-dist--5487b7ac14114f15261edb51.md) | 75 | `result-track:5487b7ac14114f15261edb519e4be67b6fa0f5c5452ce8e1a5358575b0acfc26` |
| 8 | `abbrev` | [EMetricSpace.toMetricSpaceOfDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/emetricspace-tometricspaceofdist--bbe3b0877dd0c8769001a3e7.md) | 87 | `declaration-track:bbe3b0877dd0c8769001a3e7d90b62d1de41bde25b443316e6114a31e7c69049` |
| 9 | `abbrev` | [EMetricSpace.toMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/emetricspace-tometricspace--fb940f8210575c29a13ff2a2.md) | 96 | `declaration-track:fb940f8210575c29a13ff2a2da537ba0a79c20a8b466cb489a8b1578231b4cdc` |
| 10 | `abbrev` | [MetricSpace.induced](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/metricspace-induced--93d7eb6348c04664b7f0c266.md) | 102 | `declaration-track:93d7eb6348c04664b7f0c26605d12c3e44f53a14af56bc00b561a34ff0b8068d` |
| 11 | `abbrev` | [IsUniformEmbedding.comapMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/isuniformembedding-comapmetricspace--742ed7a1cb0061f1834afdf9.md) | 109 | `declaration-track:742ed7a1cb0061f1834afdf916ad6965236819f727361624b6b064241f9a2fa9` |
| 12 | `abbrev` | [Topology.IsEmbedding.comapMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/topology-isembedding-comapmetricspace--066d626fe10e9c98b642f12b.md) | 115 | `declaration-track:066d626fe10e9c98b642f12b96ae1d56fd04f02f86cb8eb59880182cd00bfcb6` |
| 13 | `instance` | [Subtype.metricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/subtype-metricspace--5b1f5b26ab6c388c0c755c41.md) | 119 | `declaration-track:5b1f5b26ab6c388c0c755c41712884cf377c84429c6f7a9a13827487f920ab6e` |
| 14 | `instance` | [MulOpposite.instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/mulopposite-instmetricspace--1dbd42274c37e9f3132328e7.md) | 124 | `declaration-track:1dbd42274c37e9f3132328e7218ef7cd501a514000c1259895437f4bee6b49ec` |
| 15 | `instance` | [Real.metricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/real-metricspace--9acf67c8d4a2988152acd43b.md) | 130 | `declaration-track:9acf67c8d4a2988152acd43b04ae7c738296ffce1f7d367e37974f6eba695508` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/instance--c0f547ba307f317d6d42beb4.md) | 136 | `declaration-track:c0f547ba307f317d6d42beb4395b2d924eb55b07b6146723aa8fac9b599edab7` |
| 17 | `theorem` | [NNReal.isUniformEmbedding_coe](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/nnreal-isuniformembedding-coe--018ae6befeb4d097203ce064.md) | 139 | `result-track:018ae6befeb4d097203ce064d66d23b7767ed39dcf8efbfb225e2433bb4a5e4a` |
| 18 | `theorem` | [NNReal.isEmbedding_coe](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/nnreal-isembedding-coe--dadb908d3639d9885db368ed.md) | 142 | `result-track:dadb908d3639d9885db368ed8b4491119f9cc9deb84852627810a20667999226` |
| 19 | `theorem` | [NNReal.isClosedEmbedding_coe](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/nnreal-isclosedembedding-coe--e96a46a93630b30fa6d6906b.md) | 145 | `result-track:e96a46a93630b30fa6d6906b0c7f2ebaef2ff54ba176b1a03877ca70fe590a5d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/instance--90aa117d05b3a289ffc4c995.md) | 150 | `declaration-track:90aa117d05b3a289ffc4c995aab6442020f5368e35f44c9d019d1f7b2a6bcac3` |
| 21 | `instance` | [Prod.metricSpaceMax](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/prod-metricspacemax--964295214f0455aea93d4923.md) | 155 | `declaration-track:964295214f0455aea93d492387843413b337e7e0f5f3f807e678f985259edbb1` |
| 22 | `instance` | [metricSpacePi](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/metricspacepi--38068cd032f2ea7becbebcad.md) | 165 | `declaration-track:38068cd032f2ea7becbebcad348bbf5bc7a77f7826d2850a83b43de71b6d2364` |
| 23 | `theorem` | [secondCountable_of_countable_discretization](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/secondcountable-of-countable-discretization--ca35fdaa15a0e4da3fffde1e.md) | 176 | `result-track:ca35fdaa15a0e4da3fffde1ee0fd15227ef1c13be12362f411455fb89dd6eedc` |
| 24 | `theorem` | [dist_congr_right](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/dist-congr-right--f0de8f9e802260bcbd8cd992.md) | 196 | `result-track:f0de8f9e802260bcbd8cd992546a0e812404ed42e7affa1eb0a6721179caaac6` |
| 25 | `theorem` | [dist_congr_left](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/dist-congr-left--2106177b09ea6015142df939.md) | 201 | `result-track:2106177b09ea6015142df939983dca595f828942f502b7b2814a1e393fc618d1` |
| 26 | `theorem` | [dist_congr](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/dist-congr--43a0d3e3f5405ad7e942c068.md) | 205 | `result-track:43a0d3e3f5405ad7e942c0683762d4be18d4b754bc9ffc686f3aa2bd4cbb71bf` |
| 27 | `instance` | [SeparationQuotient.instDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/separationquotient-instdist--df64469d5cc6473be1eae935.md) | 209 | `declaration-track:df64469d5cc6473be1eae9357a793175a8f41beed394de06c9f57831dccd8a80` |
| 28 | `theorem` | [SeparationQuotient.dist_mk](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/separationquotient-dist-mk--f4b551e5496cdbe806e4755a.md) | 213 | `result-track:f4b551e5496cdbe806e4755a3706b775164377c9c25ea5e3183f418dad10986c` |
| 29 | `instance` | [SeparationQuotient.instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/separationquotient-instmetricspace--feda596ed487d2d8932416ac.md) | 217 | `declaration-track:feda596ed487d2d8932416ac5713370cbf71625a8fa9911281387b9183deff82` |
| 30 | `theorem` | [nndist_congr_right](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/nndist-congr-right--e81e41c6a25773fa0e40520a.md) | 221 | `result-track:e81e41c6a25773fa0e40520ad0dac63cb77f6388abe87b2d0c13f54824ea3c66` |
| 31 | `theorem` | [nndist_congr_left](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/nndist-congr-left--702ee631b0572c5c13b4f1d0.md) | 226 | `result-track:702ee631b0572c5c13b4f1d0561114833d23f6c70a490232d2cf2404ad6b6949` |
| 32 | `theorem` | [nndist_congr](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/nndist-congr--220cfede93dd3804d5862ae2.md) | 230 | `result-track:220cfede93dd3804d5862ae2e42352e699b990b307e5d1684df438ca46e672f4` |
| 33 | `abbrev` | [replaceEDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/replaceedist--f0299c65800ad110fd49f393.md) | 247 | `declaration-track:f0299c65800ad110fd49f3932ff9e51fb67bb5d69e12eb32ea2f439641c61b92` |
| 34 | `lemma` | [replaceEDist_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/replaceedist-eq--c85618935bde855ffcadb3e0.md) | 255 | `result-track:c85618935bde855ffcadb3e0f61b4142e6a2a3cfb80b4028edcccebb313eb49a` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/example--44ada9adf0cd7a16f4d96c40.md) | 258 | `declaration-track:44ada9adf0cd7a16f4d96c4071199ba920564477b41e5bdbcd76550637cfc7db` |
| 36 | `abbrev` | [replaceDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/replacedist--8c9acdb134fe4b67f14ccf8d.md) | 271 | `declaration-track:8c9acdb134fe4b67f14ccf8da0442bb1582580b0d2fd07b433ef0b5546ba5053` |
| 37 | `lemma` | [replaceDist_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/replacedist-eq--26d5cd329c64072b5f39fa7b.md) | 281 | `result-track:26d5cd329c64072b5f39fa7b0bda8fa7c59f2a22abd608e1ed1ce4d871e48a90` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/example--aba73f5227fd982eed587f5b.md) | 284 | `declaration-track:aba73f5227fd982eed587f5bc6f63339827d6efee9d22452f89352d246ee6549` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/example--b72ccb35d348d9ca4e8dd9f1.md) | 288 | `declaration-track:b72ccb35d348d9ca4e8dd9f11a62385d54e14209df3d3f32fee4b95c8eca01c2` |
| 40 | `abbrev` | [replaceEDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/replaceedist--bbe22ceaeebf8f14ae0025ab.md) | 304 | `declaration-track:bbe22ceaeebf8f14ae0025abe41bc32451d667cc80ed7c77377014e1b15799e1` |
| 41 | `lemma` | [replaceEDist_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/replaceedist-eq--66c09ef4ac7eeab4bb1a02ff.md) | 311 | `result-track:66c09ef4ac7eeab4bb1a02ff907998bcc694076e9cf0cf09be927a543a7158fb` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/example--817bd631af204836ed1827d4.md) | 314 | `declaration-track:817bd631af204836ed1827d41f0843c406e88efac014903e24a928c517962648` |
| 43 | `abbrev` | [replaceDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/replacedist--2ed52b7cbcb7dba8283165cc.md) | 327 | `declaration-track:2ed52b7cbcb7dba8283165ccd3b84e0f746feb49f340679f95ec025fa91b623d` |
| 44 | `lemma` | [replaceDist_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/replacedist-eq--4d768041e416530c4d2cdc5c.md) | 334 | `result-track:4d768041e416530c4d2cdc5cc67b21592138da8fe2fa6fcd027f7c13f16f563e` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/example--a18f2c25a43b26392bca0c5e.md) | 337 | `declaration-track:a18f2c25a43b26392bca0c5eb931d9cd51360ffe749573ae2a18de9c947539ef` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/declarations/example--7372bd4848f9be7b61164745.md) | 341 | `declaration-track:7372bd4848f9be7b611647450bad9acb2cc82aac3ff68261edffcf28492617b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
