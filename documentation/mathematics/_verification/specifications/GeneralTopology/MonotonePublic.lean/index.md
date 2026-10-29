# Verification target: Monotone Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d81dee74f9bc020acf1ba502c05b0d3128b019f",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MonotonePublic.lean/index.md) · [Full source](../../../../GeneralTopology/MonotonePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d81dee74f9bc020acf1ba502c05b0d3128b019f`.

Source path: `GRWTSK/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean.json)

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
| 1 | `lemma` | [MonotoneOn.insert_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-insert-of-continuouswithinat.md) | 35 | `result-track:452e159e5fcf569cdbf402a389870d8059bf2529595046785b5d8c1f716133dc` |
| 2 | `lemma` | [MonotoneOn.countable_setOfPred_two_preimages](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-countable-setofpred-two-preimages.md) | 56 | `result-track:4c9566ced23c32a2493b03ba29e04b2ca339a67c8a1d9d58f645efaca0055622` |
| 3 | `lemma` | [Monotone.countable_setOfPred_two_preimages](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-countable-setofpred-two-preimages.md) | 94 | `result-track:2eabad487b34a14e798495fbf773a864e8db281a4a12600bbb8c9cd608182b73` |
| 4 | `lemma` | [AntitoneOn.countable_setOfPred_two_preimages](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-countable-setofpred-two-preimages.md) | 105 | `result-track:d4337797383c712cedc94a60b0b94728741f5e1ffd8e69a8203774e0e29c78d6` |
| 5 | `lemma` | [Antitone.countable_setOfPred_two_preimages](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-countable-setofpred-two-preimages.md) | 115 | `result-track:12969d90e67440e839de51215058b2807d48c310283d7946547083d3f0909f1a` |
| 6 | `theorem` | [MonotoneOn.countable_not_continuousWithinAt_Ioi](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-countable-not-continuouswithinat-ioi.md) | 130 | `result-track:2200a153947fae6e7d2916d4b62efc234bc20f734e0a65e9fbbfd7a7b8620459` |
| 7 | `theorem` | [MonotoneOn.countable_not_continuousWithinAt_Iio](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-countable-not-continuouswithinat-iio.md) | 148 | `result-track:9a202b17388c0f7bd6757e1edb735311a1e525322365e3c7e4a19073aef46148` |
| 8 | `theorem` | [MonotoneOn.countable_not_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-countable-not-continuouswithinat.md) | 154 | `result-track:ac10c696480fb7bf6722c2351df7a45fa8d46f20c5a3f5b837e8b1b540b25dfb` |
| 9 | `theorem` | [Monotone.countable_not_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-countable-not-continuousat.md) | 166 | `result-track:ff2ea835ac4eeacc300e35cdfc70ff3cdbda48df0f8845247b81ef7080740673` |
| 10 | `theorem` | [_root_.AntitoneOn.countable_not_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/root-antitoneon-countable-not-continuouswithinat.md) | 172 | `result-track:e2feb83c0165674ebbe140d9a34d93fba90a4776d1c0d5b29aa23d6aabf15f0e` |
| 11 | `theorem` | [Antitone.countable_not_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-countable-not-continuousat.md) | 179 | `result-track:957c0ff9cdf6dc218cc0480d0f0440c7828b8d6edc9a608adb2a912db15e4c13` |
| 12 | `theorem` | [Monotone.leftOrdContinuous](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-leftordcontinuous.md) | 193 | `result-track:f04a33ca748f31589c76408341243ab850159cbaaaaea6369de44e8843490b2e` |
| 13 | `theorem` | [Continuous.leftOrdContinuous](../../../../GeneralTopology/MonotonePublic.lean/declarations/continuous-leftordcontinuous.md) | 201 | `result-track:4b00a55ad6e865cadb78ba1887cf92796ac289b7b029f03f933c5a6211f02661` |
| 14 | `theorem` | [MonotoneOn.map_csSup_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-map-cssup-of-continuouswithinat.md) | 216 | `result-track:f9126cc153d36fc23e5d39af3f4339a2902fb2a0cbae2da4074da1687f8c645b` |
| 15 | `theorem` | [Monotone.map_csSup_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-map-cssup-of-continuousat.md) | 226 | `result-track:ccc639442045dd3f08a9f5531e2a3d1abc24f863b8f8686d28d68d411801e2ad` |
| 16 | `theorem` | [Monotone.map_ciSup_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-map-cisup-of-continuousat.md) | 234 | `result-track:0a0d3fe35bd6e41dcd42fda448f61ef8ff284e49ddc1c91a476cb58f3ccd0194` |
| 17 | `theorem` | [MonotoneOn.map_csInf_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-map-csinf-of-continuouswithinat.md) | 242 | `result-track:6da70e393a2015eb157ed211bc669c8cafe459debaa7dd78350be8a24b8b28f0` |
| 18 | `theorem` | [Monotone.map_csInf_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-map-csinf-of-continuousat.md) | 250 | `result-track:7752e873c47676690992f209e014416ea0361308f05fbdc318f7de05c65a8113` |
| 19 | `theorem` | [Monotone.map_ciInf_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-map-ciinf-of-continuousat.md) | 257 | `result-track:5f56ecb822ce767299b9ebbf8f25afed7615e9a4f56a4566fb26e5918155b2ba` |
| 20 | `theorem` | [AntitoneOn.map_csInf_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-map-csinf-of-continuouswithinat.md) | 265 | `result-track:a02811d9ad43654b3d1da5196835537526e238217fbafeeef7257cefc5224d5f` |
| 21 | `theorem` | [Antitone.map_csInf_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-map-csinf-of-continuousat.md) | 273 | `result-track:91b2fdc4d43d18388b60fcb11125fccdaa166c6d67247c9957576436df06e14e` |
| 22 | `theorem` | [Antitone.map_ciInf_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-map-ciinf-of-continuousat.md) | 280 | `result-track:9ebdaf5b5ba5bc0e16e48d44c57c7b125af45dbd44a663c968d7550b5a904be8` |
| 23 | `theorem` | [AntitoneOn.map_csSup_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-map-cssup-of-continuouswithinat.md) | 288 | `result-track:65d48ea1417720a77fc0ebd464b8a4dfe9e4b2cee7fcf139fefecc882280f444` |
| 24 | `theorem` | [Antitone.map_csSup_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-map-cssup-of-continuousat.md) | 296 | `result-track:37c07615644e659a9f9b0d26368b979e57fc57c591d4ff3e8e0723c8b6ad03e9` |
| 25 | `theorem` | [Antitone.map_ciSup_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-map-cisup-of-continuousat.md) | 303 | `result-track:7523e3453be2e95f8d45b8b4ff9de4abea0c62d4a38be991f1e270d6e28ac1e9` |
| 26 | `theorem` | [sSup_mem_closure](../../../../GeneralTopology/MonotonePublic.lean/declarations/ssup-mem-closure.md) | 316 | `result-track:c7fd784411fb3f85689847e1db6d93269806ef8bebf45dc882c866c043e488de` |
| 27 | `theorem` | [sInf_mem_closure](../../../../GeneralTopology/MonotonePublic.lean/declarations/sinf-mem-closure.md) | 319 | `result-track:9712e57453e6c9ae3513d40d29edf174bc7aecbb2412690451aee1f1701786b1` |
| 28 | `theorem` | [IsClosed.sSup_mem](../../../../GeneralTopology/MonotonePublic.lean/declarations/isclosed-ssup-mem.md) | 322 | `result-track:3ddfcbbee7b85e0b5581d9a5ff4e059dfa86553290c968697a28c66ae0252ce1` |
| 29 | `theorem` | [IsClosed.sInf_mem](../../../../GeneralTopology/MonotonePublic.lean/declarations/isclosed-sinf-mem.md) | 325 | `result-track:625ce66f68a6a645d903c7fdab4979e72abca78649c94182a8ae0cf87a054b4d` |
| 30 | `theorem` | [MonotoneOn.map_sSup_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-map-ssup-of-continuouswithinat.md) | 330 | `result-track:989b769908f51e34e7cd1d92e55a254e8dc2f4bcabb0d981ddbf68f6f7a9c787` |
| 31 | `theorem` | [Monotone.map_sSup_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-map-ssup-of-continuousat.md) | 339 | `result-track:2a1a33c4c66f604e8fe5bb0829261ae594e5c09969b544e4ee4a26bc50fb4aaa` |
| 32 | `theorem` | [Monotone.map_iSup_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-map-isup-of-continuousat.md) | 345 | `result-track:500967ac8aca5b335d1a4ffbfaf4e3a0950860c481b3b713ec63959c4f5dc909` |
| 33 | `theorem` | [MonotoneOn.map_sInf_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-map-sinf-of-continuouswithinat.md) | 352 | `result-track:9347d9c1894b1b51ff0c9a03ce33d4a73078353a153fd0cfe83f7910982a3861` |
| 34 | `theorem` | [Monotone.map_sInf_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-map-sinf-of-continuousat.md) | 359 | `result-track:47bd7520c23da6120b72358261a6dc106598b0aaf3584350c33b7ecba92362a9` |
| 35 | `theorem` | [Monotone.map_iInf_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-map-iinf-of-continuousat.md) | 365 | `result-track:d6742de36f1d925574eb44c77023324c35bbb95dccb4b70653033836187141d3` |
| 36 | `theorem` | [AntitoneOn.map_sSup_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-map-ssup-of-continuouswithinat.md) | 371 | `result-track:61f2466ca8fea1957ab633e54cee1c16a26877fec04dffd04de7d00b2e38cf29` |
| 37 | `theorem` | [Antitone.map_sSup_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-map-ssup-of-continuousat.md) | 379 | `result-track:a3e00c07d36efbc46fbee3154eb9dff619f0688a74300dd03c1e910dc94ef63b` |
| 38 | `theorem` | [Antitone.map_iSup_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-map-isup-of-continuousat.md) | 386 | `result-track:02770f74657a1ce0596f61059e9048a986e53bf6ed3654b7d05ffb20d2af9ce3` |
| 39 | `theorem` | [AntitoneOn.map_sInf_of_continuousWithinAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-map-sinf-of-continuouswithinat.md) | 394 | `result-track:7c0291e36b25a17a27396da4ad71663f37f1ed00b8dc6c7294299b3d8ef7ccef` |
| 40 | `theorem` | [Antitone.map_sInf_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-map-sinf-of-continuousat.md) | 402 | `result-track:ca9fa7d1864c3c2f5293b1d8b1d1ee07a2eb6f151d0be8dfa88bb6867a662bc7` |
| 41 | `theorem` | [Antitone.map_iInf_of_continuousAt](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-map-iinf-of-continuousat.md) | 409 | `result-track:e9312c7a2b8b88c5612b4f36b7ec52935c01d770a8445ac946770a23d5e9b5e5` |
| 42 | `theorem` | [csSup_mem_closure](../../../../GeneralTopology/MonotonePublic.lean/declarations/cssup-mem-closure.md) | 420 | `result-track:9a8805204dc311d1010073dc2f73037237942d0b1a94c84aca20a32879c16be3` |
| 43 | `theorem` | [csInf_mem_closure](../../../../GeneralTopology/MonotonePublic.lean/declarations/csinf-mem-closure.md) | 423 | `result-track:72fdb6a34f48e5bfff457b754428caf18ba302645d2803eea36296b43bee7a4f` |
| 44 | `theorem` | [IsClosed.csSup_mem](../../../../GeneralTopology/MonotonePublic.lean/declarations/isclosed-cssup-mem.md) | 426 | `result-track:b1c0ba55c3bc627b4010de502f1729736117b523314469c4c83c55e3236f9aef` |
| 45 | `theorem` | [IsClosed.csInf_mem](../../../../GeneralTopology/MonotonePublic.lean/declarations/isclosed-csinf-mem.md) | 430 | `result-track:16cd41b0f357baa3c003e20b901ef5cd128430f31b658005b8fdc50af57054d3` |
| 46 | `theorem` | [IsClosed.isLeast_csInf](../../../../GeneralTopology/MonotonePublic.lean/declarations/isclosed-isleast-csinf.md) | 434 | `result-track:052746731589f70064fc1ec1f61a2bc74afc1965e7a3714e256d2bc46bd8e0f2` |
| 47 | `theorem` | [IsClosed.isGreatest_csSup](../../../../GeneralTopology/MonotonePublic.lean/declarations/isclosed-isgreatest-cssup.md) | 438 | `result-track:206022c30ca858dfeb350bac7f2d014793926d9ed64f0acf09117d65a10de115` |
| 48 | `lemma` | [MonotoneOn.tendsto_nhdsWithin_Ioo_left](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-tendsto-nhdswithin-ioo-left.md) | 442 | `result-track:dd7338a98fb72f6e70e73b283bb95f05c998615e57da48746a20cfd7d5d1d37c` |
| 49 | `lemma` | [MonotoneOn.tendsto_nhdsWithin_Ioo_right](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-tendsto-nhdswithin-ioo-right.md) | 457 | `result-track:c92ab7928d220e64a471062f5e2c33c1c153a78802cbde9dd0ad30aca7bb89f8` |
| 50 | `lemma` | [MonotoneOn.tendsto_nhdsLT](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-tendsto-nhdslt.md) | 472 | `result-track:5d8481c6563c1bd82eac324f7900469f20f86eda45241d1e9143e8110600b29e` |
| 51 | `lemma` | [MonotoneOn.tendsto_nhdsGT](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotoneon-tendsto-nhdsgt.md) | 485 | `result-track:cf9152853752e7e2991cf099a961ef4284d5078d9d4ae86a73e73985a72b50e2` |
| 52 | `theorem` | [Monotone.tendsto_nhdsLT](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-tendsto-nhdslt.md) | 492 | `result-track:c7c020d04b5f0edc633e15c2f6b2bb4851d20d76459545414962390350253139` |
| 53 | `theorem` | [Monotone.tendsto_nhdsGT](../../../../GeneralTopology/MonotonePublic.lean/declarations/monotone-tendsto-nhdsgt.md) | 498 | `result-track:5cc47841e21c345dae8bd1a09dafa248e947eae2ef2ef363f497502d3055b9aa` |
| 54 | `lemma` | [AntitoneOn.tendsto_nhdsWithin_Ioo_left](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-tendsto-nhdswithin-ioo-left.md) | 503 | `result-track:51721f0ff9fa408e59d37aab742313d8d5efdee33a5eba9fb9b862ac033679dd` |
| 55 | `lemma` | [AntitoneOn.tendsto_nhdsWithin_Ioo_right](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-tendsto-nhdswithin-ioo-right.md) | 510 | `result-track:0abbed3a539bd9b3ba3477489bd82f76f937352816a5c8ed91aa000271d9bc69` |
| 56 | `lemma` | [AntitoneOn.tendsto_nhdsLT](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-tendsto-nhdslt.md) | 517 | `result-track:f68b5d3f527b7a82ccc126b26c2918f9c77b23bae6b2f57d00404a0d1fbe92b6` |
| 57 | `lemma` | [AntitoneOn.tendsto_nhdsGT](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitoneon-tendsto-nhdsgt.md) | 523 | `result-track:8ede6b50c043b2173bea7ae688db0f8ea0f73885881660b1810704813639b58f` |
| 58 | `theorem` | [Antitone.tendsto_nhdsLT](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-tendsto-nhdslt.md) | 530 | `result-track:e1109f907dbe82f77d45ee407deabf2dc3339a522beb26f706269c98706496c5` |
| 59 | `theorem` | [Antitone.tendsto_nhdsGT](../../../../GeneralTopology/MonotonePublic.lean/declarations/antitone-tendsto-nhdsgt.md) | 536 | `result-track:8352b75afee7c14ea349580c9543420c59771d1157736b2ea4da00bce44aa46e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ed059bd9ec46100ad08610cff4e1f7aa28135bb5c55dd7c4a8a4c55956a462c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
