# Verification target: Cau Seq Completion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e456629b37dbfeb6c870ef83bb49fccd3d25afd",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CauSeqCompletion.lean/index.md) · [Full source](../../../../RealFunctions/CauSeqCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e456629b37dbfeb6c870ef83bb49fccd3d25afd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.CauSeq` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cauchy](../../../../RealFunctions/CauSeqCompletion.lean/declarations/cauchy.md) | 30 | `declaration-track:69e01935425fba480db612856337beb41acebb80c6894f1162352d371450dbac` |
| 2 | `def` | [mk](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk.md) | 38 | `declaration-track:9757143b5acb418edd8329e6d641f1193b9b40195d9f55ad6281e08c14c2acfb` |
| 3 | `theorem` | [mk_eq_mk](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-eq-mk.md) | 43 | `result-track:8df56b4ac66566eeecb7aa52131affd1ebf50ed78ab6cba1065821e5e9227da9` |
| 4 | `theorem` | [mk_eq](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-eq.md) | 47 | `result-track:66295122c7e357b34b109e0ded99f954253c024e2421a49568001d02566c6f87` |
| 5 | `def` | [ofRat](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat.md) | 52 | `declaration-track:5a75bdf4ee48488f8067bea5559d71481aadb096f9c8e6abb09175bc92072cf2` |
| 6 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-7.md) | 56 | `declaration-track:723910efc004daccc917c8124f341935584df5b0a0d5158d3ee240b0dc0258ee` |
| 7 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-11.md) | 59 | `declaration-track:b6b3dc2f21cbeef317c5e71f15964fa727a5fe2e994ffd8337bc6779c2247031` |
| 8 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-13.md) | 62 | `declaration-track:c904684df85c1205c55b6770392f11a6b467d052c2d51d1012fd7da93935bf5e` |
| 9 | `theorem` | [ofRat_zero](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-zero.md) | 65 | `result-track:55e8c3ae89d19708609a9e055d5f714d461a00a18e3b31143ec728c76a88f52f` |
| 10 | `theorem` | [ofRat_one](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-one.md) | 69 | `result-track:278e332db1fe72ce06781d975fde65f9e1352f4cd80e27581ce59a3447f002f0` |
| 11 | `theorem` | [mk_eq_zero](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-eq-zero.md) | 74 | `result-track:394a96fd1fb00f73e93dc3beca5e81f973ec850e31ae8b5c788598c92e89cbfe` |
| 12 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-9.md) | 79 | `declaration-track:9f99d16dfef1f7ee52418bd81f14285fd010ecde5e7f5b886d72d819b9221bca` |
| 13 | `theorem` | [mk_add](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-add.md) | 83 | `result-track:0d313fded0438311b7229c642f685d6e5f671db89d448934285dda296509c968` |
| 14 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-10.md) | 87 | `declaration-track:a9d759217cfd914d368dda10df33a7c5ccbc1481e43fbc1b74106e4e5fcf09a8` |
| 15 | `theorem` | [mk_neg](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-neg.md) | 91 | `result-track:058cde0387e938dbd63fc74d3080dc0dbb4c14758be28a18badb6a3173bae931` |
| 16 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:105da94f30218d27f0579a7696b1dd88c1cd8263e39eb947589eb129367a1b7f` |
| 17 | `theorem` | [mk_mul](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-mul.md) | 99 | `result-track:ed6b43a7f241c17f906b30af77932558093f5f37dd94558c698ca929d4e47901` |
| 18 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:222754bc2d9420ca606482a68959e59d5fc6b9647b722f9081001538d2500466` |
| 19 | `theorem` | [mk_sub](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-sub.md) | 107 | `result-track:ba68c10782f613906d42f6e1a942933e7289f4f72fd9710e6b3e19d7f1812973` |
| 20 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-14.md) | 111 | `declaration-track:fe8db57630a02971a0259fe4f0ef01664ff2c27c0a3e37505eefa1d82e35b212` |
| 21 | `theorem` | [mk_smul](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-smul.md) | 115 | `result-track:bde3196fc52445fe8256c2aba7502d6f268f6c7f2d6f7d5c8c47bc4631802b24` |
| 22 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-5.md) | 120 | `declaration-track:4642929f84ef453413ef22d42309804fddd6c39e0711c2cc2321ac29629a1839` |
| 23 | `theorem` | [mk_pow](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mk-pow.md) | 124 | `result-track:478454206c89a5cf384945001799b7f9b1b1d984539e6bfcf1215ca3da546549` |
| 24 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-4.md) | 128 | `declaration-track:41ba92f71f4ad7c6ff983b4961a6bd352ad74e4b8c14bad2cffb6f1f6a4976fb` |
| 25 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-8.md) | 131 | `declaration-track:8bd56f4ff0e1edc7b38c37f24528efa9e30660e8e0bf1a8b86f87668f2b9babf` |
| 26 | `theorem` | [ofRat_natCast](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-natcast.md) | 135 | `result-track:db322859dd00806f2ddfd90495c7a2f42c0cbc165d92626e443866d1df4921e2` |
| 27 | `theorem` | [ofRat_intCast](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-intcast.md) | 140 | `result-track:e3e4d4937e3b63be19ea2d1079022bb0a4d83e1b5bc1da71c5f2f6e3db6703f5` |
| 28 | `theorem` | [ofRat_add](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-add.md) | 144 | `result-track:3ee6e1e2dbfa2e736bc1af3623fd89f60966a7f1036fdf62c22e196f832debb6` |
| 29 | `theorem` | [ofRat_neg](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-neg.md) | 149 | `result-track:0e92fadad3c5c6c18e89692d79e07cbddc09861ab32f36fce10ab7f49fcc1039` |
| 30 | `theorem` | [ofRat_mul](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-mul.md) | 153 | `result-track:77776dec965cf4da5f30fca8ba897daca43e6e79a969d6e9cb631ccc136b0c96` |
| 31 | `theorem` | [zero_def](../../../../RealFunctions/CauSeqCompletion.lean/declarations/zero-def.md) | 158 | `result-track:622cc00dce6a958aaa753c536294ec077098a346f0e7998ef6d6ee14e064f342` |
| 32 | `theorem` | [one_def](../../../../RealFunctions/CauSeqCompletion.lean/declarations/one-def.md) | 161 | `result-track:0accbd4d92889333bae62fe2fa2da8d29a499c15b7f1e17e54a17d752b0c30ba` |
| 33 | `instance` | [Cauchy.ring](../../../../RealFunctions/CauSeqCompletion.lean/declarations/cauchy-ring.md) | 164 | `declaration-track:951a1240810b6de6eb9ed40d8cad349d6c6da4a96c85a7e86175c7a33c97c1c7` |
| 34 | `def` | [ofRatRingHom](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofratringhom.md) | 172 | `declaration-track:d4c7575e070b3560e34a21733c493265718d975932fe7ff8e1bd978f0d745a67` |
| 35 | `theorem` | [ofRat_sub](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-sub.md) | 181 | `result-track:df7791dbd23f7b3681fe82cdbe58488034d65d6a3b82f725de1dd1558f5137ec` |
| 36 | `instance` | [Cauchy.commRing](../../../../RealFunctions/CauSeqCompletion.lean/declarations/cauchy-commring.md) | 193 | `declaration-track:a2592ff6d9bab8de4a0a77e3379bf0093e0942f29b8934e2aca086ec619ac365` |
| 37 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-12.md) | 209 | `declaration-track:c01b7e1d9d8e697ac30d2258c2180fbcbfdc10ebd92e8a54c7d53d51b6b77008` |
| 38 | `theorem` | [ofRat_ratCast](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-ratcast.md) | 213 | `result-track:92f462617871db2daea84c7ce7b4e21ab126f91ff8f50b00ae89783dcbac5ec4` |
| 39 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance.md) | 217 | `declaration-track:0de11d0e58c512fcf40fd010423f415f1f5ac7218951a37f347a87cd58842382` |
| 40 | `theorem` | [inv_zero](../../../../RealFunctions/CauSeqCompletion.lean/declarations/inv-zero.md) | 233 | `result-track:4dacd5a79e1ae7ae1613f8e55a2461b86cc567e507fe5363b1635bc51a2feb33` |
| 41 | `theorem` | [inv_mk](../../../../RealFunctions/CauSeqCompletion.lean/declarations/inv-mk.md) | 238 | `result-track:cdddcbab24fc2476866336b643a3de67e0424cfb6eef3ebc6ccf9c225caed247` |
| 42 | `theorem` | [cau_seq_zero_ne_one](../../../../RealFunctions/CauSeqCompletion.lean/declarations/cau-seq-zero-ne-one.md) | 242 | `result-track:1b38d779a6ccf14693791743a44eedc7f607c2f8cb961664c7833105c4d71be1` |
| 43 | `theorem` | [zero_ne_one](../../../../RealFunctions/CauSeqCompletion.lean/declarations/zero-ne-one.md) | 248 | `result-track:8fdee3c3b63eb741bf6a7dbc3f4ec27ca51e306b280b595da2a622b7818166d7` |
| 44 | `theorem` | [inv_mul_cancel](../../../../RealFunctions/CauSeqCompletion.lean/declarations/inv-mul-cancel.md) | 251 | `result-track:54aca51338182ae033b9bb2739e6043d0c960b8a6f84078c3a1909b8a4b7a99b` |
| 45 | `theorem` | [mul_inv_cancel](../../../../RealFunctions/CauSeqCompletion.lean/declarations/mul-inv-cancel.md) | 258 | `result-track:5572297b71a8bb5bcfa2290566fbafc9ec39feaeeb01bb6a9660fa6b1b6e48db` |
| 46 | `theorem` | [ofRat_inv](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-inv.md) | 265 | `result-track:b5e13c9a7a791314707b5fb507c5dcd5e6d3075b31aed6a2ffbbaa4d45e761b2` |
| 47 | `instance` | [Cauchy.divisionRing](../../../../RealFunctions/CauSeqCompletion.lean/declarations/cauchy-divisionring.md) | 272 | `declaration-track:481422cdc2f59626a70c5d9da3d5cdca7feadd418860b0fce215888eb982ed47` |
| 48 | `theorem` | [ofRat_div](../../../../RealFunctions/CauSeqCompletion.lean/declarations/ofrat-div.md) | 279 | `result-track:009bc62469ea544231b8a8050ad96a6958542d4d33ca9da219756ded8f0009b1` |
| 49 | `instance` | [(anonymous)](../../../../RealFunctions/CauSeqCompletion.lean/declarations/instance-source-edition-6.md) | 288 | `declaration-track:4f25213be88282bad1c283a91d3a9ffa64ef8589e02f43fde3c1e6ebdc29d2f2` |
| 50 | `instance` | [Cauchy.field](../../../../RealFunctions/CauSeqCompletion.lean/declarations/cauchy-field.md) | 303 | `declaration-track:7459c8f1c16dcff1a0f2d77e10c47ddd03f54fe3331d7569d8a01599869502f6` |
| 51 | `class` | [IsComplete](../../../../RealFunctions/CauSeqCompletion.lean/declarations/iscomplete.md) | 320 | `declaration-track:0882e9bb4725706855c5394a51f3e66b9b91c5ea38ce57dfb62049a765dcaaf4` |
| 52 | `theorem` | [complete](../../../../RealFunctions/CauSeqCompletion.lean/declarations/complete.md) | 334 | `result-track:25185ef6d8f50906f40f5e58fb6555f5b3d19850225f3011c916ddfde350fde1` |
| 53 | `def` | [lim](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim.md) | 339 | `declaration-track:3c61e8b26dec92a36b353f68033901b3174af092882de5e5a4cc9b140ee12d47` |
| 54 | `theorem` | [equiv_lim](../../../../RealFunctions/CauSeqCompletion.lean/declarations/equiv-lim.md) | 343 | `result-track:a562388878da7bae634d242a7fb9560184436fbfb783d033bc5248157eb83d20` |
| 55 | `theorem` | [eq_lim_of_const_equiv](../../../../RealFunctions/CauSeqCompletion.lean/declarations/eq-lim-of-const-equiv.md) | 347 | `result-track:919ea0a928c374bd060023a918db2a9b54a7ce492964b269577ee35b50e5ec8d` |
| 56 | `theorem` | [lim_eq_of_equiv_const](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-eq-of-equiv-const.md) | 351 | `result-track:49384963125a12cfc41e645a8cdf761c6446e79b8fe46c088080205c9c78a93a` |
| 57 | `theorem` | [lim_eq_lim_of_equiv](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-eq-lim-of-equiv.md) | 355 | `result-track:72340de5ae965767c10d9c232708dfdc0fd9defb330e905f5f316bf9483dc2d5` |
| 58 | `theorem` | [lim_const](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-const.md) | 360 | `result-track:cbb38cded012071efa5986d1a201e2514c67320f76c7d1e6e55620fcfbb34c01` |
| 59 | `theorem` | [lim_add](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-add.md) | 364 | `result-track:a62dae75c7186fba72e6bc8d12fa215a6c404be91783881ede128591a93bd5ec` |
| 60 | `theorem` | [lim_mul_lim](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-mul-lim.md) | 371 | `result-track:1562075fb55ba115ee5a08674e7aa3b2b6a9b4ef10b612c1cb9a41ff1062239a` |
| 61 | `theorem` | [lim_mul](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-mul.md) | 386 | `result-track:9c1e8de0a02f7ea3b55073e50e96e94a111b6a0329398230f5ddf20d70266c85` |
| 62 | `theorem` | [lim_neg](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-neg.md) | 390 | `result-track:750404e4ad1f87381cf418355ec6b01de9f218669b8fc1c381fd7f23781dcb41` |
| 63 | `theorem` | [lim_eq_zero_iff](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-eq-zero-iff.md) | 397 | `result-track:948abc191e5a45851c1f27ac6e065aa7ec86b29f816e78c72b687c32d51f4528` |
| 64 | `theorem` | [lim_inv](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-inv.md) | 414 | `result-track:9caf1b08580ad0408afe363a0f1d437c5411aa571ce2dc441b43c6d3edcaccd8` |
| 65 | `theorem` | [lim_le](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-le.md) | 446 | `result-track:6298fa2867c8d6d94b8aa606107ffd56871b687710cf7fc8c18bd793faf26969` |
| 66 | `theorem` | [le_lim](../../../../RealFunctions/CauSeqCompletion.lean/declarations/le-lim.md) | 450 | `result-track:77cb86ef5f2dfcbf81b03367a6160f1936eb9b322e78a09cc4e38b3e463d0f5e` |
| 67 | `theorem` | [lt_lim](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lt-lim.md) | 454 | `result-track:f86d02d14500a50eadfdc5768bd535605936b0aa776f86d5f4a4b9d203814aa1` |
| 68 | `theorem` | [lim_lt](../../../../RealFunctions/CauSeqCompletion.lean/declarations/lim-lt.md) | 458 | `result-track:e7025304a4aad255da6ca39df66ac0750415c09d6cff4fb720ada464adc19515` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e5b506223a5801154b4d4d049333f58607097cc72c4ccb5380cfb20af284de1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
