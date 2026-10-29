# Verification target: Simple Graph Maps Maps Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dae96e6611bf9227d2b1cbadf61fffd43c8a9947",
  "lexical_observation_count": 161,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant1cbcdb71178ac50a3be430a614c058db6eb993ab3c7925d6596b55101b6fdb37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dae96e6611bf9227d2b1cbadf61fffd43c8a9947`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant1cbcdb71178ac50a3be430a614c058db6eb993ab3c7925d6596b55101b6fdb37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant1cbcdb71178ac50a3be430a614c058db6eb993ab3c7925d6596b55101b6fdb37.lean.json)

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
| 1 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map.md) | 57 | `declaration-track:3fe43298ed0d73f4335ab5958563e210e3251f2573471661bb2d20c59e1ea0de` |
| 2 | `instance` | [instDecidableMapAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/instdecidablemapadj.md) | 61 | `declaration-track:688fa90bacf46eb164764f16d367b6205757275468f8c8a669b9878db9ffbf2e` |
| 3 | `theorem` | [map_adj'](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-adj-source-edition-3.md) | 66 | `result-track:e6012e26337953a98d58379ad41493745753c1c89da9da6deb00c9809f2a808b` |
| 4 | `theorem` | [map_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-adj.md) | 71 | `result-track:159b8508e917edfb848080443f7997c2c71a7fb2fc1b57dc51516c74a672c4e1` |
| 5 | `theorem` | [edgeSet_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/edgeset-map.md) | 75 | `result-track:c9b3ff3894d4843d85e8e909471600ceaed8908ee605284105a22603bc8322af` |
| 6 | `theorem` | [neighborSet_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/neighborset-map.md) | 90 | `result-track:8e1cff565774113a7bd21550d4e22473ff2bb9b51576e98bd51e50a300ff51b3` |
| 7 | `lemma` | [map_adj_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-adj-apply.md) | 96 | `result-track:1e6ed0ac671f031543a3f443a9d0a39e48475f2768f811b7280ea6df97053a85` |
| 8 | `theorem` | [map_adj_apply'](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-adj-apply-source-edition-2.md) | 100 | `result-track:d87a112178633144621cec4fd9d83f4ac7b1244999ba112e3a148955bcf8c235` |
| 9 | `theorem` | [map_monotone](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-monotone.md) | 105 | `result-track:64582ac4b976b955d603843fd67f3bb8a06785af95c0e0d4deebdef89bf3ee7f` |
| 10 | `lemma` | [map_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-id.md) | 109 | `result-track:daaff508560a10a5697fe582d3d0a6d5a1e47347d9a55087d1102f0ddb229b56` |
| 11 | `lemma` | [map_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-map.md) | 113 | `result-track:276575dcac9a93d730952f38bfd8c03c1632df0ae8fd3bb48720bd9bece417cc` |
| 12 | `theorem` | [support_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/support-map.md) | 117 | `result-track:abbf490c09519567780d00b82819788f1ccb813601b40669fd008084064a419d` |
| 13 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-source-edition-3.md) | 126 | `declaration-track:7e15158583c7c617b270eb0890fdb4fc5dce1c08fa86e272e282db7cb7ad3682` |
| 14 | `lemma` | [comap_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-adj.md) | 130 | `result-track:995350ab2c3f5b7afe1b605dc81f3683d11086e43e3527084e93f175acb28457` |
| 15 | `lemma` | [comap_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-id.md) | 133 | `result-track:224f5da170aa7c02818492ae41f5b1c4711f8e6f22e16064e4749f23b3d587be` |
| 16 | `lemma` | [comap_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-comap.md) | 135 | `result-track:675835b7bce5209d55f1e3e790c5f45923842facdfe93c27779d12122a3f68b4` |
| 17 | `theorem` | [support_comap_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/support-comap-subset.md) | 138 | `result-track:9e5fefdaed404e255f2ee6656800e3d90fc98a0965483a1d60696b773c4e1c74` |
| 18 | `instance` | [instDecidableComapAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/instdecidablecomapadj.md) | 142 | `declaration-track:13be618630478afb6e0cd48be417555b9d7f223ca90cdf278791799cb208fd6e` |
| 19 | `lemma` | [comap_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-symm.md) | 145 | `result-track:7587bd8bc84f42fec269fcb98e34c10a1657ba2d65134f762d13ea0f7e964255` |
| 20 | `lemma` | [map_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-symm.md) | 150 | `result-track:6571932683edb129895d6d5d7950f917b8b03246b07c46202ea7ae8fa8f8f6eb` |
| 21 | `theorem` | [comap_monotone](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-monotone.md) | 154 | `result-track:bf96644e15c314099bc4c8d3c7926ec89bcf66f1e4df0bb270b7ff6ac9e39be3` |
| 22 | `lemma` | [comap_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-bot.md) | 157 | `result-track:152676936672066f33ecb4f4b9ce77946423ff1340d5e342d1869ab9827c7d5c` |
| 23 | `lemma` | [comap_top](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-top.md) | 159 | `result-track:3813c5ace1601c5441b1508295f86c52fc8443f93af7b2f9464215e570313dbc` |
| 24 | `theorem` | [comap_map_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-map-eq.md) | 163 | `result-track:a96b1789801b177c6f2d7a0e1f740d424de667c1e75539f5f3284812c78754a1` |
| 25 | `theorem` | [leftInverse_comap_map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/leftinverse-comap-map.md) | 167 | `result-track:27fced7f3816bd49ea2bd6c40c0db8bfec40bb98591bb1e2ffd8441d5e5fa4b8` |
| 26 | `theorem` | [map_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-injective.md) | 171 | `result-track:b0d32a4cfc27b1a923f37a7a42e467d233a95e4a14f4b6b91830655c0651bdf2` |
| 27 | `theorem` | [comap_surjective](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-surjective.md) | 174 | `result-track:743edd89efaba741ba06c6ab70e0141e562b5dfa0a353f60de543fad56e04813` |
| 28 | `theorem` | [map_le_of_le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-le-of-le-comap.md) | 178 | `result-track:ce098926fcb3327bbfc36aac126fd5212dca4989c185e6937361bc650f0e0546` |
| 29 | `theorem` | [map_le_iff_le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-le-iff-le-comap.md) | 183 | `result-track:a96c1a7bafa6601d6ec8224a3c22a3fc6cd287bea44861e19d5f47677f2c631b` |
| 30 | `theorem` | [map_comap_le](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-comap-le.md) | 186 | `result-track:740771fbdcf20a59661e994a11a8fde6b0e38a9e1822c088d87f2089e109a1e8` |
| 31 | `lemma` | [le_comap_of_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/le-comap-of-subsingleton.md) | 189 | `result-track:cb4678eebf79e5a4b44d4917b193d0c7e4d514b98c52186cd5427414f640a52c` |
| 32 | `lemma` | [map_le_of_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-le-of-subsingleton.md) | 192 | `result-track:aa779a39f6ff75255e8f3a497ea344e93fadaeafacc583b2d141c815a852929d` |
| 33 | `abbrev` | [completeMultipartiteGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/completemultipartitegraph.md) | 198 | `declaration-track:69867f5a7cd3eb0bafe3717371f1ce824e8ac378194b0d7d6ce038c543a419c7` |
| 34 | `def` | [_root_.Equiv.simpleGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/root-equiv-simplegraph.md) | 203 | `declaration-track:9e562da4cf707a2ca6f4ac7192271f668d0d2b980a790daffcc989988e66fa8f` |
| 35 | `lemma` | [_root_.Equiv.simpleGraph_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/root-equiv-simplegraph-refl.md) | 209 | `result-track:c0d348ba935e54d9b0d2160d320b5d41935c6ddab6d86c331916fc6dc9e75da0` |
| 36 | `lemma` | [_root_.Equiv.simpleGraph_trans](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/root-equiv-simplegraph-trans.md) | 212 | `result-track:df6169886943fe832b67b01116ea9bf61ac6531f86cc00934d896703cb0bac1a` |
| 37 | `lemma` | [_root_.Equiv.symm_simpleGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/root-equiv-symm-simplegraph.md) | 216 | `result-track:e6b589961a87e8a91ea741e273bf6bd2502c9318d71ea74828f472c7141c93f1` |
| 38 | `abbrev` | [induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-source-edition-2.md) | 227 | `declaration-track:35248aead95635a9ce515384732dc8e0af4eb22b6107581fb76ab9f724931a9a` |
| 39 | `lemma` | [induce_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-adj.md) | 231 | `result-track:94afff85683e811f72afb7ea8ede353921b6178290878e5bb18bdaad98a1aa31` |
| 40 | `lemma` | [induce_top](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-top.md) | 233 | `result-track:1ae2daeb348e96443f1d250fd3363488cfca0ebf54e14cbd33cc7923376bfa61` |
| 41 | `lemma` | [induce_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-bot.md) | 236 | `result-track:7d1ee89f03515953cfb93049dc9b041e29760c4295b94d1d23848bbf4fcd16c5` |
| 42 | `lemma` | [support_induce_subset_coe_preimage](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/support-induce-subset-coe-preimage.md) | 239 | `result-track:4460d3998a5323f1ac9998c74a519f0cda8aa08f58ab13617cc1ad938485528f` |
| 43 | `lemma` | [support_induce_subset_coe_preimage_support](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/support-induce-subset-coe-preimage-support.md) | 242 | `result-track:1604797b99dc29f187b00dcd6e0aa36616644cdbe0f41387bf8d69e661d608a2` |
| 44 | `lemma` | [induce_singleton_eq_top](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-singleton-eq-top.md) | 246 | `result-track:791affab5b0c591f8a24d1c842a111f501af14eede4f632dd7460629a66e2888` |
| 45 | `abbrev` | [spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/spanningcoe.md) | 252 | `declaration-track:9ed503745024eab87a6de6978943743ff2266a11f9a27dff123f0fb12dc8bfba` |
| 46 | `theorem` | [support_spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/support-spanningcoe.md) | 255 | `result-track:bcf28615b3d2d5fc03815ab73abfb2a7a14e7608f4320016eb98547b3f72e411` |
| 47 | `theorem` | [induce_spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-spanningcoe.md) | 259 | `result-track:d87def575570590f68e27021fbd9f50dfd5f1f90c1d131e7ee234fd43283f083` |
| 48 | `theorem` | [spanningCoe_induce_le](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/spanningcoe-induce-le.md) | 262 | `result-track:85e57d88ce3af6b4f873994432547c27cb7f3a07df380c27497458be0f53cc1e` |
| 49 | `theorem` | [spanningCoe_induce_eq_self](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/spanningcoe-induce-eq-self.md) | 265 | `result-track:71a28bdeeebbc29164283a46829527152508d48a058ed87f2a53384c9ffdbfd4` |
| 50 | `theorem` | [spanningCoe_induce_support](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/spanningcoe-induce-support.md) | 273 | `result-track:8575469977d99d4c085c5679d5fe303b87371ebad96eb3416fdf16c1452148d3` |
| 51 | `theorem` | [spanningCoe_induce_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/spanningcoe-induce-univ.md) | 277 | `result-track:a5ab610d2954a77bbb6a4a4e74d16c8cc81264f0464e2c391605b31b89b8512b` |
| 52 | `theorem` | [IsCompleteBetween.induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/iscompletebetween-induce.md) | 281 | `result-track:acceeb7b511f73f271dd0523d9182cec73a7e9ba6abfb2ab2fd00d74b450d3a6` |
| 53 | `abbrev` | [Hom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/hom.md) | 293 | `declaration-track:133d5d85b0c39f334cd5a18ead79ad236f7316442d7a052e18de0bc98dbbbb1e` |
| 54 | `abbrev` | [Embedding](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/embedding.md) | 300 | `declaration-track:6cd08ac95dad947c52cd28b25c8ef9507ee0f6d05af9ff52b18e227717c1d821` |
| 55 | `abbrev` | [Iso](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/iso.md) | 307 | `declaration-track:6eb594cdb075d63a3479034d36b522e05f5e79555c992814b7ed3ed5f1047caf` |
| 56 | `abbrev` | [HomClass](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/homclass.md) | 315 | `declaration-track:1c0dbb962d5c60cb64fc79ea958c49173c3e2c8c5758e30b86b1a53e76e4dbf0` |
| 57 | `abbrev` | [id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/id.md) | 323 | `declaration-track:7e6fd901addecce30df6c109b2c54e93a17bf80086e42328b5e093c90b2886d2` |
| 58 | `lemma` | [coe_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-id.md) | 326 | `result-track:2bef6fe0dd1ec7d2cef00efadd83f16f0b99ef8242a1d7d3b2dbcf5cff35b6ea` |
| 59 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/instance-source-edition-4.md) | 328 | `declaration-track:d51ee54c995636f19fbef1775782e5271a7e46e80e6db5e8744fa613e9421719` |
| 60 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/instance-source-edition-2.md) | 330 | `declaration-track:6de9cf3968e13a4f7a9273b1f6b3a7bcafdc78b69cb35868e761eff0d811349c` |
| 61 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/instance-source-edition-3.md) | 332 | `declaration-track:b834eb9578728a439e34227eda55fc6fb3572f1c1d8e7fc4226c8ecd773bffcc` |
| 62 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/instance.md) | 336 | `declaration-track:0f37dcda17ef9d7ca3ca8e9a5fd6345573a21faf4300fda93a4ffe9a56350dca` |
| 63 | `theorem` | [map_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-adj-source-edition-2.md) | 338 | `result-track:e0565654be11c1e5bce2b52be7fdf376920ca5ee2cea1e04a8462b6cbe2d459c` |
| 64 | `theorem` | [map_mem_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-mem-edgeset.md) | 341 | `result-track:c5128d2584d8060e017a28ada145692d1220ed55f4e1a36e5176beef56b551f3` |
| 65 | `theorem` | [subset_preimage_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/subset-preimage-edgeset.md) | 344 | `result-track:7baedaff925fe7317da2a1c15090e9d21820e8980b3a65b0343dfc2e95fab882` |
| 66 | `theorem` | [image_edgeSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/image-edgeset-subset.md) | 347 | `result-track:f7a306f7d89a7c039a6b08ee1ded1dd6f2c08ee2e21b3bca048cccbfe64bac88` |
| 67 | `theorem` | [apply_mem_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/apply-mem-neighborset.md) | 350 | `result-track:8b65df49e67ef86c617abecc61188b482338fa79bc18db0ed1ac46c1ca134772` |
| 68 | `theorem` | [subset_preimage_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/subset-preimage-neighborset.md) | 354 | `result-track:69604a784400320def6bcd935328f8cf776ad0117aa92a5dc466311aad61be1f` |
| 69 | `theorem` | [image_neighborSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/image-neighborset-subset.md) | 358 | `result-track:edf1d53cb038dcefb90a353944fcd464e3458f128268b011d558abdad5b47dfe` |
| 70 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapedgeset-source-edition-3.md) | 364 | `declaration-track:ab1a5cb95d74c0f7bbd6707056bd72937dfd2e8ccc482c34119ccc5a85a87721` |
| 71 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapneighborset-source-edition-3.md) | 369 | `declaration-track:e8621b72205e69bde7ccef5b29d232b1c72af552a0ea0e116952dccff6999c34` |
| 72 | `def` | [mapDart](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapdart.md) | 373 | `declaration-track:8f47af06c5ee858304fff41c773516b0d2c90479d0ae2c35546e326cdd74aa4d` |
| 73 | `theorem` | [mapDart_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapdart-apply.md) | 377 | `result-track:34b745b027c0a9e3a4f6460a946cf31123b4541acbda38cc6a1c206dba02ad58` |
| 74 | `def` | [ofLE](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/ofle.md) | 382 | `declaration-track:b2d09615281ee47cdb7586dd2f02527f2f58c3a9bf72fa7de7a71ca5e977c0ac` |
| 75 | `lemma` | [coe_ofLE](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-ofle.md) | 384 | `result-track:a68daba7ec9cd0110c169efad4826da6654eae8c4494245547164cf2e22d53d4` |
| 76 | `lemma` | [ofLE_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/ofle-apply.md) | 386 | `result-track:4b1fa5b7624ad9b38e80d50fc92d5f574025582db75c3ff5bb7c3a1e4837add2` |
| 77 | `theorem` | [mapEdgeSet.injective](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapedgeset-injective.md) | 388 | `result-track:5b85f6c9e27277aaafff65d0008fdcb27ac8f951cb5d398c2f6393c5b15e673a` |
| 78 | `theorem` | [injective_of_top_hom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/injective-of-top-hom.md) | 395 | `result-track:9a2e01e7f7c0659507a0049a71b067802a94b4fbb87f12c804d3ceb4397a9cec` |
| 79 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-source-edition-3.md) | 404 | `declaration-track:7378f35dd87b4ffeccc21f5a144610368832bb077c0fe4be5e82bceb6efc3a4f` |
| 80 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-source-edition-2.md) | 412 | `declaration-track:5cfb65cbfc9d57d6d58632e3f4cacf401d335cd9e6ce1a217e80eeca325ec6d6` |
| 81 | `theorem` | [le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/le-comap.md) | 416 | `result-track:cf0ef3d01ca8c111b9f46778257c7d9e95333f02f0be9a1b839ad6f1c759242b` |
| 82 | `theorem` | [map_le](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-le.md) | 420 | `result-track:f8649c2e2b9247a40691e20eb01d4837e1ee5479d3ba69534748c36a3e4f9716` |
| 83 | `theorem` | [nonempty_hom_iff_exists_le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/nonempty-hom-iff-exists-le-comap.md) | 423 | `result-track:76ce5a467359958f274a9e0a8afaba589bc624943e3bc92350b2db36995d5044` |
| 84 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-source-edition-3.md) | 429 | `declaration-track:a59500c620cb62c69080644085a8f753ddbe00ae529d24537b27fcf17d7e692b` |
| 85 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-comp-source-edition-2.md) | 433 | `result-track:c4eba77c14513a95c69412724326a99f4355fc97991d1fa36f8c146816681b87` |
| 86 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-assoc.md) | 436 | `result-track:09dca9ce0951f8f4259c9c99c9b3b0d407c7f80a25b9ae41fa92725ed150546b` |
| 87 | `theorem` | [comp_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-id.md) | 440 | `result-track:207aede2ca80768034e74451d6cde5b2b10c2c02ec59072bb154d2aa6062059c` |
| 88 | `theorem` | [id_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/id-comp.md) | 443 | `result-track:29a9b81dd1976a60ea03bd5d61a1fe0319238e05779802ee5935c459877cef24` |
| 89 | `theorem` | [comp_comap_ofLE](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-comap-ofle.md) | 446 | `result-track:86a2f0c1f3ae579d1fd97a33122ee6c1f504d0da668c5fe994b02444f8e10263` |
| 90 | `abbrev` | [refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/refl.md) | 456 | `declaration-track:743bc32fbd92f17b0d095e5ebe1e6d5460c18ca1a707981ccda1f23d5e65001e` |
| 91 | `abbrev` | [toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/tohom-source-edition-2.md) | 460 | `declaration-track:b77fb8ef85fe43a4719931afb9a56a6dd56e0a83d8b19a85d75cc222a5959851` |
| 92 | `lemma` | [coe_toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-tohom.md) | 463 | `result-track:ed310cb230e7311a6a63c321909aa44a86e80483d2d815801df39c5f20fa2b8e` |
| 93 | `theorem` | [map_adj_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-adj-iff.md) | 465 | `result-track:6a97d5406c901ee7e48e865aa70700d635e5bb969d2eef71171450dc3f42c1e0` |
| 94 | `theorem` | [map_mem_edgeSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-mem-edgeset-iff.md) | 468 | `result-track:3d6589c4edb070301b6e6f11d159bc4c78a70eef8981fea0773c6b4914f4134e` |
| 95 | `theorem` | [preimage_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/preimage-edgeset.md) | 472 | `result-track:3dd235f41ec8cc85e1ce2dc2ce0c94ea7d987225df4240135fdd34ae7f7ac937` |
| 96 | `theorem` | [apply_mem_neighborSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/apply-mem-neighborset-iff-source-edition-2.md) | 475 | `result-track:69ff46d5adcc7f7d8c662580600f9d3d7e471985061219e3581661becd5fbc2a` |
| 97 | `theorem` | [preimage_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/preimage-neighborset.md) | 480 | `result-track:d3c30c3be8ed94bcdc73952f32de92288d3cadd64b2334be90917e1af84b24cf` |
| 98 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapedgeset.md) | 485 | `declaration-track:288b67b9ba8493bf47a73c8ab2816dbda97d9a09fe7478ae51326aa19145bad8` |
| 99 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapneighborset-source-edition-2.md) | 491 | `declaration-track:b20229269180ec55f3257f27b76b7ff255722a29043ecd855d61e17f290353f7` |
| 100 | `def` | [isoInduceRange](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/isoinducerange.md) | 499 | `declaration-track:94b89050a5600c4d33323c8618fae0302c5816b03088f9c04d4f88f487c95305` |
| 101 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-source-edition-4.md) | 507 | `declaration-track:aa62171e9f10e7e118e336463bcbac8b46966b2b0d4efe8b360d151b689a62eb` |
| 102 | `theorem` | [comap_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-apply.md) | 512 | `result-track:7a161517148725fbf1ab9502f8c2730596feba14d28b5ff935296422a1a5c5e0` |
| 103 | `theorem` | [comap_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-eq.md) | 515 | `result-track:a9e24b050f47bf0c0d73b5ebbe16b67d12e78dcd766bb25c168d8314b41b3935` |
| 104 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-source-edition-2.md) | 522 | `declaration-track:4bce0afd1be6d60013df35774e505558a81fb2d464ee282443421d5cf1ade444` |
| 105 | `theorem` | [map_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-apply.md) | 527 | `result-track:3b92c69c91dcdf75f4b76cc01d57c19b2f473f7f7160619fc1e4aac77ee74a5e` |
| 106 | `abbrev` | [induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce.md) | 534 | `declaration-track:038199cf46a7f0d3a9f2dbde9f9a07bd91f2474e71eb0ef2b861d43edcf48f81` |
| 107 | `abbrev` | [spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/spanningcoe-source-edition-2.md) | 538 | `declaration-track:fe9556475b5d8f4ff38d185d15f465214fe262e5351cc19b4ff967443c368405` |
| 108 | `def` | [completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/completegraph.md) | 542 | `declaration-track:0659138f3a7e37a3eddb24884d0a096677209482b9d276dc67b1671ee0530d50` |
| 109 | `lemma` | [coe_completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-completegraph.md) | 546 | `result-track:99f139d2de70fff5f8cb5ba35b4ae3ab91693645e80d0a9c49d2cbeccee5f7cd` |
| 110 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp.md) | 551 | `declaration-track:44ac9b223a3f8c12276a3ad1701a116a8a77045be697f216f6004b1176a751cd` |
| 111 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-comp.md) | 555 | `result-track:a78905d4074dfa86d756acc30c7c7fcb5d8305517c55f6aed3f5c039e6a9d790` |
| 112 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-assoc-source-edition-2.md) | 558 | `result-track:943d392c19e69004e5cd2a0216406a0ee3f971ddc36b5a6c0444c6871c17223e` |
| 113 | `theorem` | [comp_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-refl-source-edition-2.md) | 562 | `result-track:c80ba7b8fd3ea9e01956dc86c42117367b4483c1c227396b1de9b0b1b8adcf24` |
| 114 | `theorem` | [refl_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/refl-comp.md) | 565 | `result-track:0e0b34f4f90090a12dd0b1d53975108c3062d778c993937e7a84620305511abf` |
| 115 | `def` | [complEquiv](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/complequiv.md) | 568 | `declaration-track:5e39bd496d19427b8849651168e130934fba07432cfae5d707659331e7989441` |
| 116 | `def` | [induceHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/inducehom.md) | 583 | `declaration-track:2d1c75323f8ac5e97a54cb90bee782a210547fca4d82714feac717c72009f255` |
| 117 | `lemma` | [coe_induceHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-inducehom.md) | 587 | `result-track:a0cb3414db2f799a8818519e94bf2a84bb5a24c3b89dba816cf0b782e44b8633` |
| 118 | `lemma` | [induceHom_id](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/inducehom-id.md) | 590 | `result-track:3296d9eccf0d8aa8f20e2050326d359507b62e49be71f0f6bff11a7e6a13e0f7` |
| 119 | `lemma` | [induceHom_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/inducehom-comp.md) | 595 | `result-track:713bbd7f5aeae961c795c3b49aeac1a0acf0fa3ed49ec33f80d2bc2d4ae1283d` |
| 120 | `lemma` | [induceHom_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/inducehom-injective.md) | 600 | `result-track:a823ae94492802ee536b5f0a158d97211c046b50e153088f7687a3ae4782671d` |
| 121 | `def` | [induceHomOfLE](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/inducehomofle.md) | 611 | `declaration-track:887d14773c4fe5599b4f5be95159cd58fbede3827475f5cb0fdcda503ee04c91` |
| 122 | `lemma` | [induceHomOfLE_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/inducehomofle-apply.md) | 615 | `result-track:ff064cc69346dca3ac5bc601f2fc4406580b502a02d99fbaf4096ae46ebfd3af` |
| 123 | `lemma` | [induceHomOfLE_toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/inducehomofle-tohom.md) | 618 | `result-track:979dfa401654fa465a0b2fa9745e64b462347f3de9356dc4c1b96f518106b561` |
| 124 | `abbrev` | [refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/refl-source-edition-2.md) | 629 | `declaration-track:e1b903328b5bac13c7fcb2916fe20abf488f30deb829195b4cfe1412a88634ec` |
| 125 | `abbrev` | [toEmbedding](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/toembedding.md) | 633 | `declaration-track:9a35935070bd4448b6dd44c455f3726e5758f8818d0e0bb5be5646ddc5f12bda` |
| 126 | `abbrev` | [toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/tohom.md) | 637 | `declaration-track:ad4a0e8dd533dfedebb1ab8058675037ac9bdf9c47c87b894ae0840330d6994c` |
| 127 | `abbrev` | [symm](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/symm.md) | 641 | `declaration-track:2453c1d0482533d25a3cf9bbe3866dd4197b5f688ce386ba4e429f153f36ea60` |
| 128 | `theorem` | [map_adj_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-adj-iff-source-edition-2.md) | 644 | `result-track:e570ab85d9fc714c2891e939c857b26ae200275ddeafe23d925a6d61a6813566` |
| 129 | `theorem` | [map_mem_edgeSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-mem-edgeset-iff-source-edition-2.md) | 647 | `result-track:fbd4f5367ec5c282a6c1186b812b52211088fd826249a5f22755e1c8b4a16971` |
| 130 | `theorem` | [apply_mem_neighborSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/apply-mem-neighborset-iff.md) | 650 | `result-track:19ec09ee1ae1df6f85ad4a5e1a889f9541e74166eacb5688ee9d0fa1337dc357` |
| 131 | `theorem` | [image_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/image-neighborset.md) | 653 | `result-track:096e3a70b85e1ce08b86e61d67c6d691a22838b2cba2a05269e360485a24b7fb` |
| 132 | `theorem` | [symm_toHom_comp_toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/symm-tohom-comp-tohom.md) | 658 | `result-track:7e6d9f3fce6870d1f253c3f1124a88f82157c137a4d921f853062c37278c75e5` |
| 133 | `theorem` | [toHom_comp_symm_toHom](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/tohom-comp-symm-tohom.md) | 664 | `result-track:b654c6d522996d766d0a74a399ff584b1fe1778c725e0c2759e6a536622c6617` |
| 134 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapedgeset-source-edition-2.md) | 671 | `declaration-track:a46a7466878df0d10a4f95262c3d7c1c84feee8809630f3d6de1d9accbb954bb` |
| 135 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/mapneighborset.md) | 687 | `declaration-track:056837491ae8051089108b08ec51920e43f678d13d64d2efd18945c037570c01` |
| 136 | `theorem` | [card_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/card-eq.md) | 696 | `result-track:67314cf693f2f8d0e95aec70df5921b3ac03a8fb7d5bae1784a14ee1c069fe20` |
| 137 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap.md) | 704 | `declaration-track:2e902cfed756f80637e9ffc0a40b37de17590037bd4c510048d4b23be32925b0` |
| 138 | `lemma` | [comap_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-apply-source-edition-2.md) | 709 | `result-track:f8379351b00980eea8a99ba6465d5ec5fcced41460fd22f0614b9ad6ef415586` |
| 139 | `lemma` | [comap_symm_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comap-symm-apply.md) | 714 | `result-track:2084ef6172396ba25247e0623ac3131f5528992f47e70e92aad58a3574bb8b93` |
| 140 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-source-edition-4.md) | 718 | `declaration-track:f20dd665e006c0375544e89348c8f657cd45f4b1cef41b1ca2ca84be8af45afa` |
| 141 | `lemma` | [map_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-apply-source-edition-2.md) | 723 | `result-track:44e205530fd10dfd138cb5377dfdf6f88f1a05f7979ef227b6ca6359a0dec842` |
| 142 | `lemma` | [map_symm_apply](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/map-symm-apply.md) | 726 | `result-track:d81ea14b21716f48743c790a1c7f23ecd82f49e1d3eb731d50da93965b4cdde1` |
| 143 | `def` | [completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/completegraph-source-edition-2.md) | 730 | `declaration-track:35369d7b0164c3de00809419fb74ad7129716e388613bb4cb771dbe4e95ab2fc` |
| 144 | `theorem` | [toEmbedding_completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/toembedding-completegraph.md) | 734 | `result-track:4db98e934fd25478c13f076df7e7d55c5d4ab5f1e3fed9e80ae6dcdcb29696f6` |
| 145 | `abbrev` | [homCongr](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/homcongr.md) | 741 | `declaration-track:cbfdba30ba558691a48eec5508ec6b7b6b1ab83a4bd638e023d518efcbebcd7d` |
| 146 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-source-edition-2.md) | 744 | `declaration-track:71106f7ac43117473a5cbefdb723df18ad1c713994289439834083c0d69a42dc` |
| 147 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-comp-source-edition-3.md) | 748 | `result-track:fac8a85edc13d00ff7b12c5097768eb102b487c10c956dc1fb29a4e4920b983b` |
| 148 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-assoc-source-edition-3.md) | 751 | `result-track:9c98acd90cdcfc0b55db10c1f6a82221d8682f1b79fe673761f4a443e922c1e8` |
| 149 | `theorem` | [comp_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/comp-refl.md) | 755 | `result-track:3e11893b8b219e1e9915401ef34685571bbac24c0048227edcec8c88bf2caec7` |
| 150 | `theorem` | [refl_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/refl-comp-source-edition-2.md) | 758 | `result-track:21c1e28a23eab591b80131774d3a04bf81656f925dd248f00cb586d705cd3342` |
| 151 | `def` | [induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-source-edition-3.md) | 766 | `declaration-track:a327373776aa99346589632794cd28d6faf7fe95940b9e87bbea0184a4a50f3a` |
| 152 | `lemma` | [coe_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/coe-induce.md) | 774 | `result-track:4013750fd9bcc8024056610e25d2d7cb1d1c09bfb39b6f4dc3dc542f56a12481` |
| 153 | `lemma` | [induce_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-refl.md) | 778 | `result-track:7b74df713454aa858b71cab5b145eba7ebc66fcac6a31f343b7bd4ca42045be9` |
| 154 | `lemma` | [induce_comp_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induce-comp-induce.md) | 782 | `result-track:5fc36a097d921ff3c8aa50e9c14f8adc1e86bd9a3d433c97fb21fa0c450396d7` |
| 155 | `theorem` | [neighborSet_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/neighborset-comap.md) | 790 | `result-track:9b6caabe3ad31e137c4783a0ceee02be2aabedcb1a1527668a2e0f8a27e07e47` |
| 156 | `theorem` | [neighborSet_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/neighborset-induce.md) | 794 | `result-track:12d5ae16569efd14fc1f0aa5968588c183dfa6de1309ff182aa545e72fe69eb2` |
| 157 | `theorem` | [neighborSet_map_equiv](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/neighborset-map-equiv.md) | 798 | `result-track:2fcb7152680d5225b9352dccb9d5d74af2ee34408942d2ef36d04981190b00ef` |
| 158 | `def` | [induceUnivIso](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/induceuniviso.md) | 804 | `declaration-track:35817c4a37c0354d2192afcabd7fc8d28eb8f928bcbd528a58b31e1d623879a9` |
| 159 | `def` | [completeBipartiteGraphCongr](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/completebipartitegraphcongr.md) | 812 | `declaration-track:df672b81609a87f18eeff25701401f31da26985069dd478ec399768938a4bf42` |
| 160 | `def` | [overFin](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/overfin.md) | 823 | `declaration-track:2fdefe93c2daa9ce8745be044d4877fcdfded084a84664802d66556e29fd1da0` |
| 161 | `def` | [overFinIso](../../../../../Combinatorics/GraphTheory/SimpleGraphMapsMapsPublic.lean/declarations/overfiniso.md) | 827 | `declaration-track:99acf24af8fee28877bc69e267d82f163fdc590c4072e13df04e614857ba487f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ab7fc2de02ecd20091197d786de969f72fc6fa5b66947b8109b138cf2c12f21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant1cbcdb71178ac50a3be430a614c058db6eb993ab3c7925d6596b55101b6fdb37.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant1cbcdb71178ac50a3be430a614c058db6eb993ab3c7925d6596b55101b6fdb37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
