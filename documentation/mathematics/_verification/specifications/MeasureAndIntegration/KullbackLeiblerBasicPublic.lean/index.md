# Verification target: Kullback Leibler Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13554232dca143c81fbbef5d2ed808b81ec95776",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/index.md) · [Full source](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13554232dca143c81fbbef5d2ed808b81ec95776`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean.json)

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
| 1 | `lemma` | [klDiv_of_ac_of_integrable](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-of-ac-of-integrable.md) | 62 | `result-track:4dcd8a1cfa9286ed286082c65dcf38249d1e61c47a00b4b8da2fa99432cc5de4` |
| 2 | `lemma` | [klDiv_of_not_ac](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-of-not-ac.md) | 68 | `result-track:d6a0228b3ed6d544966f7d2f9aa46ac572dd9c276613d8a12fdbd2cd6e21909c` |
| 3 | `lemma` | [klDiv_of_not_integrable](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-of-not-integrable.md) | 73 | `result-track:858a507403e9e78abbfc25cb06c347aa0bfcf935fa0c92ec8c0ad6f00a4c7de0` |
| 4 | `lemma` | [klDiv_self](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-self.md) | 78 | `result-track:bdcf6f67699a4b43a4a5e5a93a8d42f163548821ae1e1e2c7460c7791873b96f` |
| 5 | `lemma` | [klDiv_zero_left](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-zero-left.md) | 86 | `result-track:4a5ab1e763d1c2c43d3586bf95e5d8519b0dd465b171ada3b17cdcf377e94a1e` |
| 6 | `lemma` | [klDiv_zero_right](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-zero-right.md) | 91 | `result-track:e2fc28b5c8b40105b5553652cb60cdc264920083e327a5b599220c63dc2d77b0` |
| 7 | `lemma` | [klDiv_eq_top_iff](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-eq-top-iff.md) | 94 | `result-track:3d058ecb1b62351fc05c7bc46d7855d99567e55b2c29579bdf2674543a3c4a5b` |
| 8 | `lemma` | [klDiv_ne_top_iff](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-ne-top-iff.md) | 100 | `result-track:56c698e8ef92667657c9297a9465ec7dd2e42b8fe437f98e80c2579500073dd3` |
| 9 | `lemma` | [klDiv_ne_top](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-ne-top.md) | 103 | `result-track:1e8ed58bec86ddc93e1cf5620517da29505f0832fca18a992b607eb4f1d3afc6` |
| 10 | `lemma` | [klDiv_eq_integral_klFun](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-eq-integral-klfun.md) | 111 | `result-track:5e97e3720cb9298036b57dfed332f6cc3bb0d9ed3e0fc8ddd49aef8c72cb9678` |
| 11 | `lemma` | [klDiv_eq_lintegral_klFun](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-eq-lintegral-klfun.md) | 119 | `result-track:735390f04aba73a6e895214f95f0d25d5bbc793c25a8a9224af3a30fa6920eed` |
| 12 | `lemma` | [klDiv_eq_lintegral_klFun_of_ac](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-eq-lintegral-klfun-of-ac.md) | 138 | `result-track:05f8dffc51543be0bd28cf120eaafc2667cf0de43c5835419c64b64a3d515c69` |
| 13 | `lemma` | [integral_llr_add_sub_measure_univ_nonneg](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/integral-llr-add-sub-measure-univ-nonneg.md) | 152 | `result-track:648480427b6301149d82e3dbbd0c4cf81816407140381dbd92c195235033e41c` |
| 14 | `lemma` | [toReal_klDiv](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/toreal-kldiv.md) | 157 | `result-track:88bb4b42328e4ddb8387d2f5eb6ac4cef812c286295b5017a82596fa7d32f6cb` |
| 15 | `lemma` | [toReal_klDiv_of_measure_eq](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/toreal-kldiv-of-measure-eq.md) | 164 | `result-track:13dc7d41cde81d03ff2299264a0958fa84a06c6432c422233aa60b37f9003e7e` |
| 16 | `lemma` | [toReal_klDiv_eq_integral_klFun](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/toreal-kldiv-eq-integral-klfun.md) | 170 | `result-track:74ff28e8aecbe4e1b37e88c19d9dac494cf875f51cef69af92617dcef6a5668d` |
| 17 | `lemma` | [toReal_klDiv_smul_left](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/toreal-kldiv-smul-left.md) | 179 | `result-track:8b0bee524ab3bde97a736f5e8b5908255ffcfeb6268baa273f6775fd909e0260` |
| 18 | `lemma` | [toReal_klDiv_smul_right_eq_smul_left](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/toreal-kldiv-smul-right-eq-smul-left.md) | 196 | `result-track:4b613389425e84bd53daad99447769fa8f3bd6cda8f11f4cc9aa2e17c565a15d` |
| 19 | `lemma` | [toReal_klDiv_smul_right](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/toreal-kldiv-smul-right.md) | 220 | `result-track:00eb41c055294feb3270eb567608109f3723e78757866d4cdae0ec75aa603a64` |
| 20 | `lemma` | [toReal_klDiv_smul_same](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/toreal-kldiv-smul-same.md) | 228 | `result-track:3be291bb9cf269ad9759fc28875601ffd6f5db4a96f3299434d2e6b05ce9ef75` |
| 21 | `lemma` | [klDiv_smul_right_eq_smul_left](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-smul-right-eq-smul-left.md) | 240 | `result-track:c767c52a8873c61c0c12c71f8aec8b1fa97e592d88d40f07c73263e5f39cfa6a` |
| 22 | `lemma` | [klDiv_smul_same](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-smul-same.md) | 286 | `result-track:7f5cbb626b4b2f94d8dfdeafc670903ea7fdfee793281f9325f7e801927827e2` |
| 23 | `lemma` | [integral_llr_add_mul_log_nonneg](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/integral-llr-add-mul-log-nonneg.md) | 319 | `result-track:490b2195d548e36040c1e0fd898a25d1d960e403cee9808c6ffe21dc5014456c` |
| 24 | `lemma` | [mul_klFun_le_toReal_klDiv](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/mul-klfun-le-toreal-kldiv.md) | 338 | `result-track:55532b356c7eb04e47a3b0eb9c71fc3aedd9297fde36fca74c2d274b4d0dc52f` |
| 25 | `lemma` | [mul_log_le_toReal_klDiv](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/mul-log-le-toreal-kldiv.md) | 346 | `result-track:932f0c72b4b59f64650b7173ca78e7d1c2f66ed8d94a2779510a40b2d1a59dcf` |
| 26 | `lemma` | [mul_log_le_klDiv](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/mul-log-le-kldiv.md) | 360 | `result-track:901b22c86c5de706b05ccd4d22321c49f73086341744ab3ec8287cb8f421b4be` |
| 27 | `lemma` | [klDiv_eq_zero_iff](../../../../MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/declarations/kldiv-eq-zero-iff.md) | 377 | `result-track:15e8083cac6103e7aaa3eae1760ff80b27f5fc19b26d639ad98f92b5bfe60783` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48c9e0f4bd2b149afa14e99c4c1106fd9c5a1d885f1015cbae8152fb4bff9f3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
