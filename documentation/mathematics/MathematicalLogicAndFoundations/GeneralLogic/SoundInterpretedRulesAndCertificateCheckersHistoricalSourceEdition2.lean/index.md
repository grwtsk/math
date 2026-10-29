# Sound Interpreted Rules And Certificate Checkers Historical Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/Inference/RuleSoundness.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `954e95a7f7a2902201f74f7dcc889de2e86a1ecc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/SoundInterpretedRulesAndCertificateCheckersHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DecisionResult](declarations/decisionresult.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [InterpretedRule](declarations/interpretedrule.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [RuleSound](declarations/rulesound.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SoundRule](declarations/soundrule.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SoundRule.route](declarations/soundrule-route.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [grounded_rules_meaning](declarations/grounded-rules-meaning.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [CertificateChecker](declarations/certificatechecker.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [CertificateChecker.Accepts](declarations/certificatechecker-accepts.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [CertificateChecker.meaning_of_accepts](declarations/certificatechecker-meaning-of-accepts.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [CertificateChecker.Covers](declarations/certificatechecker-covers.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [CertificateChecker.meaning_of_complete_coverage](declarations/certificatechecker-meaning-of-complete-coverage.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [CertificateChecker.unknown_not_accepts](declarations/certificatechecker-unknown-not-accepts.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [CheckedByteInterface](declarations/checkedbyteinterface.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [CheckedByteInterface.accepted_meaning](declarations/checkedbyteinterface-accepted-meaning.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unknown_ne_accept](declarations/unknown-ne-accept.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reject_ne_accept](declarations/reject-ne-accept.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [CheckedByteInterface.accepted_meaning_at_requested](declarations/checkedbyteinterface-accepted-meaning-at-requested.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [CertificateChecker.meaning_of_ambient_coverage](declarations/certificatechecker-meaning-of-ambient-coverage.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [CheckedByteInterface.meaning_of_ambient_byte_coverage](declarations/checkedbyteinterface-meaning-of-ambient-byte-coverage.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [CertificateChecker.guarded](declarations/certificatechecker-guarded.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [CertificateChecker.guarded_accepts_iff](declarations/certificatechecker-guarded-accepts-iff.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [CertificateChecker.guarded_not_accepts_of_gate_false](declarations/certificatechecker-guarded-not-accepts-of-gate-false.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [meaningful](declarations/meaningful.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [versionBlind](declarations/versionblind.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sound_checker_can_accept_wrong_version](declarations/sound-checker-can-accept-wrong-version.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [exactVersion](declarations/exactversion.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exact_version_gate_rejects_mismatch](declarations/exact-version-gate-rejects-mismatch.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exact_version_gate_retains_match](declarations/exact-version-gate-retains-match.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [trueMeaning](declarations/truemeaning.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [trueConclusionChecker](declarations/trueconclusionchecker.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [accepted_conclusion_and_digest_do_not_bind_request](declarations/accepted-conclusion-and-digest-do-not-bind-request.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [snapshotMeaning](declarations/snapshotmeaning.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [snapshotChecker](declarations/snapshotchecker.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [acceptance_does_not_change_snapshot](declarations/acceptance-does-not-change-snapshot.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [falseMeaning](declarations/falsemeaning.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [falseConclusionChecker](declarations/falseconclusionchecker.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [complete_finite_index_does_not_exhaust_ambient](declarations/complete-finite-index-does-not-exhaust-ambient.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [collapsed_targets_can_exhaust_distinct_ambient_values](declarations/collapsed-targets-can-exhaust-distinct-ambient-values.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [rejectingChecker](declarations/rejectingchecker.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rejecting_checker_does_not_cover_singleton](declarations/rejecting-checker-does-not-cover-singleton.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rejecting_checker_covers_empty](declarations/rejecting-checker-covers-empty.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [empty_domain_does_not_exhaust_singleton](declarations/empty-domain-does-not-exhaust-singleton.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [empty_ambient_exhaustion_is_vacuous](declarations/empty-ambient-exhaustion-is-vacuous.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3660630f2557fc6858cc176b22e8395fedbda47cd817e7e785e7c114ce0aedd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrenceb046e57f6f9af5bbd1702123.lean","GRWTSK/Logic/Inference/RuleSoundness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
