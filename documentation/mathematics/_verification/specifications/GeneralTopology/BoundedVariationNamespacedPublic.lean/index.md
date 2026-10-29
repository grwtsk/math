# Verification target: Bounded Variation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
  "lexical_observation_count": 98,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6113d88eb9b6e6624402490680f712822dc8815`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean.json)

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
| 1 | `def` | [eVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon.md) | 69 | `declaration-track:45ad312bd294f30849d408ec7fef26ffb5ec4d6b9040463796fe73b34f02b321` |
| 2 | `def` | [BoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/boundedvariationon.md) | 74 | `declaration-track:6b411ec6c5f6144018d92a56a6daf21b32929bc38a4de2e3c26dc41fc5fe689f` |
| 3 | `def` | [LocallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/locallyboundedvariationon.md) | 79 | `declaration-track:5d0f1c27344db3421a4ff3ec6efc7abe7ea16f1507612ba6114e9cb5c9b9e0ab` |
| 4 | `theorem` | [nonempty_monotone_mem](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/nonempty-monotone-mem.md) | 86 | `result-track:13184675c25e3f635e434dcc2169bad755bd6cbf0eabde9398db703e9e56e8aa` |
| 5 | `theorem` | [eq_of_edist_zero_on](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/eq-of-edist-zero-on.md) | 91 | `result-track:f10844dcc610e3a5571a1aff4c00b3b12ba96be1dde0077ca6421e0409e088e5` |
| 6 | `theorem` | [eq_of_eqOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/eq-of-eqon.md) | 98 | `result-track:db6b63cf704f73fdd251266443dc5288fd7c4cecdd9c5a8517c9a2611a22ad0f` |
| 7 | `theorem` | [sum_le](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/sum-le.md) | 102 | `result-track:8068f9b09d29a48ebac11ac1eac9db4144ef0b53e7efbde6588c6ac60fc2ff97` |
| 8 | `theorem` | [sum_le_of_monotoneOn_Icc](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/sum-le-of-monotoneon-icc.md) | 106 | `result-track:73f01f9f5b360bf9514fb21eb875d0e52b8835b4ec5c9f5a1bb3879a8e0dea7d` |
| 9 | `theorem` | [sum_le_of_monotoneOn_Iic](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/sum-le-of-monotoneon-iic.md) | 125 | `result-track:163b0b8315bdc8f1c57acb6589fad09aebc4374be8ae404581c57eedbe3a1319` |
| 10 | `theorem` | [eVariationOn_eq_strictMonoOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-eq-strictmonoon.md) | 133 | `result-track:bc18905c95d7ff6a4e44edc9b6f3bb9c179afdc3a7c6394ac125423b6c8f7050` |
| 11 | `theorem` | [mono](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/mono.md) | 166 | `result-track:3d9aeb140329428ad897321be55d30d4e4867e57d28504c1433642e1ff090794` |
| 12 | `theorem` | [eq_biSup_inter_Icc](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/eq-bisup-inter-icc.md) | 171 | `result-track:d3ef1f4b8d46d66e5ae17ccdee453d12b866eab0add3dbac784ed80d34ffbd23` |
| 13 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/mono-source-line-184-occurrence-2.md) | 184 | `result-track:732c9f3e0c14f8214ab7706d33d8b651b9aae90dac28db4656a145536d9dbed2` |
| 14 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/locallyboundedvariationon-source-line-188-occurrence-2.md) | 188 | `result-track:14772bcdedc6ff76e40a6fde9e52f833d2fe69003c392e36eac83bc533d3180d` |
| 15 | `theorem` | [congr](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/congr.md) | 192 | `result-track:7cebf7f9e3a8a2258cbe676dec147b3fb1f6aed00aaea4424852b680109f0781` |
| 16 | `theorem` | [edist_le](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/edist-le.md) | 195 | `result-track:dafd4aae4e36a79254d1196f9e53cbddf857ae1e69e47da45b8dfd0bee12f775` |
| 17 | `theorem` | [eq_zero_iff](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/eq-zero-iff.md) | 209 | `result-track:43309b5169e3461fc0f778eace6aaaf4c37677fcb6356b9dac9a3f9667b44020` |
| 18 | `theorem` | [constant_on](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/constant-on.md) | 221 | `result-track:6e4d854352ab7ed87900a94a6218612496757fd0a4aeab840555bda9ae7e0fe7` |
| 19 | `theorem` | [subsingleton](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/subsingleton.md) | 228 | `result-track:fa4bea1f9d7ec2c61d77d42c74732c6ec0d7280862cfad04afac66373e6875f8` |
| 20 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/of-subsingleton.md) | 233 | `result-track:a0ef6a5da4b61bdf57bbaa391c0cd7c8850477e71ad3286e79b49898fb28a869` |
| 21 | `theorem` | [lowerSemicontinuous_aux](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lowersemicontinuous-aux.md) | 237 | `result-track:401e7e65e4ffec91d6696edcc97ac39a097bf923fe504d238421a3633a60885e` |
| 22 | `theorem` | [lowerSemicontinuous](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lowersemicontinuous.md) | 254 | `result-track:3f837d7634d1009e1e252040c750f6bd52491bbffe73897501d5eee57b9fb4a2` |
| 23 | `theorem` | [lowerSemicontinuous_uniformOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lowersemicontinuous-uniformon.md) | 262 | `result-track:8644654294d4e7cc379bf144536d24d8eb785bc50585ebe13008a2c84f708661` |
| 24 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/dist-le.md) | 270 | `result-track:f08484c897be4d0c6e3492697f07da902a5d14cfbf04269d1f998b1b930d0463` |
| 25 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/sub-le.md) | 276 | `result-track:b954ca874945d3116b3e8d0e5ab5f363d47659eefdbe4122dca1576439fb692f` |
| 26 | `theorem` | [add_point](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/add-point.md) | 285 | `result-track:91c4a1144fb3f8c2d03f63d0ab63cde5ea9703da906c3a6d320ab1863ae2f5df` |
| 27 | `theorem` | [add_le_union](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/add-le-union.md) | 360 | `result-track:4f153c10b39bd829a8bc12865b65e7c5ea1ba29151426d7e28f0d42256c56b07` |
| 28 | `theorem` | [union](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/union.md) | 400 | `result-track:15296b6101f58f5417a20a8c7e6c50f7d33a95c3333574d6ce5f1de3d950067e` |
| 29 | `theorem` | [Icc_add_Icc](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/icc-add-icc.md) | 412 | `result-track:89d9976c157f29fcb1152f5a7001b2f1f3b97a41d59e90aa96e83d061d23b67b` |
| 30 | `theorem` | [sum](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/sum-source-edition-2.md) | 420 | `result-track:83ba8abf090048ea0842f03d919e6a562a6a319c77e97051b9f727e8bea6cc4c` |
| 31 | `theorem` | [sum'](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/sum.md) | 435 | `result-track:7249cf28441b789b6c8b3b07461fc9ecc0333eb11a1184d15854aa4d8b4d5fdd` |
| 32 | `theorem` | [pair](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/pair.md) | 448 | `result-track:1ced9610a7ae6ac0b45d11b7fd9eae06adb387e30a70ae22ed435ee6e84ad3fa` |
| 33 | `theorem` | [union'](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/union-source-edition-2.md) | 464 | `result-track:6351635f0abd126744e3437875dec52d10312e7f9dacf22c72ff498fe261147c` |
| 34 | `theorem` | [image_range_of_monotone](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/image-range-of-monotone.md) | 472 | `result-track:4714996387ec58da8b5ae52d4f935ee77b8ead9473c160b82f7f125939c9f266` |
| 35 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/of-finset.md) | 482 | `result-track:a2035a8cae7d9463383b44cebea91866172b8a27342915693226f52027468de8` |
| 36 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/of-finite.md) | 500 | `result-track:0edd2df8a0fb9ed85f72793e027bb78fce892e37c4ea144c5e05412983aa54da` |
| 37 | `theorem` | [comp_le_of_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/comp-le-of-monotoneon.md) | 510 | `result-track:9b06d5ad29195b3c2a86040ed8321c92308b81923d30382dc7015099707d0099` |
| 38 | `theorem` | [comp_le_of_antitoneOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/comp-le-of-antitoneon.md) | 515 | `result-track:8aeb52bb53a56a822b6a83e83da9de3cd38c664667ae2801c7e2bf62bc441647` |
| 39 | `theorem` | [comp_eq_of_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/comp-eq-of-monotoneon.md) | 529 | `result-track:a349feeb5b12a5efff2bbf76cd68e9f6472e3bca6643a2cbc2f6d9616a853557` |
| 40 | `theorem` | [comp_inter_Icc_eq_of_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/comp-inter-icc-eq-of-monotoneon.md) | 542 | `result-track:d7cc032bd16b10d9485b6e31b1068093da3310700b07d319eb17fab7d4cfef43` |
| 41 | `theorem` | [comp_eq_of_antitoneOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/comp-eq-of-antitoneon.md) | 562 | `result-track:919ea0680b42b14313bc2080b62ba6e021985bcec71d6bb6dee2967b63e4e39a` |
| 42 | `theorem` | [comp_ofDual](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/comp-ofdual.md) | 577 | `result-track:9a8de714e8c4b2c3767b5b4294228564b61d38bd33bf0211a24a5cf106823f7f` |
| 43 | `lemma` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/ofdual.md) | 582 | `result-track:0fd8260cb23bbe601c13607e89da424b5539594c9c20265c2ae4571d3c58d323` |
| 44 | `lemma` | [boundedVariation_ofDual](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/boundedvariation-ofdual.md) | 587 | `result-track:d089e3d3072373d196e28474c36a3365db2e7d56a18a5875f6d1a82d9f0aaed0` |
| 45 | `lemma` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/ofdual-source-line-591-occurrence-2.md) | 591 | `result-track:9ca3d6598b1fdb585a6f5d80dd0d338aa4f177d99a9c283360d99a048541c72d` |
| 46 | `lemma` | [locallyBoundedVariation_ofDual](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/locallyboundedvariation-ofdual.md) | 598 | `result-track:e745575f79fed3149a6c0dc580ae330c61e5f3d9467a7d30b04db67375fda080` |
| 47 | `theorem` | [eVariationOn_on_inter_Iic_eq_Iio_add_edist](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-on-inter-iic-eq-iio-add-edist.md) | 609 | `result-track:db1e88ca1742d89c758cd5d48196c7a2f2f0d7e4ecae0fe91b99acc5e59dca4c` |
| 48 | `theorem` | [eVariationOn_on_inter_Ici_eq_Ioi_add_edist](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-on-inter-ici-eq-ioi-add-edist.md) | 675 | `result-track:2f93fdb83550bbebada0cb94394bc91c84798f30e351cf3d566590a343fffad6` |
| 49 | `lemma` | [eVariationOn_inter_Iio_eq_inter_Iic_of_continuousWithinAt](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-inter-iio-eq-inter-iic-of-continuouswithinat.md) | 685 | `result-track:a5addb4e11eb1f44342dd477e9b9e6530ae63296fab539e0c76f09112377d010` |
| 50 | `lemma` | [eVariationOn_inter_Ioi_eq_inter_Ici_of_continuousWithinAt](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-inter-ioi-eq-inter-ici-of-continuouswithinat.md) | 697 | `result-track:a858c2ea22c81ca35e8b912830954aa48d18b5b847e566385c9d0edef96ed651` |
| 51 | `lemma` | [eVariationOn_Ioc_eq_Icc_of_continuousWithinAt'](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-ioc-eq-icc-of-continuouswithinat.md) | 704 | `result-track:4564cc352cd0bbec946d80a13778a6bae5e8be17f68f25e88ad84177bb4c9800` |
| 52 | `lemma` | [eVariationOn_Ioc_eq_Icc_of_continuousWithinAt](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-ioc-eq-icc-of-continuouswithinat-source-edition-2.md) | 716 | `result-track:af699f2df0749934e7da27b3505cc5322a392223d94019e0666f40a19891ad15` |
| 53 | `lemma` | [eVariationOn_Ico_eq_Icc_of_continuousWithinAt'](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-ico-eq-icc-of-continuouswithinat-source-edition-2.md) | 725 | `result-track:3e105cc3bcbe83bbf285e7f4d316124958d696c938217d94173237598dfa57b4` |
| 54 | `lemma` | [eVariationOn_Ico_eq_Icc_of_continuousWithinAt](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-ico-eq-icc-of-continuouswithinat.md) | 732 | `result-track:21fe1137a1146de747b9b1f6ac7fa2c77c8329fbf56c6b97cc555749fc2835cd` |
| 55 | `lemma` | [exists_lt_eVariationOn_inter_Icc](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/exists-lt-evariationon-inter-icc.md) | 739 | `result-track:5618e70837920e52da7041a3df36ba3aa032bf6949d3e7db2b34962444f95b5f` |
| 56 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-ici-zero-of-filter.md) | 763 | `result-track:e2c04f2f2abdb9168c03484a1234489dfdcff1062718addb779eb007db5f43fd` |
| 57 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/exists-tendsto-left-of-filter.md) | 817 | `result-track:859d0a7b0250c18a98b0f29ab8877eddee7725e4eacb5c7f176cb6ee94959297` |
| 58 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-ico-zero.md) | 839 | `result-track:08ffa5b31ce70bfeb9cf94c3edfc3df5adb001d3c96a85e14250ea5aabc47b66` |
| 59 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-ioc-zero.md) | 856 | `result-track:9554d23eb9294307376477ca736e6b90eeb6809dbc0f4c1adfd9609998567670` |
| 60 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/exists-tendsto-left.md) | 867 | `result-track:02a60bb48b452db5a8a0ee01f3e4390526afaa14590ce987202a26ac8038b76a` |
| 61 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/exists-tendsto-right.md) | 877 | `result-track:2afa427c712fbe2075eb394f1d6dcf4323752edad5144a09f68df5b34f6e0ce7` |
| 62 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-leftlim.md) | 883 | `result-track:ce95108c5948fb9e5dbccda3b4c4badda17e7d09ccf7bd5bc9dac3f16d71a684` |
| 63 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-rightlim.md) | 891 | `result-track:47f597a38daece66bd2483987ee2274f151fae3bc2193895729f0d63fab35b80` |
| 64 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-iic-eq-iio-add-edist.md) | 896 | `result-track:fea6b0bd1fec845146e18157121c961938c59d19180236232dcb3da337ea63d1` |
| 65 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-ici-eq-ioi-add-edist.md) | 912 | `result-track:26b40fae2761529b668e7a0da1d78670bd38f87a1dd1164cd996ac525172a4c1` |
| 66 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-icc-left-source-line-921-occurrence-2.md) | 921 | `result-track:814ab8d9f117ae2fde2b84d5cf211a863ade1ffba483620827d4bfc3e9145e77` |
| 67 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-icc-right-source-line-947-occurrence-2.md) | 947 | `result-track:8b2da0f8e235f7e95909dc19fa1c1401e6025c4bc5ff69cf945db5f1001163c8` |
| 68 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-icc-left.md) | 961 | `result-track:46ef093d663155a8a435c47b8e1c478aaf7429337b35d08a27bf9767a0b8a534` |
| 69 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-icc-right.md) | 982 | `result-track:0cd8c39f86b48e1d7ed2264b06713b8ddc4b92441db7c202bcc07393efe0b6bd` |
| 70 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-icc-zero-left.md) | 996 | `result-track:20bd5fef69373f9ea491cb2c576fc0688647b53981e4eae21e036a00db4c1e8c` |
| 71 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-icc-zero-right.md) | 1021 | `result-track:ffcab41f0c6f7fd7d23d323326a4aaa463f59c004e7b8957becce5f5da504a2c` |
| 72 | `lemma` | [eVariationOn_le_of_mapClusterPt](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-le-of-mapclusterpt.md) | 1035 | `result-track:936412868257b1bd3eb8ac2b3f9db335714a1132599d27257d12b57051439e1f` |
| 73 | `lemma` | [eVariationOn_leftLim_le](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-leftlim-le.md) | 1085 | `result-track:a4c490b06999b997b7e5f28e234158cc1990be6094940c87d5ca0b8ee6d7525c` |
| 74 | `lemma` | [eVariationOn_rightLim_le](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-rightlim-le.md) | 1092 | `result-track:11185d890ca1867beb23c3645244dabd6bf3dcd70cc57eb68fc6f7ed061c7986` |
| 75 | `lemma` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/leftlim.md) | 1099 | `result-track:95b88a61e47c0ca7b8d1d3624a2c0195ac0d57edf3191fd46840228cd0913cfa` |
| 76 | `lemma` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/rightlim.md) | 1103 | `result-track:ffdd2654185c5a3084a49678e560135345bccce7777d9add4df2f8fc5aa22ca4` |
| 77 | `lemma` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/continuouswithinat-leftlim.md) | 1107 | `result-track:d58993e934cdad700875e2327ad0029405eefd88df83e85b7664b1f614979f0d` |
| 78 | `lemma` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/continuouswithinat-rightlim.md) | 1114 | `result-track:11b5b47c4b42917e7736bce5fb105f7a449bdd59d24c916b1b94c0c3ba94d6be` |
| 79 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-ici-zero.md) | 1123 | `result-track:98811c27e178e4bfccb30125013eae39c27b22816e54b9bf306d4c518270705a` |
| 80 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-evariationon-iic-zero.md) | 1131 | `result-track:b6a9ae307985271a803a3b27db646fe688111820f97826fd8ad1a455191307a3` |
| 81 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/exists-tendsto-attop.md) | 1142 | `result-track:3c31c092939ffaef3b6270840a183f4d1e34d8724003744f4e43982f5e9170ec` |
| 82 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/exists-tendsto-atbot.md) | 1151 | `result-track:3ec6a4cf7e834d07e052a2205b23dcfe7cb9bf90cbf09f07f856e9837bdb22f8` |
| 83 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-attop-limunder.md) | 1156 | `result-track:ca2a0c1a4bb7ba857a39922fb0710cacd70ae8eca2a2be893fbba567081e2ccc` |
| 84 | `theorem` | [Bounded Variation Namespaced Public](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/tendsto-atbot-limunder.md) | 1161 | `result-track:d38552b6d8db7c6f7e94154358f4a0f64dc1b410a10b6f1b5d5835f2d76db6a2` |
| 85 | `theorem` | [MonotoneOn.eVariationOn_eq](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/monotoneon-evariationon-eq.md) | 1178 | `result-track:956b929901a628171316129436f0f79b2d7ac78f40b2b4c7c8eab7a6331e776a` |
| 86 | `theorem` | [MonotoneOn.eVariationOn_le](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/monotoneon-evariationon-le.md) | 1202 | `result-track:6304e43cb3a73fee3922866a0883f529fe346af022669a36449e20d83e0c6c99` |
| 87 | `theorem` | [MonotoneOn.locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/monotoneon-locallyboundedvariationon.md) | 1205 | `result-track:975d1fd7212dfc34c813534c7da46718faab7d1d8900d79db833a1037a47940e` |
| 88 | `theorem` | [MonotoneOn.boundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/monotoneon-boundedvariationon.md) | 1209 | `result-track:15c9fe0dce35d3667374b9bce032c188b6f7ee2eb8a4c00d7f59f7c60a5c14c9` |
| 89 | `lemma` | [eVariationOn_id](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-id.md) | 1220 | `result-track:d7717ceee852deca279f7cd04f38058b35abda6f9d9eb25f14e854c102bb84e6` |
| 90 | `lemma` | [eVariationOn_id_Icc](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/evariationon-id-icc.md) | 1226 | `result-track:703f570e702297c4a65e942f3ea5cff5f9935a599c31e3ff0d28ff025c8811fd` |
| 91 | `lemma` | [BoundedVariationOn.id_Icc](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/boundedvariationon-id-icc.md) | 1231 | `result-track:60e5608c031de45fb5be4b7f445376d932d8c7ba070ffebd2edd5e6691071e59` |
| 92 | `theorem` | [LipschitzOnWith.comp_eVariationOn_le](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lipschitzonwith-comp-evariationon-le.md) | 1242 | `result-track:ab59a367b6ec5666ed0e36cab831b070148f6c35d53d881c57034634f031de40` |
| 93 | `theorem` | [LipschitzOnWith.comp_boundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lipschitzonwith-comp-boundedvariationon.md) | 1254 | `result-track:8dce41d4407066704f44471c06adeaafa320ee5ea3ffb146be0537e59ac590f6` |
| 94 | `theorem` | [LipschitzOnWith.comp_locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lipschitzonwith-comp-locallyboundedvariationon.md) | 1259 | `result-track:4a6a02990589fe2a76dd4c7e431b9e116345c38619d65fb74c84fe810441270c` |
| 95 | `theorem` | [LipschitzWith.comp_boundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lipschitzwith-comp-boundedvariationon.md) | 1265 | `result-track:b46097b87c2d365ac9a7da6df917447bfd29c046fefed92d816c386a6b526b64` |
| 96 | `theorem` | [LipschitzWith.comp_locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lipschitzwith-comp-locallyboundedvariationon.md) | 1269 | `result-track:88842d1f2f0414e74580296f89f7e1824aa4bb24939fc451c7ba0d730d6fdfb7` |
| 97 | `theorem` | [LipschitzOnWith.locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lipschitzonwith-locallyboundedvariationon.md) | 1274 | `result-track:a1f5d5910282613e6648566b2e83f64f0fe26cfbad5783d8c4d6481a2caad53a` |
| 98 | `theorem` | [LipschitzWith.locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespacedPublic.lean/declarations/lipschitzwith-locallyboundedvariationon.md) | 1279 | `result-track:f636ac20040afce3e1345cde44fed266b4a457fc23a8c96283100bb6ec6baac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=771e5cc89878909a7c59c73143aa55b59b2dc4547833119cbd2554662971f64f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
