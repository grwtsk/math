# Verification target: GRWTSK.Topology.GeneralTopology.ScottTopology.Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8db7f5e2b621ae27669acbf50fa85b7473b59e1",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8db7f5e2b621ae27669acbf50fa85b7473b59e1`.

Source path: `GRWTSK/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean.json)

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
| 1 | `def` | [scottHausdorff](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/scotthausdorff--f319300822033fdf4356c578.md) | 89 | `declaration-track:f319300822033fdf4356c578dc330e1417aa8c2668d6be72460e584366d8e9c1` |
| 2 | `class` | [IsScottHausdorff](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isscotthausdorff--4deaa2a0b483d846e5878ce0.md) | 109 | `declaration-track:4deaa2a0b483d846e5878ce0a81583a538e0877338506c733ad3e69da4a594bc` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--190f3032ac2023a45b48fe63.md) | 112 | `declaration-track:190f3032ac2023a45b48fe6303f09796f67ec2ddeb2c8f5c6d7ec3395982b00e` |
| 4 | `lemma` | [topology_eq](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/topology-eq--3d194da00adb60c5a13712b9.md) | 124 | `result-track:3d194da00adb60c5a13712b91203d41a6933bf36a262a450c293f4cf3b02c294` |
| 5 | `lemma` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-iff--d4eb84a5c48b6ebc3f0a93ae.md) | 126 | `result-track:d4eb84a5c48b6ebc3f0a93ae2b04f382cc31d558a7c68e0011012ef7923aa44e` |
| 6 | `lemma` | [dirSupInaccOn_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/dirsupinaccon-of-isopen--8b65fb2692dcc3081a7354a8.md) | 131 | `result-track:8b65fb2692dcc3081a7354a85f27228ebbfde2f2dc9e2fc1388477fa5fad651c` |
| 7 | `lemma` | [dirSupClosedOn_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/dirsupclosedon-of-isclosed--6f963ca4797294b56fe5721e.md) | 134 | `result-track:6f963ca4797294b56fe5721e56e330123f143cc1eec20f843b518593b30afb8d` |
| 8 | `theorem` | [isOpen_iff_dirSupInaccOn](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-iff-dirsupinaccon--3a47c3f78e5a0969499619ae.md) | 137 | `result-track:3a47c3f78e5a0969499619ae8d4f11ec3f1faed7f00ba45ccb5b2ce7cb35b4ab` |
| 9 | `theorem` | [isClosed_iff_dirSupClosedOn](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isclosed-iff-dirsupclosedon--7b9374f3be15ee1442627917.md) | 140 | `result-track:7b9374f3be15ee144262791757332e635eb9bbc80c41435ceadb46b8e4be93a6` |
| 10 | `theorem` | [isOpen_of_isLowerSet](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-of-islowerset--2784d5e404787cc62049c9c6.md) | 143 | `result-track:2784d5e404787cc62049c9c61f5df9634fce37fcf22d125d0746faa0340a3564` |
| 11 | `theorem` | [isClosed_of_isUpperSet](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isclosed-of-isupperset--b55f1813a5535b631f253c0b.md) | 146 | `result-track:b55f1813a5535b631f253c0b0a406fd9498607ea65a57514ca21daacd6de8533` |
| 12 | `theorem` | [isOpen_iff_dirSupInacc](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-iff-dirsupinacc--e753844c0209718fefbe57ad.md) | 155 | `result-track:e753844c0209718fefbe57ad49db60643654cd1c2ae13529565ac81c214850e9` |
| 13 | `theorem` | [isClosed_iff_dirSupClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isclosed-iff-dirsupclosed--be66c046ef6f8c182ae77162.md) | 158 | `result-track:be66c046ef6f8c182ae77162ad37e40b7306016531d156aafb87824640420075` |
| 14 | `def` | [scott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/scott--72488f6d4e51ac5e5028fb16.md) | 173 | `declaration-track:72488f6d4e51ac5e5028fb1690b47b3b9354c8607006725eba458a54611539f6` |
| 15 | `lemma` | [upperSet_le_scott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/upperset-le-scott--2c64dc18dee0a366d6ad7d2e.md) | 176 | `result-track:2c64dc18dee0a366d6ad7d2eaffd41d3a3c820c8e858ba6befafb29c45fd7baa` |
| 16 | `lemma` | [scottHausdorff_le_scott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/scotthausdorff-le-scott--d7f33df2430d83089cd9d52a.md) | 178 | `result-track:d7f33df2430d83089cd9d52a640ab0b6bbda1ffb5698359e379e6d83c7e676cf` |
| 17 | `class` | [IsScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isscott--ec2c6753db516af359d57cae.md) | 186 | `declaration-track:ec2c6753db516af359d57cae1d350a196ba2327e28adf6ed789a0a3ef0716039` |
| 18 | `lemma` | [topology_eq](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/topology-eq--efb66dedc7512fbccc6800fd.md) | 195 | `result-track:efb66dedc7512fbccc6800fd087b44376d020617ede6ecbf6fb9812a13837e38` |
| 19 | `lemma` | [isOpen_iff_isUpperSet_and_scottHausdorff_open](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-iff-isupperset-and-scotthausdorff-open--b12afb94ced672c68bcb1543.md) | 199 | `result-track:b12afb94ced672c68bcb15438ceb1a700214d522a579c25f25f13bcbbc78d3a9` |
| 20 | `lemma` | [isOpen_iff_isUpperSet_and_dirSupInaccOn](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-iff-isupperset-and-dirsupinaccon--2b7c6ee90fec4b240357a12e.md) | 202 | `result-track:2b7c6ee90fec4b240357a12ebddfc89d9c4e1415a62e83d059fbcbe2575dad8b` |
| 21 | `lemma` | [isClosed_iff_isLowerSet_and_dirSupClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isclosed-iff-islowerset-and-dirsupclosed--dff3a719a19e3f8db8d48c9e.md) | 211 | `result-track:dff3a719a19e3f8db8d48c9ead914bf487e54a1287fcb2895b4b9fe641d1420d` |
| 22 | `lemma` | [isUpperSet_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isupperset-of-isopen--7d96b22caecc58feafd208e7.md) | 216 | `result-track:7d96b22caecc58feafd208e72a2c6da414478311e29c0e1da64c9182aa2d400e` |
| 23 | `lemma` | [isLowerSet_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/islowerset-of-isclosed--7531172c5ce7a7762d9724a0.md) | 219 | `result-track:7531172c5ce7a7762d9724a02baaa5472939ae73734cabbc0913b3fcfc61565f` |
| 24 | `lemma` | [dirSupClosed_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/dirsupclosed-of-isclosed--60f351c1fa6ec45b503b1ebf.md) | 222 | `result-track:60f351c1fa6ec45b503b1ebf2dad75f8d422800ff232e7487a43737911d0e124` |
| 25 | `lemma` | [lowerClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/lowerclosure-subset-closure--13394ae280b53d9c4116dacd.md) | 225 | `result-track:13394ae280b53d9c4116dacd05e71d6b21a9052b6564af210bf42ba9cdb02865` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--49025c3febc3e78f9cac4f97.md) | 231 | `declaration-track:49025c3febc3e78f9cac4f9796412839723459c1a2d292096b5befc73a0f4092` |
| 27 | `lemma` | [closure_singleton](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/closure-singleton--59444d1eb1a85b5d7d7a0506.md) | 239 | `result-track:59444d1eb1a85b5d7d7a050669f5896e3dc6572fb11b32564c40c77af3bbeb60` |
| 28 | `lemma` | [monotone_of_continuous](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/monotone-of-continuous--1750410fa7dfc941f95037ec.md) | 246 | `result-track:1750410fa7dfc941f95037ecb302e00bb3bcb0d666f81ef49c51b6cc12803a9c` |
| 29 | `lemma` | [scottContinuousOn_iff_continuous](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/scottcontinuouson-iff-continuous--b67e83d29c71a19dd384ff0e.md) | 251 | `result-track:b67e83d29c71a19dd384ff0e336665130ac2229dec982b797b04c5a48bedef92` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--d045e7a7012274e31f9bc5ed.md) | 280 | `declaration-track:d045e7a7012274e31f9bc5ed736ef76babfaa4782a3f58e8f0e51bc5bcfbd8fd` |
| 31 | `lemma` | [isOpen_iff_Iic_compl_or_univ](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-iff-iic-compl-or-univ--622d19db885424bf3f1ad2eb.md) | 290 | `result-track:622d19db885424bf3f1ad2ebd1b50c2508f8b1a66be3bc7eedca129f4782397f` |
| 32 | `lemma` | [scott_eq_upper_of_completeLinearOrder](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/scott-eq-upper-of-completelinearorder--65ea3d6ac1e302137302a943.md) | 308 | `result-track:65ea3d6ac1e302137302a943981d91f6c46f7d71ac162629e7731df850663620` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--62aa73c3d1557bc9fbdcefea.md) | 317 | `declaration-track:62aa73c3d1557bc9fbdcefea3ecbe23df49ff43a7b3f8a23a47314ab63568504` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--d9f4331a83ca3345109c9cd2.md) | 322 | `declaration-track:d9f4331a83ca3345109c9cd20666e3b2b82555c9a93a1e5ac7869b271cec4743` |
| 35 | `lemma` | [isOpen_iff_scottContinuous_mem](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-iff-scottcontinuous-mem--77d55be7f896c3b817c1d2c7.md) | 328 | `result-track:77d55be7f896c3b817c1d2c7112e8cb758b279be41d5e58c56a6dd7cf8324824` |
| 36 | `def` | [WithScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/withscott--a1015e3ece616dfc3e2d3aca.md) | 338 | `declaration-track:a1015e3ece616dfc3e2d3aca34b9ef67939a06f06fe0bc156ab647fe8e3bc321` |
| 37 | `def` | [toScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/toscott--a7f5a0183ffc145f1fafa1de.md) | 343 | `declaration-track:a7f5a0183ffc145f1fafa1de27245484912ffedb204377d5e18bab6472cf933a` |
| 38 | `def` | [ofScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/ofscott--0b88c4306126a6466a790d9b.md) | 346 | `declaration-track:0b88c4306126a6466a790d9b60bab04066112c04e43d3529c21a4f1a8b5c30cd` |
| 39 | `lemma` | [toScott_symm_eq](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/toscott-symm-eq--a2dffdec9854c4d3a29d85a3.md) | 348 | `result-track:a2dffdec9854c4d3a29d85a360570b19dd053435f148f7f8a6b3a35dc5f14543` |
| 40 | `lemma` | [ofScott_symm_eq](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/ofscott-symm-eq--a8c3720b06509bb1557cd234.md) | 349 | `result-track:a8c3720b06509bb1557cd2344ea6847d759d950cb667764f32de8bf64cd74dee` |
| 41 | `lemma` | [toScott_ofScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/toscott-ofscott--940c6069174241c8c267e7bc.md) | 350 | `result-track:940c6069174241c8c267e7bce39b603c3de1a1357e867845ec4905163dcad4b3` |
| 42 | `lemma` | [ofScott_toScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/ofscott-toscott--a075cf023595397140a93357.md) | 351 | `result-track:a075cf023595397140a9335708b10b9dfd9c68b9e3567883ab401653f20953b3` |
| 43 | `lemma` | [toScott_inj](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/toscott-inj--1b6fff154019c96d8ab0d07d.md) | 353 | `result-track:1b6fff154019c96d8ab0d07dd7656f1fad868fed21e2c408f01402556f14c388` |
| 44 | `lemma` | [ofScott_inj](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/ofscott-inj--4b15edd398f06cb37a2cf1f5.md) | 355 | `result-track:4b15edd398f06cb37a2cf1f53d61e8ee2b6207c1a3b640f3da4e8a5ac87d941e` |
| 45 | `def` | [rec](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/rec--2b1afa1e450c50ebdb426d63.md) | 358 | `declaration-track:2b1afa1e450c50ebdb426d63d91bebb0f6ab77ded59061aed2ce0142ea09193e` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--70cff9376141864cb407db21.md) | 361 | `declaration-track:70cff9376141864cb407db214a439e0d0dca57b0b379063dcec79cd8f811968f` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--2c9b17d1c7296e3efcf350d1.md) | 362 | `declaration-track:2c9b17d1c7296e3efcf350d187ba6f3566bd33fa757ed8886d10bc38c8e1ae9d` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--a2672db550a2340adcb004c8.md) | 366 | `declaration-track:a2672db550a2340adcb004c8e48f76b7ffbcbf0760c85ae27235fbefd5edda8d` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--70961e2a4a730353c0618039.md) | 368 | `declaration-track:70961e2a4a730353c06180391d5cbf3d7c71a00caa08d0e22b82e08fb922b258` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/instance--437451c3df3c34dfde963e0c.md) | 373 | `declaration-track:437451c3df3c34dfde963e0c17b37d8adfc7d59d332f0894d541e7457a156485` |
| 51 | `lemma` | [isOpen_iff_isUpperSet_and_scottHausdorff_open'](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isopen-iff-isupperset-and-scotthausdorff-open--b1b0687b4fcf5813def75296.md) | 375 | `result-track:b1b0687b4fcf5813def752968511c29cd52cfaac9a8cf1e37a3d77d9aed2a86f` |
| 52 | `lemma` | [scottHausdorff_le_lower](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/scotthausdorff-le-lower--4a9bbe869e424fc19f83150f.md) | 383 | `result-track:4a9bbe869e424fc19f83150fe4485bc67c770f9f4c26d5463304459dd7783a97` |
| 53 | `def` | [IsScott.withScottHomeomorph](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isscott-withscotthomeomorph--620bd11bbab8040e45db08f8.md) | 392 | `declaration-track:620bd11bbab8040e45db08f8f8006c01c47b21808c2b659af4c84b4aa8ecd5a9` |
| 54 | `lemma` | [IsScott.scottHausdorff_le](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/isscott-scotthausdorff-le--9dbd50259080ad778d02ee53.md) | 395 | `result-track:9dbd50259080ad778d02ee537c80f4e21daa05271819269cb1575aba1b05d106` |
| 55 | `lemma` | [IsLower.scottHausdorff_le](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/declarations/islower-scotthausdorff-le--0f51a14f2cda93a5c5300021.md) | 399 | `result-track:0f51a14f2cda93a5c5300021542c001f3055d46904a75ffb8086a71829615307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
