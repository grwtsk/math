# Verification target: Source Kapitza Event Balance Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be5c7d6b8a6147010f70ceb976332aabe61dd604",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be5c7d6b8a6147010f70ceb976332aabe61dd604`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaCycle` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/cutoff.md) | 36 | `declaration-track:b87dbb8cf4d08cb4ff6182310860022371772718b4e4b7e86486a758e1f8b185` |
| 2 | `def` | [node](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/node.md) | 38 | `declaration-track:5d32979836d5410554e5c63832ffd92f6f49601114eeafb08dce4d045422f37a` |
| 3 | `def` | [frozenState](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenstate.md) | 40 | `declaration-track:0e17578079df2e4a44350a4e541e87b754c9d6477d55e573528303a263d911fd` |
| 4 | `def` | [frozenEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenenergy.md) | 43 | `declaration-track:fdaec516e70780406019d85c18426b5efa816b43fb2a54af78747c07b58fa8ed` |
| 5 | `def` | [smoothBalance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/smoothbalance.md) | 46 | `declaration-track:7b0e4ce83441e975961beb232c0873c97feb171fac463a06f0f0ba7f2f428cae` |
| 6 | `theorem` | [frozenState_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenstate-hasderivat.md) | 50 | `result-track:a7d3094b73c1d81d4b126255e0b98a9d9f34827c40ca541abc101960fdbfd30e` |
| 7 | `theorem` | [sourceCorrector_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/sourcecorrector-hasderivat.md) | 59 | `result-track:84537f15cf068dc65ba3c7e7cd317f5d9178b0a238702c3cb7d43cd830d3b8c1` |
| 8 | `theorem` | [frozenEnergy_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenenergy-hasderivat.md) | 66 | `result-track:63a02891a45ee7b6f839a65873d86abec099f5d06906cc18f40e0e219fce43e6` |
| 9 | `theorem` | [frozenState_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenstate-continuous.md) | 82 | `result-track:a3297eb7ef5bcacf2d9f4a8cbd0fa56c4436e53508ded0e4307e18365b945302` |
| 10 | `theorem` | [sourceCorrector_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/sourcecorrector-continuous.md) | 86 | `result-track:75d7d401df0e2168ee839ac120d7743082b3ec439e9664d212e7fbeca31a02ff` |
| 11 | `theorem` | [smoothBalance_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/smoothbalance-continuous.md) | 91 | `result-track:b819294d5bcd7011b72530c5da1f88041272b4624a057ef7f94e776d7ebc7918` |
| 12 | `theorem` | [frozen_cell_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozen-cell-balance.md) | 101 | `result-track:4a7f2e44522ae2f5c0c63e6032a0f1458893878565529464f7168d6343e39255` |
| 13 | `theorem` | [node_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/node-zero.md) | 123 | `result-track:8bb05c243c7463b69b71673afaa241859f469505cac50789895f3c49a7a628ef` |
| 14 | `theorem` | [node_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/node-cutoff.md) | 126 | `result-track:31749e64398c60090d9880709d5a0cd3cd53a524ceb075aada8f29ed9dd435fa` |
| 15 | `theorem` | [node_eq_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/node-eq-log.md) | 133 | `result-track:53fff138f45136db6760923e3bb835ebbe1d5b5fd70066ab33ffc95dfb29099d` |
| 16 | `theorem` | [node_mono](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/node-mono.md) | 140 | `result-track:f55fad0fdbaf47e26ea18311f9670f8e11ba97ebadf6d59e8fea243aee0b223d` |
| 17 | `theorem` | [actual_frozenState](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/actual-frozenstate.md) | 146 | `result-track:957451a8482265cdafc0db704c32443091df7d661c373c3ba69167af63a2c19e` |
| 18 | `theorem` | [nonaffine_mul_continuous_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/nonaffine-mul-continuous-intervalintegrable.md) | 166 | `result-track:c81e3fcc08cc0bbf00a2e85351fc9a48b7b33a27fff78c6462c16abc742dfe7f` |
| 19 | `theorem` | [actual_cell_partition](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/actual-cell-partition.md) | 176 | `result-track:4dfc5ce7c4b4b1d6e74415595fd61a9108f05132ed1c12f8cc35d05e76238032` |
| 20 | `theorem` | [nonaffineWork_cell_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/nonaffinework-cell-balance.md) | 194 | `result-track:9f60d75078692943d9030565dd71cb94e44335d6cf21aff296538e058299dab8` |
| 21 | `theorem` | [frozenState_event](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenstate-event.md) | 207 | `result-track:32a35354555cb2d47563f677c36839bc31a0c8ba72ae8f17048e0164cb1a3ae3` |
| 22 | `theorem` | [event_quadratic_coefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/event-quadratic-coefficient.md) | 217 | `result-track:57dc26356d52fbb15dda59029bdd9496157527f225b9a271d8d6427a4293dcdc` |
| 23 | `theorem` | [frozenEnergy_event](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenenergy-event.md) | 239 | `result-track:afe46b0157ad3538c3aef535fe3eed569eca51a5c0f0ce1052d002cf04916d47` |
| 24 | `theorem` | [staggered_energy_telescope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/staggered-energy-telescope.md) | 254 | `result-track:af749f90634bcfb9c67d1db8603273fc4a0484625bff6cb1802b9580ca99f612` |
| 25 | `theorem` | [frozenEnergy_initial](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenenergy-initial.md) | 261 | `result-track:0d04e144a80f030a7367ef0cd0008755d0584224b57bcb67c49e2f4d8b59387a` |
| 26 | `theorem` | [frozenEnergy_terminal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/frozenenergy-terminal.md) | 266 | `result-track:5dca26d036727c08013ca15c87753ceff1c7e84e6dc12f2260c1e917aca220e3` |
| 27 | `def` | [eventLinearWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/eventlinearwork.md) | 275 | `declaration-track:fefcaa7ddd5a29a7466102a614be3bf51205a6585bd0c9f58d7c4a0eaf7f4eef` |
| 28 | `def` | [totalSmoothWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/totalsmoothwork.md) | 280 | `declaration-track:627c43fba519585c601cb3f0b9c9bb76764878a09b26b85d302ecadd075d378f` |
| 29 | `def` | [totalEventWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/totaleventwork.md) | 284 | `declaration-track:6250cd8ffce10206daead56509d0d9dc133ad03b9563553871a8ed94772e2352` |
| 30 | `def` | [totalQuadraticWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/totalquadraticwork.md) | 287 | `declaration-track:fd968082fe8597c026bb69bf3b0eee1ca86293f324a507fb4694864d8b1ef4d7` |
| 31 | `theorem` | [nonaffineWork_complete_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/nonaffinework-complete-balance.md) | 291 | `result-track:c212275c59abcb6a3e49f60c901862c1fc6ccb34e30f3336f45e38dc81478664` |
| 32 | `theorem` | [totalQuadraticWork_eq_inventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/totalquadraticwork-eq-inventory.md) | 321 | `result-track:f2fd7630bce5eca8ef006637baa5074195dee4e1cd8fb1dd28a410b04e3662f2` |
| 33 | `theorem` | [totalQuadraticWork_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/totalquadraticwork-le.md) | 339 | `result-track:83239b48f5e595cadb1097814e62414797a91340b9f236547de0845c390d6bd3` |
| 34 | `def` | [combinedTerminalWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/combinedterminalwork.md) | 344 | `declaration-track:43a9b2c6e0cd310e1c806cff3d80cb7f6f3f3640442c1aaf03d7a27cd30a4fe6` |
| 35 | `theorem` | [native_residual_complete_balance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/native-residual-complete-balance.md) | 347 | `result-track:2fb5c293c426aebc1138a6b0b08661181f1fa63260dba1e9e92183c84dd90e30` |
| 36 | `theorem` | [original_lower_of_combined_terminal_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/original-lower-of-combined-terminal-cap.md) | 356 | `result-track:7a3ef04f31a1bed1fd541bbd7d2b3b28d4afeb54689ecaba3a093cf5bbeb1757` |
| 37 | `theorem` | [estimate_of_combined_terminal_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceKapitzaEventBalanceNamespacedEdition3.lean/declarations/estimate-of-combined-terminal-cap.md) | 380 | `result-track:afb28be928cc8d267c1339a0ae9fd5758a492686c83ff45f8ec618ee323423de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1d48fa655de8de86a62711478eb1e7dc52e279eef27e49c45305751c471c33a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
