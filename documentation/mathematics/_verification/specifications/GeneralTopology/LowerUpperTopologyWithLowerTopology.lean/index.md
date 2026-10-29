# Verification target: Lower Upper Topology With Lower Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3353e08d41684890bae199a04f9db4f0f84fcb57",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/index.md) · [Full source](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3353e08d41684890bae199a04f9db4f0f84fcb57`.

Source path: `GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithLowerTopology](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/withlowertopology.md) | 63 | `declaration-track:701d9a178e1a80941729f3ef658871fbb337effa5f8babfb50139cd1524b82a2` |
| 2 | `def` | [toLower](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/tolower.md) | 72 | `declaration-track:7d2a16b64dbb073f3e4c774757c26acbe04c62a407ff7df406f7dd269602a3eb` |
| 3 | `def` | [ofLower](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/oflower.md) | 77 | `declaration-track:24f395d4058f1a50ce872d2badf2ca76888d5fe13bc40d6307e152054aada446` |
| 4 | `theorem` | [to_withLowerTopology_symm_eq](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/to-withlowertopology-symm-eq.md) | 81 | `result-track:407ef039c67a443a6c0116f091ba26d66dbcaf889efb08db97f7650d8b6b8df6` |
| 5 | `theorem` | [of_withLowerTopology_symm_eq](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/of-withlowertopology-symm-eq.md) | 86 | `result-track:63cf1bbf667167d813a88f03cd6aaa7018ee32607aafab4ac33eed3081afd731` |
| 6 | `theorem` | [toLower_ofLower](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/tolower-oflower.md) | 91 | `result-track:89f8ed628542ba346bf1b6f5f269526ca37adc1ae44ee5dc7e0bc6286eb0352b` |
| 7 | `theorem` | [ofLower_toLower](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/oflower-tolower.md) | 96 | `result-track:7f10247f8a28b0d4446386e1aeb4cc54a09cbab8d064ed5b11e75b09aea5be2d` |
| 8 | `theorem` | [toLower_inj](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/tolower-inj.md) | 101 | `result-track:ea6cd7953dad8c50025c180e4bd5f55674f294e3dacd0160660bddf41dc28b8b` |
| 9 | `theorem` | [ofLower_inj](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/oflower-inj.md) | 106 | `result-track:4f87443a390cf6d6761eb6669715be4b5fff65b1c421e17b2365583de3273aba` |
| 10 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/rec-source-edition-2.md) | 111 | `declaration-track:3cba44808e413d41ce3ada35e769358222ed98b98d9853b5aa1521b289d816a8` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-4.md) | 115 | `declaration-track:217d6114b903d03a08c1adef2c53d6749c890d87157af33f620421cc1dacd35d` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:09c23ea27ef3be28987f745e892debadc3afa66bedbb6529d48404869976d151` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-7.md) | 123 | `declaration-track:2fcd2af0e9a6b27e5c53c77f48df219a69aae513b36d80ffb9394c652b4b08c9` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-11.md) | 126 | `declaration-track:62ec01dd0ad642d362f10b3b8cac350ff0d71656f4cff95535e39d663682c95e` |
| 15 | `theorem` | [isOpen_preimage_ofLower](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isopen-preimage-oflower.md) | 129 | `result-track:60651319bef8b9aad724684b0f9ff93b280caa942e7d3369b4d6ac290d537de4` |
| 16 | `theorem` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isopen-def-source-edition-2.md) | 135 | `result-track:6a4ff29d74b1e2216bf1df4dde7f52a7a6c75b70a4f730ddac26fc56fb59086d` |
| 17 | `def` | [WithUpperTopology](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/withuppertopology.md) | 150 | `declaration-track:ae420f924fb299497121d6444a2f7f630f583292aea4d001031566a9c68c3bf6` |
| 18 | `def` | [toUpper](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/toupper.md) | 158 | `declaration-track:b6f182626e9e4a9fcb036ecfcab6d9f3cb5327e689be2167cb5d1195a21b7279` |
| 19 | `def` | [ofUpper](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/ofupper.md) | 162 | `declaration-track:b4b000f9fae521a5d0ecc5ce53c189389b3e3beeead213e98793aac370c6be1f` |
| 20 | `theorem` | [to_withUpperTopology_symm_eq](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/to-withuppertopology-symm-eq.md) | 165 | `result-track:99046353d5edbc72717b529bc5a2818de99fd568fd770d0285cd83e17cc5e57f` |
| 21 | `theorem` | [of_withUpperTopology_symm_eq](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/of-withuppertopology-symm-eq.md) | 169 | `result-track:f66e3384e56641c944c01ff87d9b5a05daee0975a84ff7aaf3f084381482ad80` |
| 22 | `theorem` | [toUpper_ofUpper](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/toupper-ofupper.md) | 173 | `result-track:28a2eb53497d51192b12977ad38ecf99c0c1e64f23c58379901108ddec492d76` |
| 23 | `theorem` | [ofUpper_toUpper](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/ofupper-toupper.md) | 177 | `result-track:50a99568c33dbedbbc8124e5b06697655b6f9c987f28167b0a03ae8a6a6f18c5` |
| 24 | `theorem` | [toUpper_inj](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/toupper-inj.md) | 180 | `result-track:46940f3c99ab5b72ddd025093cf960a7811ac48c627b7d5749d03ce7c973b530` |
| 25 | `theorem` | [ofUpper_inj](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/ofupper-inj.md) | 183 | `result-track:976219fd75a334f61af708df1773d5a97ebfb783d273fa862c128efd5b666baa` |
| 26 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/rec.md) | 187 | `declaration-track:064dd2ab9442a5d15c0075230e4f17f3f425882ecb5019cb2fb0d76099d5b825` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-5.md) | 190 | `declaration-track:266ed60b6d3cb06a5dceacbba16892d671b6373890998688a21d1780359a82c6` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-12.md) | 193 | `declaration-track:8c16c45024f5c47c19bf912b370ecc4e56ab6dfd3cf62483ff73f712407e2b11` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance.md) | 198 | `declaration-track:003eaaf874ff9defef376f6a42a2c9000f21acc16f050ece26c1e044d396bb95` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-10.md) | 201 | `declaration-track:4496f5bcc7ae212e9f4e36c13beec987f280685309ebaac685e4a7007cdd8ec0` |
| 31 | `theorem` | [isOpen_preimage_ofUpper](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isopen-preimage-ofupper.md) | 204 | `result-track:4cec191d44439f454b86585e0dfb4038558fbe85040a922d865957d0636cb859` |
| 32 | `theorem` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isopen-def.md) | 209 | `result-track:05bbb0675fd82726e05d04df3b2092a6d69f4c8baf8f166d44428d725263c36c` |
| 33 | `class` | [LowerTopology](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/lowertopology.md) | 222 | `declaration-track:8be24082e78f71f187e74788815b32d5603becfb00da9d20aefcaf06424b8c7f` |
| 34 | `class` | [UpperTopology](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/uppertopology.md) | 230 | `declaration-track:49b399d22a7b6d80ce986b4ff814db9c609882e5107f259667178eca0dd7fabd` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-9.md) | 233 | `declaration-track:3e831209400a9d734149f253e0522552c06f3b4c40f3794ae82a09762a256737` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-13.md) | 236 | `declaration-track:af8a4d2a28eb58bf309c52c0f403a36d6dceedb460c45f5890679f14c481d20a` |
| 37 | `def` | [toOrderDualHomeomorph](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/toorderdualhomeomorph.md) | 239 | `declaration-track:c49ba9714547eb5dc34fabea547dd0a8ae252ab2349598cb4339051f810ee2dd` |
| 38 | `def` | [lowerBasis](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/lowerbasis.md) | 251 | `declaration-track:4c4486fa56d59f876ad692420d8404fe56edc21c169ed4e10f8d5057e3329abd` |
| 39 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/topology-eq-source-edition-2.md) | 260 | `result-track:ef1011ba893f1698ba01609a2be3dc478c95587628b3ff01c39200c2b1d1fd08` |
| 40 | `def` | [withLowerTopologyHomeomorph](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/withlowertopologyhomeomorph.md) | 266 | `declaration-track:e84c5a6e2c721e4e5235244c089faf507928445165003fb86c2ebba77d621318` |
| 41 | `theorem` | [isOpen_iff_generate_Ici_compl](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isopen-iff-generate-ici-compl.md) | 270 | `result-track:0b9be53906ac3511ed53eab770242412c346728fefc3a9d9ca9a2fbda57f4bc6` |
| 42 | `instance` | [instUpperTopologyDual](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instuppertopologydual.md) | 274 | `declaration-track:ed873c6cd8f39ee12212faa20dc2f3ed3b4eacef6f173790ba5d87a9dd9eeb2c` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-14.md) | 279 | `declaration-track:b322b24ec7ce46ebb1667b75ea1f4e7bc3813c0128dfa0823175e0a25201cc3d` |
| 44 | `theorem` | [isClosed_upperClosure](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isclosed-upperclosure.md) | 287 | `result-track:d835365d3f5aca0bb0535d143bc04ce355a293031e70294967681f76d68af48c` |
| 45 | `theorem` | [isLowerSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/islowerset-of-isopen.md) | 293 | `result-track:c71dae4685626f3c4ee0fb108d0d13a1855ced43b3fedc824e7f57cbb9498547` |
| 46 | `theorem` | [isUpperSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isupperset-of-isclosed.md) | 303 | `result-track:a9e2acb9c41b4706287926558b8e92e3b549026e151f2cbcf67ddbf025262524` |
| 47 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/closure-singleton-source-edition-2.md) | 312 | `result-track:5af29bea91d91d0bb93030d39d9568c383378b8e22ec56917af254481588c07e` |
| 48 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/istopologicalbasis-source-edition-2.md) | 317 | `result-track:74e9d143c336a173f94d9b5be1d5f737519cba89850de05d14fd36434b216f46` |
| 49 | `lemma` | [continuous_of_Ici](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/continuous-of-ici.md) | 336 | `result-track:86c29475e3fd52e4cbb7b2f9fd0397574b7c6decf02c3d5cee56d62eb661d181` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-3.md) | 351 | `declaration-track:14158af13abdcbb0d69e065d11fd40d019262c32d911b9198fee47216be2169e` |
| 51 | `def` | [upperBasis](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/upperbasis.md) | 364 | `declaration-track:5770ebbe47df4ae13550bb81f3eb1dbbc93ba8625211eba5253abfc81d67100a` |
| 52 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/topology-eq.md) | 372 | `result-track:20ddc5209918114ebeddb66963425464dace396a0aa5ff9053fa3c44e4c40215` |
| 53 | `def` | [withUpperTopologyHomeomorph](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/withuppertopologyhomeomorph.md) | 378 | `declaration-track:cb3d08b49872829a2bdcfaf6d440209c7259c1937bbf7bdf07effd4b72df26d1` |
| 54 | `theorem` | [isOpen_iff_generate_Iic_compl](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isopen-iff-generate-iic-compl.md) | 381 | `result-track:1588b9881cd56671d74d179de1bec5636a0ea8ef4bfda1c9d566f1891ac1e557` |
| 55 | `instance` | [instLowerTopologyDual](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instlowertopologydual.md) | 384 | `declaration-track:1dd5b36854f393215e2e390288544a3729eb950d9165bfef5af1e7438f7973d1` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-8.md) | 389 | `declaration-track:34f452c4048c41e28bd56971f600769e423c634042351cad1efdefec92661051` |
| 57 | `theorem` | [isClosed_lowerClosure](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isclosed-lowerclosure.md) | 393 | `result-track:91d0a79df2dbc9953372f3bcfec7579b808da5a1058906446c3bb32bbc09873f` |
| 58 | `theorem` | [isUpperSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/isupperset-of-isopen.md) | 397 | `result-track:f0e0c742d520359f9b9bf96ac6f6084b731c142c6aa67fcc7ca1533399edafa7` |
| 59 | `theorem` | [isLowerSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/islowerset-of-isclosed.md) | 400 | `result-track:e363f2dd9365a60c5ab2c47531eeeb3630a8e180f62e76b1d604e3459ad09bce` |
| 60 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/closure-singleton.md) | 408 | `result-track:4231a3251758d999e1dc5b6fd224b342b5844c1241e0a0875d303a71a9cd7607` |
| 61 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/istopologicalbasis.md) | 411 | `result-track:585e4ad4adecf53a61e957b322cdfb722570a3f6ec33af51245afa65526b8354` |
| 62 | `lemma` | [continuous_of_Iic](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/continuous-of-iic.md) | 418 | `result-track:79f6beca0de4fb8755b4d867e3f06bdd39307796208669058d228d050d2ca45d` |
| 63 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-15.md) | 431 | `declaration-track:c5a76ca627952cb14fa1062b4134e8201243c43c5675585b9542a48f24614936` |
| 64 | `instance` | [instLowerTopologyProd](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instlowertopologyprod.md) | 438 | `declaration-track:1bdcb5635488085a5fdfe7d5faaefd1f8f1ce54782a8f1f5edadf26d0ada4c04` |
| 65 | `instance` | [instUpperTopologyProd](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instuppertopologyprod.md) | 455 | `declaration-track:a5d503b3e08533562b0328bc018d78a2cb805250b4647370e46016baeab4891d` |
| 66 | `theorem` | [sInfHom.continuous](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/sinfhom-continuous.md) | 467 | `result-track:5fe8fbf9fa62dbed79a639a3588473f7ef80028d64ffb38fa360c4bdfd8ded78` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-6.md) | 477 | `declaration-track:295bda8676858163f4f030e8e2082bb4e534bce6054b1c8035d9a4faa399b5d5` |
| 68 | `theorem` | [sSupHom.continuous](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/ssuphom-continuous.md) | 488 | `result-track:cfb662a585afefd6675d6f0d49d14ca85ee7c232877fb80b3d657c64bc166dfa` |
| 69 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/instance-source-edition-16.md) | 492 | `declaration-track:d1fdf540ba60fd8b888ed5ec7984cd4c17ef115ed62ff046c9f3fdf83017317d` |
| 70 | `lemma` | [UpperDual_iff_Lower](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/upperdual-iff-lower.md) | 497 | `result-track:4f9f240b78cba02d4ef9e77ebc3b0644c90b14906199061179b27c0c236c753a` |
| 71 | `lemma` | [LowerDual_iff_Upper](../../../../GeneralTopology/LowerUpperTopologyWithLowerTopology.lean/declarations/lowerdual-iff-upper.md) | 503 | `result-track:f1fba8db86f8be3455e1f6a57fbacdaf7ab60ca23647659a5dc3a699e0a31d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0c7a8aa1bfcbf351ab40a987a990ed4fc040c0774a562eff6a0731c99f6bb6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LowerUpperTopology/Variant0d0559a7f1418066f2bebd7b0dc4382955e3d17fea4aabc0dbb1f15b97f61bb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
