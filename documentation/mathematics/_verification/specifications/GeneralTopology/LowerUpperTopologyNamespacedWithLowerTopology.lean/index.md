# Verification target: Lower Upper Topology Namespaced With Lower Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bc14241f5b982e12a0e298db13243f055e059b5",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/index.md) · [Full source](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bc14241f5b982e12a0e298db13243f055e059b5`.

Source path: `GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithLowerTopology](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/withlowertopology.md) | 71 | `declaration-track:b6ff5e2819154a28143fa4b2f1d5cd552b426dbc2dd17e7ed0c3d70d0ca1bd5a` |
| 2 | `def` | [toLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/tolower.md) | 80 | `declaration-track:8d3dc47c3b0c22018bd67e5e34b84b62ca545170f89580fa5cda45659f203395` |
| 3 | `def` | [ofLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/oflower.md) | 85 | `declaration-track:f54d9ae3d597c769005bea3cfb51259f74765721bb8eb471f8ba1677ab33ad17` |
| 4 | `theorem` | [to_withLowerTopology_symm_eq](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/to-withlowertopology-symm-eq.md) | 89 | `result-track:e3cf6146bf1be500fadb5c00b2051575fcfe79ba800e49ea1238209a9d883d88` |
| 5 | `theorem` | [of_withLowerTopology_symm_eq](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/of-withlowertopology-symm-eq.md) | 94 | `result-track:08208a4114be69b823f60b9a6a0f3f99be6c84f0ee1aef643eb9a63c9c4b2178` |
| 6 | `theorem` | [toLower_ofLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/tolower-oflower.md) | 99 | `result-track:48610ebc0601024231353ec5e4932e5119c616693c1b06033fa3019ce16dc454` |
| 7 | `theorem` | [ofLower_toLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/oflower-tolower.md) | 104 | `result-track:87420dc821fcc6fa14fa3d554a7f6195c28b8f89006189f2ddee3f64b0fb5ba6` |
| 8 | `theorem` | [toLower_inj](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/tolower-inj.md) | 109 | `result-track:15519305a8c6c26da9151d641c7c6b3947aa6f2a8a6779cf7312b2bb8372b88d` |
| 9 | `theorem` | [ofLower_inj](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/oflower-inj.md) | 114 | `result-track:ffcf5ec599cf73bcc5ebd6b25cf44c85e8ae4089e1531fb3c4410b5fdd62b4a7` |
| 10 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/rec-source-edition-2.md) | 119 | `declaration-track:6633568a3e7a83b548a9c20fb37e2209a89ad064bbab08c05627c041ffbb5e06` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-10.md) | 123 | `declaration-track:ae28e570157e26cd00dda3e4050545016102c61d636a0b91c82cad4e64fb8c6f` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-2.md) | 126 | `declaration-track:0e47921ded3fb0c8c2615ac4b3d1f353aa7644b9afe1446788a38f3daebcb29b` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-15.md) | 131 | `declaration-track:fb8dd9de1c872eb54f2167300c778328434e602c5054e693fdb7a7975bcfb78d` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-4.md) | 134 | `declaration-track:407eca8cfed26defc1986456f638cb99a510cefee0b6ef4306b476fc6d97d8b6` |
| 15 | `theorem` | [isOpen_preimage_ofLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isopen-preimage-oflower.md) | 137 | `result-track:fc3632fee4ee50e8470df7d526e3e791a43a64b613d83bbab122d0fdba8bf0d2` |
| 16 | `theorem` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isopen-def.md) | 143 | `result-track:943219825777cef6c15e2f94032957d15f178753b3a3ee2db8a4dc6899b6472a` |
| 17 | `def` | [WithUpperTopology](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/withuppertopology.md) | 158 | `declaration-track:77cba920f4a144a81d32ca881b5554f338c552e5c4b0d656916e16694e24e8d9` |
| 18 | `def` | [toUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/toupper.md) | 166 | `declaration-track:fd561de8d225151b5044da01d6d8f219c7355e229213325c8dc38019238ed29d` |
| 19 | `def` | [ofUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/ofupper.md) | 170 | `declaration-track:66c0123195596322d8c7bafa860390d084513fac7b991fe0a614147c1acee836` |
| 20 | `theorem` | [to_withUpperTopology_symm_eq](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/to-withuppertopology-symm-eq.md) | 173 | `result-track:fe35c27cf86925b3d98dc5a0113633e16e1ef3806e1dedc892f94d7cd1e5c201` |
| 21 | `theorem` | [of_withUpperTopology_symm_eq](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/of-withuppertopology-symm-eq.md) | 177 | `result-track:2fb1e621f76faef81fe0b7d5753e1c2d4226944939565f04e8ed1b66dbe7c731` |
| 22 | `theorem` | [toUpper_ofUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/toupper-ofupper.md) | 181 | `result-track:8a88edc73c4da841edf325e4c69c5d5c218ae0bed975bb12c20555671e256e52` |
| 23 | `theorem` | [ofUpper_toUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/ofupper-toupper.md) | 185 | `result-track:9397ca9196b11a039b00a52d1e68d71706337e121c9a4a5a0292e35b7be4eb8f` |
| 24 | `theorem` | [toUpper_inj](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/toupper-inj.md) | 188 | `result-track:f01058b2eecc8e0e849608150ad65d1232022762694f80625cb65d5f3bfacae3` |
| 25 | `theorem` | [ofUpper_inj](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/ofupper-inj.md) | 191 | `result-track:deb442ca26afc8651406f729c7b2388912ab0e83d0963fd3f5431417d5671d74` |
| 26 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/rec.md) | 195 | `declaration-track:62deeadbb8c9057bea884d142424c52be965f95992e3bf56517dc07460b23c56` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-11.md) | 198 | `declaration-track:be117b142a9287b26fbb5f15204da9021e0fab0ef3d88ef16858f64b8c542e97` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-16.md) | 201 | `declaration-track:fe82b6a2859536036925fad6118414eddca2c9f4d1c62e1b54c851891ef5ab11` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-6.md) | 206 | `declaration-track:649e9c36f2cfaa7fe2e373d48e53a957397f645d048aaf526849522a09709b80` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-12.md) | 209 | `declaration-track:d9ab34936b9935531771bbcebc9f9bb9ac2d23947e6f148ff35dc8cf7675d62b` |
| 31 | `theorem` | [isOpen_preimage_ofUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isopen-preimage-ofupper.md) | 212 | `result-track:44f6637463e9a0e9b3892dfb2bffef475ad6314006a240b4e7e1ff47ae0681b5` |
| 32 | `theorem` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isopen-def-source-edition-2.md) | 217 | `result-track:b042a79c3b658a5bc3dc2f1da070fcad98173263d66b7107df84b7dbfcf3612d` |
| 33 | `class` | [LowerTopology](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/lowertopology.md) | 230 | `declaration-track:e4363872f3c2c92f5c793bcffdc86bec960d02d82f4cdec3dc170b5d86bb5d37` |
| 34 | `class` | [UpperTopology](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/uppertopology.md) | 238 | `declaration-track:b0aa38de025f44be05bc386fda01fb5dd8fa16f4331f8217cc17338469533c2e` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-9.md) | 241 | `declaration-track:a79d7d53082fd9c6eca32245a2c8e3b1622e465c67d34e8a3d993e0c084439c4` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-5.md) | 244 | `declaration-track:4ee80c69960be05deb9f9312b8f7687a782fc884a67c3a32c7fec148b4fd3274` |
| 37 | `def` | [toOrderDualHomeomorph](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/toorderdualhomeomorph.md) | 247 | `declaration-track:8971531564d84e6e820d67b0686e3889e8ef0c9622148d2ed8c2ec8a9bbae0b0` |
| 38 | `def` | [lowerBasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/lowerbasis.md) | 259 | `declaration-track:52a85b0e34e40f24f78437220d6c26e965e9a9dab7deb27aeb3552bd870d64ed` |
| 39 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/topology-eq-source-edition-2.md) | 268 | `result-track:cd0cfce6dc4649e68e52395073563414c3b7cf7165b27ac58531074ea81a4f88` |
| 40 | `def` | [withLowerTopologyHomeomorph](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/withlowertopologyhomeomorph.md) | 274 | `declaration-track:61fdd6a38ec99b1204fce7a13339ae534b7091d6fb7a1eec2a2f12b3ea479d1b` |
| 41 | `theorem` | [isOpen_iff_generate_Ici_compl](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isopen-iff-generate-ici-compl.md) | 278 | `result-track:eda0c9ffa6bcdbccd0272b60d956050ac7dcc55d1fc81f3117ba3f20b0897c0c` |
| 42 | `instance` | [instUpperTopologyDual](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instuppertopologydual.md) | 282 | `declaration-track:465ff0c7bb9af402c28e7f4ce48d96160cdc4a659ff7155e0ed03a8cf4a1ad92` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-13.md) | 287 | `declaration-track:e7ef749b90c6021b4e28d2eb2895e782111cd71990e930bbcb4ad354feeed871` |
| 44 | `theorem` | [isClosed_upperClosure](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isclosed-upperclosure.md) | 295 | `result-track:8f53f01dc8cf31c04f0d6fb5f1620cfe47e4c4ef245341cb578aa2e865880cc9` |
| 45 | `theorem` | [isLowerSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/islowerset-of-isopen.md) | 301 | `result-track:636da789d94dc6c226685856cf1c80a585ad4b5e96ddc91dd5fde3fb3edcb105` |
| 46 | `theorem` | [isUpperSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isupperset-of-isclosed.md) | 311 | `result-track:a982975bb4876440eeabcfbc02366a9fd602ee0cf0343a34aac0c4aa9ef9069b` |
| 47 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/closure-singleton.md) | 320 | `result-track:ad3a6e9351148799bb78ceedf5a87e32a54497c43fc30e7b831346fe0ec0fa40` |
| 48 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/istopologicalbasis-source-edition-2.md) | 325 | `result-track:a3a419b20d5dc1eca4201196a7fc7336f334590222e4c81ebf5f62593e2cdb2f` |
| 49 | `lemma` | [continuous_of_Ici](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/continuous-of-ici.md) | 344 | `result-track:0fb5786dbb8d8e675f18b908996f5ce3b52c1ccafdb6f9ca23c101f0a30f4ba1` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-7.md) | 359 | `declaration-track:6a9fb06b13406950cf714420842dc099d6bb6f455130646ab9c79816719d1b5a` |
| 51 | `def` | [upperBasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/upperbasis.md) | 372 | `declaration-track:95f161e84c571ff7be4638a0d1c09fc82620c610e32074d222cd45e6e00e7cbd` |
| 52 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/topology-eq.md) | 380 | `result-track:1cd2f67182a6cca8af2e0fb6b9b1639f1ca5f99a399528a79af6c955cb7a2a52` |
| 53 | `def` | [withUpperTopologyHomeomorph](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/withuppertopologyhomeomorph.md) | 386 | `declaration-track:4e02c2b916b6ac1e49f8359c777b8ee011dfac91032a29a35e4da58e11e50512` |
| 54 | `theorem` | [isOpen_iff_generate_Iic_compl](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isopen-iff-generate-iic-compl.md) | 389 | `result-track:37d8337af690125b975952e978e0375ca0ec70462af7921b9d3ffcc2e154ba89` |
| 55 | `instance` | [instLowerTopologyDual](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instlowertopologydual.md) | 392 | `declaration-track:1bc23a5a09e10eabd3bf03eca110530f1fd5067a85d49360c6511542f8f1c60a` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-14.md) | 397 | `declaration-track:ee58f33bb6755589bf1a8653942c79ebedd3a7d1c186090265cd1ed64ddcc95b` |
| 57 | `theorem` | [isClosed_lowerClosure](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isclosed-lowerclosure.md) | 401 | `result-track:1b2050ab9f0fba4b22f49c74c0fba9c00c0411cadffed5020a538586a4e3eac8` |
| 58 | `theorem` | [isUpperSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/isupperset-of-isopen.md) | 405 | `result-track:2191bc2b89f59e0368c127b3fa3f74cd8debfb584afd7c893562144f89959340` |
| 59 | `theorem` | [isLowerSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/islowerset-of-isclosed.md) | 408 | `result-track:519778ed9787b8ddea8b4d79764b6bed899e2eab9d059fb0bee7ae3d2faade84` |
| 60 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/closure-singleton-source-edition-2.md) | 416 | `result-track:e535d7e3b6c123288b1ba2aba8e1d985deee2076f237a865baf299b4fc9912e2` |
| 61 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/istopologicalbasis.md) | 419 | `result-track:81cb1bcfeb8de7567f34bf828ef5c09b505ab9e79e8174cfde6870393898cd85` |
| 62 | `lemma` | [continuous_of_Iic](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/continuous-of-iic.md) | 426 | `result-track:8d8620b0a653dd4f1ef8db77aeda0fc40302295fdd2604ebf49fbb5b4b413f63` |
| 63 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance.md) | 439 | `declaration-track:0d6064e75149aca085c3498de8430a188e02e88f93a5f8c19378f08340389bc3` |
| 64 | `instance` | [instLowerTopologyProd](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instlowertopologyprod.md) | 446 | `declaration-track:3daa9c3b7ac299cbda9e286b33fa499ef7c7bdffb8e54fc793518b989f39e452` |
| 65 | `instance` | [instUpperTopologyProd](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instuppertopologyprod.md) | 463 | `declaration-track:14d1f98b9e133a7265eb104c41f46718f7fda3b6c42b5926f4f6d8428aca50f6` |
| 66 | `theorem` | [sInfHom.continuous](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/sinfhom-continuous.md) | 475 | `result-track:10621388d69c84180d4562bb2781371c92249b99fb0981341e9bc212e19be327` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-3.md) | 485 | `declaration-track:25dc13a1cf32c7e5dc73287cd8b2be60e7313aaa2015c9f8405150297d335b11` |
| 68 | `theorem` | [sSupHom.continuous](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/ssuphom-continuous.md) | 496 | `result-track:12c2f8e5ab4611915431034186dda6a9cfaeb5c4ba4d5293088f8c8eb874e5da` |
| 69 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/instance-source-edition-8.md) | 500 | `declaration-track:a747b83c0b17c07ebf8b17d89cb5faac0c52a691b9948c3921b335651ccb72a2` |
| 70 | `lemma` | [UpperDual_iff_Lower](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/upperdual-iff-lower.md) | 505 | `result-track:1a7d0e4e253f8a8303388c38a3b5eb11eabe7a2a880b7404150d0ca722d0f0a7` |
| 71 | `lemma` | [LowerDual_iff_Upper](../../../../GeneralTopology/LowerUpperTopologyNamespacedWithLowerTopology.lean/declarations/lowerdual-iff-upper.md) | 511 | `result-track:49af2b23d0cf0d6f78242f064da3fbcbf06dfe294681bd3c53e3aa684099ae7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b59d53a546e163ffcfdea668707bad580dbee0592720fbf42228a2f8ebded0d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
