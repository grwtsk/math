# Verification target: GRWTSK.Topology.GeneralTopology.WithTopology.Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "741c30c109eca6aef1ed3a1782bbeaf3d3fd74a6",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `741c30c109eca6aef1ed3a1782bbeaf3d3fd74a6`.

Source path: `GRWTSK/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean.json)

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
| 1 | `lemma` | [ofTopology_toTopology](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/oftopology-totopology--81abecc29336ed3b32871208.md) | 32 | `result-track:81abecc29336ed3b3287120862c2c2eaae76b343a952efdb4bfb3514b690a239` |
| 2 | `lemma` | [toTopology_ofTopology](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/totopology-oftopology--5e8b28b403af6f69cd4987af.md) | 35 | `result-track:5e8b28b403af6f69cd4987af7b11410fd7eb67118b811078cacaa810f63e5810` |
| 3 | `lemma` | [ofTopology_surjective](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/oftopology-surjective--8e84eb12cd801d28b040fdde.md) | 38 | `result-track:8e84eb12cd801d28b040fdde6707feb9148b1282afb3f434ca18c2c6e8c6c91e` |
| 4 | `lemma` | [toTopology_surjective](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/totopology-surjective--89e0f7990c9eb6a8e145d73c.md) | 41 | `result-track:89e0f7990c9eb6a8e145d73c1f24425e1ce20c5c18b6af86f1d818dc081db1ea` |
| 5 | `lemma` | [ofTopology_injective](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/oftopology-injective--f079d965d2e4d2f3819d7994.md) | 44 | `result-track:f079d965d2e4d2f3819d7994b86a2d537ab706aa55ee29f49d55686402104e2e` |
| 6 | `lemma` | [toTopology_injective](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/totopology-injective--2fa8308568c1259fe7d05c02.md) | 47 | `result-track:2fa8308568c1259fe7d05c02b9cd3520924c785bbefa6e4b27553cf922e94e7d` |
| 7 | `lemma` | [ofTopology_bijective](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/oftopology-bijective--22734cbe2facc4c2d824e50f.md) | 50 | `result-track:22734cbe2facc4c2d824e50fcc0ea2367f4691c738c1693b07bee31e8145b51c` |
| 8 | `lemma` | [toTopology_bijective](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/totopology-bijective--1cf1e9fbc9b60b37571efb36.md) | 53 | `result-track:1cf1e9fbc9b60b37571efb36717fea135347d8ba069b2213288e58058fa6bd2f` |
| 9 | `lemma` | [toTopology_inj](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/totopology-inj--e84c64ab04b23ada7de5bda7.md) | 60 | `result-track:e84c64ab04b23ada7de5bda77bc1e9277007c677fd2ccd2072badbf1fc44e2db` |
| 10 | `lemma` | [ofTopology_inj](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/oftopology-inj--87bed27f5e679385e8946a9c.md) | 63 | `result-track:87bed27f5e679385e8946a9c2cdb2549c5ab34193e1099b8178e89bb4da7d714` |
| 11 | `lemma` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/isopen-iff--7416128a562839bd9224161f.md) | 68 | `result-track:7416128a562839bd9224161fd96205db9c2dbea49e9c4f00fa8d5ef72522c2a1` |
| 12 | `lemma` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/isclosed-iff--83fda3c2ea6a9aadbfdc8e9e.md) | 72 | `result-track:83fda3c2ea6a9aadbfdc8e9ecfad918c56fab5ad58cdf59767f19961dca167e9` |
| 13 | `lemma` | [continuous_toTopology](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/continuous-totopology--9cd8e00a2a714ab8d00fdbaa.md) | 77 | `result-track:9cd8e00a2a714ab8d00fdbaa903f5136d3a511fba6133b6919a7357580515d23` |
| 14 | `lemma` | [continuous_ofTopology](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/continuous-oftopology--2b10356d74651eb35cb86c3b.md) | 81 | `result-track:2b10356d74651eb35cb86c3b700d2730ffc9d2baede200a43a299616ce6de65b` |
| 15 | `lemma` | [image_ofTopology](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/image-oftopology--ae5e7ab54c445ace2027c9e3.md) | 88 | `result-track:ae5e7ab54c445ace2027c9e33be663fd1777ebcb799d2c799c38e2dbd9e00fd9` |
| 16 | `lemma` | [preimage_toTopology](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/preimage-totopology--581c806c0564a15bdf74480e.md) | 91 | `result-track:581c806c0564a15bdf74480ed40928ecfa0aea9f02b0b2d19da5565781db0374` |
| 17 | `lemma` | [image_toTopology](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/image-totopology--deed3aa30871ad08834d2a03.md) | 94 | `result-track:deed3aa30871ad08834d2a035ef32fdb80806bac185dc4ad53a49fb14b940eef` |
| 18 | `lemma` | [preimage_ofTopology](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/preimage-oftopology--5a2b7f64eb7c023e031a1748.md) | 97 | `result-track:5a2b7f64eb7c023e031a174882c77ce852e6ba6b9b896272ccdf39832ca4334b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--1f551b9883bc6474cbb55402.md) | 106 | `declaration-track:1f551b9883bc6474cbb554028bfd390ce19cbb1dffd89533b8b062d94a4d8d54` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--1a3231fad52f641956a4d1e4.md) | 109 | `declaration-track:1a3231fad52f641956a4d1e4d895a344d260645e80ad9b1a2b3a462648f055f9` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--f29803b3183ab84cc4580aa7.md) | 112 | `declaration-track:f29803b3183ab84cc4580aa7d7c573552dc346f6a36148f6a2ebe295bc7e7025` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--b8fb5089b7a5183fe10d82aa.md) | 115 | `declaration-track:b8fb5089b7a5183fe10d82aaab365a468e28275ce64646420a9d9bc23c31b582` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--ce511a049a0bb67877c16f8c.md) | 117 | `declaration-track:ce511a049a0bb67877c16f8cd3e742d474f6295111337efe03b006d9ab51a8fe` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--1cbda887ed797676b14470ba.md) | 119 | `declaration-track:1cbda887ed797676b14470bac08dcc69520e1741383e7b5c6439db7fa6caeca1` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--1b62a2940914bb12b84580f7.md) | 121 | `declaration-track:1b62a2940914bb12b84580f70373937046ad6f3af7ff4830650eac2f0f7d7116` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--0d5ab5082a5234c6bdf90548.md) | 126 | `declaration-track:0d5ab5082a5234c6bdf90548f7659116f53d4535145a755f7e3024a90ddc1835` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--cfef38065610a687841d7915.md) | 129 | `declaration-track:cfef38065610a687841d7915980d0cf108f1195822d7ae842f0d81631fb648d9` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--1640352245868fc1592689de.md) | 133 | `declaration-track:1640352245868fc1592689dec0d266dc367ce26fc8bc0760e8e1870cd2c1f9b9` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--c2ad9d07288ae5ba51a869d4.md) | 137 | `declaration-track:c2ad9d07288ae5ba51a869d463727085b45b7521bcc47de4a94664ffb8e18dfd` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--3ea2366712d3d6d0a0da2e4c.md) | 140 | `declaration-track:3ea2366712d3d6d0a0da2e4cd86f13451f0e5764eef284123af8d7c7382295ac` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--584258d4d1bc4ee672adb7ef.md) | 143 | `declaration-track:584258d4d1bc4ee672adb7efaeef878afeca70df11de2d6a8d6d19e5e46ccf50` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--5ff0e279150dcf8ffc428e18.md) | 147 | `declaration-track:5ff0e279150dcf8ffc428e1812d856f895c42681d8377bfaef2679953fe91f54` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--74427b3cebc97be8dbc6e463.md) | 151 | `declaration-track:74427b3cebc97be8dbc6e463a94db11dd197cde1313820f178a4262f1f76ca16` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--6461490cd692027255cda972.md) | 154 | `declaration-track:6461490cd692027255cda972d314cea9dc1f7cbd5f0dcaab446b4936633ffd6c` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--c31583224522f3812a31d022.md) | 156 | `declaration-track:c31583224522f3812a31d022b06decfa9c1e8fe25e2aa9ee135036bb5478973f` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--1bed7cee7b5356dd74e2511b.md) | 159 | `declaration-track:1bed7cee7b5356dd74e2511ba4846f21b56196ffd03fd2a2c744918f6cc32657` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTopology/Variantd53f049632eb89bb7703ea814cf06fb88f5ad2adfb4b1f3c34e8af4c498aaa8e.lean/declarations/instance--8544622a073d4a3f223c93cb.md) | 162 | `declaration-track:8544622a073d4a3f223c93cbeffa6e50350e069bfe3dd710987444d62221a81f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
