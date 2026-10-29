# Verification target: ENNReal Log Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "129eac560363253f95aaab4c153d1a52462f78aa",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ENNRealLog/Varianteacc96328d74d1e5390db312658f856c2959d97b89a7cabd086e8b934a7325bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ENNRealLogPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/ENNRealLogPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `129eac560363253f95aaab4c153d1a52462f78aa`.

Source path: `GRWTSK/Analysis/ENNRealLog/Varianteacc96328d74d1e5390db312658f856c2959d97b89a7cabd086e8b934a7325bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ENNRealLog/Varianteacc96328d74d1e5390db312658f856c2959d97b89a7cabd086e8b934a7325bd.lean.json)

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
| 1 | `def` | [log](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log.md) | 46 | `declaration-track:0b9d1d6a231131efe2dd502277fa8945d06ed559cce441520a7802d825b74974` |
| 2 | `lemma` | [log_zero](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-zero.md) | 51 | `result-track:81f07f76d27a6734df336aebeb9750727b20d1ac852eae503a412de5073f62e5` |
| 3 | `lemma` | [log_one](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-one.md) | 52 | `result-track:94ed18e5c81d54b357b3eba4cf6a1bd767b8294f40b8f909f0f3dbdc354eed37` |
| 4 | `lemma` | [log_top](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-top.md) | 53 | `result-track:620612853d5eb9ee05033b421706c5f34c561acab307d7e19c6d9518476300c2` |
| 5 | `lemma` | [log_ofReal](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-ofreal.md) | 56 | `result-track:440e963051d5154a7f01e520466646e49f753653b8323d9c2e7343ee2c91544a` |
| 6 | `lemma` | [log_ofReal_of_pos](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-ofreal-of-pos.md) | 63 | `result-track:2f308feedf35560b052ab21e67d0516e51733fec3862113d88b6e7abb153b636` |
| 7 | `theorem` | [log_pos_real](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-pos-real-source-edition-2.md) | 66 | `result-track:e9facb29ed3e9fbd7ba9a4f1e124c851454835941da107c89c6a595eb1379392` |
| 8 | `theorem` | [log_pos_real'](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-pos-real.md) | 69 | `result-track:e1245a37c47f9b02de2f3681cae851dce3eab5589f49885afbadfa4827caa22d` |
| 9 | `theorem` | [log_of_nnreal](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-of-nnreal.md) | 73 | `result-track:412724012ae82b5c8fd5f6906318dff1a2d209026bdcecc287eb2b13a5e9d070` |
| 10 | `theorem` | [log_strictMono](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-strictmono.md) | 81 | `result-track:0930b4756f92e24dddad30260b570c76ce6b696e596efc3d3cdc671f255d73e9` |
| 11 | `theorem` | [log_monotone](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-monotone.md) | 86 | `result-track:6b97f9dd21be1b272b69b5dbcf42511739e5a691f2edb50a32e1c9483b75cf58` |
| 12 | `theorem` | [log_injective](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-injective.md) | 88 | `result-track:2ae5d394e689d8641d4be63477f18b909f66bede4ffdc23676365cc6a3846c68` |
| 13 | `theorem` | [log_surjective](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-surjective.md) | 90 | `result-track:1e66d36320a823a93ecf99e72b270cc3f66733b1976de62939064dffbee67048` |
| 14 | `theorem` | [log_bijective](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-bijective.md) | 97 | `result-track:1bad94583b4caef48b1cb749e5bea7a4aba034fecd4ab1b9c419ea2d84ca319a` |
| 15 | `theorem` | [log_eq_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-eq-iff.md) | 100 | `result-track:1dc02fa90579daa2769d6a5466f6261cc1a981e1407d34b66cb8aff362dce088` |
| 16 | `theorem` | [log_eq_bot_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-eq-bot-iff.md) | 103 | `result-track:fff3b9a158fd02b37aabf37c05d19914d0b502520d8dc60d978a16298b5af17e` |
| 17 | `theorem` | [log_eq_one_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-eq-one-iff.md) | 105 | `result-track:f02b5dfbd222a2d8e79e9d852073cdce1969706715fe4b7445666ab97226e99a` |
| 18 | `theorem` | [log_eq_top_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-eq-top-iff.md) | 107 | `result-track:d4251685335b6332debdb582d0f1e36c4fedb11a954a8e19feb842471d0cfd24` |
| 19 | `lemma` | [log_lt_log_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-lt-log-iff.md) | 109 | `result-track:67d586b287150f2fdf1acfa666928386d85c8e3b01561b52805f7b4e8c8a5c9f` |
| 20 | `lemma` | [bot_lt_log_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/bot-lt-log-iff.md) | 111 | `result-track:303ae510a02156a188786566fb14d26e90915bd28337c4f55be0fd5f49740dd7` |
| 21 | `lemma` | [log_lt_top_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-lt-top-iff.md) | 113 | `result-track:4a0b45a6547904e816f05d01633db694f9b54ee838d2a63477fb8b015049261e` |
| 22 | `lemma` | [log_lt_zero_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-lt-zero-iff.md) | 115 | `result-track:4ca86eb5518c5c030595297a19103cbba338625b50486adb804ef8aec22fe65a` |
| 23 | `lemma` | [zero_lt_log_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/zero-lt-log-iff.md) | 117 | `result-track:061f89e4bba776f0bebf61d51611e7aa2ef51aa76fdb0e4d1a3a717953ffdfb5` |
| 24 | `lemma` | [log_le_log_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-le-log-iff.md) | 119 | `result-track:566d8741a0b1250e8919c9627ff409f7cc27a30703bafc020ee951c34147e445` |
| 25 | `lemma` | [log_le_zero_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-le-zero-iff.md) | 121 | `result-track:49d824cc5b63c918804973dcbc84a4ea00db1c2f3e0d25c1dbb17e8069e4c56e` |
| 26 | `lemma` | [zero_le_log_iff](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/zero-le-log-iff.md) | 123 | `result-track:399a6bc1770a0f94226b09d52b8a840aa6f82f61efa4f49883a58b2df0f5779b` |
| 27 | `lemma` | [log_le_log](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-le-log.md) | 125 | `result-track:bc9359b777484ef8eecd57fcc0750e15d6c7d37a20b3d0dca20569392ada4f56` |
| 28 | `lemma` | [log_lt_log](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-lt-log.md) | 126 | `result-track:8bc0e57213d02822ae43839ab4ae9d17d54e8216f373e5e1fb8d85e3e6a144c3` |
| 29 | `theorem` | [log_mul_add](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-mul-add.md) | 134 | `result-track:4f8798360fb300892193b936f3f323de11819116e262a21ae4217f9a5c7245fc` |
| 30 | `theorem` | [log_rpow](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-rpow.md) | 153 | `result-track:fc74bd5dc786ef27b1804ecfd59788106857f6764c8f7b7055bc9f4fd6004839` |
| 31 | `theorem` | [log_pow](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-pow.md) | 176 | `result-track:dda52adba3d8cf1a21056d4b63df7f5f796fb8b4ab1165c3e7b1fba9917b94e5` |
| 32 | `lemma` | [log_inv](../../../../SpecialFunctions/ENNRealLogPublic.lean/declarations/log-inv.md) | 179 | `result-track:81307f88a951dc8dadb4d57d4be84641b514b1afabe714f5f4ec59d286becdf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff002c0ee6239219b752ec1352cd0a7545a4ac920d57c672d796bd8307dd2bf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ENNRealLog/Varianteacc96328d74d1e5390db312658f856c2959d97b89a7cabd086e8b934a7325bd.lean","GRWTSK/_verification/specifications/Analysis/ENNRealLog/Varianteacc96328d74d1e5390db312658f856c2959d97b89a7cabd086e8b934a7325bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
