# Verification target: Group Subgroup Finite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c857948adda130d7c232fd5f32f2d4c1ff7e8f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c857948adda130d7c232fd5f32f2d4c1ff7e8f`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 40 | `declaration-track:df478f87f615d76b8daead47f83d74d61c70f60f755b1662f549240edca19a02` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/instance.md) | 44 | `declaration-track:8ed75e1716f1448bcda70860af38796ea118c6889b5e179a575808c8ee621025` |
| 3 | `theorem` | [list_prod_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/list-prod-mem.md) | 60 | `result-track:6549135a3af1f99d0d8b6ca3637e36537eb38db483f59b46531de01425ae7790` |
| 4 | `theorem` | [multiset_prod_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/multiset-prod-mem.md) | 66 | `result-track:6c6033e75170abfe8b7d5f655de2f37e5aa50d71cba13d159d8d3907c2e0f611` |
| 5 | `theorem` | [multiset_noncommProd_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/multiset-noncommprod-mem.md) | 71 | `result-track:02a3c3e632a8cbeab0a757da05c71fddd8f6668d5fd24fdc268cb99eef3c992f` |
| 6 | `theorem` | [prod_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/prod-mem.md) | 79 | `result-track:a1cef4c9b256a7b48d9f021f4344d207df3a0cc1a387ea0e525a6c12da9ccf48` |
| 7 | `theorem` | [noncommProd_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/noncommprod-mem.md) | 84 | `result-track:be13104ffb6f6eb7e3e4cb72d153ccbcc62d9f9aadc54987f6e2c0062056ee65` |
| 8 | `theorem` | [val_list_prod](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/val-list-prod.md) | 89 | `result-track:959551ce11f5c42c28b989e72719f947b71e537389f94baf423b5c1075122f83` |
| 9 | `theorem` | [val_multiset_prod](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/val-multiset-prod.md) | 93 | `result-track:23220904c81c2ef1298257271f9c76cc0ebad79314081c3606f3d510cdbec0be` |
| 10 | `theorem` | [val_finsetProd](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/val-finsetprod.md) | 98 | `result-track:93fa34cf8c48427a49fd6898641816ed1cb8699865b914cd92e07c0a7ba10247` |
| 11 | `instance` | [fintypeBot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/fintypebot.md) | 109 | `declaration-track:8dad96770bf0a99bef945c5aaecfad9d04d7b8f6c6bb48abeca8776b5fe64447` |
| 12 | `theorem` | [card_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-bot.md) | 115 | `result-track:75af45d84281e5f43487e3bcd3ec13e2f6521fd0e5f16b89afe74cdef7d8e4a1` |
| 13 | `theorem` | [card_top](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-top.md) | 118 | `result-track:4423eb3d73adf0937823018baaf73f48b7a27898861cae4560ed9fad2d7b0ddd` |
| 14 | `theorem` | [eq_of_le_of_card_ge](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/eq-of-le-of-card-ge.md) | 122 | `result-track:44835f714635eda083d77fd0444495fc974e1d6dc45a77a6bc2e71a6409c1799` |
| 15 | `theorem` | [eq_top_of_le_card](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/eq-top-of-le-card.md) | 128 | `result-track:647c09eefda9d0daaf9bc92fb4372a777f717ff401c0e9089045ab366c22c294` |
| 16 | `theorem` | [eq_top_of_card_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/eq-top-of-card-eq.md) | 132 | `result-track:59155c552c07b1957e81e7a484c0f84126cb2a21d9b16d8fa3d1ed93150cd3ad` |
| 17 | `theorem` | [card_eq_iff_eq_top](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-eq-iff-eq-top.md) | 137 | `result-track:1859161d6da2510d73905d53d0156a27a40a4065941f63bc18dbcf7945d2df87` |
| 18 | `theorem` | [eq_bot_of_card_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/eq-bot-of-card-le.md) | 141 | `result-track:427b4b8e14c7f184fb4d959453d51ad6dd6862eb8d1585d9b889816ff925db04` |
| 19 | `theorem` | [eq_bot_of_card_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/eq-bot-of-card-eq.md) | 146 | `result-track:28d5eb4dc938afd7e4c8cccf4fffdc0a024ff9bce21e6b561b3696d3379581a4` |
| 20 | `theorem` | [card_le_one_iff_eq_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-le-one-iff-eq-bot.md) | 151 | `result-track:d4501c141dfc45faf16f26c12ab4f3071998835501acd832d1c91db82b0560aa` |
| 21 | `lemma` | [eq_bot_iff_card](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/eq-bot-iff-card.md) | 154 | `result-track:ceb3dafc0e92325f0a28bed2a4c3c5cf38ac4257a0d7e65d11d853b3c5035799` |
| 22 | `theorem` | [one_lt_card_iff_ne_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/one-lt-card-iff-ne-bot.md) | 158 | `result-track:b4af7ee1875f30edfb785cfe69ce9ef1298a858be0e317ca2944a056bb99b79c` |
| 23 | `theorem` | [card_le_card_group](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-le-card-group.md) | 162 | `result-track:92b4671157f4cd92ec96c019fc25ac2dc7687bf0f69de8ac32fc5f089d31bd9d` |
| 24 | `theorem` | [card_le_of_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-le-of-le.md) | 166 | `result-track:964234e6a27225abd767b6a7b0155c772a8050533328aaa881cc9c7d7c68de85` |
| 25 | `theorem` | [card_lt_of_lt](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-lt-of-lt.md) | 170 | `result-track:766cf882d21bdb0a23cd7003d6d35e9f0ad0ca3b4b12e487ffb6c127fbaa9186` |
| 26 | `theorem` | [card_map_of_injective](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-map-of-injective.md) | 174 | `result-track:3233fc2ec59efcca3e38456da9ba007bc0d17a739b7bf581ff789dbfd662d127` |
| 27 | `theorem` | [card_subtype](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-subtype.md) | 180 | `result-track:47a91dd09cafb03ebbb396a14784af36b9c281efb900b1c0edb165a7dfd8a45c` |
| 28 | `theorem` | [card_mapSubgroup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-mapsubgroup.md) | 185 | `result-track:98fae66e6039f3fa008264727157e62da1e314314643e12553488899d56673ff` |
| 29 | `theorem` | [pi_mem_of_mulSingle_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/pi-mem-of-mulsingle-mem.md) | 200 | `result-track:ce2dffb071628b08c17ba887a326936f44755f42e44e9813657b998e74b6de88` |
| 30 | `theorem` | [pi_le_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/pi-le-iff.md) | 207 | `result-track:6b3a846b8092802f20522d0c568d83883bd061a71ce2dbe20133928fd49dd6dc` |
| 31 | `theorem` | [closure_pi](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/closure-pi.md) | 212 | `result-track:e00bd34df8b6c650289e04af6af21f9127b556afd46ea893f1c4ea3f0072dbb5` |
| 32 | `theorem` | [mem_normalizer_fintype](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/mem-normalizer-fintype.md) | 229 | `result-track:c631a009a1980a316f21d9781af1d492e4e04fb36eee7d811f68258008e9630c` |
| 33 | `instance` | [decidableMemRange](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/decidablememrange.md) | 252 | `declaration-track:bce4247be7f3b38dac11b6d6b7b02a9dfa5605e7761e35286d85bf775920f25c` |
| 34 | `instance` | [fintypeMrange](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/fintypemrange.md) | 265 | `declaration-track:d3de40ece60a03a412c25a6392233051d6c32e35519dc23af0a03b5414e7ca04` |
| 35 | `instance` | [fintypeRange](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/fintyperange.md) | 278 | `declaration-track:d57f69e1c7e0cc66a722196a47707688b17076361e7781c3783bb602fd664bba` |
| 36 | `lemma` | [Group Subgroup Finite Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-coesort-mrange.md) | 281 | `result-track:ab9d45f1de41d2f310f2931d4c13edc126ebf9aff9828069eb7af95f654e382f` |
| 37 | `lemma` | [Group Subgroup Finite Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupSubgroupFiniteNamespacedPublic.lean/declarations/card-coesort-range.md) | 286 | `result-track:c782d9e381e32a44d1da00a3e3cd415ce1aefb48a5b7d1241b1b74bfb2d0a4a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e799d17cfed4a8022d173c52c21154afc6d5e518d7b6edda634aaa3c119a03bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
