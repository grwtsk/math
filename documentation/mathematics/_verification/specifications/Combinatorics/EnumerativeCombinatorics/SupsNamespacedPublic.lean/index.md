# Verification target: Sups Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb46dccb130e3ceb12f4ce67d171a3dde88e64ef",
  "lexical_observation_count": 178,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant824805280b2ad96c71c39236396d2eb4383056856d0c35309541d49def9522aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb46dccb130e3ceb12f4ce67d171a3dde88e64ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant824805280b2ad96c71c39236396d2eb4383056856d0c35309541d49def9522aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant824805280b2ad96c71c39236396d2eb4383056856d0c35309541d49def9522aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasSups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/hassups.md) | 65 | `declaration-track:48f198f2d400c49d0ae0bb360d7ee344607e10d8563d262ad8d6dd10afbe7427` |
| 2 | `theorem` | [mem_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/mem-sups.md) | 75 | `result-track:460fde5e2e9725c540fcf379a155a0c59ee7cafc051d4b287e86e8704ce49e89` |
| 3 | `theorem` | [coe_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/coe-sups.md) | 80 | `result-track:d44f4c770fe959c85a9f2ba02b490a353f7e29723a982f01c19136a39083b1af` |
| 4 | `theorem` | [card_sups_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/card-sups-le.md) | 83 | `result-track:484df21ea53fca69bded76c7a39984106b15376f5b35f221f7c0a72d563fcf04` |
| 5 | `theorem` | [card_sups_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/card-sups-iff.md) | 85 | `result-track:641abd673508265cc44df82f6aa2e6dca24e6aeb818ec973ad6d39743a4470d9` |
| 6 | `theorem` | [sup_mem_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sup-mem-sups.md) | 90 | `result-track:a8d2ebc0b2690ef61c974a67822afbbd4c478addd6f0df261aa223067d270c7d` |
| 7 | `theorem` | [sups_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-subset.md) | 93 | `result-track:133b4664e9b5fd4e83ab8d066290fa2b6bc48b9932980c9f2d14ece0190f0959` |
| 8 | `theorem` | [sups_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-subset-left.md) | 96 | `result-track:e95515d335333c8829fe0201bb211ee6e89ef426af7276b2db1e9099a57f4b64` |
| 9 | `theorem` | [sups_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-subset-right.md) | 99 | `result-track:32e7d3391bbd7454987b68911ca4686faec976a19da159eb0ea806922d3fdbdc` |
| 10 | `lemma` | [image_subset_sups_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-subset-sups-left.md) | 102 | `result-track:592702ed1c6eeb9a6de4049d9b9d73d894f6689ad857395569f37921bc3a0ef0` |
| 11 | `lemma` | [image_subset_sups_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-subset-sups-right.md) | 104 | `result-track:6de0b84418cb2022a45ee18332ad254c7d8584aaa8b7cd2069ed66a05ca00816` |
| 12 | `theorem` | [forall_sups_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/forall-sups-iff.md) | 106 | `result-track:8fc7880d60496c07dc967b5688a8d05fe6406b431a50d346c299ee6207108a35` |
| 13 | `theorem` | [sups_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-subset-iff.md) | 110 | `result-track:b4f9fb1658eacb51ab0f1536b2ab23324b3cbe14288b394f13e7f4f0a31167bd` |
| 14 | `theorem` | [sups_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-nonempty.md) | 114 | `result-track:c1e380efc8e4caf0c3513a1ac49ba2d7e611843b3f648a61c95978fdfc921ef8` |
| 15 | `theorem` | [Nonempty.sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-sups.md) | 118 | `result-track:43eb2ee75da1f26b8345df5b8f266f132cc61434f250a6639872e42c7e0dc6eb` |
| 16 | `theorem` | [Nonempty.of_sups_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-of-sups-left.md) | 121 | `result-track:819e699de26b0d2eb0387da52d7d3d74a4e35b6122084ebff15c76427abaf0b6` |
| 17 | `theorem` | [Nonempty.of_sups_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-of-sups-right.md) | 124 | `result-track:49e3392560c1dfa3902f8a8ce8cafc4621d0c7d844775176e167e2d5ec071e7d` |
| 18 | `theorem` | [empty_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/empty-sups.md) | 128 | `result-track:c4d1f02be48053a314552593362f0c20cc42f76e6d0d9038dc7a8daa63a6aaea` |
| 19 | `theorem` | [sups_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-empty.md) | 132 | `result-track:4ba95789de82236716538c9b7d48f3ecf562e261f78d16dc65c30b9f76f484cb` |
| 20 | `theorem` | [sups_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-eq-empty.md) | 136 | `result-track:38b47beb159a2c236e6b13c3cebdd1b53457266d6b4773615ecf9a59d0f4f51b` |
| 21 | `lemma` | [singleton_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/singleton-sups.md) | 139 | `result-track:05ea8b84f46ff5dd05de4a2824fd0a68398ebe3c0426df19931e1951af86672d` |
| 22 | `lemma` | [sups_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-singleton.md) | 141 | `result-track:793ca98da0abfc82916307666f257f17bb2db13b484c61350fea09babe3927d5` |
| 23 | `theorem` | [singleton_sups_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/singleton-sups-singleton.md) | 143 | `result-track:36f9ca40ef1a811e72dadbb346c63cc0a97a1a237845ea664ce415f211ac3ee2` |
| 24 | `theorem` | [sups_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-union-left.md) | 146 | `result-track:ebaf4de1bc252b579c410d3123d14f3425fb71691302139d93fbdbc3f770ea45` |
| 25 | `theorem` | [sups_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-union-right.md) | 149 | `result-track:6a8236ed43f4c8080fd38e14309f303b24f70dd02da8e1fc61ebf7a91eb47015` |
| 26 | `theorem` | [sups_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-inter-subset-left.md) | 152 | `result-track:dcfaf4f48479e77fc9374701815a63ac69f31692ac4f72c035fa46ea0b6168a7` |
| 27 | `theorem` | [sups_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-inter-subset-right.md) | 155 | `result-track:7cdaf35d95017b675390bd335b4c5a307c825b3d051bf38a25b1bae2311b5380` |
| 28 | `theorem` | [subset_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/subset-sups.md) | 158 | `result-track:7007aa867a8f3dd0d851b872e894c3bea0ed27c11ff7b9e612c49b936f14a930` |
| 29 | `lemma` | [image_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-sups.md) | 162 | `result-track:077955f4ea927f0231464e59d06de1fdce718c5e77519f411be35662af26ec9c` |
| 30 | `lemma` | [map_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/map-sups.md) | 165 | `result-track:d47921aaeb911e902247fdf6e2ad514b5453ec26b284382ba77a92ed1cb13e33` |
| 31 | `lemma` | [subset_sups_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/subset-sups-self.md) | 169 | `result-track:40a30218c596b0c5ca647da64887ec700bd25a442b25c1fd3a57bc74b0ddc033` |
| 32 | `lemma` | [sups_subset_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-subset-self.md) | 170 | `result-track:878b2608c62fe42370e38446bdcc071aa517f83bbcaf06645d22b144a20103a2` |
| 33 | `lemma` | [sups_eq_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-eq-self.md) | 171 | `result-track:d51f56224438c97003d74a2062a05d16f28b193eb3dfb2ba3dc61badd6bd1cdc` |
| 34 | `lemma` | [univ_sups_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/univ-sups-univ.md) | 173 | `result-track:dbbb85d98915db005b80d86160bc186d961b1fc38f940e31fd35d46a2cc0f06f` |
| 35 | `lemma` | [filter_sups_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/filter-sups-le.md) | 175 | `result-track:334131fb87fe4d168da4a754eafcfeafd64dbf1b6d3bcaf91a46e34ccca6d938` |
| 36 | `lemma` | [biUnion_image_sup_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/biunion-image-sup-left.md) | 181 | `result-track:912cbba3d0769bf2b672748cd37f4d29973ce7fcae55b1fdb2642513a7855e29` |
| 37 | `lemma` | [biUnion_image_sup_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/biunion-image-sup-right.md) | 183 | `result-track:e08cbfc18fd56902a6c27c589c491cdc725bcd38ec16dee8f3c5396f220a571a` |
| 38 | `theorem` | [image_sup_product](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-sup-product.md) | 185 | `result-track:129787244ede94d0a61888b4e7727dc3b1db8a47cdb7ff5b24ea0b0184a08acc` |
| 39 | `theorem` | [sups_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-assoc.md) | 188 | `result-track:e8d34bae19b3c0ed3756e8a9cb80bfe842efa88b3185a3b382fca9f420c26d48` |
| 40 | `theorem` | [sups_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-comm.md) | 190 | `result-track:d3efea921731c0a130e385c283120aa19ef779ad80657cad233b1cf77be6639b` |
| 41 | `theorem` | [sups_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-left-comm.md) | 192 | `result-track:9e180dd0d9dfdd397164405866af6e533562f11f712c0e395a43ec45355dc658` |
| 42 | `theorem` | [sups_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-right-comm.md) | 195 | `result-track:096fe7ba8e6f31883f15246e7c06d81785e90ed338dd8e879f2009d53393b282` |
| 43 | `theorem` | [sups_sups_sups_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-sups-sups-comm.md) | 198 | `result-track:edae281ce0c75e3f646afc2ab2adeaa2a67e79cbbabe5fcd78e18838939029a7` |
| 44 | `def` | [hasInfs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/hasinfs.md) | 210 | `declaration-track:85287139864bdda1681b8770e23258b9c2af6dcee2c3b4cd146fe02e11df04f5` |
| 45 | `theorem` | [mem_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/mem-infs.md) | 220 | `result-track:a426b7172aed4aa0c937c07b7008e35a570da6176e51620d0668cce981f84871` |
| 46 | `theorem` | [coe_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/coe-infs.md) | 225 | `result-track:158218108b86e77975c544483232e01fdad4ca8aae0f5390a3720acae42b2070` |
| 47 | `theorem` | [card_infs_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/card-infs-le.md) | 228 | `result-track:38bff2fb2d202efa8445b2171fb0fb7a1ab02830b2d9ffdf10a2f06dbc992189` |
| 48 | `theorem` | [card_infs_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/card-infs-iff.md) | 230 | `result-track:3fa15dda00b80bfb5ce5d94248b0a3865e1464ee67a274dd16014b1b89e58a11` |
| 49 | `theorem` | [inf_mem_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/inf-mem-infs.md) | 235 | `result-track:c4f3d550f7d1c64ab8cf715fc76cb6d6dbed76565dbdcb83116661b0f2f1433c` |
| 50 | `theorem` | [infs_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-subset.md) | 238 | `result-track:343bb15840f6ce4b94b6935459ecfba8edfd374ace48a2010a2f6ba207dcda91` |
| 51 | `theorem` | [infs_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-subset-left.md) | 241 | `result-track:fba3791cc7b4984a13713f879770db73434423c5e0ce4091ce5415057f2921e1` |
| 52 | `theorem` | [infs_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-subset-right.md) | 244 | `result-track:0fc7be024a2c052ff676d7dd9df184992f7b35f1a877cfc0e73586a3fe3809e7` |
| 53 | `lemma` | [image_subset_infs_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-subset-infs-left.md) | 247 | `result-track:caa83af4a1aab8344db97471bbea1b9e35b7ade7950125322e3e375a56037c70` |
| 54 | `lemma` | [image_subset_infs_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-subset-infs-right.md) | 249 | `result-track:d6b28f5a52f6c9d05f49c30ed5c33ff05e2d513f4cff7257c7c6ce4d9f38672d` |
| 55 | `theorem` | [forall_infs_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/forall-infs-iff.md) | 251 | `result-track:7dff691ed4862dabd54856741de487e7f7ca8fd7bcb6944519c3f60b96f75e14` |
| 56 | `theorem` | [infs_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-subset-iff.md) | 255 | `result-track:936b44614d7da0a4916378a407bc8744700da243d9911d6ffc6e668534e52a56` |
| 57 | `theorem` | [infs_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-nonempty.md) | 259 | `result-track:232ed2121d72ad966ba564e0886242c13187b65a5cd604ff50bf16b29294525e` |
| 58 | `theorem` | [Nonempty.infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-infs.md) | 263 | `result-track:0482555d847b93c5d00f25efdbba85ab3f45aa117f36977120892a2d685a3ffd` |
| 59 | `theorem` | [Nonempty.of_infs_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-of-infs-left.md) | 266 | `result-track:95cc270fdf41f93e5ed4fb956b5ff4b0eedb13746b0b64d67f0a8f980ae8f2ff` |
| 60 | `theorem` | [Nonempty.of_infs_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-of-infs-right.md) | 269 | `result-track:3fef5a79c2d308124f88d05034210edbdea45fd15c9247b2765579f76637ed98` |
| 61 | `theorem` | [empty_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/empty-infs.md) | 273 | `result-track:51ffdf499fc2554acf57ea5629ae988197b775c28898ba6aef667ff2d1257b8e` |
| 62 | `theorem` | [infs_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-empty.md) | 277 | `result-track:327c20b66734d1428b4c5d7575889bf15e8497268d26785f14df2b56b4a4638d` |
| 63 | `theorem` | [infs_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-eq-empty.md) | 281 | `result-track:e130d118040e7a5bc6a82543788aa2b0d0f6e3d4ac00a3be35f6c5ad0ea7470e` |
| 64 | `lemma` | [singleton_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/singleton-infs.md) | 284 | `result-track:4f8c3314716b777b4e2f89e79c4f3ca31edbce6c55aab1411be9ae2f882511e4` |
| 65 | `lemma` | [infs_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-singleton.md) | 286 | `result-track:599dd367d42d94d681f95af3961f952bbee76009a22345eb67e3ba1fe09e6e04` |
| 66 | `theorem` | [singleton_infs_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/singleton-infs-singleton.md) | 288 | `result-track:d61beeb70842a5cf474286cb360c3f22cc86414f9471398325a9037462304b83` |
| 67 | `theorem` | [infs_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-union-left.md) | 291 | `result-track:ae2370e1084303230782df5d6b33cb24fe9825fb71693a848312ba2179bc14c2` |
| 68 | `theorem` | [infs_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-union-right.md) | 294 | `result-track:8b440afb3b0d951b402c894290dd9e04aa5b14ea358f027c2b72e57f29a6a774` |
| 69 | `theorem` | [infs_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-inter-subset-left.md) | 297 | `result-track:dfef7b948fb6b93cf8f478477311bd4b83b3a342538ff75bfbc3419eaa70d5bf` |
| 70 | `theorem` | [infs_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-inter-subset-right.md) | 300 | `result-track:41085ab6574a1d7f51defa272722b5a250fab306005082941d63b37a7e2d9889` |
| 71 | `theorem` | [subset_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/subset-infs.md) | 303 | `result-track:df7a574693a3999e492dc5fe3b0e640a977fe2106fddbf0c954d761b45567967` |
| 72 | `lemma` | [image_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-infs.md) | 307 | `result-track:b29c5b77771f6ad45c3385876f59fd8314f2b8d11122e63a87c5915a429b1693` |
| 73 | `lemma` | [map_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/map-infs.md) | 310 | `result-track:ecc2e21f91316bc4d83ddff849dc78b3d04e284c89a2f575fc91d7063f0878e8` |
| 74 | `lemma` | [subset_infs_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/subset-infs-self.md) | 314 | `result-track:7680fe299d1cbba642e54a4477a377581faf7901d12a0063c0c291860759dd81` |
| 75 | `lemma` | [infs_self_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-self-subset.md) | 315 | `result-track:ed3b1147206a39801b17befb5b3513fff46824972df014fd71baea6fbdcff3b7` |
| 76 | `lemma` | [infs_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-self.md) | 316 | `result-track:9e89466d2aa61d62cb6773e77b26ae1db3970849b06afd57c3fa152f2dd8c1bf` |
| 77 | `lemma` | [univ_infs_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/univ-infs-univ.md) | 318 | `result-track:77904292cc5df8da2dca848bcff3393e82ad1c41ebd82f3916d2c62c85b88e41` |
| 78 | `lemma` | [filter_infs_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/filter-infs-le.md) | 320 | `result-track:80ac118f1ab2531bf3ab2cf1af0e787b085b53af3397ab44bc4d7cf987cee35f` |
| 79 | `lemma` | [biUnion_image_inf_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/biunion-image-inf-left.md) | 326 | `result-track:afe821ed0d9ef8606be436eb0a4755c6d62d86ee2341eaa51f50f9b8c026990c` |
| 80 | `lemma` | [biUnion_image_inf_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/biunion-image-inf-right.md) | 328 | `result-track:a4bec37aadcbb94af4a98814a254fa7d64fdf2a0813943f35552421251a7968f` |
| 81 | `theorem` | [image_inf_product](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-inf-product.md) | 330 | `result-track:7986fbf954a73623e9370607828fac92eaf11c45419dba87ca8cd1e7b1deb3d2` |
| 82 | `theorem` | [infs_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-assoc.md) | 333 | `result-track:3311e69bb2d825c3d0c1259a27556facc1993128ef4e4289d3e584994913ef83` |
| 83 | `theorem` | [infs_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-comm.md) | 335 | `result-track:c87a0513807bdf729411dc7214d94486d1bf9e63dc4622d2b8beec65ceddd1fa` |
| 84 | `theorem` | [infs_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-left-comm.md) | 337 | `result-track:ad7bbb0b3644d64e81d777b1b0dd1319c293c0ec0fe674ac4591935950608018` |
| 85 | `theorem` | [infs_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-right-comm.md) | 340 | `result-track:7af37508740b176940ebbe0af7278870fb32de2ab97047210f4921fd92ef7f68` |
| 86 | `theorem` | [infs_infs_infs_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-infs-infs-comm.md) | 343 | `result-track:f5bcd4d7ad7d777ac9ca48004dd222bb05ef3cd2504a74979ed2aed5a703a6ec` |
| 87 | `theorem` | [sups_infs_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-infs-subset-left.md) | 355 | `result-track:ae6a63edf7776c231e5ccc52de12a3cc637105de6610d37d0c969fb1f87fd408` |
| 88 | `theorem` | [sups_infs_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sups-infs-subset-right.md) | 358 | `result-track:25ede21ac869661bf5bbdb776321230676de524fac9cbf12fdcfcbaa1bfa7938` |
| 89 | `theorem` | [infs_sups_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-sups-subset-left.md) | 361 | `result-track:c8cbd7a3007ebbf34d4e7852078a81493fbbf087165b5504167b07b000a8d80f` |
| 90 | `theorem` | [infs_sups_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-sups-subset-right.md) | 364 | `result-track:f18b52a5c9fa7929f064a85416617a582db3d99a6f099ac99b7c998196602606` |
| 91 | `lemma` | [powerset_union](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/powerset-union.md) | 373 | `result-track:19ace9d6daf7982a80d4382239d088647071916b5f2d4462b33cabc340f5c08c` |
| 92 | `lemma` | [powerset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/powerset-inter.md) | 381 | `result-track:f5bfc6e883aefcd5d4f101f1350bea64f97cfbff97ca8368cfff1d2b473d3edd` |
| 93 | `lemma` | [powerset_sups_powerset_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/powerset-sups-powerset-self.md) | 389 | `result-track:26922ca9428ae54eb934a92ee15b14db1b085c60a256c7c35ec683251108aea8` |
| 94 | `lemma` | [powerset_infs_powerset_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/powerset-infs-powerset-self.md) | 392 | `result-track:3cc84c18ee50871055e9dd216c56b756631d7a9e75afe546e6cef836fb841de3` |
| 95 | `lemma` | [union_mem_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/union-mem-sups.md) | 395 | `result-track:590000abb45a0e32991cce58f4442121d1b8f09c4974705aa1c0640fab4dd53b` |
| 96 | `lemma` | [inter_mem_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/inter-mem-infs.md) | 396 | `result-track:94a885905c090e784d68b1cfd963918f852f78f6f9eeb282fc3786b8db4d834d` |
| 97 | `def` | [disjSups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups.md) | 408 | `declaration-track:882f2ed5f5718918c7c4b7529be68530084ce13420c44afed466e651609cdb8d` |
| 98 | `theorem` | [mem_disjSups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/mem-disjsups.md) | 416 | `result-track:25324f4331c6d633203b3559cd6a18da69c1258f13a2723ea3a96f7b751c2d5b` |
| 99 | `theorem` | [disjSups_subset_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-subset-sups.md) | 419 | `result-track:91559a8324c9c031310da88ee6e257c6b3ae2f1e05b44722235fd01f36858eeb` |
| 100 | `theorem` | [card_disjSups_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/card-disjsups-le.md) | 425 | `result-track:4729cf1b7ac4fea019f21aef868a0ffd0d07c0fd689b348eedab9f78091b0fac` |
| 101 | `theorem` | [disjSups_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-subset.md) | 430 | `result-track:9b6e87613732c5276adedec6d2e04397b343237dcdf7eb854dda5426d7d4e7bf` |
| 102 | `theorem` | [disjSups_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-subset-left.md) | 433 | `result-track:80c2f8e4d84c41a81ba4e368e4d920d696e70db58061ab1eb9333ba8c186984f` |
| 103 | `theorem` | [disjSups_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-subset-right.md) | 436 | `result-track:bcecccc5b2ea9b977e05d0dc36b169d58c2ab6965ddcbff44003be1fc179f254` |
| 104 | `theorem` | [forall_disjSups_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/forall-disjsups-iff.md) | 439 | `result-track:8fb1d88a17dfd2d07eb97d86317bd463d35fb951275d12d37094a4cc051549ef` |
| 105 | `theorem` | [disjSups_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-subset-iff.md) | 447 | `result-track:332b65233d9112f77d7cc22d4813d1b7c929435387fd58ffcacdbb64e1ddc0f1` |
| 106 | `theorem` | [Nonempty.of_disjSups_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-of-disjsups-left.md) | 450 | `result-track:a7aa32919b53223f93a092f54e34fa4d9a03b4220127812f93b907f9b4d55360` |
| 107 | `theorem` | [Nonempty.of_disjSups_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-of-disjsups-right.md) | 454 | `result-track:0006701a7ae121972a284124823667cd354304e92cd62654f3aa98c9446d9ec6` |
| 108 | `theorem` | [disjSups_empty_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-empty-left.md) | 459 | `result-track:b1b2a427628f078362d026b949681ad10eb33ef3aeb1be4bb23979d4e93a140b` |
| 109 | `theorem` | [disjSups_empty_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-empty-right.md) | 462 | `result-track:ecd96ebe4339db36d431c081630379539909d22c6178fd71db43e244da37dd98` |
| 110 | `theorem` | [disjSups_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-singleton.md) | 464 | `result-track:dd4db5ea06fdb6cf32522ad475a992d9fb61935353f5186e17dec836d33a7491` |
| 111 | `theorem` | [disjSups_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-union-left.md) | 467 | `result-track:18f5789947a883c564713daa5cf3cf7fa82c11200372f1ef72f4a637b7a600bf` |
| 112 | `theorem` | [disjSups_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-union-right.md) | 470 | `result-track:b2fd8c79ffca8d7efdef8107e231f8a00296a89a91302d0022838fed17f6eb6f` |
| 113 | `theorem` | [disjSups_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-inter-subset-left.md) | 473 | `result-track:83a3926bc98c50b35c87721e32ff7fe0930f8f3bfe109d13e79de3463c822604` |
| 114 | `theorem` | [disjSups_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-inter-subset-right.md) | 476 | `result-track:9a968d939244e03cbb3bd95cfc50deebfcd0c33766807410e967970d0cf8af95` |
| 115 | `theorem` | [disjSups_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-comm.md) | 481 | `result-track:bc5413e4a2a7c88b0fc02212f42fd8c064c31363f108d2a5c98d4ea31caf92e4` |
| 116 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/instance.md) | 484 | `declaration-track:b9e366090ce96fd65a056a68742f3623db8cb75d7beda5fbdde930e26dc98dd7` |
| 117 | `theorem` | [disjSups_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-assoc.md) | 493 | `result-track:c4f08616697fb89b8786fe3c4e4ea98e6e2cc1b6a52aa3b3ebb5f9eaeae9256b` |
| 118 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 500 | `declaration-track:cc42d14f0bbb05ca7ac5a41ef1e95daea68acc4cccabc6233d334439c802a2bc` |
| 119 | `theorem` | [disjSups_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-left-comm.md) | 502 | `result-track:c53de76ae8bc365357aff8f32c99509a530144f1de13e0d9eab008be91d56234` |
| 120 | `theorem` | [disjSups_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-right-comm.md) | 505 | `result-track:17fdcb94a6dadbeb919fccc0ab5a30215d499b5896d9ad0a0ab40c2d0e66fadd` |
| 121 | `theorem` | [disjSups_disjSups_disjSups_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/disjsups-disjsups-disjsups-comm.md) | 507 | `result-track:aeadd571a0850571ec2a0820f0e181aed9d2870fbf5b25f0c8da80d81d194a77` |
| 122 | `def` | [diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs.md) | 516 | `declaration-track:0573bb903d2e95d61466a2dd0050926a81936669c2f52d5d50af7efe5dea1345` |
| 123 | `lemma` | [mem_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/mem-diffs.md) | 525 | `result-track:6d0809b4a5e6b04093aba188afda8dc5b27ec16906fd44185f284cfedb555cf4` |
| 124 | `lemma` | [coe_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/coe-diffs.md) | 529 | `result-track:c4fe4721042fe76a138ed88ecafe434ac8aea64958d2650a6230e551b1a64be4` |
| 125 | `lemma` | [card_diffs_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/card-diffs-le.md) | 532 | `result-track:9ce36a40933415cff6611cfbcb9328a6254e2efd53a06eb66ebacea99659187d` |
| 126 | `lemma` | [card_diffs_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/card-diffs-iff.md) | 534 | `result-track:7ee1294deccf6b5663b9806d7631bad6755992db92d4a8176e50d1867cc499b1` |
| 127 | `lemma` | [sdiff_mem_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sdiff-mem-diffs.md) | 539 | `result-track:eca1e076278dc445a4a048ceb62893a0fa98d5aaadc8ef68594a2e2fbae801da` |
| 128 | `lemma` | [diffs_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-subset.md) | 541 | `result-track:9cd31492b6677d4b4a009d64152a5562f6356a52e880ecf82bf6375c7c63f39a` |
| 129 | `lemma` | [diffs_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-subset-left.md) | 542 | `result-track:e5da9fae56791f5f1772d967fd3cb3ab05c5b2b5b1c5bcc5ab6392b40f6ce0aa` |
| 130 | `lemma` | [diffs_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-subset-right.md) | 543 | `result-track:fbdc9cdb57ae2d4cda571dedc8d8df72aab0448905a19fb4e2f7c8ece071b3fe` |
| 131 | `lemma` | [image_subset_diffs_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-subset-diffs-left.md) | 545 | `result-track:19abad5aab8cd9aa8bc565754733240a66c4619aec78ec7c44115a30861bfc40` |
| 132 | `lemma` | [image_subset_diffs_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-subset-diffs-right.md) | 547 | `result-track:41e578f3ed2b88982491a73dc62c9e6a5e67adec93675852892de9fd50d093bc` |
| 133 | `lemma` | [forall_mem_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/forall-mem-diffs.md) | 549 | `result-track:3e413f8872c9b76f7a5e7e82c6c228b03c6b5c9bfb9ed941fa0b621af23cbf42` |
| 134 | `lemma` | [diffs_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-subset-iff.md) | 552 | `result-track:bd4f66fd1ce6a4d6436d85b53b463ac893e26b311e790638c0bf3c0136ce8ae3` |
| 135 | `lemma` | [diffs_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-nonempty.md) | 555 | `result-track:3faf47dde038d62ca14e10ab73ce33fc0a25aa94c79b6ce32b24ebd2c412dcfc` |
| 136 | `lemma` | [Nonempty.diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-diffs.md) | 558 | `result-track:c88218ee732f3154c3335024b531365d7970646d908599020f485646ff7dbfa4` |
| 137 | `lemma` | [Nonempty.of_diffs_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-of-diffs-left.md) | 560 | `result-track:1748a316eec4137e43705fe161547a99dfb5845eeacd0d3a3c6dbe1439e8a62a` |
| 138 | `lemma` | [Nonempty.of_diffs_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/nonempty-of-diffs-right.md) | 561 | `result-track:df1eed1c7a32c0d27f76cacae44d8e9fcc19dc90adcd42ee065fd1b8cfd61a7b` |
| 139 | `lemma` | [empty_sdiffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/empty-sdiffs.md) | 563 | `result-track:a4148750eb9e204d0bdcae9a57ee007e29daa5913f826769b73c9e004945ee04` |
| 140 | `lemma` | [diffs_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-empty.md) | 564 | `result-track:2a4175d3bd7faa1dc4e913407a6c469253cad333128e95470e51296c43eaea03` |
| 141 | `lemma` | [diffs_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-eq-empty.md) | 565 | `result-track:ea58d0db8df943656d2b6540be8a657855d685f62c0e5870a4bebf28d73af8dc` |
| 142 | `lemma` | [singleton_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/singleton-diffs.md) | 569 | `result-track:515aff79de4d482fd093b2f7aa852b29f029f2038cb44f335000b53c63528993` |
| 143 | `lemma` | [diffs_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-singleton.md) | 570 | `result-track:e987f1cf334308155c81aa40a903db70d034060a428c8e233581898a70bc1679` |
| 144 | `lemma` | [singleton_diffs_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/singleton-diffs-singleton.md) | 571 | `result-track:11aec7ac41f884b1bdfe192fd7241e8f1a2fd00b8606cf4c78834a23f3764072` |
| 145 | `lemma` | [diffs_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-union-left.md) | 573 | `result-track:460d7ae99e41f3c176d7ae8603ffaaacbcc0e7d54c713dee00d2f8a97b77692b` |
| 146 | `lemma` | [diffs_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-union-right.md) | 574 | `result-track:3aae2c5f1b9de376ee1158ab237a7a19304810a8df07ede0d0f4938054982d2a` |
| 147 | `lemma` | [diffs_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-inter-subset-left.md) | 576 | `result-track:57ff75137da240cb21106bd0c097988db874e2e41654f5d3f90e1968026cad71` |
| 148 | `lemma` | [diffs_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-inter-subset-right.md) | 577 | `result-track:980671768d3b53e7a771e5affd411f4831eea31157bd316515092cc26b395e32` |
| 149 | `lemma` | [subset_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/subset-diffs.md) | 579 | `result-track:e0a848c0770f9f4d3a623970f6411ee451972412bdf8bdeb92894f9ec2eec7ff` |
| 150 | `lemma` | [biUnion_image_sdiff_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/biunion-image-sdiff-left.md) | 585 | `result-track:afa55529fc94466207ff264a0bcbf323bbd1932453a3e338f304b280485d92af` |
| 151 | `lemma` | [biUnion_image_sdiff_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/biunion-image-sdiff-right.md) | 586 | `result-track:fd783c33dbe0e03904d38ec60232a1d3effa7bef85fdadb0a3cd018abb2cf372` |
| 152 | `lemma` | [image_sdiff_product](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-sdiff-product.md) | 589 | `result-track:9f8a320ba87a82dd2c4149910182a104f479ac14b00d39dc1fd098a69c7361df` |
| 153 | `lemma` | [diffs_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-right-comm.md) | 592 | `result-track:16a2b6f8d8b620299b3a2202ee941964b0c628491b93d40901920d694af7568b` |
| 154 | `def` | [compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls.md) | 600 | `declaration-track:f2c45e6c807296f7276600a57d9f44caa8b8ae9d85cb2b0b3e7aa74ddaa641e3` |
| 155 | `lemma` | [mem_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/mem-compls.md) | 607 | `result-track:32959ef5b06fb07c19f060280c096494aacfcbba0e91de5e47a6bb50a5961563` |
| 156 | `lemma` | [image_compl](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/image-compl.md) | 612 | `result-track:212fc9a8b022eaaaa1537538cbfdc84a082d5856ee3855ad9b73dd00302c9e52` |
| 157 | `lemma` | [coe_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/coe-compls.md) | 614 | `result-track:5c8dcc827d023d360203c61a83e13368ac10a880f9a6e674ae067b3ba201a40e` |
| 158 | `lemma` | [card_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/card-compls.md) | 616 | `result-track:a9798c413dcc1de3ac7c06941dcede5ff9e2fbe4a8b677cfa5baf6a13411d8e5` |
| 159 | `lemma` | [compl_mem_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compl-mem-compls.md) | 620 | `result-track:0f973966fc6fa8fe434a07e7826026bba11c06accec6326a5bb016c11eec95e8` |
| 160 | `lemma` | [compls_subset_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-subset-compls.md) | 621 | `result-track:59b199da54ce5ded43a9214c5537c4360daf6e21a08c95b4af8ab908f0c2d854` |
| 161 | `lemma` | [forall_mem_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/forall-mem-compls.md) | 622 | `result-track:08a7e55c6a862132379c1fe37236c57e9b5c2793600458990b5c27b03cd6d640` |
| 162 | `lemma` | [exists_compls_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/exists-compls-iff.md) | 623 | `result-track:98f0c232e563606018ecec436758a0b98d865622c1689a4e7050f386fa5b8065` |
| 163 | `lemma` | [compls_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-compls.md) | 625 | `result-track:db9ff7a1a4da815b0d61720601a471f9f7fc1191bd9a64fda1e456badc20b878` |
| 164 | `lemma` | [compls_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-subset-iff.md) | 627 | `result-track:eb91f510536141be370377be6fff1fb00047eb51d115412ae492e94808c3d0bf` |
| 165 | `lemma` | [compls_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-nonempty.md) | 630 | `result-track:f7995dc4215d740036fabe3dd933057c6855818c83081bd5bc7903a87e2c1b82` |
| 166 | `lemma` | [compls_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-empty.md) | 635 | `result-track:f6dbc2f96afdf96090de92b013eb9ca5684d62e9d251ef0f22e6b62604520f59` |
| 167 | `lemma` | [compls_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-eq-empty.md) | 636 | `result-track:00a95e23f68fd3e54a6759096ea2c5094cf3868789988c2424ef13cb1b3112d9` |
| 168 | `lemma` | [compls_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-singleton.md) | 637 | `result-track:dd934ba532bad41933b6e6f1383e99025b84391f9e54011875180ce16548e786` |
| 169 | `lemma` | [compls_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-univ.md) | 638 | `result-track:27d57ebdc44c41ae7813186dce556dc1685fbe1bfa6b9149ff98e3ce24c46061` |
| 170 | `lemma` | [compls_union](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-union.md) | 642 | `result-track:450ec84e483318e134328ff3ba76d33e56b5e9df8d3c82b08e28e250eefd0c87` |
| 171 | `lemma` | [compls_inter](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-inter.md) | 643 | `result-track:77e5744078e44734f01ae984c1b7464b0b029b9415ff979e850827ee6f2da126` |
| 172 | `lemma` | [compls_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-infs.md) | 645 | `result-track:ba23f2b4f37383e0e0185109328f16e043c4fdf9e12b27417f93f3634eda01de` |
| 173 | `lemma` | [compls_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-sups.md) | 648 | `result-track:ea2ebdc057a11b383998a498f900f355fbdeafe7349b769ff87cf7a266adfaf7` |
| 174 | `lemma` | [infs_compls_eq_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/infs-compls-eq-diffs.md) | 651 | `result-track:2a448430c408352534e134809991cdaab08cffad0c036094b0a79b0612640273` |
| 175 | `lemma` | [compls_infs_eq_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/compls-infs-eq-diffs.md) | 654 | `result-track:4961890a86b96411b970cfc1267a105b31468ea582067216f17b66468ae384ae` |
| 176 | `lemma` | [diffs_compls_eq_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/diffs-compls-eq-infs.md) | 657 | `result-track:013891a1669ca98608b566a059b3994312b8be74f934219d007aa7049208397a` |
| 177 | `lemma` | [Sups Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ha.md) | 662 | `result-track:577d1d008c0a902e0461ce3e808d4f21fa9928a18c23c52853ecae5f0067a2fc` |
| 178 | `lemma` | [sized_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsNamespacedPublic.lean/declarations/sized-compls.md) | 666 | `result-track:504f9de12f2945a2ee98b5c06ef1e3c12865b81afbe947e0035fb96ad68c2a0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c67b96ed38c1dc1de6b32269121d9e7275a11f4013dacccc5bf84021b737352b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant824805280b2ad96c71c39236396d2eb4383056856d0c35309541d49def9522aa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant824805280b2ad96c71c39236396d2eb4383056856d0c35309541d49def9522aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
