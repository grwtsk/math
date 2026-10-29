# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32e1ca278b5e3701c267c65bc4b51db53717039c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32e1ca278b5e3701c267c65bc4b51db53717039c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleSystems.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleRoutes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/cycleroutes.md) | 21 | `declaration-track:8343ffc79a0560e76d38fb46550fcc48715bd5d07ccba72c123f70e73b8f5ec3` |
| 2 | `def` | [falseCycleProviders](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/falsecycleproviders.md) | 26 | `declaration-track:4204669474f0812ee60a6712078198e935cdcbaab7663de5cbc1ea71888f833a` |
| 3 | `theorem` | [false_cycle_rules_eligible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/false-cycle-rules-eligible.md) | 36 | `result-track:bdaa8d036d6780ec0da69d757502b90fcd187ae52e9b9fb50077d2a8bcfff7d7` |
| 4 | `theorem` | [false_cycle_support_empty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/false-cycle-support-empty.md) | 41 | `result-track:3baaa76f10d6593e57b11f73237d75fc3ec0dc6068f20debb57db92c38687280` |
| 5 | `theorem` | [false_cycle_self_closed_but_not_grounded](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/false-cycle-self-closed-but-not-grounded.md) | 48 | `result-track:219ce525b1d497ceacde185eb20acf71cfc85761381c4377699b66eb815500cf` |
| 6 | `theorem` | [false_cycle_cannot_supply_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/false-cycle-cannot-supply-target.md) | 58 | `result-track:bf0fb36fbeecbd33756a66832a6da57752e928fb9eb6a70ee31b49612f5abf74` |
| 7 | `def` | [alternateProviders](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/alternateproviders.md) | 65 | `declaration-track:406fe54adcc452c91cf9ff72637805294cdd738e922a84e55a4debd7a7e45557` |
| 8 | `theorem` | [stale_primary_fresh_alternative](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/stale-primary-fresh-alternative.md) | 75 | `result-track:410568d5b0201b24a81386b93c1ad306acdf82603b27adb66a2a0d4934fe32bc` |
| 9 | `theorem` | [alternate_route_survives_changed_read](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/alternate-route-survives-changed-read.md) | 80 | `result-track:0f2bec117aafb75151275ad1b26fc32e4fe39e7d4d103879edcecd46b3f3645c` |
| 10 | `theorem` | [alternate_route_survives_provider_withdrawal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/alternate-route-survives-provider-withdrawal.md) | 89 | `result-track:bc0145a856007223555bb87d4c7fa81bdd7e016346ccbe20147de1ba649b4165` |
| 11 | `theorem` | [whole_claim_withdrawal_blocks_alternatives](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/whole-claim-withdrawal-blocks-alternatives.md) | 99 | `result-track:67aa70587c1e618ae72913e0632ba7b8fa878aa34e2a4dc398291004bee143de` |
| 12 | `def` | [groundedCycleRoutes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/groundedcycleroutes.md) | 107 | `declaration-track:b6c67aff5931ad41522d83b589a4e663195f5089c660d31db2c131e2d4dde51b` |
| 13 | `def` | [groundedCycleProviders](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/groundedcycleproviders.md) | 111 | `declaration-track:6045fa5cff8c75bb0f351a2dda4504809d2596b9d74ec819c5e08b2e373e3b87` |
| 14 | `theorem` | [grounded_cycle_supported_before_change](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/grounded-cycle-supported-before-change.md) | 120 | `result-track:550be877fc73fb60994cbc4f92852609f2b8f6544065fc6065350a0d5deff382` |
| 15 | `theorem` | [grounded_cycle_empty_after_ground_loss](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/grounded-cycle-empty-after-ground-loss.md) | 138 | `result-track:6ffba7c19a6ea4dd37edb8f8998da11ae4ad09e019374686588710d78a7829cc` |
| 16 | `def` | [sourceDependentAlternates](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/sourcedependentalternates.md) | 152 | `declaration-track:ecb28394cd54d49a525fae8b1147a381f005faada6434c76ccb4363f3a5bf1bd` |
| 17 | `theorem` | [source_dependent_alternate_returns_exact_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/source-dependent-alternate-returns-exact-target.md) | 167 | `result-track:45e85d463f8d96ab5a65c728bb9ba54b1277dd03d717d6c10f8d5fbcf0051ded` |
| 18 | `def` | [andRoutes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/androutes.md) | 189 | `declaration-track:cf5c227db9851aa00019ab7071e4c9af40848cf4fe8e1b14bbfbd665c69a7d0e` |
| 19 | `theorem` | [and_route_not_supported_with_missing_premise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/and-route-not-supported-with-missing-premise.md) | 193 | `result-track:1eab659e8cf7e8c584ec1490d20957d3c4aae5ed1a364b4d7c2e5d8f7fe150a8` |
| 20 | `theorem` | [and_route_supported_with_both_premises](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamplesHistoricalSourceEdition2.lean/declarations/and-route-supported-with-both-premises.md) | 209 | `result-track:0cc3de6075d506163515c41cc577b5e00fcd87d8c444828bacff9b6d7f6191b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b50b2064bb7914a9d3e11b4ffc1e0331e5845188a36c694ca7aa3a646dbddf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
