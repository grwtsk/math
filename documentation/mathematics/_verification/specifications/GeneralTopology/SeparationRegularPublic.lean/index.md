# Verification target: Separation Regular Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab8ac2866c917f921ebfd21ae7c876899707775a",
  "lexical_observation_count": 101,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparationRegularPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SeparationRegularPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab8ac2866c917f921ebfd21ae7c876899707775a`.

Source path: `GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean.json)

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
| 1 | `class` | [RegularSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace.md) | 79 | `declaration-track:0afcb9e0777b2b09e6c06b465289d9df0f51ae92f60c15b45b25397534127233` |
| 2 | `theorem` | [regularSpace_TFAE](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-tfae.md) | 84 | `result-track:a100199d7a757a4aa3f6337e4b93744a491456e5625cbda45cb5bdf96ee8d375` |
| 3 | `theorem` | [RegularSpace.of_lift'_closure_le](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-of-lift-closure-le.md) | 115 | `result-track:f895a6cbd6d46e0f86d946f0c4712fce4c0c5a4eb4684242b9f2956b0cc3d853` |
| 4 | `theorem` | [RegularSpace.of_lift'_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-of-lift-closure.md) | 119 | `result-track:fdc2b589a7810f985984ff361e066aa1e5749d1129cdd36d00124e15d366718c` |
| 5 | `theorem` | [RegularSpace.of_hasBasis](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-of-hasbasis.md) | 122 | `result-track:6438aa3cf35dce125b691f6560a462fc348fe9e9fa49f0b09a38302278cbb98f` |
| 6 | `theorem` | [RegularSpace.of_exists_mem_nhds_isClosed_subset](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-of-exists-mem-nhds-isclosed-subset.md) | 127 | `result-track:8972cfa98dc33d5599cba77614f07823f45ee1f28a30da96138f8140fa4f3582` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-8.md) | 132 | `declaration-track:4d287912bcd920b4adcf1ca9fe8f0fbfef5937d216f6d2db3ec851309cd08518` |
| 8 | `theorem` | [regularSpace_generateFrom](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-generatefrom.md) | 137 | `result-track:46f5407e245007becf67000cb7d1b8c1cdfe611692db00f55a46618cf3aa2b85` |
| 9 | `theorem` | [disjoint_nhdsSet_nhds](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/disjoint-nhdsset-nhds.md) | 157 | `result-track:1ecbae63ff2cd8578adf7e0033611109f4f210e970abae3f64556ad173d1565e` |
| 10 | `theorem` | [disjoint_nhds_nhdsSet](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/disjoint-nhds-nhdsset.md) | 161 | `result-track:ce15e80d4c461f8b9bc11de61060bd30312ffe13aec4994ed143336c4e8efb62` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-16.md) | 165 | `declaration-track:9c1c040dbefc4489831ba0960a0f4804eccd040203040807c47bf68a80f4c503` |
| 12 | `theorem` | [exists_mem_nhds_isClosed_subset](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/exists-mem-nhds-isclosed-subset.md) | 169 | `result-track:5bde2b1b9211ac272e84d0cf2e1ddf25ba9f029c591bf87be390e01dd019b624` |
| 13 | `theorem` | [closed_nhds_basis](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/closed-nhds-basis.md) | 174 | `result-track:373030cc79e41fe3865417150d2afa696bd1b074f8e05c092c81505aa6f38c5b` |
| 14 | `theorem` | [lift'_nhds_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/lift-nhds-closure.md) | 177 | `result-track:04f90f213fee858a2fa66ee24c415ee04d105fdc26828fe3aa8dc1381d22a9ea` |
| 15 | `theorem` | [Filter.HasBasis.nhds_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/filter-hasbasis-nhds-closure.md) | 180 | `result-track:2b9c6dddbd6ec53a66e48e2ddb8b383ddce7c10fc0a56b4b2f4d090f330680b2` |
| 16 | `theorem` | [hasBasis_nhds_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/hasbasis-nhds-closure.md) | 184 | `result-track:131a2ed7c1b6dc8720ef71860d6c093d7175dee15df9fd9ef9a1aa6e550bd634` |
| 17 | `theorem` | [hasBasis_opens_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/hasbasis-opens-closure.md) | 187 | `result-track:c2cd0d61861be4cd919a3b0bac84a1bccb5e6beda93b383f1d43d269915173ce` |
| 18 | `theorem` | [IsCompact.exists_isOpen_closure_subset](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/iscompact-exists-isopen-closure-subset.md) | 190 | `result-track:28c89cd086fcf34eb9ef418b8365a8254d13616d1b99c30cd2746a1ad06c1d36` |
| 19 | `theorem` | [IsCompact.lift'_closure_nhdsSet](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/iscompact-lift-closure-nhdsset.md) | 200 | `result-track:eac80322af1850fe2fadf51ed314a37cec58530ce46d4406e45b93abdff9579c` |
| 20 | `theorem` | [TopologicalSpace.IsTopologicalBasis.nhds_basis_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topologicalspace-istopologicalbasis-nhds-basis-closure.md) | 206 | `result-track:09244973134b88e8075b5bafc31f7cf2334d61954556fcb395f160909c189d2d` |
| 21 | `theorem` | [TopologicalSpace.IsTopologicalBasis.exists_closure_subset](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topologicalspace-istopologicalbasis-exists-closure-subset.md) | 211 | `result-track:d620a98983c874d73a56d1f167b571233bf9d85671b92c9899bbfd38a150d99e` |
| 22 | `theorem` | [TopologicalSpace.IsTopologicalBasis.open_eq_iUnion_of_closure_subset](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topologicalspace-istopologicalbasis-open-eq-iunion-of-closure-subset.md) | 218 | `result-track:5eaba061c49bd1ee17de6963fe7829688d86312c3dee32f541a461db565b14b0` |
| 23 | `theorem` | [TopologicalSpace.IsTopologicalBasis.open_eq_sUnion_of_closure_subset](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topologicalspace-istopologicalbasis-open-eq-sunion-of-closure-subset.md) | 226 | `result-track:5afc0a250ed5e5ef80e5ca06928bfd585dcc86e1021aa47e10fa5b8f261d0dfd` |
| 24 | `theorem` | [TopologicalSpace.IsTopologicalBasis.open_eq_iUnion_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topologicalspace-istopologicalbasis-open-eq-iunion-closure.md) | 234 | `result-track:10f1581d757eb877c49325ded54a17d0a05c95fef99f6cb92969590392ad3be6` |
| 25 | `theorem` | [TopologicalSpace.IsTopologicalBasis.open_eq_sUnion_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topologicalspace-istopologicalbasis-open-eq-sunion-closure.md) | 243 | `result-track:91f6c1e9fd43acbef5438d327d89a0345088b45551f41427a34a0a6886a18f7a` |
| 26 | `theorem` | [Topology.IsInducing.regularSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topology-isinducing-regularspace.md) | 249 | `result-track:4d5b67ed9f90b7abc14cd05d08cabddca366b6da77c98530c6a77d4d45aa7cf4` |
| 27 | `theorem` | [regularSpace_induced](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-induced.md) | 255 | `result-track:f67d967f08f3c1683037ad095ce8651cc6ee8ea878e844b6ebaf078f93b8a741` |
| 28 | `theorem` | [regularSpace_sInf](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-sinf.md) | 259 | `result-track:8dea08389da4eacd0021f956ac40fd51f058d709f5d2486233fb4800eb0def9d` |
| 29 | `theorem` | [regularSpace_iInf](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-iinf.md) | 271 | `result-track:705d405ae26d18d76ab151d5661f085910c3e3338655fda896a328bbf3e316f1` |
| 30 | `theorem` | [RegularSpace.inf](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-inf.md) | 275 | `result-track:72977301617a5e01e30841ab4c98a9b1357ae198c92cba2f72ac4e2ff12d2726` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-12.md) | 280 | `declaration-track:7734738fed933afa512210c749908bac524394efbfae1be70fb9983703c035da` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-13.md) | 283 | `declaration-track:89ba76bcc25e4310639dbae6ce799e585376e2708257afaeaf1bef507d9f500a` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-6.md) | 286 | `declaration-track:3ee556c1762b8c16c23c44fffaf0a82c8895faccf46588378ad894eb9048d3b1` |
| 34 | `lemma` | [SeparatedNhds.of_isCompact_isClosed](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/separatednhds-of-iscompact-isclosed.md) | 292 | `result-track:6e48d061808d2e5dfece2948b30e36432ef399ea52c1033c2e82916d8657e9a5` |
| 35 | `lemma` | [IsClosed.HasSeparatingCover](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/isclosed-hasseparatingcover.md) | 301 | `result-track:2f45f2526e701eb4a9801840117945189fc67e2e27b2a4116586db0e31aab25d` |
| 36 | `theorem` | [disjoint_nested_nhds_of_not_inseparable](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/disjoint-nested-nhds-of-not-inseparable.md) | 329 | `result-track:1ff9411fac655c9aefc2ee4bbc022e2ee1874737b6ca43d885be46b05ccd0343` |
| 37 | `theorem` | [exists_compact_closed_between](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/exists-compact-closed-between.md) | 346 | `result-track:a7738ced848764b94d38f2db332840148784bb17441c91f5207e7f3b9f1e17b1` |
| 38 | `theorem` | [IsCompact.nhdsSet_basis_isCompact_isClosed](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/iscompact-nhdsset-basis-iscompact-isclosed.md) | 355 | `result-track:e8d8d4f226d4c3b93b86f4f7688ab8d41c2498b58240967ccc5ebe44c68823a0` |
| 39 | `theorem` | [exists_open_between_and_isCompact_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/exists-open-between-and-iscompact-closure.md) | 366 | `result-track:3e65fee8f6667f23d8bc1b690c646a1cdb25924e611a0de021e0579e2365459a` |
| 40 | `lemma` | [IsCompact.closure_eq_nhdsKer](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/iscompact-closure-eq-nhdsker.md) | 375 | `result-track:4c21c7357e24724ede0f04d16bd18e7b4af76e072d75dc40e55faad3bbd2fc7a` |
| 41 | `class` | [T25Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/t25space.md) | 393 | `declaration-track:217e3d965bde9e71686b0f0e192d11bb6c15890bf96d5162cacb8d75493553f2` |
| 42 | `theorem` | [disjoint_lift'_closure_nhds](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/disjoint-lift-closure-nhds.md) | 399 | `result-track:fcbf76ca752a595f95c9ff75dd43d1251416fab6c6bfb8c18c456173ac621c11` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-18.md) | 404 | `declaration-track:a3eb70b31a7359d405bef239737deb9c814748a8d163c1b009bd5833158d4e31` |
| 44 | `theorem` | [exists_nhds_disjoint_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/exists-nhds-disjoint-closure.md) | 408 | `result-track:f8e3efc0d70c4e50d037eeb6804514b58dec4e43dc37e761c22a4d3bae705955` |
| 45 | `theorem` | [exists_open_nhds_disjoint_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/exists-open-nhds-disjoint-closure.md) | 413 | `result-track:0d00e6f0601309ff056b06da972f396bd8861f20eea854aaa735bd5424e13766` |
| 46 | `theorem` | [T25Space.of_injective_continuous](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/t25space-of-injective-continuous.md) | 420 | `result-track:8d5da48f850d11437a83d33aafb79741a368b71b5999bb7c5187956bced26031` |
| 47 | `theorem` | [Topology.IsEmbedding.t25Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topology-isembedding-t25space.md) | 425 | `result-track:7bfac4386dd0dac98a35013697e1d61aeecee3c1817f7b8a374ad68409cb4b07` |
| 48 | `theorem` | [Homeomorph.t25Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/homeomorph-t25space.md) | 429 | `result-track:b23b1a842a3678e54fcf8d10a2a559ba28699b02f69e3d92a10c0ddf5393037c` |
| 49 | `instance` | [Subtype.instT25Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/subtype-instt25space.md) | 432 | `declaration-track:21e6536210ce89932046421c3b9775af66362ea0af7229aab54629c46ef3c527` |
| 50 | `class` | [T3Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/t3space.md) | 441 | `declaration-track:31ea55ce293ca2a37aa0162239ebe6673b891898ece6147e26d665e0fdc42fbc` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-20.md) | 443 | `declaration-track:d03844df16d6536276e75a28f07800888111e5d4d1719e5aebe233f206ba42fd` |
| 52 | `theorem` | [RegularSpace.t3Space_iff_t0Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/regularspace-t3space-iff-t0space.md) | 445 | `result-track:bf695022045d0163949c8fde000435adec4d148d731bfecd8f73ae19765e8b37` |
| 53 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-4.md) | 449 | `declaration-track:30cc29db13a6d27478cef3e3fe8c1528106ea6f0df14f2a81f3f57a71a4c7fc4` |
| 54 | `theorem` | [Topology.IsEmbedding.t3Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topology-isembedding-t3space.md) | 457 | `result-track:96b3b9580e5857b49b3a8649b9c5db05dbf7f070b661f316192cba16d45190ea` |
| 55 | `theorem` | [Homeomorph.t3Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/homeomorph-t3space.md) | 462 | `result-track:b3de2a787173ab1472207ec6e468f48539c66c822a8bbaa451e979ceb276e8ad` |
| 56 | `instance` | [Subtype.t3Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/subtype-t3space.md) | 465 | `declaration-track:905446717a7f89dbc5a31ac12ed0f6de46b2b2e32e633c5f16c25d2439aa7b94` |
| 57 | `instance` | [ULift.instT3Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/ulift-instt3space.md) | 468 | `declaration-track:76a7def4c519673e9750e80ab7358b0fd54f49a85f2a0342b849bbe8274ab82c` |
| 58 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-5.md) | 471 | `declaration-track:34de6be1efd8d9fe241db47d34cc6e37e6340669af5871bad2e368e78dff5ec9` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-21.md) | 473 | `declaration-track:d84f32aba19536beffc25e8e1c308859267ed4d2b1d92df95519c52482bb02a8` |
| 60 | `theorem` | [disjoint_nested_nhds](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/disjoint-nested-nhds.md) | 478 | `result-track:3d4abba0989a604f514364915d094de0d5aa369147d6b24ce9bc04404435f7d7` |
| 61 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-2.md) | 486 | `declaration-track:12c1c968a6abbf9f384be6abde58953c8175282a37a26903c62d282ac9dcce82` |
| 62 | `class` | [NormalSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/normalspace.md) | 498 | `declaration-track:304aced2faaac1e281cdfdc71e147323328ed801756355295a1b012d26574fdb` |
| 63 | `theorem` | [normal_separation](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/normal-separation.md) | 502 | `result-track:f506daa15d560315d388df3f4623a581cc5659653263d1e6296a7a87e8d69c2e` |
| 64 | `theorem` | [disjoint_nhdsSet_nhdsSet](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/disjoint-nhdsset-nhdsset.md) | 506 | `result-track:6eb1f9387f3f5e92890db3b1125bc742a2b67e3e8a5b06fed8ad86a1e6e01d5f` |
| 65 | `theorem` | [normal_exists_closure_subset](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/normal-exists-closure-subset.md) | 510 | `result-track:0136f9c8b45410f4019160a5b6bdebe17e73865f4ed4632e23276131ce39b2a1` |
| 66 | `theorem` | [exists_mem_nhdsSet_isClosed_subset](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/exists-mem-nhdsset-isclosed-subset.md) | 519 | `result-track:7634e23ef9ea9c530be70dd63aa0819f819e26e1c26a5309b783933a6627ff40` |
| 67 | `theorem` | [closed_nhdsSet_basis](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/closed-nhdsset-basis.md) | 526 | `result-track:2356fc0bae5ae1e32ec0caf58cdc00f130acde81902e763cd8a4a8f6fa4535fe` |
| 68 | `theorem` | [lift'_nhdsSet_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/lift-nhdsset-closure.md) | 530 | `result-track:92a537099c41b64cfb8f0f095255966e7d82da380228edaf6db865c0b0a77f9d` |
| 69 | `theorem` | [Filter.HasBasis.nhdsSet_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/filter-hasbasis-nhdsset-closure.md) | 534 | `result-track:e7fb6e135659d31bf74c5d895064ba5a0a8c6ee9be19dd0811e4cb0a65613916` |
| 70 | `theorem` | [hasBasis_nhdsSet_closure](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/hasbasis-nhdsset-closure.md) | 539 | `result-track:000552a6804623b785bb9d4e0e0ca1b16c3e69a01cc5674c75149ce296c57ea1` |
| 71 | `theorem` | [Topology.IsClosedEmbedding.normalSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topology-isclosedembedding-normalspace.md) | 544 | `result-track:59b4aed416c844f356e6667c0bd230d08c5a1eb8153d6526a6b58456a9e4df5d` |
| 72 | `theorem` | [Homeomorph.normalSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/homeomorph-normalspace.md) | 552 | `result-track:339764d4b8de2e77cb5e66406230a1c03fc4b8334fb0242382786585bf1adde9` |
| 73 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-11.md) | 556 | `declaration-track:6ad6534e0d8af18db2aa84420538291b852e03abdbc9e2551d7276359a3f5e1d` |
| 74 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-22.md) | 563 | `declaration-track:e1b2ba3fbb82046678f39940cb4817c131098900e847e8dc3a52001ec42d3e17` |
| 75 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-14.md) | 569 | `declaration-track:8a96f9124b3e11653f2a8071b39a991b9dc8d8d1de327012cf4012f1b3fc37f4` |
| 76 | `class` | [T4Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/t4space.md) | 578 | `declaration-track:e1f452d9c418a5afbacc11fd161eb99f9a1ca9c839f116bfcd66a770a912e996` |
| 77 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-3.md) | 580 | `declaration-track:2e1c15df98f5e8520ddff220a173c5fe2e97f624357a762ffc86320433035f21` |
| 78 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-7.md) | 583 | `declaration-track:4c34f19606e7cfd647daefe7ce2f956f7e835c3eece741e0791b3dfc89d5cf48` |
| 79 | `theorem` | [Topology.IsClosedEmbedding.t4Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topology-isclosedembedding-t4space.md) | 588 | `result-track:de952462b5c27953a3503c9f86f654ac4d9f4ba5680ffba43e5124659b66dccb` |
| 80 | `theorem` | [Homeomorph.t4Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/homeomorph-t4space.md) | 593 | `result-track:2e2dbcd79b09ae1b54375141ec1d5b11bcd5fbcfa65dd8ef00a40e6916dfcb2d` |
| 81 | `instance` | [ULift.instT4Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/ulift-instt4space.md) | 596 | `declaration-track:3b767b9b8f66b2247082915abdf20cae856d86fe8bbb340d995f9ba0f13cd6d9` |
| 82 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-10.md) | 601 | `declaration-track:5f99c1a1fa7196b0db1d430a6483f4ea3bd6254bd5ddebf926287ae5bbe53774` |
| 83 | `class` | [CompletelyNormalSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/completelynormalspace.md) | 616 | `declaration-track:d6077111996585ca44e1ac8a01863e3679011fa605a2a17570b07e242b5a9f7b` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-17.md) | 626 | `declaration-track:9efeaf0effb17195b3b4304b5895730ba65ffb0326d3a53705eed8bc193dfce7` |
| 85 | `theorem` | [Topology.IsInducing.completelyNormalSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topology-isinducing-completelynormalspace.md) | 631 | `result-track:85b9901ee232c9a026c169d9e9f95013b5aa990281cf73087dbdedf2b45b4d1a` |
| 86 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-19.md) | 642 | `declaration-track:c8e5e076fcda643d003014514d417431cb821ac2a04f4cb36ebd7c4aecf005d1` |
| 87 | `instance` | [ULift.instCompletelyNormalSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/ulift-instcompletelynormalspace.md) | 645 | `declaration-track:f636c7fa6fefd4c7e341a113b329ddbffe4fe83ac9242f40eb3a78a566470247` |
| 88 | `theorem` | [completelyNormalSpace_iff_forall_isOpen_normalSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/completelynormalspace-iff-forall-isopen-normalspace.md) | 652 | `result-track:113155b31ac99bd3cd9a39dadfd90ac33a6625f5feb61a5abf337a0331ea206b` |
| 89 | `theorem` | [completelyNormalSpace_iff_forall_normalSpace](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/completelynormalspace-iff-forall-normalspace.md) | 682 | `result-track:0ae8685244178c42607a4ca013e1986ccd726141cedbf76a61975381f4e6356b` |
| 90 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-23.md) | 692 | `declaration-track:eec4a72536235fa5880d2cf5c2e7d9c215aa3ac7b9e43af2794bacb46307bf73` |
| 91 | `class` | [T5Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/t5space.md) | 697 | `declaration-track:439a1272cc925c60d3bae3bd1d74f1899c0f03b2328ebedf503f92925820aa9c` |
| 92 | `theorem` | [Topology.IsEmbedding.t5Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/topology-isembedding-t5space.md) | 699 | `result-track:2851bb344d1238e186d5919fb1fd479cf909a43167411d5c9d5dedfa12089175` |
| 93 | `theorem` | [Homeomorph.t5Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/homeomorph-t5space.md) | 704 | `result-track:99b6b4e8a0605e20bfa623ea8262667646a990ff51adde5f86b569afc94eeada` |
| 94 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-15.md) | 709 | `declaration-track:95cbc11fd7580037b3f8e48b3de2950c4301a9f5b15f5b4a14d100ed2a14cf49` |
| 95 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance.md) | 713 | `declaration-track:007ef38b75a9dd1faa1f77e97fe095779544b55c8069e304c190868217e1e3f1` |
| 96 | `instance` | [ULift.instT5Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/ulift-instt5space.md) | 716 | `declaration-track:fcd735bf5983f4db7a00367b48334ab347537f7ff81a080e0331dde3a733fb97` |
| 97 | `theorem` | [t5Space_iff_forall_isOpen_t4Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/t5space-iff-forall-isopen-t4space.md) | 722 | `result-track:6ae74f0050f1bf27716cf8a1f95bb499206ae9eb228cc5e4606f5a64ca3cde6c` |
| 98 | `theorem` | [t5Space_iff_forall_t4Space](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/t5space-iff-forall-t4space.md) | 736 | `result-track:abbdde3a6edff458683e5671b916d0575b7b1796437161176e2ee48c68794edb` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/instance-source-edition-9.md) | 746 | `declaration-track:58bcacfebfa4cebaa91b4ffd3465e9bac52241095ce389feb4afaebacc0fa085` |
| 100 | `theorem` | [connectedComponent_eq_iInter_isClopen](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/connectedcomponent-eq-iinter-isclopen.md) | 758 | `result-track:b0ca5081f02015120a31c6aaacd77e6a4b90b0c4d71e1b2c9eb74d8fa6be4647` |
| 101 | `instance` | [ConnectedComponents.t2](../../../../GeneralTopology/SeparationRegularPublic.lean/declarations/connectedcomponents-t2.md) | 813 | `declaration-track:5095ec08237e54236dbfe2fda062511600e6957c16f9341b1746b9e08def65b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=297e77e39d552b7b63cb6086857fe2f5d897b2aa3b22022fbf605e20bd981878 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
