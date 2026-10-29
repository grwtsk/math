# Verification target: Sym Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6f382242bf478cf48b847a903effb6ad2f3e3e7",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant2850fea9282a4a5003af0663e65341be772c0de8ef870796d13d469701ea7701.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6f382242bf478cf48b847a903effb6ad2f3e3e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant2850fea9282a4a5003af0663e65341be772c0de8ef870796d13d469701ea7701.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sym/Variant2850fea9282a4a5003af0663e65341be772c0de8ef870796d13d469701ea7701.lean.json)

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
| 1 | `def` | [sym2](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2.md) | 41 | `declaration-track:bc1bd85d6ab07c75981ce7879b1b3a258f9874959ca34271fc04587c453b6826` |
| 2 | `theorem` | [mk_mem_sym2_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/mk-mem-sym2-iff.md) | 46 | `result-track:6107a7dd86f576eced2c544fa8cde49bbe9a0d1d4d561d9a71a82fd4c7f73fe3` |
| 3 | `theorem` | [mem_sym2_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/mem-sym2-iff.md) | 50 | `result-track:e75de255a385b4cfa9ffc5f94ddbbe60a63c63262bb29e2c930a63167451b854` |
| 4 | `lemma` | [coe_sym2](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/coe-sym2.md) | 54 | `result-track:b5ea2c3aaea5b02b9165b2ff2584300e535e8edc19b51b1ca395c0747358f5b6` |
| 5 | `theorem` | [sym2_cons](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-cons.md) | 57 | `result-track:e544fe5821c506491fdac568cf5e048a3b3281114ab6a8c5ec2a8604cdad6256` |
| 6 | `theorem` | [sym2_insert](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-insert.md) | 62 | `result-track:53594fef2d2e26d94a7e87e09515a2f218ca52968c9fb16930b7922f52f30b32` |
| 7 | `theorem` | [sym2_map](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-map.md) | 69 | `result-track:465fad6a039b0c80797d2d4329f7eae3e114935d7644e2d81d5f20f6ad0993bd` |
| 8 | `theorem` | [sym2_image](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-image.md) | 72 | `result-track:9da1cb5917a0ded6f9b5ef4069b1ec742db3966b811117fc392da76644fb5458` |
| 9 | `instance` | [_root_.Sym2.instFintype](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/root-sym2-instfintype.md) | 78 | `declaration-track:622d0a701153dad0e7b505c5b6e0c8a9bdd4bf85572e2a69d1a102d1bc604dbc` |
| 10 | `theorem` | [sym2_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-univ.md) | 84 | `result-track:11879ed4bdaaa192c867c9a8929fcdb4fe3113dd831fff32291f799ca3b11671` |
| 11 | `theorem` | [sym2_mono](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-mono.md) | 90 | `result-track:78105c456cc798e6aeaab78c85e25aa81fea860b6807a4b5797c4ae7d440f826` |
| 12 | `theorem` | [monotone_sym2](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/monotone-sym2.md) | 93 | `result-track:4ed69f75503a5986662b526a9937aa31001adf45f17b9c1622a16ec7d95ad760` |
| 13 | `theorem` | [injective_sym2](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/injective-sym2.md) | 95 | `result-track:5bb453a26293ff50d2911ebf6b1360c0723e238dc6700b956b94ab3c19cfb945` |
| 14 | `theorem` | [strictMono_sym2](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/strictmono-sym2.md) | 100 | `result-track:a2ed7ab4306b2f6b2560abbeca148e39d0c1c0fc8236137127eb834af2d16ec1` |
| 15 | `theorem` | [sym2_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-tofinset.md) | 103 | `result-track:a2752393b4a451519e99dd1182110d87c5b79feef8ed5e55d99c91874afda16f` |
| 16 | `theorem` | [sym2_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-empty.md) | 110 | `result-track:409f1a08741520b762fece44e471e03a8cd15e7552d9d7e8a9a73c688732e7e1` |
| 17 | `theorem` | [sym2_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-eq-empty.md) | 113 | `result-track:092985ae16361df0c9845e2ac8fc6bc3b9ecbb1db836b7d112b81e25513a8e76` |
| 18 | `theorem` | [sym2_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-nonempty.md) | 117 | `result-track:9c48398f1640412463461475977f57f0e33473f409ab797eaa0f734b0692ca08` |
| 19 | `theorem` | [sym2_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-singleton.md) | 124 | `result-track:3e9332c0f4e395376e74fd13eb52de475c6bad312c03d5f868a83b2c35113a61` |
| 20 | `theorem` | [card_sym2](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/card-sym2.md) | 127 | `result-track:cd0bad4e7d8c65a35c4b1d8e5746ee2c74285e324579a39514612b37b525c3a7` |
| 21 | `theorem` | [sym2_eq_image](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym2-eq-image.md) | 134 | `result-track:da5e51dc370190208af1f89f5398d23d99ea17a0365de3a2a04e086b12d21375` |
| 22 | `theorem` | [isDiag_mk_of_mem_diag](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/isdiag-mk-of-mem-diag.md) | 137 | `result-track:5ed791c5508698a4e0ad244c8ec9c1566394127df2427d309fa911481b5f77a4` |
| 23 | `theorem` | [not_isDiag_mk_of_mem_offDiag](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/not-isdiag-mk-of-mem-offdiag.md) | 140 | `result-track:caa5497734ca504f790a8d5fbef4921495b4356bfe29f3d9c43db42bc6ed64f4` |
| 24 | `theorem` | [diag_mem_sym2_mem_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/diag-mem-sym2-mem-iff.md) | 146 | `result-track:ed20335e3d9d071d955ba35484be637657b10ce6d3f584c87babbb63070a8997` |
| 25 | `theorem` | [diag_mem_sym2_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/diag-mem-sym2-iff.md) | 150 | `result-track:9ab5f00146a0771cbddccd1b91e18c8c3fee353332be2ef1dd3eccba978fa134` |
| 26 | `theorem` | [image_diag_union_image_offDiag](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/image-diag-union-image-offdiag.md) | 152 | `result-track:f8b49889fbb7d0baf5c576ab28c3609d4c7c7d076d7d8011ca138e1d840fcfee` |
| 27 | `def` | [sym](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym.md) | 164 | `declaration-track:07d38c07495325582c2bc9540ef2fde7cb66a562ee0cf8eb1b375fea8fba310a` |
| 28 | `theorem` | [sym_zero](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-zero.md) | 169 | `result-track:1d2a99412f326eb82a2753d14e43c46ffc0ff6fa223453fb5365b51cc9e01d17` |
| 29 | `theorem` | [sym_succ](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-succ.md) | 172 | `result-track:d0daa7814432837e23dae20d33169fc9f26bceb00236ed35fe24d6297fc19b22` |
| 30 | `theorem` | [mem_sym_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/mem-sym-iff.md) | 175 | `result-track:b98b30aeedfb1cb32121a3789749bf25db70f445b8b8230357e65dbeabc00bcf` |
| 31 | `lemma` | [sym_map](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-map.md) | 195 | `result-track:7a1f211cdd68af563799e730a527ff1841c82897a2163eeec00314186a7efce2` |
| 32 | `theorem` | [sym_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-empty.md) | 215 | `result-track:1517d130f471cd8cd34c2f6b5daa58b09dd124aeb262416db6bdac6ac713b4c7` |
| 33 | `theorem` | [replicate_mem_sym](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/replicate-mem-sym.md) | 217 | `result-track:478c64abb7115b7b922b69915a29f708c7478113cc0dae864e230068f8cfc186` |
| 34 | `theorem` | [Nonempty.sym](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/nonempty-sym.md) | 220 | `result-track:5029c56f571b8d8d0b7a2b33ebbd4d7c63778161fb786263a2b3c7f6e9a91b12` |
| 35 | `theorem` | [sym_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-singleton.md) | 225 | `result-track:ca2bdccf9a47d302733757bdc0b12272cf7a14cf8f4e5488b8708bdee2a4fb0d` |
| 36 | `theorem` | [eq_empty_of_sym_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/eq-empty-of-sym-eq-empty.md) | 230 | `result-track:fcee838ab653c608c3571f861f6237b4fd3bf1d863cf260675e70c4e94b34f12` |
| 37 | `theorem` | [sym_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-eq-empty.md) | 234 | `result-track:d8a0a5325039675b0df69426c71369c0954f88a12f2c09538ec8108ce53a84f6` |
| 38 | `theorem` | [sym_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-nonempty.md) | 242 | `result-track:e915ccc81f3f4dd62250c219403aedb91f752bdec999f2b391e4666f11c532f1` |
| 39 | `theorem` | [sym_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-univ.md) | 246 | `result-track:89ad8a4d317f53bf8f344284d2a080c41a4d7ca9f05461b746cfc4557b96aaa4` |
| 40 | `theorem` | [sym_mono](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-mono.md) | 250 | `result-track:0a18707bc2d78bc42827df3ba5a5e09cc955b7f7f6b576d091273c68e25987bb` |
| 41 | `theorem` | [sym_inter](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-inter.md) | 254 | `result-track:d35150c2665d4d7ad011dfa48275229cf4aac677ad619ea36939dbf93c6c041f` |
| 42 | `theorem` | [sym_union](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-union.md) | 259 | `result-track:190484bc9e7caf30611673de6a837114fa3cfd4c63c3bf87eb362dd09afd5862` |
| 43 | `theorem` | [sym_fill_mem](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-fill-mem.md) | 262 | `result-track:ab5487770706ae540a0b971398c30b409c01eab6ae6ea0c1cbc45bbc65f0d5bc` |
| 44 | `theorem` | [sym_filterNe_mem](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/sym-filterne-mem.md) | 267 | `result-track:371ca52f25877c9d8501c8e882563ce51a14453bc42cf7d8c617f9679aa7996a` |
| 45 | `def` | [symInsertEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/syminsertequiv.md) | 276 | `declaration-track:1bff775ec2cee5fa63a6c39cf26f80324909213ad0bdecc1c206d2175b8ff37a` |
| 46 | `theorem` | [val_prod_eq_prod_count_pow](../../../../../Combinatorics/EnumerativeCombinatorics/SymPublic.lean/declarations/val-prod-eq-prod-count-pow.md) | 290 | `result-track:78165f254727f8c02ce989952671eb01395f1150191316b506101820fbfecfb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58f6525599c0b1b65d8a9dba7764bcb96dd9fc0554a24987a58b5fa366a6833e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant2850fea9282a4a5003af0663e65341be772c0de8ef870796d13d469701ea7701.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sym/Variant2850fea9282a4a5003af0663e65341be772c0de8ef870796d13d469701ea7701.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
