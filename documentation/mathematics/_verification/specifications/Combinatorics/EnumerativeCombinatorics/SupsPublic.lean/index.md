# Verification target: Sups Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98b0ac30f8bc754cf02abb48b61befecf15e99a",
  "lexical_observation_count": 178,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant3354cf93b4fb615c14e25b4b04ae5e534086ee14600491a828e03a384dad468f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98b0ac30f8bc754cf02abb48b61befecf15e99a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant3354cf93b4fb615c14e25b4b04ae5e534086ee14600491a828e03a384dad468f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant3354cf93b4fb615c14e25b4b04ae5e534086ee14600491a828e03a384dad468f.lean.json)

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
| 1 | `def` | [hasSups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/hassups.md) | 57 | `declaration-track:ed162d5273859514c35c56329ca2349efc78a4b30d25cfc62fd354b24141289b` |
| 2 | `theorem` | [mem_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/mem-sups.md) | 67 | `result-track:82eccd76ab92374e9af1f6ba0f9b68973c706985bbf4cb4d96790fc500bcf48f` |
| 3 | `theorem` | [coe_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/coe-sups.md) | 72 | `result-track:d8b14e247b8d3f661860f172238b8a51d3e1b550218e05eaaeb3e36c78903395` |
| 4 | `theorem` | [card_sups_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/card-sups-le.md) | 75 | `result-track:a8b3ff1a061aefa9074a3876a116dd0bf9f8950d4ca4f9cb328f61a3ba06e379` |
| 5 | `theorem` | [card_sups_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/card-sups-iff.md) | 77 | `result-track:40e71bb6512bec6d80ba47751b8ebd7c5844ce959377956d717b46eb10b2e08d` |
| 6 | `theorem` | [sup_mem_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sup-mem-sups.md) | 82 | `result-track:2fa3ac794169b0fb6ec4846ae9317de8d809d5ed25d24ceeb1d239e0b6380693` |
| 7 | `theorem` | [sups_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-subset.md) | 85 | `result-track:4eb0b934a80b7e4dd79d5bdefd7204aa32fb3f6472cc1fcd3fe92e726c6a0f67` |
| 8 | `theorem` | [sups_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-subset-left.md) | 88 | `result-track:931e008942fba0773e73a202f37c4288549886ed8c0b855a88774fc1199e0dc4` |
| 9 | `theorem` | [sups_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-subset-right.md) | 91 | `result-track:ecd82f8862e1c779cd420db313237cd572f65fc482b2d0a0def50c49c87a41cd` |
| 10 | `lemma` | [image_subset_sups_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-subset-sups-left.md) | 94 | `result-track:87f1c227f59a845c819c70803b734ba403560091f7d375ff42efb2d1a3e41441` |
| 11 | `lemma` | [image_subset_sups_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-subset-sups-right.md) | 96 | `result-track:0528423e49a2ec62f944033e9ab4a90568b7ef55982ff52b9614e7edcca555b8` |
| 12 | `theorem` | [forall_sups_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/forall-sups-iff.md) | 98 | `result-track:723b190042d7097d3a7426b35a7eb7ec0014e052976891f85a8737613be068f5` |
| 13 | `theorem` | [sups_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-subset-iff.md) | 102 | `result-track:c4187a41773f310e05012adfd567c751c59c32dc589a90547265eee76d82c19d` |
| 14 | `theorem` | [sups_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-nonempty.md) | 106 | `result-track:f662de1e2375513c1ad5d9fb9d228cad90374674904902783bedd7c95bd893ba` |
| 15 | `theorem` | [Nonempty.sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-sups.md) | 110 | `result-track:deb577baafc08d4b1ea8e059788b17e94a8242cf7a13c5eb8191e42d674283a1` |
| 16 | `theorem` | [Nonempty.of_sups_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-of-sups-left.md) | 113 | `result-track:8a75b5e5948b2cec6b031a7a22a3cb338d2ec5424dd7473d12108c89598dc397` |
| 17 | `theorem` | [Nonempty.of_sups_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-of-sups-right.md) | 116 | `result-track:6d0b2c59352884d4875ed93e17682d9e1f941ecbded3797b7d0b8cea26f80a0a` |
| 18 | `theorem` | [empty_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/empty-sups.md) | 120 | `result-track:1d9cdccb663533a509a1910083b86a1841249553ab8006dcec7186cac1b54b36` |
| 19 | `theorem` | [sups_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-empty.md) | 124 | `result-track:80e2b6211763adbb0af6195574ea4051ef8c343ad4c642ecd8352cf631951603` |
| 20 | `theorem` | [sups_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-eq-empty.md) | 128 | `result-track:51634dc078e8cf241dcd8958df3fe510b1c12982ce6de91a37b3d6a6df5951c8` |
| 21 | `lemma` | [singleton_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/singleton-sups.md) | 131 | `result-track:dc33c193e4c3d0fb1b1563a091b61760811dd5bfb8155c6b7c0e310cb7723c15` |
| 22 | `lemma` | [sups_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-singleton.md) | 133 | `result-track:895b7663a7dac255f00f57210a4ebafa3b59c1db52d440260763bb7659d27285` |
| 23 | `theorem` | [singleton_sups_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/singleton-sups-singleton.md) | 135 | `result-track:1ebf554ec250f928e56e6ee5de201577328549d3bf7ae922f04bf005176abaf6` |
| 24 | `theorem` | [sups_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-union-left.md) | 138 | `result-track:7b3f7cbf5371d2d8f5bdaffbf6173a72f017fffed064a0551c7b4839b18625e7` |
| 25 | `theorem` | [sups_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-union-right.md) | 141 | `result-track:bfad4968e755ff408e3f379f7dd478866e7d6e5e34512ff2e18d996421fc0908` |
| 26 | `theorem` | [sups_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-inter-subset-left.md) | 144 | `result-track:7ee17a539320a33a0a5e018e18b2e821215d576eb99ed4b0cbd1037fbdeadeda` |
| 27 | `theorem` | [sups_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-inter-subset-right.md) | 147 | `result-track:fe218a9014d3bbad1f8b8d3164ff07584517e363b99cf5b84116eaa09b8ec478` |
| 28 | `theorem` | [subset_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/subset-sups.md) | 150 | `result-track:67beb979c944c3944d567bd31e123db44874ab2813cb8fd435170b45ffe136bf` |
| 29 | `lemma` | [image_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-sups.md) | 154 | `result-track:2fcf75ede2b12c0a8f3b66f0930c623425737d462371bc442b93266cd04f1dcb` |
| 30 | `lemma` | [map_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/map-sups.md) | 157 | `result-track:40190163cfeedd074dd609423787f2a622a485f7811caa5476807d91a1c1e447` |
| 31 | `lemma` | [subset_sups_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/subset-sups-self.md) | 161 | `result-track:42c72185ddd063e8ce496fba0a247fd204d8814d8f2f05f4fc0ab913e702d45a` |
| 32 | `lemma` | [sups_subset_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-subset-self.md) | 162 | `result-track:c8d96c06ca11823c0ae737f8274d4878d91d5530ca2602a25369cf6ba144770d` |
| 33 | `lemma` | [sups_eq_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-eq-self.md) | 163 | `result-track:5df85b593b01522fe556edbe9a34edaf83908212043ddd538ce1ff43e8dd814d` |
| 34 | `lemma` | [univ_sups_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/univ-sups-univ.md) | 165 | `result-track:4365a1f7ca5745b157e7b16b0910a24349d32b538362382cd472588d82f9175a` |
| 35 | `lemma` | [filter_sups_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/filter-sups-le.md) | 167 | `result-track:76668718c9121ec0310f8935032346fd7bb89a0c0975c0d394f95308b8c675f0` |
| 36 | `lemma` | [biUnion_image_sup_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/biunion-image-sup-left.md) | 173 | `result-track:a266685735b980d3f68508ec20c415e8678d1d4db6fc5ff98bbb9b3540e6a604` |
| 37 | `lemma` | [biUnion_image_sup_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/biunion-image-sup-right.md) | 175 | `result-track:7dbb828664fee0db5b2f5b1a32cdf68bf315538dad20308dfc5ea8268810b3c1` |
| 38 | `theorem` | [image_sup_product](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-sup-product.md) | 177 | `result-track:0d9f6e90e8d05fc89078bcd1ecf968997247ffecffcdbee2f765f284443f8b93` |
| 39 | `theorem` | [sups_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-assoc.md) | 180 | `result-track:45883242b4b995cddc3f57610893582ccf1046c2461d6dbf657a6dcf500b63a1` |
| 40 | `theorem` | [sups_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-comm.md) | 182 | `result-track:6cb04977ffae8a50ea5d7eaa36fafa75c526c4f55aff3445e6de1b4712c51836` |
| 41 | `theorem` | [sups_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-left-comm.md) | 184 | `result-track:c64b9169321ceac0acf8f4625af3319a241a91d8b1160475cb39b7936a6803f5` |
| 42 | `theorem` | [sups_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-right-comm.md) | 187 | `result-track:4f0be8fb00192c5834efd0b2f169d9af67638022302250df501fc5530146107a` |
| 43 | `theorem` | [sups_sups_sups_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-sups-sups-comm.md) | 190 | `result-track:48baf2ed26b02031373bfc7c8bc9ef85ee18b6d179783997ea36046dcc688c43` |
| 44 | `def` | [hasInfs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/hasinfs.md) | 202 | `declaration-track:026864111b24bf4a02259ba5c90dbaa2416c47455bdb7c1420f480f1bddfca38` |
| 45 | `theorem` | [mem_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/mem-infs.md) | 212 | `result-track:de5890a745a1811c2dad7e0cc1e21c3c2c01c4a04de161fe7184e0f4eb28f6ca` |
| 46 | `theorem` | [coe_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/coe-infs.md) | 217 | `result-track:cb387398c38eadce5b457669033e32f48ae715b4b3f288f747e3bc53fd9d13ef` |
| 47 | `theorem` | [card_infs_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/card-infs-le.md) | 220 | `result-track:9d20106dccb5edec5e84148ec594a29ec3ba3240793d699db8f9d40f0612cb9c` |
| 48 | `theorem` | [card_infs_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/card-infs-iff.md) | 222 | `result-track:f1c26236e9eb2e1ada7b81c82ee55ad2e226cdeacda3035990ac155df5c42c49` |
| 49 | `theorem` | [inf_mem_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/inf-mem-infs.md) | 227 | `result-track:1175b982a9181d83ad2cbc2cdcae6a65ee3c38bda743edbda8c5962f255546b6` |
| 50 | `theorem` | [infs_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-subset.md) | 230 | `result-track:071bd64710af0bd9c6f6f1ab6d817f57defa7d7beeed7c27581ca81136bc4d0a` |
| 51 | `theorem` | [infs_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-subset-left.md) | 233 | `result-track:f8d9a503155a80925d5814d5cbc896658eeecdab77e7724e21b3236b2570785e` |
| 52 | `theorem` | [infs_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-subset-right.md) | 236 | `result-track:b4eba62682749261afab032114a4d6faecafae6be9599217248821982eaece60` |
| 53 | `lemma` | [image_subset_infs_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-subset-infs-left.md) | 239 | `result-track:f791132d97fbb66e796361942ccdef938fe0a199fee9496576f0a450b34967e2` |
| 54 | `lemma` | [image_subset_infs_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-subset-infs-right.md) | 241 | `result-track:5560154b21036730ef5aac34fd88edf93df59249335c7ca8f9acc7d71345f454` |
| 55 | `theorem` | [forall_infs_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/forall-infs-iff.md) | 243 | `result-track:f700469bc21f862edd9140d72ed449d7c633d8d61ebea954eac9a9dc608e6e2c` |
| 56 | `theorem` | [infs_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-subset-iff.md) | 247 | `result-track:e223db32b98f88462f21ac104f71cb2dc3d1a8d44bccecd1bc4d6f80a1151d9a` |
| 57 | `theorem` | [infs_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-nonempty.md) | 251 | `result-track:3179c046b792e9f11fdaba9a10efdf705aedbf13506bd5d5a939cf3b0b468927` |
| 58 | `theorem` | [Nonempty.infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-infs.md) | 255 | `result-track:a8b69e7a09f4332f9927715f657fdf757a758c06f263b605c528688d6525ee20` |
| 59 | `theorem` | [Nonempty.of_infs_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-of-infs-left.md) | 258 | `result-track:438a8eb829f2f515f526fc8ab86c317b92f510f859bcf0dc44c9d3c527414e01` |
| 60 | `theorem` | [Nonempty.of_infs_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-of-infs-right.md) | 261 | `result-track:bf00fb331063a4a64d8c2d89427057532be552776bcb5f6d155dc916225a2923` |
| 61 | `theorem` | [empty_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/empty-infs.md) | 265 | `result-track:c9ee7c3bb7be0aaab258f238ddc38519d463a52ef1acf738d1d9bf0b86a14e4b` |
| 62 | `theorem` | [infs_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-empty.md) | 269 | `result-track:fc54f154fad1f1b6c1e913554ff211874ac7637269137a890cb639f0b576d0e6` |
| 63 | `theorem` | [infs_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-eq-empty.md) | 273 | `result-track:b50f398d1d7e3e231e39cff4ad51ca494b27675f9ce55303502dd2aa6266adf1` |
| 64 | `lemma` | [singleton_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/singleton-infs.md) | 276 | `result-track:c724de8756fc2e43659a21aa5c486040a80e2375c9438a959825063eb55ee428` |
| 65 | `lemma` | [infs_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-singleton.md) | 278 | `result-track:6f5c4b8b457eb6edbddc98d6874db4b85a05c969c5bfbd327fe401735effc620` |
| 66 | `theorem` | [singleton_infs_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/singleton-infs-singleton.md) | 280 | `result-track:129efe8aae8360fb3728975b51c37f05a22e12f53c62e783d36a4bd619c4360b` |
| 67 | `theorem` | [infs_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-union-left.md) | 283 | `result-track:4cee1cb8e90441efc3aff2d283919ab001dee441b1e273a0fc473ddc77a62668` |
| 68 | `theorem` | [infs_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-union-right.md) | 286 | `result-track:ac1c9378ba57a3d5b2c2c1423c8aaa14ca5edeffda67889b742ebee8efc55586` |
| 69 | `theorem` | [infs_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-inter-subset-left.md) | 289 | `result-track:028de2a0f3c235f7f285cab97111e3718882db705d625c697030a11d9b4e9528` |
| 70 | `theorem` | [infs_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-inter-subset-right.md) | 292 | `result-track:50d3307feb9f65ed6cf42499844e271f922309098a423230039818e4065d2446` |
| 71 | `theorem` | [subset_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/subset-infs.md) | 295 | `result-track:938b9e7132b9540d165df727a61b52dca2942ce286af4212a7c8a85be7cf517c` |
| 72 | `lemma` | [image_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-infs.md) | 299 | `result-track:cb3ce011f3d7623a428fe1e7ab009068d68c28cdc319cf6670a96e09a942004c` |
| 73 | `lemma` | [map_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/map-infs.md) | 302 | `result-track:7b9d45ddc14c5f3224d749a1f17e475bee51037d94102e8636622afff0fa38d1` |
| 74 | `lemma` | [subset_infs_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/subset-infs-self.md) | 306 | `result-track:756960c991fc1e5f18def48ca945811011803a63658f8f6511d0f85b77ce1ce4` |
| 75 | `lemma` | [infs_self_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-self-subset.md) | 307 | `result-track:c2ad794b3cf2417dab6482a82de86c5f9e2189259d120045c6f169c6761aba12` |
| 76 | `lemma` | [infs_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-self.md) | 308 | `result-track:08916f1e83f3237ec32bdbc118d517c0bf9b874366f9c03374bb3e8451c8c67e` |
| 77 | `lemma` | [univ_infs_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/univ-infs-univ.md) | 310 | `result-track:a11ab954f6b387f1664d3439fc086c8e12afefc9c1915c62139daaabb6ea1351` |
| 78 | `lemma` | [filter_infs_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/filter-infs-le.md) | 312 | `result-track:75c01beeb2e6cd4b6a74ea9c3769d42bbd8f8a8edd3789ca1f1b178134bc54e4` |
| 79 | `lemma` | [biUnion_image_inf_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/biunion-image-inf-left.md) | 318 | `result-track:bfe2cc53c851cf0e68f58baa56aa7088bbdc850b6a3a85282600670987a605ce` |
| 80 | `lemma` | [biUnion_image_inf_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/biunion-image-inf-right.md) | 320 | `result-track:e187065a51f4040c0f1c3ba50d774fc820c681a3f691589af2d4cbf9f0685953` |
| 81 | `theorem` | [image_inf_product](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-inf-product.md) | 322 | `result-track:9837d2d005fe76dbeae66df7d3a477cf9894267d70897e8f6bd42280c1ea4ad3` |
| 82 | `theorem` | [infs_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-assoc.md) | 325 | `result-track:4d5895c60f51c1790c21120e2ac9854221ff8da16799bf12d46e0131d078ca34` |
| 83 | `theorem` | [infs_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-comm.md) | 327 | `result-track:48147d45e5f3e4d0d1fe6f23c1eba2136136b5197a704eac907d91767dc902b6` |
| 84 | `theorem` | [infs_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-left-comm.md) | 329 | `result-track:766acd127ec733194013a05d1a22f328353ee86e3e7533533f1913eb09fa8555` |
| 85 | `theorem` | [infs_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-right-comm.md) | 332 | `result-track:6d6aeb49e028c38bc1cfc1859913b44d2f072d83fd285366f7cdd47b285918d6` |
| 86 | `theorem` | [infs_infs_infs_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-infs-infs-comm.md) | 335 | `result-track:120c97658eaa8e777521254823d2d9f824adde2fb9723d80e5a0069f3d449b9f` |
| 87 | `theorem` | [sups_infs_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-infs-subset-left.md) | 347 | `result-track:b03e2fbbae59aaf698a89aa429068ecb18a467a5a6009d2256cae0e531609c5a` |
| 88 | `theorem` | [sups_infs_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sups-infs-subset-right.md) | 350 | `result-track:f61044fe4ff47c76a1930d68114be2beb7862816e30df277007d94a8d46d99da` |
| 89 | `theorem` | [infs_sups_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-sups-subset-left.md) | 353 | `result-track:bb43a89dcf941f13cf6ccdf0ef5e0067efa7fb28db3812932dbe7d1ad5181062` |
| 90 | `theorem` | [infs_sups_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-sups-subset-right.md) | 356 | `result-track:5929db814dda02c0f1584f459740ac47b246af060d528067115582b8c6d6169f` |
| 91 | `lemma` | [powerset_union](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/powerset-union.md) | 365 | `result-track:c5683677e18b0fd6e5cff0067b8d060670067e8cac492bb1f5a11d18399fce79` |
| 92 | `lemma` | [powerset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/powerset-inter.md) | 373 | `result-track:fb57d6947c5d0240c6a061afa3411c11203852bd495ee478f46644df58280f88` |
| 93 | `lemma` | [powerset_sups_powerset_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/powerset-sups-powerset-self.md) | 381 | `result-track:21cf05fca6f894463d1c2cff32edc326662b8b0228e8b70fc530fe2826585982` |
| 94 | `lemma` | [powerset_infs_powerset_self](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/powerset-infs-powerset-self.md) | 384 | `result-track:a32b6e35dc1af5296fd586aca43fc0ca72b697cca237fa756b2c1e7aa6a21878` |
| 95 | `lemma` | [union_mem_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/union-mem-sups.md) | 387 | `result-track:e1907732bb0dcb0df658cf63c029ce7200e5d9766602e88ca41effd33d31e974` |
| 96 | `lemma` | [inter_mem_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/inter-mem-infs.md) | 388 | `result-track:47a1ad43785c80a41585d35de3b0ed414b32cfdef3f7dfb7d748af861af561a1` |
| 97 | `def` | [disjSups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups.md) | 400 | `declaration-track:3dbc25c7cd1b4df549bd2cf782b0f390ed2362977325c338358354e6be117ac4` |
| 98 | `theorem` | [mem_disjSups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/mem-disjsups.md) | 408 | `result-track:f73a3bf9d21e270f34b04776d9146107420f421b4e44a489397d01666ceb3b22` |
| 99 | `theorem` | [disjSups_subset_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-subset-sups.md) | 411 | `result-track:e67d1fb6dc42e49619d45842212a9853fa4246a916fddad9ff9c117b0fd86561` |
| 100 | `theorem` | [card_disjSups_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/card-disjsups-le.md) | 417 | `result-track:28b2a6a78fd2e3cb8e049d27e38439f5b107d15a527974c131cc64927975911e` |
| 101 | `theorem` | [disjSups_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-subset.md) | 422 | `result-track:300aaffd14e515ab3b0adad331ba94e2e2e4cd1eb2d472a52d47a381e1c46637` |
| 102 | `theorem` | [disjSups_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-subset-left.md) | 425 | `result-track:61b6ab603a0ad6af4e1fb2a5793a37d9a279db84f421be195dda5849b6e1e620` |
| 103 | `theorem` | [disjSups_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-subset-right.md) | 428 | `result-track:61c5bcb9c47973bccf30137320c46178bf1afe0195b35270baecdd75fb8fce89` |
| 104 | `theorem` | [forall_disjSups_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/forall-disjsups-iff.md) | 431 | `result-track:6ab55b1c4ddc2722aee41c7e76a2580c393d5c59ce4bb20c9f61486f6af47add` |
| 105 | `theorem` | [disjSups_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-subset-iff.md) | 439 | `result-track:e41063cd23dcb56183617cf5cff90fe4eb862ca30886d01d93b939959a079960` |
| 106 | `theorem` | [Nonempty.of_disjSups_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-of-disjsups-left.md) | 442 | `result-track:3a892821ca118272b04f45037c0151f873eeaf4d390784a812518da9a268d450` |
| 107 | `theorem` | [Nonempty.of_disjSups_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-of-disjsups-right.md) | 446 | `result-track:59f482625b25f7f2bb195ede974ca7846f8546961d00d3cfdad773e0914fcbc6` |
| 108 | `theorem` | [disjSups_empty_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-empty-left.md) | 451 | `result-track:a0a068fc7d0eeba1ae84d9745a5869fcb10eed31ed86484cd134e3e96d01c375` |
| 109 | `theorem` | [disjSups_empty_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-empty-right.md) | 454 | `result-track:3db2202146965700b7448a48744d59f62d9b3f68d14083b0d995282fcd07c360` |
| 110 | `theorem` | [disjSups_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-singleton.md) | 456 | `result-track:e1bf06e70014eefa6ccb2372e257f4b54a9605a3d7a983b51ac218c8698ad602` |
| 111 | `theorem` | [disjSups_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-union-left.md) | 459 | `result-track:9f3495f3d4f2db712bd5eb1dc4822cdffe6db8f4e493d91e05342f3732fce3ef` |
| 112 | `theorem` | [disjSups_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-union-right.md) | 462 | `result-track:b4f6e1ce230b4710828c34602c6be336701913f2e95dc413669fc15351dd2c7e` |
| 113 | `theorem` | [disjSups_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-inter-subset-left.md) | 465 | `result-track:5cb91c1447c9b590b9f0dea96625f4a2f7b8eece403cb7bce9db61beb28b14fd` |
| 114 | `theorem` | [disjSups_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-inter-subset-right.md) | 468 | `result-track:45dfd217eb63f1b70ece1660157ccb81f25ffe75a8f98f530472356a1d7c0f7c` |
| 115 | `theorem` | [disjSups_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-comm.md) | 473 | `result-track:5395c5a7e432c7371c0a2a4bff0dc8a61a0eff3dbef1e2c063f72c70bafafec9` |
| 116 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/instance-source-edition-2.md) | 476 | `declaration-track:9271e83ffab269c9d0afc4269659d22722a318fff993d8ad46cba8e675e7ca40` |
| 117 | `theorem` | [disjSups_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-assoc.md) | 485 | `result-track:f49c5ad49873eb72514cdb19a8316e52e9c9549d98fb6d7e4a71d83a88dc7e9f` |
| 118 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/instance.md) | 492 | `declaration-track:81dda81ad41a6b8bd04e8774a9760ad8b6eb969bc38ee83404f7d66121ba00c0` |
| 119 | `theorem` | [disjSups_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-left-comm.md) | 494 | `result-track:c8d00fb7ba3d28cdbfe03f74df75a856f15bcea3c9b7a50322955c57d6ecb112` |
| 120 | `theorem` | [disjSups_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-right-comm.md) | 497 | `result-track:362ea67791c16afcf9cd72e33605acb4f482ff23b7d3e0af81cd7ab7d316457c` |
| 121 | `theorem` | [disjSups_disjSups_disjSups_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/disjsups-disjsups-disjsups-comm.md) | 499 | `result-track:14aadc91db5f17d1f87824e3ee566128f947432547eff18c6ff09a99dfea476d` |
| 122 | `def` | [diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs.md) | 508 | `declaration-track:2511ab99b1ffc51113f44b670bf724ef06045d8da1df8da667aa89b1803fba1f` |
| 123 | `lemma` | [mem_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/mem-diffs.md) | 517 | `result-track:51e48a03e7af6a7c3ce6751f7207b0068852f8e49d3eda2064a54c207ceead5c` |
| 124 | `lemma` | [coe_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/coe-diffs.md) | 521 | `result-track:ff8d916e632b41a1d7ddcdaea54c8a1df03e9b2859ee2fba99a9966283949cc1` |
| 125 | `lemma` | [card_diffs_le](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/card-diffs-le.md) | 524 | `result-track:4bb92ad98cec39f8862a5d5ff0f772cd1adcdcfe433b694b67a7941ec67216e9` |
| 126 | `lemma` | [card_diffs_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/card-diffs-iff.md) | 526 | `result-track:4ced92abaa5aee03729bfa0e734c9fda0406e2f36b0ca56faf44fcd2ef069d0d` |
| 127 | `lemma` | [sdiff_mem_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sdiff-mem-diffs.md) | 531 | `result-track:ceb16fbe577c14755adcd10afeac6a4bb815437266d1b8cbf8c0c550e9f19954` |
| 128 | `lemma` | [diffs_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-subset.md) | 533 | `result-track:c68c2b0db88e61ec1feddc2d44413850eee9c1ac9f025bb6c032c22b6561a30a` |
| 129 | `lemma` | [diffs_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-subset-left.md) | 534 | `result-track:f30bd6920320d31d4b326c3feee0172d9be6df8b16bea8d12d28f875eb6cc53f` |
| 130 | `lemma` | [diffs_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-subset-right.md) | 535 | `result-track:870818b6bf09f09859ba6a18fe78fca55c5df947e469bee63160d0d9be1b091f` |
| 131 | `lemma` | [image_subset_diffs_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-subset-diffs-left.md) | 537 | `result-track:d00f577a76329d11cbc62654def61a0902d9c4ec6895228c31d4930e7fb1ce03` |
| 132 | `lemma` | [image_subset_diffs_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-subset-diffs-right.md) | 539 | `result-track:070dc1a5982f2700bd2d2cb5d6ab2ef81ce6e1fc14b11f6265a32e1ec783cef4` |
| 133 | `lemma` | [forall_mem_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/forall-mem-diffs.md) | 541 | `result-track:07d110aadb054c475f8bd8a791b7d6599b32fc356782d07abd2de525625929a7` |
| 134 | `lemma` | [diffs_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-subset-iff.md) | 544 | `result-track:39f6fc775e418c90a666d2a237d028fb6d179864e6da0a430ea0ad56fbe71467` |
| 135 | `lemma` | [diffs_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-nonempty.md) | 547 | `result-track:0f6574466636e4bfbdfc625f4a34c485ae8f8520ea31c9ae13477a071bcd660e` |
| 136 | `lemma` | [Nonempty.diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-diffs.md) | 550 | `result-track:9d424e6e52473b5b3fdf3c67a53f2ab7f4f5b7e7540e783ba0e4b90360da7e9f` |
| 137 | `lemma` | [Nonempty.of_diffs_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-of-diffs-left.md) | 552 | `result-track:7f25599be6555034adcb07af3f8e6d38e6ea14711ec349c56ed80d890271cc50` |
| 138 | `lemma` | [Nonempty.of_diffs_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/nonempty-of-diffs-right.md) | 553 | `result-track:3bc3997f01728683e5719b1a565d322916d2a4e8681835ee7efd491569924c36` |
| 139 | `lemma` | [empty_sdiffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/empty-sdiffs.md) | 555 | `result-track:08b0cc6e536807ab2d11e1e651406f0766c600cac4fd155b9e1398b55e05de2b` |
| 140 | `lemma` | [diffs_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-empty.md) | 556 | `result-track:347ee47e3b8d9f3c931ee0a6b547ce44b6957fee9c712f37330ec733fa92f6fe` |
| 141 | `lemma` | [diffs_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-eq-empty.md) | 557 | `result-track:f42588dbf7fd2e75d3c0e4ec10d42ce03360348ac6ed8a50b24fc14833822815` |
| 142 | `lemma` | [singleton_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/singleton-diffs.md) | 561 | `result-track:f237ded5a034ad81a061d2a92480336980ef69a01a8f42889be8e7431f713c55` |
| 143 | `lemma` | [diffs_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-singleton.md) | 562 | `result-track:5d3f2598cabcfce031a7613fcf74cbe73d5ab5b5d49081e5c6b8a0658f2b31bd` |
| 144 | `lemma` | [singleton_diffs_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/singleton-diffs-singleton.md) | 563 | `result-track:dce3ab6e4d15da2dfa80867b482fc6bcfe27f9bac8d84ed049de3171d86e5f18` |
| 145 | `lemma` | [diffs_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-union-left.md) | 565 | `result-track:f45596887523a1a42c8a486c12acb5cbd8e8541a211f7a19c7087388d95ab15d` |
| 146 | `lemma` | [diffs_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-union-right.md) | 566 | `result-track:778bab5561227220c2f2f5771b7d658a1c9262fe1929b0ba82ecb8ac74d8db96` |
| 147 | `lemma` | [diffs_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-inter-subset-left.md) | 568 | `result-track:da66698fc61161e6d6f6ac28d2fc33e32d05d03dafe241e808fbb11ddfd113c3` |
| 148 | `lemma` | [diffs_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-inter-subset-right.md) | 569 | `result-track:d3d89b0b5ef5b86d7f95810bede0da16e71dcb7f5e747c84e4c3c6d671ac3e52` |
| 149 | `lemma` | [subset_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/subset-diffs.md) | 571 | `result-track:8a4ccb230ec396fdd968f5de77d741ca6b1dfac665ee34e6b30c8cdb3a0c594b` |
| 150 | `lemma` | [biUnion_image_sdiff_left](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/biunion-image-sdiff-left.md) | 577 | `result-track:7c8660ddebfd0a0a75e10b5532d8a5d3de7698b1290db61c967444682ca147e4` |
| 151 | `lemma` | [biUnion_image_sdiff_right](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/biunion-image-sdiff-right.md) | 578 | `result-track:1b0a49e1515d84ed3b9ff84924dc319feb3a8f68916080dc59ea70b42b480fa4` |
| 152 | `lemma` | [image_sdiff_product](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-sdiff-product.md) | 581 | `result-track:9932aced1006cdb72334c1d98a24fef676c0cf88a17d724622f28e61602deeaf` |
| 153 | `lemma` | [diffs_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-right-comm.md) | 584 | `result-track:e376a76354a2c63a0e655107c1f080a2163210f6f4cee3a63659a5dfe5ce285f` |
| 154 | `def` | [compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls.md) | 592 | `declaration-track:8dbcfabcb58dfe8f8bac80b77a797d3a8ef5071dcf9757255ee67a9dbdf0003e` |
| 155 | `lemma` | [mem_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/mem-compls.md) | 599 | `result-track:9d361d1869cc16a59bf705d82aa0be21f64fe8ec46407a2c0297930716a8bf7d` |
| 156 | `lemma` | [image_compl](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/image-compl.md) | 604 | `result-track:b6c452d13f86f39912af7a75bae50277336494b15c67b4c1c18ccad0d2c6f4bf` |
| 157 | `lemma` | [coe_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/coe-compls.md) | 606 | `result-track:6069fe2d79afb5e546a085982f1343d56b78c9c1ca4b57e6ee53d785bdf0f084` |
| 158 | `lemma` | [card_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/card-compls.md) | 608 | `result-track:d97bc9d30b0492f8f6a0931af0733f39321408a02c1240ff421005977ea759d8` |
| 159 | `lemma` | [compl_mem_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compl-mem-compls.md) | 612 | `result-track:2aaf9414475a4495d8a474bbddac596c2e32c9bfe0b245e20c50bb9420b92a58` |
| 160 | `lemma` | [compls_subset_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-subset-compls.md) | 613 | `result-track:ac1966e806e0bfd76789d9c6d3561c6e97e23640add590e42fe91cade90ec713` |
| 161 | `lemma` | [forall_mem_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/forall-mem-compls.md) | 614 | `result-track:1290aaae4beab4484f1428ceb719e7c7d34187f414ea1158a7dce8f4397194fb` |
| 162 | `lemma` | [exists_compls_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/exists-compls-iff.md) | 615 | `result-track:aeb6a50d1b69db1624f963bf3f9623bcf6e264253a28c263bfac7aa5dfa79799` |
| 163 | `lemma` | [compls_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-compls.md) | 617 | `result-track:18c7fd2a214815aa80424a33c93361b1d0bc194da0ae939215f09242a585a08a` |
| 164 | `lemma` | [compls_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-subset-iff.md) | 619 | `result-track:68b4b1db0519e2798326a4166482e8df6425abfd4e0b13f457238d65a3805a74` |
| 165 | `lemma` | [compls_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-nonempty.md) | 622 | `result-track:0f477956ef23fef5dfd9a8d3d7b1b091990d396872ab569e91cbf4ca01d3acf2` |
| 166 | `lemma` | [compls_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-empty.md) | 627 | `result-track:48d642c7c67a54498c08e8241b0e908f6a94e6c725ff2ada5a279cf15c3deb17` |
| 167 | `lemma` | [compls_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-eq-empty.md) | 628 | `result-track:d68eac4cf7306ee551190c848188aa7fb9c986a1547a68e0a9ba3d3ae39483a2` |
| 168 | `lemma` | [compls_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-singleton.md) | 629 | `result-track:245c95b1f705be75d12ee45098bad90ba977714b5b7ae4e31d97e46bf73a9d9c` |
| 169 | `lemma` | [compls_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-univ.md) | 630 | `result-track:e5fc61e964da17a3dcf3fe128210af1eb68d9d68a03338496d590f14a25d915d` |
| 170 | `lemma` | [compls_union](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-union.md) | 634 | `result-track:e0b1071b90ceda64708c7a0037aa5426faa32c9a7650203d2a9cf66e8796a17b` |
| 171 | `lemma` | [compls_inter](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-inter.md) | 635 | `result-track:4950445671c8350dfd85ab79055be5c4bacd99618576fe9b809fc5fc8b0ec5f1` |
| 172 | `lemma` | [compls_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-infs.md) | 637 | `result-track:01d4246d99589b81d5a617a54eef1afc8590d2e892ccf2e0636137848e366079` |
| 173 | `lemma` | [compls_sups](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-sups.md) | 640 | `result-track:f382808a48098afe48c7d91af884c43feb3d5d2a3c1404bca00b43776a1b184f` |
| 174 | `lemma` | [infs_compls_eq_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/infs-compls-eq-diffs.md) | 643 | `result-track:b4599d6ec51e6479c1de76cdbed1b8def904a622035a8a026e118f95b140c43c` |
| 175 | `lemma` | [compls_infs_eq_diffs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/compls-infs-eq-diffs.md) | 646 | `result-track:d344b374bfca1f8f531984c8bb04313bebeb40c7f0a6d881b0b4d887c0d5f096` |
| 176 | `lemma` | [diffs_compls_eq_infs](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/diffs-compls-eq-infs.md) | 649 | `result-track:48303e3b789512cdbca7deb288407e16bd3306081aba7b5fe0fceb2fd24d35e0` |
| 177 | `lemma` | [_root_.Set.Sized.compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/root-set-sized-compls.md) | 654 | `result-track:f3606778aec79651c240b030c87ecde14f0550491c94e85bb5b6100ef100cad8` |
| 178 | `lemma` | [sized_compls](../../../../../Combinatorics/EnumerativeCombinatorics/SupsPublic.lean/declarations/sized-compls.md) | 658 | `result-track:652942b0d54c1ae141c3c61b7f378a940a65ac736e2b805ede2ee9c4f67a45fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b38be4dd4e6d221e55ac9c1fae805ebadbac4080f10e14d98adfd5494046eaf5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant3354cf93b4fb615c14e25b4b04ae5e534086ee14600491a828e03a384dad468f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant3354cf93b4fb615c14e25b4b04ae5e534086ee14600491a828e03a384dad468f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
