# Verification target: Separation Regular

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8b9bb6a7ff7df35d51aee4dba345015529b15de",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparationRegular.lean/index.md) · [Full source](../../../../GeneralTopology/SeparationRegular.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8b9bb6a7ff7df35d51aee4dba345015529b15de`.

Source path: `GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.StacksAttribute` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Lindelof` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.Clopen` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RegularSpace](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace.md) | 75 | `declaration-track:be8e2c08f5e24e2c7b3bee2d041788d26a700c4ce31404157a696d66998a67ea` |
| 2 | `theorem` | [regularSpace_TFAE](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-tfae.md) | 80 | `result-track:b22f2423833781b89d072ff703de48bae9fa6275fdfeaccdcc85ac0f844dd0dd` |
| 3 | `theorem` | [RegularSpace.of_lift'_closure_le](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-of-lift-closure-le.md) | 111 | `result-track:c4906e6432ab38e4e0c2196da2046f1a6e5ee309e1811f2cf4eccc5ba18f15a0` |
| 4 | `theorem` | [RegularSpace.of_lift'_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-of-lift-closure.md) | 115 | `result-track:ae36a870af252adf4075b39053ecebe52ad6f6c546ed0dc9d6f557c7aaeb16cf` |
| 5 | `theorem` | [RegularSpace.of_hasBasis](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-of-hasbasis.md) | 118 | `result-track:84da8d067f10c1d047a4d3afb3abf7653497f56ee47e2662aef817d18ef2df40` |
| 6 | `theorem` | [RegularSpace.of_exists_mem_nhds_isClosed_subset](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-of-exists-mem-nhds-isclosed-subset.md) | 123 | `result-track:178fa6438ab40886bc52bc84982d0abe02434a0dd9d49fbe615aef264e93b046` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-2.md) | 128 | `declaration-track:3247af939cf400be73cf9a2ad2bb1b1eba0ec8a69178098858ac2f145243d6c4` |
| 8 | `theorem` | [disjoint_nhdsSet_nhds](../../../../GeneralTopology/SeparationRegular.lean/declarations/disjoint-nhdsset-nhds.md) | 134 | `result-track:085b3a68422bac5187164dbd3d2d385f625f2eaeccfe3019cc7af39f30d60e34` |
| 9 | `theorem` | [disjoint_nhds_nhdsSet](../../../../GeneralTopology/SeparationRegular.lean/declarations/disjoint-nhds-nhdsset.md) | 138 | `result-track:37608e23538bad416b8822865eff1df8aeb8ad8578b437b1ed3f2ad472a5d741` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-8.md) | 142 | `declaration-track:6779254d0fafb8c06032473cc8af6fc49ef5c7a8e9648e093cbc18d336f504d6` |
| 11 | `theorem` | [exists_mem_nhds_isClosed_subset](../../../../GeneralTopology/SeparationRegular.lean/declarations/exists-mem-nhds-isclosed-subset.md) | 146 | `result-track:2c9a1f7e177d03225c3ead6ebb7549a7593c86e1389123fce90f1f777aa8abcd` |
| 12 | `theorem` | [closed_nhds_basis](../../../../GeneralTopology/SeparationRegular.lean/declarations/closed-nhds-basis.md) | 151 | `result-track:7f6b09bd5a71c342440290975afc8598460e1f1e458e3a88403c9ce154cbe26e` |
| 13 | `theorem` | [lift'_nhds_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/lift-nhds-closure.md) | 154 | `result-track:2875ed7b7280926c2a4900d8a5a99c0eadadba38398369433b2c80d896f26329` |
| 14 | `theorem` | [Filter.HasBasis.nhds_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/filter-hasbasis-nhds-closure.md) | 157 | `result-track:9329df2ce458df9cb99efd909319c26c30f2fa00405ea7f616fdca9b6fc6dadc` |
| 15 | `theorem` | [hasBasis_nhds_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/hasbasis-nhds-closure.md) | 161 | `result-track:793958086dd81c884e654904e7446d66d8000daabe5d21891c2d8c7f5c317342` |
| 16 | `theorem` | [hasBasis_opens_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/hasbasis-opens-closure.md) | 164 | `result-track:e0e8910ad9b770207f098433892465dffc22478aa0d8cf6d144dc6a369c15ba5` |
| 17 | `theorem` | [IsCompact.exists_isOpen_closure_subset](../../../../GeneralTopology/SeparationRegular.lean/declarations/iscompact-exists-isopen-closure-subset.md) | 167 | `result-track:839ba4dea5065b21c4889a0344d8977899cd2aa69885eb8d61c206ecdc3420e2` |
| 18 | `theorem` | [IsCompact.lift'_closure_nhdsSet](../../../../GeneralTopology/SeparationRegular.lean/declarations/iscompact-lift-closure-nhdsset.md) | 177 | `result-track:779610376f2ee2c365cc49be556c820713f489ea4f3ab87fab9a27e15dab70dd` |
| 19 | `theorem` | [TopologicalSpace.IsTopologicalBasis.nhds_basis_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/topologicalspace-istopologicalbasis-nhds-basis-closure.md) | 183 | `result-track:ef2697f1d24bdfea28d9a4ce4892d4314a638f161a0de34b0982b3174c12e2c8` |
| 20 | `theorem` | [TopologicalSpace.IsTopologicalBasis.exists_closure_subset](../../../../GeneralTopology/SeparationRegular.lean/declarations/topologicalspace-istopologicalbasis-exists-closure-subset.md) | 188 | `result-track:d658b7f82dcbd530ab74c5ca41e68d1c5f5f085343ced811e1dffef6db4fe82b` |
| 21 | `theorem` | [Topology.IsInducing.regularSpace](../../../../GeneralTopology/SeparationRegular.lean/declarations/topology-isinducing-regularspace.md) | 193 | `result-track:de3f66d3ab9793acdf420c60afbeb8977f9f7b1690157f2f75be6e2ffa2ad552` |
| 22 | `theorem` | [regularSpace_induced](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-induced.md) | 201 | `result-track:315daa4a92737db2bcc8592c79445c7fdfc63b0e2cc58424808d63c12d865f6f` |
| 23 | `theorem` | [regularSpace_sInf](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-sinf.md) | 205 | `result-track:09b1a77391da257023d15511a22725757239592afbad8849298f7152579aee15` |
| 24 | `theorem` | [regularSpace_iInf](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-iinf.md) | 217 | `result-track:754fa6676a647129c857139a4595f732e0ec0d1113887d3b880d66bf167b91d7` |
| 25 | `theorem` | [RegularSpace.inf](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-inf.md) | 221 | `result-track:2231928c8d5c649e3fc374b64d9715c88d1cd0fa047208dde017467c52addfd6` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-9.md) | 226 | `declaration-track:6e79ef9f1cecff4e98b2233bc301bfc1e3f8003d6226884037755bf2196a249d` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-10.md) | 229 | `declaration-track:84518f457cb2a818d916ab838000407658289c190c7e2ccf16a80c0b9a2610f8` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-3.md) | 232 | `declaration-track:4d27cd5397aa696a907d1e9c653b4f5eaa0e675ad45cbf1a13bb6de92121bc74` |
| 29 | `lemma` | [SeparatedNhds.of_isCompact_isClosed](../../../../GeneralTopology/SeparationRegular.lean/declarations/separatednhds-of-iscompact-isclosed.md) | 238 | `result-track:0d43e964493943886ff2a8622fb6d2d7d3f8194dcc6281b3951be299b7b658a0` |
| 30 | `lemma` | [IsClosed.HasSeparatingCover](../../../../GeneralTopology/SeparationRegular.lean/declarations/isclosed-hasseparatingcover.md) | 247 | `result-track:0560087f0d107fa08f9b68cd8e424972a1b2955815a84af60a80f1040fe9e24e` |
| 31 | `theorem` | [exists_compact_closed_between](../../../../GeneralTopology/SeparationRegular.lean/declarations/exists-compact-closed-between.md) | 281 | `result-track:2ce9eafbc548254d9081474822cb3f000b79ca81ff1346fc9adadaefd4a7c704` |
| 32 | `theorem` | [exists_open_between_and_isCompact_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/exists-open-between-and-iscompact-closure.md) | 291 | `result-track:8379955e97047ca64253df8153417b4de83bd26cdfbde9571af3b28ac67c9553` |
| 33 | `class` | [T25Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/t25space.md) | 307 | `declaration-track:d6ab3734bee9ba527ea7dd3847f44e0ef9743a6fb4e9641187367b5ac7fd5e6d` |
| 34 | `theorem` | [disjoint_lift'_closure_nhds](../../../../GeneralTopology/SeparationRegular.lean/declarations/disjoint-lift-closure-nhds.md) | 313 | `result-track:197db7c7e7926fcc1d1bc51af66cb01f7e9828956cf2f0d0c94c44a0ef273693` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-14.md) | 318 | `declaration-track:914b60719f15e879f6d6b912e6fd860e3815a12ab650a6e1a390a9f7e1a9eb63` |
| 36 | `theorem` | [exists_nhds_disjoint_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/exists-nhds-disjoint-closure.md) | 322 | `result-track:b4e75cce0ea268f3c64fb7573ba33ac73f512a58b637ed32e725e937cda84ac5` |
| 37 | `theorem` | [exists_open_nhds_disjoint_closure](../../../../GeneralTopology/SeparationRegular.lean/declarations/exists-open-nhds-disjoint-closure.md) | 327 | `result-track:770fa95c4f6d473956a30d0ee9402faf8b534aaf69377b61f8217b0991590732` |
| 38 | `theorem` | [T25Space.of_injective_continuous](../../../../GeneralTopology/SeparationRegular.lean/declarations/t25space-of-injective-continuous.md) | 334 | `result-track:cf8edb0d841da3d77adf32e1af003802c72dc55d8adbca6d5d632fdb9f522717` |
| 39 | `theorem` | [Topology.IsEmbedding.t25Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/topology-isembedding-t25space.md) | 339 | `result-track:1763eaa082bccedacc23cefe6978c7df201d44355546cecbff6b0dad660706b6` |
| 40 | `theorem` | [Homeomorph.t25Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/homeomorph-t25space.md) | 346 | `result-track:b11db9fde395f7d9288679d6cbe71c34031a0d47018eba07203d04921f7f0068` |
| 41 | `instance` | [Subtype.instT25Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/subtype-instt25space.md) | 349 | `declaration-track:4926936337ecc8d9b48b2dbe61527bcdc3bb30e8674a80304f22f52b6f2d94f1` |
| 42 | `class` | [T3Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/t3space.md) | 358 | `declaration-track:c20e529fdfc5c2bfa4f5808f5999df90eb2f128eaff9f32aeace33e70eb73d19` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-11.md) | 360 | `declaration-track:858177191aa98a6fbe16caa98368f69f97f7be07296c3aef253ecd24de526a68` |
| 44 | `theorem` | [RegularSpace.t3Space_iff_t0Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/regularspace-t3space-iff-t0space.md) | 362 | `result-track:2a7431b3684b6565aaf7a5a63fd233b586e27031ad77c53659218163a488ceaa` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance.md) | 366 | `declaration-track:10593dc0e7b13c5ede1804e0373b113cc673d8768e72b8c81202c1064af5acdc` |
| 46 | `theorem` | [Topology.IsEmbedding.t3Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/topology-isembedding-t3space.md) | 374 | `result-track:b44cab5812c668f4d5daf428840a20aec15c13eab1c379bc471ac8378acaf86a` |
| 47 | `theorem` | [Homeomorph.t3Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/homeomorph-t3space.md) | 382 | `result-track:1cf9fcf6d8e531582541ffd14c0b80ffd3243242adaea0087c32a6d8dbcbe20e` |
| 48 | `instance` | [Subtype.t3Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/subtype-t3space.md) | 385 | `declaration-track:dea144d0e7f44fa04a957a82ba40b294357b904a22d114fcadcdc6fb6086b711` |
| 49 | `instance` | [ULift.instT3Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/ulift-instt3space.md) | 388 | `declaration-track:8f28ba98578af81e6ef12588245a128d2ead58ed744fef8a5370d257a7509e12` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-5.md) | 391 | `declaration-track:5745c18f03d2e4271f2d8abde44d567d7e1589b7e17b629bb5fcf0912a95e6f5` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-15.md) | 393 | `declaration-track:926a7df513cb6a3cc42301a8e43e98af7391dbcb0a1ed1825280dd419109715f` |
| 52 | `theorem` | [disjoint_nested_nhds](../../../../GeneralTopology/SeparationRegular.lean/declarations/disjoint-nested-nhds.md) | 398 | `result-track:19ec5958b87423826db4450cfce4c0f721d54401b79886283152de924ef665dd` |
| 53 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-4.md) | 410 | `declaration-track:570d5f4f989c9dcb109e808ed8b8c2fcc47c8ecae25719ee6299563832b7e107` |
| 54 | `class` | [NormalSpace](../../../../GeneralTopology/SeparationRegular.lean/declarations/normalspace.md) | 422 | `declaration-track:5d66de1d8bf1f1abf205995cf4b852d514dd916765da6da35bb131847e38c8f5` |
| 55 | `theorem` | [normal_separation](../../../../GeneralTopology/SeparationRegular.lean/declarations/normal-separation.md) | 426 | `result-track:d3cafa24a2b9688b02c6731398b876d12802bda25e2eec97a34ca24afbd83c02` |
| 56 | `theorem` | [disjoint_nhdsSet_nhdsSet](../../../../GeneralTopology/SeparationRegular.lean/declarations/disjoint-nhdsset-nhdsset.md) | 430 | `result-track:0102b3e044c35b3434131c3c5bae67e973fbc4f793ce9c37ff37c047427379e6` |
| 57 | `theorem` | [normal_exists_closure_subset](../../../../GeneralTopology/SeparationRegular.lean/declarations/normal-exists-closure-subset.md) | 434 | `result-track:9680bf62eebb6696c515b54549dc7680f8a584691549777685db2b46f32cc5be` |
| 58 | `theorem` | [Topology.IsClosedEmbedding.normalSpace](../../../../GeneralTopology/SeparationRegular.lean/declarations/topology-isclosedembedding-normalspace.md) | 444 | `result-track:cf97a0d0da47f021f428e4bba119d2f0397693de83742515a7eb7b3cf1cf8c4f` |
| 59 | `theorem` | [Homeomorph.normalSpace](../../../../GeneralTopology/SeparationRegular.lean/declarations/homeomorph-normalspace.md) | 452 | `result-track:474e91c66306fc38c60f1bf60125d98adb76538c181a90a731ece7329c10380d` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-21.md) | 456 | `declaration-track:edf4be7506c49810998e6eedd21622a61fe15fd94907b1b0a20127fac0d6e1a3` |
| 61 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-22.md) | 463 | `declaration-track:fa8736ba3f203a2a8782e02bcea169b66565c74c5a8c13b236912090eed4f1e8` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-20.md) | 469 | `declaration-track:e303010338e96b10e18c5db32255ab4e8e541b8f28b52ef5a8e0e07d68c126a2` |
| 63 | `class` | [T4Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/t4space.md) | 478 | `declaration-track:2783f505d2a00f9dbe0203cdd9cf67adf87002becc6057e75f052fd14954b3a4` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-7.md) | 480 | `declaration-track:58696f5d94215985e28a243fb51ec806a043b4cb0c3e3309b7ed2cd26148eda1` |
| 65 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-16.md) | 483 | `declaration-track:b70b80cf61d46f052b2213d2b87755c1aa4d0f7403ce364c087b217bcefe7a63` |
| 66 | `theorem` | [Topology.IsClosedEmbedding.t4Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/topology-isclosedembedding-t4space.md) | 488 | `result-track:fe554c78adb74c1b5dd7892a282d65a6147d3d8217b85d2ddfa69fe43b68f46f` |
| 67 | `theorem` | [Homeomorph.t4Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/homeomorph-t4space.md) | 493 | `result-track:64d950e02de69f03e00b8d4f3d104bef3d26c8808d765597d5769b9c2f129561` |
| 68 | `instance` | [ULift.instT4Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/ulift-instt4space.md) | 496 | `declaration-track:10e11186d5fdc90d4a576e021614f28ae1987a56bf045311197adac26803e814` |
| 69 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-6.md) | 501 | `declaration-track:577d17276489e060b2f0991311a93b527352509cf7492779d241f74b3c8a7bc0` |
| 70 | `class` | [CompletelyNormalSpace](../../../../GeneralTopology/SeparationRegular.lean/declarations/completelynormalspace.md) | 518 | `declaration-track:d8444a81543696789adb39b9d6a983d6819a300b71a59f014ce67c70d142ed92` |
| 71 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-18.md) | 528 | `declaration-track:d658095bc2194677b8acf9f2d091dff940d835ff73921d06e381f7fbb0b08731` |
| 72 | `theorem` | [Topology.IsEmbedding.completelyNormalSpace](../../../../GeneralTopology/SeparationRegular.lean/declarations/topology-isembedding-completelynormalspace.md) | 533 | `result-track:06d6aa43519fbaf31baa3a11b0699985306b3d5f1887c2a2b317d185100778ce` |
| 73 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-17.md) | 547 | `declaration-track:c9569ec297c5486cba47631888286e4e1af60f109c2ae8c2032ef409035ce16f` |
| 74 | `instance` | [ULift.instCompletelyNormalSpace](../../../../GeneralTopology/SeparationRegular.lean/declarations/ulift-instcompletelynormalspace.md) | 550 | `declaration-track:ca425fc15ea69921752849b4fa58f5370720ea80856d3a1e0221318ef33fa7e2` |
| 75 | `class` | [T5Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/t5space.md) | 555 | `declaration-track:2cf49fdbe9d1869ba22470fb4ade5bf413aa289f00aa64e02c110ac5a95b3b6c` |
| 76 | `theorem` | [Topology.IsEmbedding.t5Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/topology-isembedding-t5space.md) | 557 | `result-track:599039bc042264446246001a758780575ede70e85405a0f0b561caba2525574b` |
| 77 | `theorem` | [Homeomorph.t5Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/homeomorph-t5space.md) | 567 | `result-track:8ece7c80f9741c1462b0642ed08270ac374b1763d6fbeecd3c6ff8182dff20d2` |
| 78 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-13.md) | 572 | `declaration-track:902d4a8834f557743adeba44bd87b6852bff7067f0d92836dbd64017a8698bab` |
| 79 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-19.md) | 576 | `declaration-track:d731489ad1e392f5ef795523d4610286416674ee79de9b7dbb7925a055c418ae` |
| 80 | `instance` | [ULift.instT5Space](../../../../GeneralTopology/SeparationRegular.lean/declarations/ulift-instt5space.md) | 579 | `declaration-track:e61e25d180752ec8376d6ba27c72ac7d65f87d713fb9d6c4f64f8df195a7fd3a` |
| 81 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationRegular.lean/declarations/instance-source-edition-12.md) | 585 | `declaration-track:87dfaab8e1fade2a53cd98d1e2a5e330dc0c6500a2a1442a361a5218d3c51cd1` |
| 82 | `theorem` | [connectedComponent_eq_iInter_isClopen](../../../../GeneralTopology/SeparationRegular.lean/declarations/connectedcomponent-eq-iinter-isclopen.md) | 597 | `result-track:fbfc01f89a31166ee9f3ea07cd5b10a55dd4750c39f160ba81987828522af689` |
| 83 | `instance` | [ConnectedComponents.t2](../../../../GeneralTopology/SeparationRegular.lean/declarations/connectedcomponents-t2.md) | 652 | `declaration-track:4a0d1f0ad49e958dc77fbb5ccec6c58ababc6431911fab9924f36e973b8033e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01687ac28ccc6eceb920cdc520af1e97ec45b6dd1b2a270b7e4b3c790caba79a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
