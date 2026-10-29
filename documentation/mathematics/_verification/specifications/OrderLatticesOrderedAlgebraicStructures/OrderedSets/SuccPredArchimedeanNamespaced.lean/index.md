# Verification target: Succ Pred Archimedean Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55375833a4aaaac5439661fa3423362481087b2f",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55375833a4aaaac5439661fa3423362481087b2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSuccArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/issuccarchimedean.md) | 31 | `declaration-track:f65e469dd0b7313bc6edbcc9d503e43d61d838f3bee568ba3f4863e0dcfac9db` |
| 2 | `class` | [IsPredArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/ispredarchimedean.md) | 37 | `declaration-track:7457646946a6d18f88af7810ef287f6409b506221f2b2bf7cba2526624ab3831` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/instance-source-edition-3.md) | 53 | `declaration-track:8309173cd86f6df916d83a4933e840e65446543bc83872e67863f681710f4aa4` |
| 4 | `theorem` | [LE.le.exists_succ_iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/le-le-exists-succ-iterate.md) | 56 | `result-track:a1c089322e0d479cea1bdd6c5aff76c447885edadf610bc75b26cc06d51e4ad1` |
| 5 | `theorem` | [exists_succ_iterate_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/exists-succ-iterate-iff-le.md) | 59 | `result-track:72d36465d1250cd83fc96592f4c6bd41117ba8f1d94b9f936794c465811ae8d0` |
| 6 | `theorem` | [Succ.rec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/succ-rec.md) | 66 | `result-track:2edcd10cd5177b60718a4ce2ad98bc69a1384dcb9aac6a21c59b555baed5d1cd` |
| 7 | `theorem` | [Succ.rec_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/succ-rec-iff.md) | 75 | `result-track:0085ec25a71213cb5f6c7cd6f6f51fce6ba70a67f54043b47fbc504d0a80b11d` |
| 8 | `lemma` | [le_total_of_codirected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/le-total-of-codirected.md) | 80 | `result-track:b8b8054b1bedacfab28b20766a83dcc31a9505bb87a6e7adf1752ccf693e684c` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:5c5509a9912502f37a1f268325be8f3045b1fd132f47ecfb0a1ff0a7571c6e09` |
| 10 | `theorem` | [LE.le.exists_pred_iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/le-le-exists-pred-iterate.md) | 102 | `result-track:3c8d433a76cfb2555be16e620ccc8dc550b38f3c92088bfaed3a20e11407ac5b` |
| 11 | `theorem` | [exists_pred_iterate_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/exists-pred-iterate-iff-le.md) | 105 | `result-track:f3831169d5508986f28f495c058c2afaa2829743047e139b22d7069dc170aabf` |
| 12 | `theorem` | [Pred.rec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/pred-rec.md) | 110 | `result-track:cf8f038e07b3526e494a6c9dd9825becc8b7387bddb04961553c79ca964d553a` |
| 13 | `theorem` | [Pred.rec_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/pred-rec-iff.md) | 114 | `result-track:7804234deb2f3288d6d6e074200e19e755cd15573ebc4c6143be49c34155da04` |
| 14 | `lemma` | [le_total_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/le-total-of-directed.md) | 118 | `result-track:cc8ee9ed965dc4b98f4346eab11b2028149592ddd1b6a0add36c140253b8af09` |
| 15 | `lemma` | [lt_or_le_of_codirected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/lt-or-le-of-codirected.md) | 129 | `result-track:4ec3559dba810bdd59816a2100f72fd6d9ddb6822765a11b99ad2da1e9f77378` |
| 16 | `abbrev` | [IsSuccArchimedean.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/issuccarchimedean-linearorder.md) | 141 | `declaration-track:208117f3065ac4d69340c95c630895deb0df38c3b1fc14c247f7910d66842d43` |
| 17 | `lemma` | [lt_or_le_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/lt-or-le-of-directed.md) | 151 | `result-track:61df161f5d6f30ee8bdfc2a06bd8e3d6093be5ce4c9914d155d23ca12d56d363` |
| 18 | `abbrev` | [IsPredArchimedean.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/ispredarchimedean-linearorder.md) | 163 | `declaration-track:b22f7415a636e5fb73a8ccaaa181a5dd09a649aaf13026f37c50d06090b4eeee` |
| 19 | `lemma` | [succ_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/succ-max.md) | 178 | `result-track:743da12f2f5f4ee8065bf1a2da91b5b7e0074df7bbb543d7bc94958f56cbaba2` |
| 20 | `lemma` | [succ_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/succ-min.md) | 179 | `result-track:e14af65b845909b2fed4be939d936a62e6c57bf0e9b2c465a7e392c87532af52` |
| 21 | `theorem` | [exists_succ_iterate_or](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/exists-succ-iterate-or.md) | 183 | `result-track:8243ec16dc9d8a524f3927aff8fbcdd1ba3efdcb4bcf6aa17ec1cdc456dee743` |
| 22 | `theorem` | [Succ.rec_linear](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/succ-rec-linear.md) | 186 | `result-track:af3242d6b6822340d4ab10fe9b6c0eddb827cc5691604400b479232d8c719f4e` |
| 23 | `lemma` | [pred_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/pred-max.md) | 194 | `result-track:c3cad71ba29a9e361a672f1aa0257ede8d486ccb5d199f1d039227bfb9d66c52` |
| 24 | `lemma` | [pred_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/pred-min.md) | 195 | `result-track:f0ceef6c76e5d8dc7c6f28d46e953cc6c5bd6b6a302d3c24f44e6ef72bff5bd2` |
| 25 | `theorem` | [exists_pred_iterate_or](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/exists-pred-iterate-or.md) | 199 | `result-track:fc1132111f82a18cf4103ff6e53d43912deaefa7fdec6ae8c9837af745412cd5` |
| 26 | `theorem` | [Pred.rec_linear](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/pred-rec-linear.md) | 202 | `result-track:3d1c446a10053999771d6338241861dbd9d27d6fb440bfb01804de204c15327f` |
| 27 | `lemma` | [StrictMono.not_bddAbove_range_of_isSuccArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictmono-not-bddabove-range-of-issuccarchimedean.md) | 212 | `result-track:ba8a80947980e0b7418d9e560746dae0edf04242d262dc2dc92cfb0fddf2cc6a` |
| 28 | `lemma` | [StrictMono.not_bddBelow_range_of_isPredArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictmono-not-bddbelow-range-of-ispredarchimedean.md) | 226 | `result-track:c0073ded921a681841ec6189b5f76fe3f307c33b7ef4b050ca178a680f86e873` |
| 29 | `lemma` | [StrictAnti.not_bddBelow_range_of_isSuccArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictanti-not-bddbelow-range-of-issuccarchimedean.md) | 230 | `result-track:62f464d1f370d7e4d2c91bfeabcc1c993dd467130e30426e9bd996e093d0b270` |
| 30 | `lemma` | [StrictAnti.not_bddBelow_range_of_isPredArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictanti-not-bddbelow-range-of-ispredarchimedean.md) | 234 | `result-track:76b7feba28711854fb43c5a0c7175c8ba8a61ae8b337a0f627212b34ad493adb` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/instance-source-edition-4.md) | 244 | `declaration-track:f6462c35e328aa5ba2d121f3b015a757365a23ddfb0e840c5f6fc672e72da9b9` |
| 32 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/instance.md) | 260 | `declaration-track:372d2af8215a198e9432152d26498e42efd044d64538950a6a5f396e22c217e2` |
| 33 | `theorem` | [Succ.rec_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/succ-rec-bot.md) | 271 | `result-track:f1aaf969489ed33e8b627a669e720992b9b85c7c0214ffbb42f7ad66bf33fefa` |
| 34 | `theorem` | [Pred.rec_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/pred-rec-top.md) | 280 | `result-track:eb62df680a25e60761f0060d52fdacef6cde435b74583f815e61872208e05006` |
| 35 | `lemma` | [SuccOrder.forall_ne_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/succorder-forall-ne-bot-iff.md) | 285 | `result-track:6591615b7d2adfd946f3d64186e3df0b5da2a592c324f5f9ec360fbb338aa7cd` |
| 36 | `lemma` | [BddAbove.exists_isGreatest_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/bddabove-exists-isgreatest-of-nonempty.md) | 299 | `result-track:f6ccd6d359d99b6c0541b8571bbdb2abe4ea9c4e3e7e3ed5d69246093fa11fc2` |
| 37 | `lemma` | [BddBelow.exists_isLeast_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/bddbelow-exists-isleast-of-nonempty.md) | 322 | `result-track:44e22e440184db40b96e387db478021f9f2b8865d99653c03f0ce8e2987eda63` |
| 38 | `lemma` | [IsSuccArchimedean.of_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/issuccarchimedean-of-orderiso.md) | 334 | `result-track:26ffccf52bc70efeaad6192b9b635edca39d0fd19483588e38dd649a0ac3ec2b` |
| 39 | `lemma` | [IsPredArchimedean.of_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/ispredarchimedean-of-orderiso.md) | 347 | `result-track:d43ae07091f44a77ec8e215c6475d33fdc2f78ac35eeb9b555e959f651afbf3f` |
| 40 | `instance` | [Set.OrdConnected.isPredArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/set-ordconnected-ispredarchimedean.md) | 365 | `declaration-track:8595ceb8855b15cb97ea5ebd43fe3cc45349b84c9953afb0db557608a8b39b25` |
| 41 | `instance` | [Set.OrdConnected.isSuccArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/set-ordconnected-issuccarchimedean.md) | 390 | `declaration-track:94b8b2a41b696acbc81d87e6e6315fad768998cf4e21bab2c3d92ec3b9bb661f` |
| 42 | `lemma` | [monotoneOn_of_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/monotoneon-of-le-succ.md) | 403 | `result-track:a148b2f6dd7a16bbae0bd50516d4f857fe4c24cb83885374c3adcaaad79d1648` |
| 43 | `lemma` | [antitoneOn_of_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/antitoneon-of-succ-le.md) | 418 | `result-track:9dc496fa1e87be53dc8ff5a83d94d249dd76e894f016645881a7f1a10557f2fc` |
| 44 | `lemma` | [strictMonoOn_of_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictmonoon-of-lt-succ.md) | 422 | `result-track:40716515f87b0e1c6d2d200f539e33e9638b2c762161c584ec103fee1a44fe24` |
| 45 | `lemma` | [strictAntiOn_of_succ_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictantion-of-succ-lt.md) | 439 | `result-track:6397cfed160c0649f647d585039f410d699445b1c6c4f68de9c8f5d886cd6c18` |
| 46 | `lemma` | [monotone_of_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/monotone-of-le-succ.md) | 443 | `result-track:0502b08d8b91d8d77f67ea0ba264acd9fd252a3e8fe0842e917ffd827d372a5d` |
| 47 | `lemma` | [antitone_of_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/antitone-of-succ-le.md) | 446 | `result-track:72ac173a3b4dde36c8416265f62fd1e1ecc801ba0ba8cbc8a2429a93b12cb1bb` |
| 48 | `lemma` | [strictMono_of_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictmono-of-lt-succ.md) | 449 | `result-track:bace94302515603d3ead463a39e4137785425f4b9c181aa19323d1f48acc26b8` |
| 49 | `lemma` | [strictAnti_of_succ_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictanti-of-succ-lt.md) | 452 | `result-track:b4a6ef332f90ffab59508e29d9f7c79f353060f2bbe1b2a1b44bb541bf700200` |
| 50 | `lemma` | [monotoneOn_of_pred_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/monotoneon-of-pred-le.md) | 460 | `result-track:e7fd69315b6840fe04c002e56f75eb541027f4c7fc23a81f9555fc932d7b4fba` |
| 51 | `lemma` | [antitoneOn_of_le_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/antitoneon-of-le-pred.md) | 475 | `result-track:969c2ffa140d179c48b53c0354f5f0e7ed736736505ca67de88b19c666a2b00b` |
| 52 | `lemma` | [strictMonoOn_of_pred_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictmonoon-of-pred-lt.md) | 479 | `result-track:950c1a2511e5c2cd87f9baa08b1ff930993a7a7e48db787a21b983c93b837aa0` |
| 53 | `lemma` | [strictAntiOn_of_lt_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictantion-of-lt-pred.md) | 496 | `result-track:d12959b07cc9627a65e0593834cfa4cc67f3e8c5926b9a3ffe7fe9d2e3bdc35e` |
| 54 | `lemma` | [monotone_of_pred_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/monotone-of-pred-le.md) | 500 | `result-track:72065c0932ff1c2924c778e8aa3d4303193e07cd73a0772893516f4e8b721032` |
| 55 | `lemma` | [antitone_of_le_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/antitone-of-le-pred.md) | 503 | `result-track:5104544bba4d72c1ac2cdfcf03dbd929e88050844327659393833830a5a8ac85` |
| 56 | `lemma` | [strictMono_of_pred_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictmono-of-pred-lt.md) | 506 | `result-track:88ade10fa9dd67df1fa18a46d1079b23ab900ec8014037262b3e0cfe78405f79` |
| 57 | `lemma` | [strictAnti_of_lt_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanNamespaced.lean/declarations/strictanti-of-lt-pred.md) | 509 | `result-track:cf816ffa980908fa36ace5ececb4d90f856b87b05d15550473940265c2cec8f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc2c39b117027e7131e9e39983354328273256350e599c0ae49196eab7a12fe8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
