# Verification target: GRWTSK.Analysis.Complex.RationalMellinFamily

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac85b66a4cc2134280684f95db7dd1f23f123577",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalMellinFamily.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac85b66a4cc2134280684f95db7dd1f23f123577`.

Source path: `GRWTSK/Analysis/Complex/RationalMellinFamily.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalMellinFamily.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalMellinQuadrature`](../../../../FunctionsOfAComplexVariable/RationalMellinQuadrature.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Member](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/member.md) | 26 | `declaration-track:13c0dfc75308fff0f6c0f22b740495d6259db5b23270177373513f7c152fd40e` |
| 2 | `structure` | [Evaluation](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/evaluation.md) | 33 | `declaration-track:57343ee40afc66bb3d66007874066519cbba6ab7edc986088931a178faaf10f2` |
| 3 | `structure` | [Trace](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/trace.md) | 39 | `declaration-track:fea4514eecfd1814b817fad7788c9726416575e6370c7a98d0ee8a3d8f817a47` |
| 4 | `def` | [defaultMember](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/defaultmember.md) | 44 | `declaration-track:39dee528203a2aa9a9cf958ec08efde4b3d158e4c99fa89a51b95d9b082ec518` |
| 5 | `def` | [defaultEvaluation](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/defaultevaluation.md) | 45 | `declaration-track:f6f2cc12b8b329225384796311043d6919033cf6f5dc03748e4e0c641da16f41` |
| 6 | `def` | [memberAt](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/memberat.md) | 46 | `declaration-track:15580a7533575f0ca8292bd46c8fa9aa786b7f8c602cdd3e99e93f6746073197` |
| 7 | `def` | [evaluationAt](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/evaluationat.md) | 47 | `declaration-track:1e1f5d9c039d2c563336ec052647438bef14a9edf78e0809320d6cae75d51b45` |
| 8 | `def` | [terms](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/terms.md) | 50 | `declaration-track:a7fee9c897248f0f530f9815f07342dabcc5b8b46ca2240f5aa84e382ac2533d` |
| 9 | `def` | [localBudget](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/localbudget.md) | 57 | `declaration-track:aaa9bb4dfb20b30b1970dbeb573a6f1773dcdbade45d468b4a397050de34e057` |
| 10 | `def` | [error](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/error.md) | 62 | `declaration-track:067b149cdefaa208ce3a03534f0065608ae1a8dbb39eb3f29a2863568e48c674` |
| 11 | `def` | [output](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/output.md) | 66 | `declaration-track:c96285653729f9dc3eaccee67821e8c7c1b7e5ab3f0a04a9fbe8b0619395d27c` |
| 12 | `def` | [Valid](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/valid.md) | 70 | `declaration-track:43a502a5c3e9bbfe53cd14cf2bbff16d37e3365d2fa06ee50516980ac30f68f5` |
| 13 | `instance` | [instDecidableValid](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/instdecidablevalid.md) | 80 | `declaration-track:42e3f7527e9c93e9803e1133e56ce81ecca650fdd474efad7958335bdfe174c2` |
| 14 | `def` | [check](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/check.md) | 83 | `declaration-track:c063a23f99d0f42038d63504f1c8b349d7342d45bed0d7e8733592fe18d2a30b` |
| 15 | `def` | [checkWithin](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/checkwithin.md) | 84 | `declaration-track:f974041a00f5665ff5f6abd5898c53d849af19e4319e7e0d66e63d65aa0f4359` |
| 16 | `def` | [centerSum](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/centersum.md) | 88 | `declaration-track:44fb18365705ea3de49a7db2531ca600d5c8b70fc9f5d68b065206beb3de3253` |
| 17 | `theorem` | [check_iff_valid](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/check-iff-valid.md) | 92 | `result-track:953ff4edcedb313590a47d34212b5763a4a0b23ef8117ec6d87d7c5870b9a09f` |
| 18 | `theorem` | [length_terms](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/length-terms.md) | 96 | `result-track:2efb25957964b9a6228056e5dc7459b883d060406f41a4a15df0326c54233f39` |
| 19 | `theorem` | [termAt_terms](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/termat-terms.md) | 99 | `result-track:c0f499b1b84a5687c56a632d74f14e389505596c60f5c9d818b2eda76891c5d7` |
| 20 | `theorem` | [weighted_member_error](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/weighted-member-error.md) | 110 | `result-track:02685ecbc49b8c569a39676c88f2839bcf8330e5cbff56496336892c6ceefb12` |
| 21 | `theorem` | [centerSum_error](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/centersum-error.md) | 127 | `result-track:424ce048e77495859e920c1bf9104ede6ff089b606253f3ca867481a47423d05` |
| 22 | `theorem` | [check_sound](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/check-sound.md) | 149 | `result-track:2c04566bafd2d18da7993ea55e88ae55fd1fe7a144b416b0d6bb4b5399e9ab42` |
| 23 | `theorem` | [checkWithin_sound](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/checkwithin-sound.md) | 165 | `result-track:a879bdf3576c39ed022a2be886a56f232974d11534d4a61ff1264d7adc91e48e` |
| 24 | `theorem` | [checked_shape](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/checked-shape.md) | 172 | `result-track:b5e3e46b2de19b84c77bae7217b522f95b6ee8fb927adf81ca8f94e8273e504d` |
| 25 | `theorem` | [checked_radius_nonneg](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/checked-radius-nonneg.md) | 180 | `result-track:523cf35fcf62fce837b3c8e94493c71ce3dd0341c5ced8717ee2f4b743609f5f` |
| 26 | `theorem` | [checked_local_charge_le](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/checked-local-charge-le.md) | 186 | `result-track:20ab769d397cd220a953e05c1117bcc56f4d4e4d06617fab7326148a2cac7dc4` |
| 27 | `def` | [withExactAccumulation](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/withexactaccumulation.md) | 197 | `declaration-track:4184ce805c6dacb9c17ba6ca275f2819f6bdfe33c500f4fa7ab512116a882048` |
| 28 | `theorem` | [withExactAccumulation_checked](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/withexactaccumulation-checked.md) | 200 | `result-track:e99e995fabfd15c85352cfd6971994a000a5dd4f2190b028f51181f2606a0b5d` |
| 29 | `def` | [referenceEvaluations](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/referenceevaluations.md) | 213 | `declaration-track:23b0f29f9a3bc10d2ae1dff320c3f2cf995999db1935d073e41bf8cbdd856a69` |
| 30 | `def` | [referenceTrace](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/referencetrace.md) | 219 | `declaration-track:83a388be17203e12e20acc5aa86829d800d74dcca8e48c31c78d9f5066ece514` |
| 31 | `theorem` | [referenceEvaluationAt](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/referenceevaluationat.md) | 223 | `result-track:f613ae767f1e483ee642c0e43773925e15dc27825d81fd1c7371d041e80a76a7` |
| 32 | `theorem` | [reference_checked](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/reference-checked.md) | 233 | `result-track:295d602eab7ea98f4232fa88e8b7dbfa549bd077b22416c041ee2518886309fc` |
| 33 | `theorem` | [check_enclosed_sound](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/check-enclosed-sound.md) | 257 | `result-track:97deafd157173f7f2e2f61ea6bd1609e944d2cbcd83004601eca8e2d6f2d3f55` |
| 34 | `theorem` | [empty_centerSum](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/declarations/empty-centersum.md) | 282 | `result-track:c65cb4a43830ad3fc7479343fff91b5c9a47f45617fd6e1f4a3e84a91593da96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e49a7ea506f29fef44a34d436e8f9b2af4972204f167d5783733afd923caf97d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalMellinFamily.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/RationalMellinFamily.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
