# Verification target: Source Mangoldt Prime Disclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1380432d8b3683c10ff919a1c66c57337b45188",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1380432d8b3683c10ff919a1c66c57337b45188`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimeDisclosureActual` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disclosedMangoldtRow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedmangoldtrow.md) | 24 | `declaration-track:6e9beab3c84d68283a60c1e2a205af49d60444dbcc2b4359ebe0dcfaede93d82` |
| 2 | `def` | [freshMangoldtRow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/freshmangoldtrow.md) | 28 | `declaration-track:11bdcb88d1a7f7a3351e552b0ac02d36417f1ac5f8ed9b1c7acf474f0bce265a` |
| 3 | `def` | [freshPowerInventory](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/freshpowerinventory.md) | 32 | `declaration-track:f9f0686c3a55dacfb199934f2abbdbf0a52fe9f8fe4648febe0dafae5481ef2c` |
| 4 | `theorem` | [disclosedMangoldtRow_insert](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedmangoldtrow-insert.md) | 35 | `result-track:a357284f1cc2f8ed1c641f5d5b1868fe00d797d6062ae2d805073af3511be76e` |
| 5 | `theorem` | [freshMangoldtRow_eq_exact_power_weight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/freshmangoldtrow-eq-exact-power-weight.md) | 45 | `result-track:525d927ecae27e68df3904fa58762eb5f88f8384589ae09af446a06ce1451170` |
| 6 | `theorem` | [mem_freshPowerInventory_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/mem-freshpowerinventory-iff.md) | 55 | `result-track:639b5bacf08e7b4867b82674af22eb7031f3e5c9b1263ceee6d60a80454644c6` |
| 7 | `theorem` | [freshMangoldtRow_at_prime_power](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/freshmangoldtrow-at-prime-power.md) | 73 | `result-track:06c3d8a8b547ed7ffc077445c55e8038344b9b5dfcc5bbd144dc987143ff72d9` |
| 8 | `theorem` | [fresh_profile_eq_complete_power_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/fresh-profile-eq-complete-power-sum.md) | 80 | `result-track:2f17752a01267ea5d76f0d47b2224208b272bcf7f78b2f49d71a3edaf82f928d` |
| 9 | `theorem` | [disclosedMangoldtRow_eq_actual_on_long](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedmangoldtrow-eq-actual-on-long.md) | 93 | `result-track:cfd49f4fe852787aefd88f298f771ecafe6aa9993874e47fe1e59a1633559042` |
| 10 | `theorem` | [disclosed_profile_eq_actual_mangoldtAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosed-profile-eq-actual-mangoldtat.md) | 105 | `result-track:da5674206dc77c772f3d1f047630bd2b9601569a47b9a846d0fef29f3e1d6086` |
| 11 | `def` | [disclosedBetaRow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedbetarow.md) | 116 | `declaration-track:7dfa9022f8313be10f13759ee0430162bf3f0af66970a80ab9b0207ae1d471be` |
| 12 | `def` | [freshBetaRow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/freshbetarow.md) | 120 | `declaration-track:7345d96272182fea9c658baae3eb273940f8b043e25a23bb5098f96641ec96a4` |
| 13 | `theorem` | [disclosedBetaRow_insert](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedbetarow-insert.md) | 123 | `result-track:1d453ffdd8458a7dd751cb37e4aba53770704a7ebbe576e92eebc59b3fd2e67c` |
| 14 | `def` | [disclosedReadoutAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedreadoutat.md) | 133 | `declaration-track:325861555c11aafd253d695467756c60cd212a89b5c999c97a2ea4786c813baa` |
| 15 | `theorem` | [disclosedReadoutAt_fresh_prime](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedreadoutat-fresh-prime.md) | 138 | `result-track:1623a363a75413bda4326b5b757f4704ece13d8a71558ff12f3c0159d678d849` |
| 16 | `theorem` | [compensatedReadout_congr_on](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/compensatedreadout-congr-on.md) | 152 | `result-track:6c7454ee2d824eb00d5f583b459420495d4ce21073fc9035dd3f55913495aa93` |
| 17 | `theorem` | [disclosedReadoutAt_eq_actual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedreadoutat-eq-actual.md) | 170 | `result-track:8eac36d06d1f968424b4afa643f0f33539059bf384bd16221e6283d212825fb2` |
| 18 | `theorem` | [actual_readoutAt_fresh_prime](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosure.lean/declarations/actual-readoutat-fresh-prime.md) | 186 | `result-track:7a9b51a1564c9bfb309fb96f1130a52eecf65c16b32cf12bb05ada6a919bbd74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8fd8e5d12812b1847fca4335b0ab92496fab9d5544fe123d18919d03429445b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
