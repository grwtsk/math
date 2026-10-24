# Verification target: GRWTSK.Topology.GeneralTopology.Pullbacks.Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de082675fe83066fa870e98ba997eab77950dedb",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de082675fe83066fa870e98ba997eab77950dedb`.

Source path: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean.json)

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
| 1 | `abbrev` | [pullbackFst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackfst--8b025b0aa08337a023d79c76.md) | 41 | `declaration-track:8b025b0aa08337a023d79c7668e72b71e78fbbd5d8697828f32f794a6d1a6195` |
| 2 | `lemma` | [pullbackFst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackfst-apply--8b7a9748387a49d4dfb19a50.md) | 44 | `result-track:8b7a9748387a49d4dfb19a506c52b935fa4d7a0dd057de5959438cb59e18da42` |
| 3 | `abbrev` | [pullbackSnd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbacksnd--c57d5c8272b0c1a291aee5a2.md) | 47 | `declaration-track:c57d5c8272b0c1a291aee5a2990f50b0a1a4bcc007e2018358e42004791bc11a` |
| 4 | `lemma` | [pullbackSnd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbacksnd-apply--48ceb0010c36889e943453e0.md) | 50 | `result-track:48ceb0010c36889e943453e09cbb856a58bf71eaaa70e4beac0346f1a4ae4207` |
| 5 | `def` | [pullbackCone](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackcone--212c25bc480da2e2ecb9efd4.md) | 53 | `declaration-track:212c25bc480da2e2ecb9efd4992fb812e100ed639d043ee4e225016925d044df` |
| 6 | `def` | [pullbackConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackconeislimit--c7311a3fd8fc7c80d6d60da1.md) | 62 | `declaration-track:c7311a3fd8fc7c80d6d60da1539236cd15487416ba6430e80afa406364b2f2c5` |
| 7 | `def` | [pullbackIsoProdSubtype](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackisoprodsubtype--f9956bd3b1112e9b48637f9f.md) | 87 | `declaration-track:f9956bd3b1112e9b48637f9fc7a07cb17638f8263bc7c99d75bc2334e53c271d` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackisoprodsubtype-inv-fst--0fb5bb54566133d4ce82c70d.md) | 93 | `result-track:0fb5bb54566133d4ce82c70d098e4ab6f6010fbd563a37259101e619271327fd` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackisoprodsubtype-inv-fst-apply--5befae192834dbdce3dc16f3.md) | 97 | `result-track:5befae192834dbdce3dc16f31345967e6de218674ce9c58d02291571b96aa843` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackisoprodsubtype-inv-snd--4669788a4e8a7f2c6573133c.md) | 104 | `result-track:4669788a4e8a7f2c6573133cc7f2a595b56a49cc4225afaee7ff9a1b7e25821d` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackisoprodsubtype-inv-snd-apply--d4469d3bb58108de6ebd1d75.md) | 108 | `result-track:d4469d3bb58108de6ebd1d75e380a1e669111d6060743f75b2a7cfdc0fb2b1ff` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackisoprodsubtype-hom-fst--22c75dd29f578df8fe234a64.md) | 113 | `result-track:22c75dd29f578df8fe234a64a07867c153a009e294d1934f76868f561bb89cb1` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackisoprodsubtype-hom-snd--6e66045bbfd6d3839a5211a4.md) | 117 | `result-track:6e66045bbfd6d3839a5211a4c9b49ac5a15d9c90eb054482f50b80947a313132` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackisoprodsubtype-hom-apply--af39468e0ebb8888791c9f69.md) | 121 | `result-track:af39468e0ebb8888791c9f69a0e721b927c6f2be24e259c70da2797a78067387` |
| 15 | `theorem` | [pullback_topology](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullback-topology--80809052150b40521953ed55.md) | 127 | `result-track:80809052150b40521953ed5576fda43ad9e8a24baeb61de06a79d661414122d7` |
| 16 | `theorem` | [range_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/range-pullback-to-prod--bd8d19c15b2f9770703124dc.md) | 137 | `result-track:bd8d19c15b2f9770703124dc893b04916b06c32bda5c4bc903a4d190bc6ea61d` |
| 17 | `def` | [pullbackHomeoPreimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullbackhomeopreimage--7ee227d052747da26d0f3072.md) | 155 | `declaration-track:7ee227d052747da26d0f307214a38ce6644fe1cab46ccb99648d9f4f5bce51e9` |
| 18 | `theorem` | [isInducing_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/isinducing-pullback-to-prod--f463c0f4de0c2e32814ee78c.md) | 175 | `result-track:f463c0f4de0c2e32814ee78c26e58443da8e5d07c2f2d05462cc61f9d0222bd8` |
| 19 | `theorem` | [isEmbedding_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/isembedding-pullback-to-prod--e191c60bd9c212f54a418d82.md) | 179 | `result-track:e191c60bd9c212f54a418d82cda3afe6f8040566bf0c8e6deb9070b60b9c2d81` |
| 20 | `theorem` | [range_pullback_map](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/range-pullback-map--8ed76e987bcc8a2abed5b088.md) | 185 | `result-track:8ed76e987bcc8a2abed5b088b4fddee2229dfda75c36b258fa1c1b37268e68e1` |
| 21 | `theorem` | [pullback_fst_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullback-fst-range--7162ff62730abcbfbcf3a711.md) | 211 | `result-track:7162ff62730abcbfbcf3a711ba56b52ae04dec7589ba883e54bf8422f469ded7` |
| 22 | `theorem` | [pullback_snd_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullback-snd-range--e86d7b607220c6b2473be675.md) | 222 | `result-track:e86d7b607220c6b2473be675eff7a935d4d17e85ae5e277ace15f94e281df967` |
| 23 | `theorem` | [pullback_map_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullback-map-isembedding--c522829465ea3f26ba1913b9.md) | 245 | `result-track:c522829465ea3f26ba1913b9b92991d2b7d114ddb61bcc2c1f8d298e15bfe199` |
| 24 | `theorem` | [pullback_map_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullback-map-isopenembedding--f751ebbfe34a6333db980f42.md) | 270 | `result-track:f751ebbfe34a6333db980f42e21a93ecbbf061ce57137fa13787a0db3e11ac19` |
| 25 | `lemma` | [snd_isEmbedding_of_left](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/snd-isembedding-of-left--4d48c8cdaed5033edbba705d.md) | 286 | `result-track:4d48c8cdaed5033edbba705d36d592f9760a81e57ad93942de318abe2771b506` |
| 26 | `theorem` | [fst_isEmbedding_of_right](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/fst-isembedding-of-right--32d7c9942a060d6c5b093b38.md) | 295 | `result-track:32d7c9942a060d6c5b093b384fca86a99a69748243e7c6aad817611ce0fa655c` |
| 27 | `theorem` | [isEmbedding_of_pullback](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/isembedding-of-pullback--ba6d2578f7bddfce5773e72c.md) | 303 | `result-track:ba6d2578f7bddfce5773e72cd8e0a13ffbb8800a3a8914449b1b2fb502aa49b1` |
| 28 | `theorem` | [snd_isOpenEmbedding_of_left](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/snd-isopenembedding-of-left--a2c07348cffe23e8b303fdb0.md) | 310 | `result-track:a2c07348cffe23e8b303fdb012f568e6c58e5a5f16557a56e4732cb267fb2c09` |
| 29 | `theorem` | [fst_isOpenEmbedding_of_right](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/fst-isopenembedding-of-right--2d7e06eaa2538d1d14126052.md) | 319 | `result-track:2d7e06eaa2538d1d1412605204b25ca9d6bed285334b08de7cba378178bbcc07` |
| 30 | `theorem` | [isOpenEmbedding_of_pullback](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/isopenembedding-of-pullback--169227f7ef584a8a6cb03c2b.md) | 328 | `result-track:169227f7ef584a8a6cb03c2b641bf3c932a69d3f50ff5fefca6a83ca3fb62036` |
| 31 | `theorem` | [fst_iso_of_right_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/fst-iso-of-right-embedding-range-subset--83ccb07b496117fd98f2a2db.md) | 335 | `result-track:83ccb07b496117fd98f2a2db205f3d7ae6e929500e2a7a4546b9792fbc9193d9` |
| 32 | `theorem` | [snd_iso_of_left_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/snd-iso-of-left-embedding-range-subset--06e739c093a44e5a33c55c55.md) | 347 | `result-track:06e739c093a44e5a33c55c55d31c35276b215c129f243ce0b35131cd68d5c151` |
| 33 | `theorem` | [pullback_snd_image_fst_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullback-snd-image-fst-preimage--f3d30ecb4d9f39a13f22be27.md) | 358 | `result-track:f3d30ecb4d9f39a13f22be27d76873d51218b14e0a426aee0b3b84eaa9bc759c` |
| 34 | `theorem` | [pullback_fst_image_snd_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/pullback-fst-image-snd-preimage--c9e8408d843dd76a56c2a1ee.md) | 375 | `result-track:c9e8408d843dd76a56c2a1eec75881d7e6e5cbec7e58bdef235e071751545d39` |
| 35 | `lemma` | [isOpen_iff_of_isColimit_cofork](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/isopen-iff-of-iscolimit-cofork--2274508fa545e2d86ed6283a.md) | 400 | `result-track:2274508fa545e2d86ed6283a9cee0125e044412486263d0db6ada22bb0d65729` |
| 36 | `lemma` | [isQuotientMap_of_isColimit_cofork](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/isquotientmap-of-iscolimit-cofork--c6c9ac0ad4fb6e7b70abe0bf.md) | 411 | `result-track:c6c9ac0ad4fb6e7b70abe0bf05c78399158e94aca136c12b0ce85b2ca29e8d27` |
| 37 | `theorem` | [coequalizer_isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/declarations/coequalizer-isopen-iff--7f037baba5fed13f4202954d.md) | 418 | `result-track:7f037baba5fed13f4202954d25b8db6f64c4bdf320712a55c4e47545efe58fa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
