# Verification target: Source Mangoldt Prime Disclosure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68dd122fced9fbf30cd68decec1003a875d7c3ae",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68dd122fced9fbf30cd68decec1003a875d7c3ae`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimeDisclosureActual` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disclosedMangoldtRow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedmangoldtrow.md) | 32 | `declaration-track:8c99d0758b989a1f3b7411d34be22172a0c30c4006050a78e71d33c0a0885590` |
| 2 | `def` | [freshMangoldtRow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshmangoldtrow.md) | 36 | `declaration-track:d7cefc92006a908985e13e82919743f4ba4b66bf9e9e3c76fb077dc088ab6b73` |
| 3 | `def` | [freshPowerInventory](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshpowerinventory.md) | 40 | `declaration-track:938f4385b771bedf8fb37f8e7adb03655ad6cd257e899405ddd81693bb2d464e` |
| 4 | `theorem` | [disclosedMangoldtRow_insert](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedmangoldtrow-insert.md) | 43 | `result-track:a9e4c6a04c0018fb3d3941d58249dd4a5d06d2666ffea63f052dfce36ea37be1` |
| 5 | `theorem` | [freshMangoldtRow_eq_exact_power_weight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshmangoldtrow-eq-exact-power-weight.md) | 53 | `result-track:b958a36ac3029c2578bdcdaaf310f035e14024251e3a8654b153fa012bda088f` |
| 6 | `theorem` | [mem_freshPowerInventory_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/mem-freshpowerinventory-iff.md) | 63 | `result-track:f497c8aa1e54388c2fbee5301d6dc8a33b5a0f26ba8abe43a2fd4ae0e83bfd5a` |
| 7 | `theorem` | [freshMangoldtRow_at_prime_power](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshmangoldtrow-at-prime-power.md) | 81 | `result-track:c93656858e56126d128800085553cfe36284ed5217ec85d7882e73cf41a87b49` |
| 8 | `theorem` | [fresh_profile_eq_complete_power_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/fresh-profile-eq-complete-power-sum.md) | 88 | `result-track:6c747cac6bd041016f3e822c90f3da37d1961065028864c4bdeb4fd8987b0898` |
| 9 | `theorem` | [disclosedMangoldtRow_eq_actual_on_long](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedmangoldtrow-eq-actual-on-long.md) | 101 | `result-track:a4e12eb57442f9fc4e7108a1227d946397cb7119642d312c187cfc93bd77e72f` |
| 10 | `theorem` | [disclosed_profile_eq_actual_mangoldtAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosed-profile-eq-actual-mangoldtat.md) | 113 | `result-track:040cb64bd6fc9cc633ad1aba6e5fd619e17dfc38d2cc31852c901b7c5a3efbc5` |
| 11 | `def` | [disclosedBetaRow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedbetarow.md) | 124 | `declaration-track:502e1d7dda81573a5a7d14159482c124b5a6e0a3ffecfb21b250e7d621c025a5` |
| 12 | `def` | [freshBetaRow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshbetarow.md) | 128 | `declaration-track:84de89123f47e5359d4c965ffb0e74ac470edd11867452b69296debd797ab367` |
| 13 | `theorem` | [disclosedBetaRow_insert](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedbetarow-insert.md) | 131 | `result-track:caeac7dbd2dedaf656f17ca9aebea79d80a982461985397a3be8f5515f0ea0b7` |
| 14 | `def` | [disclosedReadoutAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedreadoutat.md) | 141 | `declaration-track:472b9e0e5e6d03f0e5ce06eae9a6813f642bece931c1c7bd5a4546567f144808` |
| 15 | `theorem` | [disclosedReadoutAt_fresh_prime](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedreadoutat-fresh-prime.md) | 146 | `result-track:0bfd1e122412cc36dd96a79b2f5de9d7ed3004f0ca02b989a4b972b5293785e8` |
| 16 | `theorem` | [compensatedReadout_congr_on](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/compensatedreadout-congr-on.md) | 160 | `result-track:d812f3a1181b293a63f6b2e31fb49e9d1c4b66a9d88b9347335d2a3cfdb5eddc` |
| 17 | `theorem` | [disclosedReadoutAt_eq_actual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedreadoutat-eq-actual.md) | 178 | `result-track:3611efd2f930ec95035704e1ecb53f5a89b59131d2e14e37cb35d6e74eca440c` |
| 18 | `theorem` | [actual_readoutAt_fresh_prime](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/actual-readoutat-fresh-prime.md) | 194 | `result-track:c93a815ddefdb9dbd74ae7116a5c5f8568f2d36ca882ab76709942fa7edbf364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10bb39ab4fe0735bbf09de426e5385c52b349b90bb7efb5aebc376989bfe30ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
