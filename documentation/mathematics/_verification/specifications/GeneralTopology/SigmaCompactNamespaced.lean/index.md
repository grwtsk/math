# Verification target: Sigma Compact Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dd298a20448c6ef208bf901868dcded37334039",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SigmaCompactNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SigmaCompactNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dd298a20448c6ef208bf901868dcded37334039`.

Source path: `GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.LocallyCompact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.LocallyFinite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSigmaCompact](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact.md) | 36 | `declaration-track:e079830559c1dad1f5c292eb7e5d7913c1c76ec82d2f8f3fbda802befdf8e0e3` |
| 2 | `lemma` | [IsCompact.isSigmaCompact](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/iscompact-issigmacompact.md) | 40 | `result-track:1ffed967df4a2cf607e0224f49d5300070639e1424adcf04664d395eb6b7faf6` |
| 3 | `lemma` | [isSigmaCompact_empty](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-empty.md) | 45 | `result-track:c37a6dae88d6519fa7b2ece9cfb4ed66a16ac99ce3e95fa8bef79c2e63869a9d` |
| 4 | `lemma` | [isSigmaCompact_iUnion_of_isCompact](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-iunion-of-iscompact.md) | 49 | `result-track:994c17f7e9a912982efa882276d9de4c68905c5e35213dda7114219fb38d9716` |
| 5 | `lemma` | [isSigmaCompact_sUnion_of_isCompact](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-sunion-of-iscompact.md) | 58 | `result-track:7cccfc8b0f5263326c442b095b28a9e457da749169e6b138f58899d6bf9815bc` |
| 6 | `lemma` | [isSigmaCompact_iUnion](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-iunion.md) | 65 | `result-track:cb93b018a6700d9ce22a04e6dd0090ce2a5464f813fe6598357143d9919dabd0` |
| 7 | `lemma` | [isSigmaCompact_sUnion](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-sunion.md) | 79 | `result-track:5b0777491c8ffa446281b3abf28da379f7587356dd3719fd39bcb6d5e7b43c56` |
| 8 | `lemma` | [isSigmaCompact_biUnion](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-biunion.md) | 85 | `result-track:80c8fcd74e9c16bd1e0a929091c5a66e329bd49cb5d73203406336dcbd8fa05e` |
| 9 | `lemma` | [IsSigmaCompact.of_isClosed_subset](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-of-isclosed-subset.md) | 93 | `result-track:2d25b0ea86c9b512918293a360107a356e810f9d779abfd0520b1f0ee7a7f64a` |
| 10 | `lemma` | [IsSigmaCompact.image_of_continuousOn](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-image-of-continuouson.md) | 101 | `result-track:5f304be9dbc2b20cba354dd7c14fc5b4637739a5b4a8761c2996fcd6c75981cd` |
| 11 | `lemma` | [IsSigmaCompact.image](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-image.md) | 108 | `result-track:b706759024413478ea821f3bb70acfc70e6f903049204d9ec02adb856bf888be` |
| 12 | `lemma` | [Topology.IsInducing.isSigmaCompact_iff](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/topology-isinducing-issigmacompact-iff.md) | 113 | `result-track:188eebf86a87c731ab719c358a7184162d14dd4b522317dddeb8ea1180d0f6d8` |
| 13 | `lemma` | [Topology.IsEmbedding.isSigmaCompact_iff](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/topology-isembedding-issigmacompact-iff.md) | 137 | `result-track:0719e3ecf6ff5640fb1df3d3b2d55ee9e7be49b4d973053a58c76017c8228f8c` |
| 14 | `lemma` | [Subtype.isSigmaCompact_iff](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/subtype-issigmacompact-iff.md) | 145 | `result-track:629873770b0ea6c1098b11e42b69576c55f49c61e6c5aca822f10dd4eb0a6757` |
| 15 | `class` | [SigmaCompactSpace](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/sigmacompactspace.md) | 152 | `declaration-track:58ddeec11c17cdbd7c75eb7e887418bb85889b39513fe05616bbd8ca4fd8a65e` |
| 16 | `lemma` | [isSigmaCompact_univ_iff](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-univ-iff.md) | 157 | `result-track:2a1726d2e6ea85587fb91ef9acbbfa630cc22409b8398846d38cfda9ddf34b14` |
| 17 | `lemma` | [isSigmaCompact_univ](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-univ.md) | 161 | `result-track:936022f091f550095e2a14d5d95853ae50bcfd14ec2db0279da2e4cc73810a5e` |
| 18 | `lemma` | [SigmaCompactSpace_iff_exists_compact_covering](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/sigmacompactspace-iff-exists-compact-covering.md) | 166 | `result-track:e8ca3cd996b63e0757d15a60e43dd58576c81f38b724444c9d1727ae2bbfce93` |
| 19 | `lemma` | [SigmaCompactSpace.exists_compact_covering](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/sigmacompactspace-exists-compact-covering.md) | 170 | `result-track:11920d53b259188a0b3a55f005b9141fc0cb1af8a7ba4724b02e1e785fa62f6e` |
| 20 | `lemma` | [isSigmaCompact_range](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-range.md) | 175 | `result-track:e76680872f084f0210b316b1c6d2979ab13820e9f3e1f82890860376a8d8b09e` |
| 21 | `lemma` | [isSigmaCompact_iff_isSigmaCompact_univ](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-iff-issigmacompact-univ.md) | 180 | `result-track:2c762bab3afb967088ca2a61ab2f6b8cc73216f861e108cdfcb82169aba13d96` |
| 22 | `lemma` | [isSigmaCompact_iff_sigmaCompactSpace](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/issigmacompact-iff-sigmacompactspace.md) | 184 | `result-track:d50b6f7770e3e3cfa29c52f7db65fcb59c0e1d03225471192f829cad235ef3e7` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-2.md) | 189 | `declaration-track:1bc3e001c2b978fdf53e439ce89a0430751c286bcc5b167c50d226199b39af6d` |
| 24 | `theorem` | [SigmaCompactSpace.of_countable](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/sigmacompactspace-of-countable.md) | 196 | `result-track:7dd65efc1e2b36ed260470c255f1196c64e751b7a2751bcf24ce9d2fbc46077d` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-10.md) | 201 | `declaration-track:f9646bdbc699fa7bcd57998e159bfb20f72c3d4104c416e3e0c7cfe163fdff4a` |
| 26 | `def` | [compactCovering](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/compactcovering.md) | 221 | `declaration-track:39dd1ba153b914c5ca3b5988db2a157331cac29eec511985edca544528ac92b8` |
| 27 | `theorem` | [isCompact_compactCovering](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/iscompact-compactcovering.md) | 224 | `result-track:4c0df7c29feabef2eafffa363fa6aea852fdc1e012ed0dba717dfe2125b236fe` |
| 28 | `theorem` | [iUnion_compactCovering](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/iunion-compactcovering.md) | 227 | `result-track:ed28d882ce645f04d6604100f1c954946ed3d1e0c5da98e3656fa4f201a3f6f8` |
| 29 | `theorem` | [iUnion_closure_compactCovering](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/iunion-closure-compactcovering.md) | 231 | `result-track:591c8658504e187bb967931f9a00a464badb6a30ec65173e094c2928a205dcff` |
| 30 | `theorem` | [compactCovering_subset](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/compactcovering-subset.md) | 235 | `result-track:35f1a875d8947e3eb9188b416e117647f2437acad8002bc12d3c5a5d8301e7cb` |
| 31 | `theorem` | [exists_mem_compactCovering](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/exists-mem-compactcovering.md) | 240 | `result-track:af1a2138089659e96624a9005a69ee65d28eb0c8d067de19ce269d942451469e` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-7.md) | 243 | `declaration-track:b89906de9a859888f0e4f979979614b2936410b667b50caee735c3e432715a8b` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-4.md) | 249 | `declaration-track:41bc1d8f38d1a3fb02c7b3b57538e04f71f9e3de2f0bffcbfdc9c93b5ad5a4f1` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance.md) | 257 | `declaration-track:130e22a8ce5280e6840b48b9c5157e87936d7dfe3fb2b6084ed29d452d003a52` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-9.md) | 264 | `declaration-track:d068e5a698126674a1a23e37b2adc1ab9c9377264c56be25b432f49f60e9e5e0` |
| 36 | `lemma` | [Topology.IsClosedEmbedding.sigmaCompactSpace](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/topology-isclosedembedding-sigmacompactspace.md) | 278 | `result-track:c2ab4220081c1ad5aa916f15b8c9fbc37b76cdad53a7eb19d56b86db5e912c8c` |
| 37 | `theorem` | [IsClosed.sigmaCompactSpace](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/isclosed-sigmacompactspace.md) | 284 | `result-track:30c492c331bb42a53876b8a93f8a4210a7aee6749eb741802322359cd8bd6661` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-3.md) | 287 | `declaration-track:34d73752f84ee411a16df7a2793f534b587c0eebe57053d27babd54b5028fef0` |
| 39 | `theorem` | [LocallyFinite.countable_univ](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/locallyfinite-countable-univ.md) | 292 | `result-track:dcc8fe2339cfeaee333db96a948c77e437ff96911ccc49910af4287cadc95dbc` |
| 40 | `def` | [LocallyFinite.encodable](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/locallyfinite-encodable.md) | 302 | `declaration-track:ac19f76d468b37e4e55914e18585ff1b00fff8f39baf8a662f946d43106d3707` |
| 41 | `theorem` | [countable_cover_nhdsWithin_of_sigmaCompact](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/countable-cover-nhdswithin-of-sigmacompact.md) | 309 | `result-track:ecb3c5a98a690939c5f4b478786c62ebd346d44c27105ae4e0fdf4703700a604` |
| 42 | `theorem` | [countable_cover_nhds_of_sigmaCompact](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/countable-cover-nhds-of-sigmacompact.md) | 327 | `result-track:bf7ff673074360233ae5cfbc534bc9abbf6bab235cb23bcb83d4ea212d25e83d` |
| 43 | `structure` | [CompactExhaustion](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/compactexhaustion.md) | 346 | `declaration-track:49fc67acad4d20da917c97765b54054fb7880fdc2efc0284af82c1c98bc7a2f4` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-5.md) | 359 | `declaration-track:4f9365b47697c57a592977200b78632a57515083456b76b538fd47f6816746c8` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-8.md) | 363 | `declaration-track:c013f6dc7084febceeca0d88353a8fd2a1bf8c6035bcc787eb6200c6bc994a10` |
| 46 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/tofun-eq-coe.md) | 370 | `result-track:df549b4c87f9708ae836ae4b42021e736781d6f9f85682f966fc32b0c2fb2203` |
| 47 | `theorem` | [isCompact](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/iscompact.md) | 372 | `result-track:a605be9c160bf42db7e7250063abc85883735b0529287a791298bfe686b13b6e` |
| 48 | `theorem` | [subset_interior_succ](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/subset-interior-succ.md) | 375 | `result-track:1f383bcb069424798ff164b7e750e9c31683761d0ce8a670432d83426bb7e32f` |
| 49 | `theorem` | [subset](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/subset.md) | 379 | `result-track:e6b00aaa51af44778c143803cd35a155936957de4adac661035013bd10310684` |
| 50 | `theorem` | [subset_succ](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/subset-succ.md) | 382 | `result-track:545cd84cf0a76617db066a3e9f37e223c5efbf9ce41b80159675040867fa74be` |
| 51 | `theorem` | [subset_interior](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/subset-interior.md) | 384 | `result-track:90c6f713dcdbfa71ee94dad348089adc6d62a6418e71503090981033f1bae610` |
| 52 | `theorem` | [iUnion_eq](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/iunion-eq.md) | 387 | `result-track:add3a480815bc2ee34f2a7c9c90b6c63133ac662c4e42f44dd788c6e134255c7` |
| 53 | `theorem` | [exists_mem](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/exists-mem.md) | 390 | `result-track:dbb3fc0bb4347bc4e48b3587c75e9cbbf27e8ac12845e37baa7631189440cf2d` |
| 54 | `theorem` | [exists_mem_nhds](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/exists-mem-nhds.md) | 393 | `result-track:254b10a5cd9a44895fe8046b7422f19c8db83b05cfeec910144fa8f4983a3541` |
| 55 | `theorem` | [exists_superset_of_isCompact](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/exists-superset-of-iscompact.md) | 398 | `result-track:42b88ce407b4a3f4fcf261168700ea58fa5c4bb2c3e68c6050efea4388d924fe` |
| 56 | `def` | [find](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/find.md) | 408 | `declaration-track:d900968da4a6d4e4e63218124f105dec1bc6c468b5899a42d8a3f6d7d6bf59f9` |
| 57 | `theorem` | [mem_find](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/mem-find.md) | 411 | `result-track:513fe44c675c6ae1abe9f1a16f6bfc22e6b57beb67d55fae33195945ca384ff0` |
| 58 | `theorem` | [mem_iff_find_le](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/mem-iff-find-le.md) | 415 | `result-track:32f46b21d94d4166a9498bb1c2d4e68e6a9a5827b1d38b8ee516bb29cd08a1fc` |
| 59 | `def` | [shiftr](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/shiftr.md) | 420 | `declaration-track:da626bbf764ad9112faf4de964a8b5d993879037a1e113f55edcf9e8226d5a4b` |
| 60 | `theorem` | [find_shiftr](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/find-shiftr.md) | 427 | `result-track:6769ae47ecc2a54e018f1fc72fcf5cd2edd0c9b9dd708d3d5e6fbc5f150a7319` |
| 61 | `theorem` | [mem_diff_shiftr_find](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/mem-diff-shiftr-find.md) | 431 | `result-track:778d85c92662812db209991cce78f94a44b529c3cdfe1deb18790bc226ea15e1` |
| 62 | `def` | [choice](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/choice.md) | 438 | `declaration-track:a5379187ffa81eaeab7ce45a6aad61cefc2017dd94875ef9a371cc6b96177458` |
| 63 | `instance` | [(anonymous)](../../../../GeneralTopology/SigmaCompactNamespaced.lean/declarations/instance-source-edition-6.md) | 451 | `declaration-track:4fd44816c9edc59c5dae2be73c62b0b268187c2bc5af1d0a8a96fa3cd052dd36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9b3f64ff0a7c1d158ade3ec33ca430a8443bd13b4bd4673821da1fe17a9613d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
