# Verification target: Log Pos Log Pos Log Public Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7814061a7716078ff4d755b158f6c07712a26b92",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/index.md) · [Full source](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7814061a7716078ff4d755b158f6c07712a26b92`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean.json)

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
| 1 | `def` | [posLog](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog.md) | 37 | `declaration-track:a93802ea378ef99cb9738772265a3a6201cc30dab25c3e239fca5e51f499b5b4` |
| 2 | `theorem` | [posLog_apply](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-apply.md) | 43 | `result-track:c40308b2bc2165cdadf24746089e6896f63df73ccfeed275e4cc63103e343f78` |
| 3 | `theorem` | [posLog_def](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-def.md) | 46 | `result-track:b71981386be6693cb396fe8e7c9e92768ac6a2c3453a05c7ddc1c3198d65e7af` |
| 4 | `theorem` | [posLog_sub_posLog_inv](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-sub-poslog-inv.md) | 53 | `result-track:df20455f13bf72c83a4e1bf532efed3e79d739d7af4b7f13f1b889c4e1a7905b` |
| 5 | `theorem` | [half_mul_log_add_log_abs](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/half-mul-log-add-log-abs.md) | 60 | `result-track:d09a1dcba0939542327c5ff65f404846a6e339a982b008d635113e0e5bdccd98` |
| 6 | `lemma` | [posLog_zero](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-zero.md) | 66 | `result-track:15b88aa3957f997868525407fceed231422b1cf2a665165f754537c66071eb98` |
| 7 | `lemma` | [posLog_one](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-one.md) | 68 | `result-track:91e7188d8e907f6b9b2df5774643e0871758a762af439fd4d1c20e36268832fc` |
| 8 | `theorem` | [posLog_nonneg](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-nonneg.md) | 71 | `result-track:737f7956c77355b07a179c182fc028e54231f25e7ef17a353109e14b5236c52b` |
| 9 | `theorem` | [posLog_neg](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-neg.md) | 74 | `result-track:b8b3875206f1d61f4b7b3f647838e6b1938d200391ed4138f619fb464a397fe8` |
| 10 | `theorem` | [posLog_abs](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-abs.md) | 77 | `result-track:ce29b25fe9300d630428c8a3ed528a104cd267dc0bc92dbdf41ad9df0fa370e1` |
| 11 | `theorem` | [posLog_eq_zero_iff](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-eq-zero-iff.md) | 80 | `result-track:beef9cc0fa056a59dea608ced20380c0d8712db06e579a2388e871c57a130a4f` |
| 12 | `theorem` | [posLog_eq_log](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-eq-log.md) | 85 | `result-track:c2ac67ea7419c3c0e53bee68c1b323ad345572616153246585abc41decec706b` |
| 13 | `theorem` | [monotoneOn_posLog](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/monotoneon-poslog.md) | 91 | `result-track:60809e03896910c885e870d8857e65273d1e8ba1fa86830e1b11e1fca5f366ca` |
| 14 | `theorem` | [antitoneOn_posLog](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/antitoneon-poslog.md) | 96 | `result-track:e95452d2c719406ed6dc79fc3c65154192d254014718fa37eb67995d8a287d86` |
| 15 | `theorem` | [log_of_nat_eq_posLog](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/log-of-nat-eq-poslog.md) | 102 | `result-track:6457ff5eb56e421a4a48afa98cf981eea30c2c813f3fb6553dc52ae080a2b571` |
| 16 | `theorem` | [abs_log_eq_posLog_add_posLog_inv](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/abs-log-eq-poslog-add-poslog-inv.md) | 108 | `result-track:a42a953794f4919a30fd988ba52cce9772a62400f322e297d48a7a4d36b6a0ed` |
| 17 | `theorem` | [posLog_eq_log_max_one](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-eq-log-max-one.md) | 112 | `result-track:06264cf319b4ae487f9657ed31859ccc24bf93e55870ecbbb898adc19d76928e` |
| 18 | `lemma` | [posLog_le_posLog](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-le-poslog.md) | 116 | `result-track:c68d972799b6b274911f1560a151d4bc04fc8a766ddc73ebbd28b46031fb6048` |
| 19 | `lemma` | [posLog_pow](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-pow.md) | 120 | `result-track:6123aabc23ad5b1a432f28be597904b2b139a61d03b9544acb1fd94356439d9a` |
| 20 | `theorem` | [posLog_rpow](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-rpow.md) | 130 | `result-track:4de791e0f3d84382e02d40e7f2670632c368c1d0683a2cc4b699b9066e982150` |
| 21 | `theorem` | [continuous_posLog](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/continuous-poslog.md) | 138 | `result-track:37cc99403f871d2cc8fdbe4de937e73d70695151621dfe4497bcb1c06880d324` |
| 22 | `lemma` | [posLog_le_log_one_add](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-le-log-one-add.md) | 154 | `result-track:5c80809727a86dd9169d8aa3449fe9ac26c2b7f716fdb56736e74edf87793a12` |
| 23 | `lemma` | [log_one_add_le_posLog](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/log-one-add-le-poslog.md) | 159 | `result-track:8c872c9790cbd65f1d7f56911f7b7ba260d9e316b24b7563141a08fe0b6a3e3f` |
| 24 | `lemma` | [posLog_le_abs](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-le-abs.md) | 172 | `result-track:ed32a4824a956c3552f08d2c8af37cdc9b7b6426af15716a877fbea19009f7e2` |
| 25 | `theorem` | [posLog_mul](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-mul.md) | 185 | `result-track:d81a6fc624576f362d3762d60c7c5ef834c74a5ea26b58e9ab8e8940909d79b9` |
| 26 | `theorem` | [posLog_nat_mul](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-nat-mul.md) | 196 | `result-track:10798725f669b2dd4c2a383fe4d0275760778a95291d8dd3b58720dd036c43a8` |
| 27 | `theorem` | [posLog_prod](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-prod.md) | 202 | `result-track:64b97177301a0dbfa7df41c75848676c60b4918f311e8a674c8ab35606d37936` |
| 28 | `theorem` | [posLog_sum](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-sum.md) | 220 | `result-track:8c0bf13aa8be42fe560f1aef129d87e5aa72cf62d0ea14a156f4442659550206` |
| 29 | `lemma` | [posLog_norm_sum_le](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-norm-sum-le.md) | 249 | `result-track:ddf2487f21523ec3a7aedc45fa6873ed2082cc680f164607606f7de535ce4b86` |
| 30 | `theorem` | [posLog_add](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-add.md) | 258 | `result-track:e7306bda09a4e2e0409536634f5aa50faa0627124c3dbf8c5a43d9c084832568` |
| 31 | `lemma` | [posLog_norm_add_le](../../../../SpecialFunctions/LogPosLogPosLogPublicSourceEdition2.lean/declarations/poslog-norm-add-le.md) | 265 | `result-track:687a57ce1c25cbb7d0a0d45120274c37df43b5bd23dbbc9343d95cd783c03d1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c28e919fa64c55af742b203dcc345412af78d45d590eb01281eec178e1014db5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
