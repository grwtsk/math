# Verification target: Succ Pred Archimedean Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23e44baa40f9e48c7a1c591de5d026a08c6f0638",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23e44baa40f9e48c7a1c591de5d026a08c6f0638`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean.json)

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
| 1 | `class` | [IsSuccArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/issuccarchimedean.md) | 27 | `declaration-track:358625351bbeb935b33654cfcd50b3fa9a81b8a2960294e8496b7c2c6b63b9f6` |
| 2 | `class` | [IsPredArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/ispredarchimedean.md) | 34 | `declaration-track:ea993c52fea0f23c09523d84c7ede490e78b52ceee3cf66a9c747ec095bdc396` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/instance-source-edition-2.md) | 46 | `declaration-track:c8f9ba7697c1dcfa146b929c17d1c689644f9e990aff1388adbc0e7fca769eee` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/instance.md) | 50 | `declaration-track:600cbd2f7e1c5e1b815daa1b5b34f0142097b1a2b4826cdd7f4acbce62316a4e` |
| 5 | `theorem` | [LE.le.exists_succ_iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/le-le-exists-succ-iterate.md) | 58 | `result-track:0565d1901073e4a46dc966f0cbe45498c64509f0e122e8ad8b7cdeb3b0b676c3` |
| 6 | `theorem` | [exists_succ_iterate_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/exists-succ-iterate-iff-le.md) | 62 | `result-track:cfdf31e4ea0f61e720e47e46525197b5de984d1637f692ecab35d138a38c3a75` |
| 7 | `theorem` | [Succ.rec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/succ-rec.md) | 71 | `result-track:4f68a37e58a492425dd0e992279d612f183512a17023bdb089b18f0cdfeab29b` |
| 8 | `theorem` | [Succ.rec_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/succ-rec-iff.md) | 82 | `result-track:10d84d535492d6573dd705ee805c8751843af9a1eac80dd21bf74343af849105` |
| 9 | `lemma` | [le_total_of_codirected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/le-total-of-codirected.md) | 88 | `result-track:8a19b1bb9d552cccb64c4c78fd38b382f6061bc56bb899641f0446d501e2944d` |
| 10 | `lemma` | [lt_or_le_of_codirected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/lt-or-le-of-codirected.md) | 110 | `result-track:4d8f19eb661fa34314322ff340db5c30124a32d8b1d5627add3511d19eaf278f` |
| 11 | `abbrev` | [IsSuccArchimedean.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/issuccarchimedean-linearorder.md) | 123 | `declaration-track:8ea8e9abf5d0177e30fb0fe956572bfa3099c5f864ad8cda329b093a31c46e56` |
| 12 | `abbrev` | [IsPredArchimedean.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/ispredarchimedean-linearorder.md) | 138 | `declaration-track:b4b7e695798d0d35761ccb1a729678eb6eab0c0ce3ec6ad7781a62b36fa814ce` |
| 13 | `theorem` | [exists_succ_iterate_or](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/exists-succ-iterate-or.md) | 151 | `result-track:53bd8b091430c1ffc10b75adfc7b026ec9372c6c99c546702b1c667fe4047c06` |
| 14 | `theorem` | [Succ.rec_linear](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/succ-rec-linear.md) | 155 | `result-track:a0dd0d3656a5566bd8d2350f848bd098649cbf1e750c3a7cb9be7750116fa578` |
| 15 | `lemma` | [StrictMono.not_bddAbove_range_of_isSuccArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictmono-not-bddabove-range-of-issuccarchimedean.md) | 164 | `result-track:0490a3735b4eb0fbcd1c60928df5228be9d64bc3b9f5adb8f822a123fda7b257` |
| 16 | `lemma` | [StrictAnti.not_bddAbove_range_of_isSuccArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictanti-not-bddabove-range-of-issuccarchimedean.md) | 179 | `result-track:890e213b0be91abaa39afd0bac50e7d43c451323ccddf36fc4e7d999d9d7fea5` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/instance-source-edition-3.md) | 190 | `declaration-track:cad8650c6992384d318afe9c6ca11b009521cf1b26cde600fdd83852a5eb9d24` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:f45b0eb603992c60d18a4d7792deed4d9bc24dbf5b97f7a1beabf3759c9944fe` |
| 19 | `theorem` | [Succ.rec_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/succ-rec-bot.md) | 217 | `result-track:38492e7481264c0444c5b1d7bff192caa1be3aee8849d86f52274ea6a6c288b8` |
| 20 | `lemma` | [SuccOrder.forall_ne_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/succorder-forall-ne-bot-iff.md) | 223 | `result-track:30396d944b049576e990a0286489149de24c36c983c20ea7546db4f4dc963bd7` |
| 21 | `lemma` | [BddAbove.exists_isGreatest_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/bddabove-exists-isgreatest-of-nonempty.md) | 238 | `result-track:6dc743042ec5739cd07136c9a51cb095daf527cc4c0fbd998614953337ee7fa2` |
| 22 | `lemma` | [IsSuccArchimedean.of_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/issuccarchimedean-of-orderiso.md) | 269 | `result-track:3a50d81e86fabff1d6d9d4b91e4da2fd484b1c2ff22d0a741bcd57c1e2e6c871` |
| 23 | `lemma` | [IsPredArchimedean.of_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/ispredarchimedean-of-orderiso.md) | 283 | `result-track:42a0e30a6fb23ef6751cdda74e63b6bf2591fcf2d81248af13ef1527295ba594` |
| 24 | `instance` | [Set.OrdConnected.isPredArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/set-ordconnected-ispredarchimedean.md) | 301 | `declaration-track:7b62de70379a4424bafbcaaa729757aa486f4d92be2367b4d5a576bc0cb7c707` |
| 25 | `instance` | [Set.OrdConnected.isSuccArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/set-ordconnected-issuccarchimedean.md) | 326 | `declaration-track:bce72b8fba5193731bf8b2c16f35020c5f2aacaebf057ae5f675b04b2fd7595c` |
| 26 | `lemma` | [monotoneOn_of_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/monotoneon-of-le-succ.md) | 339 | `result-track:28e408d7fc9ead4c4ff03356b92ffde0bf61bb0877e0ebe7d266f6d49536e097` |
| 27 | `lemma` | [antitoneOn_of_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/antitoneon-of-succ-le.md) | 354 | `result-track:c6f75ca82f56286a3dc0f26da5391937fe5d51dcb901bcd7fcc1fef4a658300c` |
| 28 | `lemma` | [strictMonoOn_of_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictmonoon-of-lt-succ.md) | 358 | `result-track:07897d6e265e3e08e7e91b30921137b02a066e54f3b86649e882af8df8ed9199` |
| 29 | `lemma` | [strictAntiOn_of_succ_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictantion-of-succ-lt.md) | 375 | `result-track:015ec9f24382dc95d45f6cbc1d34cb12e0a9c7247585d1f684c39010486c25f3` |
| 30 | `lemma` | [monotone_of_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/monotone-of-le-succ.md) | 379 | `result-track:5291164ecaf395b7a260a82e87a5f86793777181cb26b91e76756db6988c1b82` |
| 31 | `lemma` | [antitone_of_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/antitone-of-succ-le.md) | 382 | `result-track:84afc3945e092dff6746e8946f84bc37f06da45e1135b48f18754a3a26bf50e7` |
| 32 | `lemma` | [strictMono_of_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictmono-of-lt-succ.md) | 385 | `result-track:92f1df98e2007f4557c12e897dbc0bf5b8e3666fcc286cacd4afbf8d7c9e48da` |
| 33 | `lemma` | [strictAnti_of_succ_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictanti-of-succ-lt.md) | 388 | `result-track:575335c507d1688a62d19d6d282fff5536be7c816a1e7c7f512a1dc8e9ff69f1` |
| 34 | `lemma` | [monotoneOn_of_pred_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/monotoneon-of-pred-le.md) | 396 | `result-track:e052bf64bc202caddf2fce3625c8d3d00e30b9ad75149dd38e0610145b683bb7` |
| 35 | `lemma` | [antitoneOn_of_le_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/antitoneon-of-le-pred.md) | 411 | `result-track:b80b0e5aade4a598b3676bc948825073bf52a6d78291d1d846a4d9e2e22a7598` |
| 36 | `lemma` | [strictMonoOn_of_pred_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictmonoon-of-pred-lt.md) | 415 | `result-track:bb4aa2106c312e0da559e77d12029d8773ac91772fc5bf33e87e4c315f497141` |
| 37 | `lemma` | [strictAntiOn_of_lt_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictantion-of-lt-pred.md) | 432 | `result-track:febbc24dc0dac7f61967c47fb7f546e06280c14a75f6f0be64a77da161234295` |
| 38 | `lemma` | [monotone_of_pred_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/monotone-of-pred-le.md) | 436 | `result-track:2101f0051706fe58fb5441eae9551d27fc2e2c9361faf80e1a4049b94333a4e8` |
| 39 | `lemma` | [antitone_of_le_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/antitone-of-le-pred.md) | 439 | `result-track:917c44741707a785cf6c861e63ddc8a13438ba9c6931f06583dce5d09606751f` |
| 40 | `lemma` | [strictMono_of_pred_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictmono-of-pred-lt.md) | 442 | `result-track:7601d8d0bc72a5a98154763ae783384e3609e2e8cf9cfc94bf386462ed6889a8` |
| 41 | `lemma` | [strictAnti_of_lt_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredArchimedeanPublic.lean/declarations/strictanti-of-lt-pred.md) | 445 | `result-track:38e9ac9b1bb381bdadd07e04987a96d504ad544d708cd1926a4209357cbcf0d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78357dafd07e1cdaf95f6e0928921c17f6c61b4fadd63e04ec782b7e16306d76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
