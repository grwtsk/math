# Verification target: Complex Analytic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d0e12902aba9858d53f2b65e6f4172e41b06be7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d0e12902aba9858d53f2b65e6f4172e41b06be7`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean.json)

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
| 1 | `theorem` | [analyticAt_clog](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticat-clog-source-edition-2.md) | 29 | `result-track:7943e2a96e660bd75f887d95e0d8b594db262919acebe3b4521f358e5011989d` |
| 2 | `theorem` | [AnalyticAt.clog](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticat-clog.md) | 37 | `result-track:27f287182783f74f69e474f86b41469491ac27ebdcb09f84b43e87bbfb5ee597` |
| 3 | `theorem` | [AnalyticWithinAt.clog](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticwithinat-clog.md) | 41 | `result-track:24f035e8e014bd0737ac521b2ac9a403d269c177eb517084a939ffb7aa3ff3f8` |
| 4 | `theorem` | [AnalyticOnNhd.clog](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticonnhd-clog.md) | 46 | `result-track:9cec7f37466a70e7be18703f07da46aeef989803571f189c9172d12c27b850b8` |
| 5 | `theorem` | [AnalyticOn.clog](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticon-clog.md) | 50 | `result-track:2bff923197fe1f4877350e069e57ae2c42aa1b284e547c9ebb01118492e49bb2` |
| 6 | `theorem` | [AnalyticWithinAt.cpow](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticwithinat-cpow.md) | 55 | `result-track:1f9ed8a9372e0b9328b852cb517e8a57634d0a98ce0560f201b20087631800cf` |
| 7 | `theorem` | [AnalyticAt.cpow](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticat-cpow.md) | 66 | `result-track:3ace9339e0e2970c7441c3abbac9cdc411d4d057651ea6cc2c802a22be9a97f1` |
| 8 | `theorem` | [AnalyticOn.cpow](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticon-cpow.md) | 72 | `result-track:bb322958cec319652e7c545d3d556ac5c11be571bd97179195a46a886600f078` |
| 9 | `theorem` | [AnalyticOnNhd.cpow](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticonnhd-cpow.md) | 77 | `result-track:4f588bbd7ff1a570cfe2adbe485c1e9fb40c79275c60d2c0feba6a77589df70d` |
| 10 | `lemma` | [AnalyticAt.re_ofReal](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticat-re-ofreal.md) | 86 | `result-track:9be77ca4c945f7c50ca1ef70b28da2bbdd9c38164ee55f0de007096180b62244` |
| 11 | `lemma` | [AnalyticAt.im_ofReal](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticat-im-ofreal.md) | 91 | `result-track:524c8a3309163d47b0e8e72805c252d99d557d4be472dd991579d3541ee31ca1` |
| 12 | `lemma` | [AnalyticWithinAt.re_ofReal](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticwithinat-re-ofreal.md) | 95 | `result-track:b87917bdf0f2bf378fdeaac6ff539f221b9674d164870bc3215c52bd9a490093` |
| 13 | `lemma` | [AnalyticWithinAt.im_ofReal](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticwithinat-im-ofreal.md) | 100 | `result-track:ee6d780dd111aebf6a7bd06639e7a6ae0184cf667d4117d3fee50494f90783ed` |
| 14 | `lemma` | [AnalyticOn.re_ofReal](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticon-re-ofreal.md) | 105 | `result-track:9b2895f931a53d38f1c95152cfbf2d4570b653a71456c50f5a2757cab729198e` |
| 15 | `lemma` | [AnalyticOn.im_ofReal](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticon-im-ofreal.md) | 110 | `result-track:8a64257f3242015462fc6b7c9f00e0c30012c280e65f2ecf90c70f1b128de724` |
| 16 | `lemma` | [AnalyticOnNhd.re_ofReal](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticonnhd-re-ofreal.md) | 115 | `result-track:48836a34202823e5cafaa9f03b2a087dd7f270b48ed70e8a88f9a0fd203bd37a` |
| 17 | `lemma` | [AnalyticOnNhd.im_ofReal](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticonnhd-im-ofreal.md) | 120 | `result-track:5faeb144b9d493de3c3b0c2391a5fcde2bf9d589531b09bc2aa85605aa23dd06` |
| 18 | `lemma` | [analyticAt_log](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticat-log.md) | 132 | `result-track:21900b2d6cd861842cb453ac32c13e7f4f7e6414df9319d1b1d7e9dabeb59cc0` |
| 19 | `lemma` | [analyticOnNhd_log](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticonnhd-log.md) | 138 | `result-track:066bf7352c3eae3e535959859c46c6f478d4a90bd2ce7a2dc7b8859618ab9514` |
| 20 | `lemma` | [analyticOn_log](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticon-log.md) | 140 | `result-track:40b84a44212eb9b18046d3c2ab75ef0d8393489738bdc5fb7e7cff8fe544ea06` |
| 21 | `lemma` | [AnalyticAt.log](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticat-log-source-edition-2.md) | 143 | `result-track:d265e03010c6a08817b2b62be9ebc8daf78d05a5c2faa8591a8520e64e92512b` |
| 22 | `lemma` | [AnalyticWithinAt.log](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticwithinat-log.md) | 147 | `result-track:63a74e23cc54ecfc29df81a205c6ff26e8fb6a4c27c58ab56ce8b3b527e74b63` |
| 23 | `lemma` | [AnalyticOnNhd.log](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticonnhd-log-source-edition-2.md) | 151 | `result-track:b18506388c56e3804f73a6cd103b3b40d9ea7b6687206980fbc6911f47e83d28` |
| 24 | `lemma` | [AnalyticOn.log](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/analyticon-log-source-edition-2.md) | 155 | `result-track:66cdad3e418da29ba3af3f2cddb712ab4292aa154b8731a76920d45c1960dfd2` |
| 25 | `theorem` | [iteratedDeriv_succ_log](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/iteratedderiv-succ-log.md) | 159 | `result-track:277d69c8ec836f2caff432ae65a63d76070aa4386e0216e4de2569756c6088d8` |
| 26 | `theorem` | [hasFPowerSeriesAt_clog_one](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/hasfpowerseriesat-clog-one.md) | 167 | `result-track:f1c4c9b95be9236f1c5ea6d70a2de04acc9111881aadeb4d94bd403e0d998704` |
| 27 | `theorem` | [hasFPowerSeriesAt_clog_one_add](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/hasfpowerseriesat-clog-one-add.md) | 181 | `result-track:554843a4a44fca5b4f668b6736888da922900202719ab387dcde5ba9cf12fcf7` |
| 28 | `theorem` | [hasFPowerSeriesAt_log_one](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/hasfpowerseriesat-log-one.md) | 185 | `result-track:1cf5b47127446db2a81d6434a8352ee6fc6343386379259e86e6fd5a3718ac50` |
| 29 | `theorem` | [hasFPowerSeriesAt_log_one_add](../../../../SpecialFunctions/ComplexAnalyticPublic.lean/declarations/hasfpowerseriesat-log-one-add.md) | 201 | `result-track:5d5c0107d8c94e51e3a83eedc93d62abefbae0210d4fe544b27d043450704c0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13718dd5767e732cd5d634161e908292dc87ded6f51dca351deb6182b29f5189 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
