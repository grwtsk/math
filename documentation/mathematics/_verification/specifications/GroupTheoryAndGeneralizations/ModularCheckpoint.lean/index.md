# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.ModularCheckpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "865bc64a18d69d2cf4325229ea08e0931dd0e1a8",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `865bc64a18d69d2cf4325229ea08e0931dd0e1a8`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy`](../../../../Combinatorics/QuotaDiscrepancy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumOrdering`](../../../../GroupTheoryAndGeneralizations/PartialSumOrdering.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumCertificate`](../../../../Combinatorics/PartialSumCertificate.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../../NumberTheory/ScheduledDenominators.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization`](../../../../DynamicalSystemsAndErgodicTheory/StateReinitialization.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples`](../../../../DynamicalSystemsAndErgodicTheory/BudgetResetCounterexamples.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Data.ZMod.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packetIncrement](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/packetincrement.md) | 45 | `declaration-track:a685ed6dbfcd11855fda22818cebf491d34ff16b4c6add1dd655009047bd9af3` |
| 2 | `theorem` | [packetIncrement_pos](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/packetincrement-pos.md) | 48 | `result-track:3f01b2d1b5274a73c8894e8dc2181d44190acbdf3f554227d3e07d1e830d877f` |
| 3 | `def` | [physicalTime](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/physicaltime.md) | 56 | `declaration-track:a5697416c2abe096f7282af6f200a1f81d7522c0237f5a313aa52b425cda15dc` |
| 4 | `theorem` | [physicalTime_eq_batchClock](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/physicaltime-eq-batchclock.md) | 59 | `result-track:8e6716322e4973a56f36464eea99893b2663d986a6320c4e2e03214dd6639649` |
| 5 | `theorem` | [physicalTime_strict](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/physicaltime-strict.md) | 71 | `result-track:5b6179c1251e045d3fcda458f252e1735b000b4d0179e747ad9d1cf9c2dd8ed5` |
| 6 | `theorem` | [terminal_cost_conserved](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/terminal-cost-conserved.md) | 80 | `result-track:bfc579ea2b8434bbe51196f81801a7719d08d448f2a17170fad70e85a47a771a` |
| 7 | `theorem` | [intermediate_completion_changes](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/intermediate-completion-changes.md) | 88 | `result-track:4a0d9ec700e9e7cf1aad3615271a39984b0f0b08c6e469d19b0a8df39761c840` |
| 8 | `theorem` | [quota_clock_eq_batchClock](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/quota-clock-eq-batchclock.md) | 94 | `result-track:e37f6dd1bd9a18685187f848031da7d47430a0f97915277de94fd037bf0c82e9` |
| 9 | `theorem` | [packet_unique_batch](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/packet-unique-batch.md) | 103 | `result-track:3aa8b23f2e343a0bd72351232f1b2349b4905c86cc9991b9de01091dcb9fe834` |
| 10 | `theorem` | [packet_epoch_no_starvation](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/packet-epoch-no-starvation.md) | 110 | `result-track:95f8e287a6d8b51b18d1c382c06901aaea280df2e5efa7ccbc9d32427ad33238` |
| 11 | `def` | [postPhases](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/postphases.md) | 125 | `declaration-track:1abb9733eadc8101b2ba457cd294d64d657af30c416e14e480f440ba9d1912d9` |
| 12 | `theorem` | [certified_postPhases_nodup](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/certified-postphases-nodup.md) | 128 | `result-track:1c746747b90a840d4866ff1c04271d001c79714fbf39ae424162eb532b5a9797` |
| 13 | `theorem` | [terminal_phase_conserved](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/terminal-phase-conserved.md) | 134 | `result-track:1231fb24dcd4ab9b5a30a3fbb15a007d823d57e68fd0c7506d6e6820196fc65f` |
| 14 | `structure` | [Address](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/address.md) | 143 | `declaration-track:64c5b5894f09bf12e2c1ba1a2a979f23643c59f7054b7d6953983a1b2255e189` |
| 15 | `theorem` | [address_ne_of_epoch_ne](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/address-ne-of-epoch-ne.md) | 151 | `result-track:5cb3fe9593cf74cf6a9eac270aaf78db4d3656b58e0ccec84ad49fea957986db` |
| 16 | `theorem` | [address_ne_of_lift_ne](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/address-ne-of-lift-ne.md) | 155 | `result-track:68c3ef68c7e6461e93a856e371be1a5149c7e52b073c6793190a377f6420a154` |
| 17 | `theorem` | [repeated_phase_distinct_address](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/repeated-phase-distinct-address.md) | 160 | `result-track:7c54bf92217386d86a63745d2d7d0926453717b77608fd9e8929ff8cd69b0932` |
| 18 | `theorem` | [repeated_phase_distinct_lift_address](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/repeated-phase-distinct-lift-address.md) | 167 | `result-track:53b22629b1e6b308023ecb9516b1bca349834f11486fd4a781429a7d7ff398f2` |
| 19 | `def` | [checkpointAt](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/checkpointat.md) | 176 | `declaration-track:f6a64ed9d263bb0101dbb1dae789f4a02dccbc4819e8c16a77ecf944d3e53302` |
| 20 | `theorem` | [checkpointAt_source_epoch_lift](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/checkpointat-source-epoch-lift.md) | 185 | `result-track:b6ee3059ee0d74485652c469a505ad26d578347644bfd84d1408ff8463e7bd71` |
| 21 | `theorem` | [checkpointAt_injective](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/checkpointat-injective.md) | 194 | `result-track:462fad82d5819e5e1e1acebdff5af2ba712fa4129998b900fa045f810d3ad295` |
| 22 | `theorem` | [terminal_checkpoint_conserved](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/terminal-checkpoint-conserved.md) | 203 | `result-track:bfe7ff60be60f8c2d62a130c68d4e345ae883cf0fd7ae76821effec033776f38` |
| 23 | `structure` | [PacketBinding](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/packetbinding.md) | 221 | `declaration-track:5962ae2594892fc7c170dcae2c67afc2d537a5d963cb07d2ddedee2dcb3677e4` |
| 24 | `def` | [BindingCurrent](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/bindingcurrent.md) | 227 | `declaration-track:1bdd6aea78f4dbd62ce9100a764e9c15522446fe2fbfe935d9d49595557809f0` |
| 25 | `theorem` | [stale_source_rejects_binding](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/stale-source-rejects-binding.md) | 231 | `result-track:b8f45e24d686b1358019e4b0844197035ed0b0801c56ec0b070b1f4de4fb8d6d` |
| 26 | `theorem` | [stale_epoch_rejects_binding](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/stale-epoch-rejects-binding.md) | 236 | `result-track:016d0e60f93d8890ba595d5166f8fc95a120a462ea7efc19177fb47419a9d7bc` |
| 27 | `theorem` | [stale_binding_negative_control](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/stale-binding-negative-control.md) | 241 | `result-track:0ff2bf6e00d7dc0f4be11e4c10960e84e9dd4a7a68af817844173593b5aebdb0` |
| 28 | `def` | [certificateBinding](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/certificatebinding.md) | 247 | `declaration-track:535175e12d366f6d90969021fe323786973a353b7bdc95e540ee10674c38a020` |
| 29 | `theorem` | [checked_certificate_adapter](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/checked-certificate-adapter.md) | 254 | `result-track:484f3080fd1b9b3c9993cc26cf87279fc0050e72235ef4c71033986920591de1` |
| 30 | `theorem` | [checked_item_packet](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/checked-item-packet.md) | 268 | `result-track:c8ca12ab922eae9c1989ae01e2d719e29204d26215b43844c76029733b20e87c` |
| 31 | `theorem` | [accepted_stale_certificate_rejected](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/accepted-stale-certificate-rejected.md) | 290 | `result-track:c282b688e4c54f53b7961da7fda283c025aa5fcc559dde1ef9457fbb73d1e28c` |
| 32 | `def` | [DependencyOrdered](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/dependencyordered.md) | 300 | `declaration-track:4c47651008d2ea2a51cb050526be11a935608fb4ac786b0163391928aa9f0e2c` |
| 33 | `def` | [CommutesOnPacket](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/commutesonpacket.md) | 304 | `declaration-track:4095a5eb7681a89779a6b615669efb52c76bb5796b4987de9e47ec62cb882c79` |
| 34 | `structure` | [ExchangeablePacket](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/exchangeablepacket.md) | 310 | `declaration-track:8e173cb96b4388b085a4ab0ad948318cf8f84fe3078c5302a378bfa6685798b9` |
| 35 | `theorem` | [packet_identity_preserved](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/packet-identity-preserved.md) | 317 | `result-track:30b2373f7d329c443d82e0428cd9c8f0c3999ff7a8a04f6dbbdbdc881c40d915` |
| 36 | `theorem` | [packet_semantics_preserved](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/packet-semantics-preserved.md) | 324 | `result-track:7b064123063d901b4898be18cb7234db9c030ad4553043d005fc0ea20c1e71e7` |
| 37 | `def` | [noncommutingEffect](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/noncommutingeffect.md) | 336 | `declaration-track:f1fff6da155475af24749c9638faa38174f25492a97eba114799754439ab566b` |
| 38 | `theorem` | [antichain_not_exchangeable](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/antichain-not-exchangeable.md) | 341 | `result-track:f703c15117cc5c65f5a7cbc5d90642134816f5406beb570aa56f9e4091f77a60` |
| 39 | `theorem` | [dependency_breaking_reversal](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/dependency-breaking-reversal.md) | 349 | `result-track:ba92667005d414de1ba79e117dd70a16aece4687d147ec41d3864845f6f1749c` |
| 40 | `inductive` | [Executes](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/executes.md) | 372 | `declaration-track:52e580da032ef4ccdf1972ddc27292e3664a06bfffd1aa2151a3d5c0a8255dcd` |
| 41 | `theorem` | [executes_guarded_steps](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/executes-guarded-steps.md) | 378 | `result-track:ed165afcc0cea3509c4e1d5504288a98eafb7949178c54fc2a558164b643e394` |
| 42 | `theorem` | [executes_safe](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/executes-safe.md) | 393 | `result-track:3445a675921672834c1ec02498a0ed8dbc877a097e6cb61efa7ba8032d74b57c` |
| 43 | `theorem` | [executes_history_immutable](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/executes-history-immutable.md) | 399 | `result-track:d115b09263e32cb8ee518d0276a29cdb69e5b1f69927e7d0c05848e452d78062` |
| 44 | `theorem` | [executes_source_and_lift](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/executes-source-and-lift.md) | 404 | `result-track:51a60350f69f9d28030ba76e46f01bbdcf6343c664ce3c82cc1970ab4a48f7da` |
| 45 | `theorem` | [executes_budget_exact](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/executes-budget-exact.md) | 410 | `result-track:fea58bbe456b7010bb08f22c4f5adc35ff4372f5cfa3f588524564b222a9bbd4` |
| 46 | `structure` | [PacketAdmission](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/packetadmission.md) | 425 | `declaration-track:56e985897464c3593272c41bac0ebf0987b936ef9dc079b39a3b388436d54dfc` |
| 47 | `theorem` | [admitted_packet_safe](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/admitted-packet-safe.md) | 437 | `result-track:0eef893faa81c8c3ee555b6c394ad35094fe1c1d789a43dd0dd1af55f935252b` |
| 48 | `theorem` | [modular_validity_does_not_discharge](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/modular-validity-does-not-discharge.md) | 447 | `result-track:6990c2ee67a78f6ed7b7251ccac44a1926c8ff247942c9524467bed471ea0f30` |
| 49 | `theorem` | [modular_validity_does_not_authorize](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/modular-validity-does-not-authorize.md) | 457 | `result-track:eaa980415f7121dff7ef6da3343cc3a1084f0193dc43bf0c8a5d11b396fac88c` |
| 50 | `theorem` | [modular_validity_does_not_grant_rights](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/modular-validity-does-not-grant-rights.md) | 467 | `result-track:0c1fe1f9b0228a090d821f4ea8dae028b831c6795031e496e5c67c04b160f129` |
| 51 | `structure` | [SearchAttempt](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/searchattempt.md) | 480 | `declaration-track:4108e2b3eddbc460c0a11b898cf17637f71afd0a0d2050ea360ff6ec9cd77790` |
| 52 | `inductive` | [SearchEvent](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/searchevent.md) | 489 | `declaration-track:c5a24f5866f6f23d0abf8f762a394c436aa404d1738d7f8dfdd92649d769eeeb` |
| 53 | `def` | [SearchEvent.expenditure](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/searchevent-expenditure.md) | 493 | `declaration-track:46dbe7c65b8843f26eee9d26c52cea93cb8e236e567fb5665b04afea9cea7871` |
| 54 | `def` | [SearchEvent.funding](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/searchevent-funding.md) | 497 | `declaration-track:a72bc14c50bda97d69952dda4ecbb9029f7a27334806845db2791246b1ea54f9` |
| 55 | `def` | [totalExpenditure](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/totalexpenditure.md) | 501 | `declaration-track:782594934ee9a6ab29f2e2a5c739e599ed7b70cb1df8cb81f5f6f509c7c3d031` |
| 56 | `def` | [totalFunding](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/totalfunding.md) | 504 | `declaration-track:757e65a8e168f38e6bdea84214d40c5f9e724e582801568ca8ad43232f791add` |
| 57 | `def` | [SearchEvent.attemptCount](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/searchevent-attemptcount.md) | 507 | `declaration-track:375e5d14721fe85f743d4adc72a89820f6d2b71189c818d6fa63c25812ce7f28` |
| 58 | `def` | [SearchEvent.repairExpenditure](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/searchevent-repairexpenditure.md) | 511 | `declaration-track:78167d20967e34d39462201afbea47afa8538d5d171cd26391ef43377355f9c1` |
| 59 | `def` | [attemptCount](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/attemptcount.md) | 515 | `declaration-track:7b8c695a04d265beae010c8119d018641b479e12acef1ef6dac352de882b93c1` |
| 60 | `def` | [repairExpenditure](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/repairexpenditure.md) | 518 | `declaration-track:11f626a2c27a2d40516f89a03c20b24e536d9f220ad6f6f9eeb50c122e92df5f` |
| 61 | `theorem` | [attempt_and_repair_monotone](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/attempt-and-repair-monotone.md) | 521 | `result-track:2ddbd48fed87ec6e21eae7a250bc2c8d49d916313c36a16d884b38e25130832d` |
| 62 | `def` | [SearchFunded](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/searchfunded.md) | 529 | `declaration-track:48aa6ed44c3d469180ebd64edd4e1af74a7a62935cfd281df25ddad673b9e0dc` |
| 63 | `theorem` | [funded_attempt_preserved](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/funded-attempt-preserved.md) | 532 | `result-track:4dff1ca346f7295d8850d7f64d950cfec597cfc647da43eaf9701bab7731b0c2` |
| 64 | `theorem` | [expenditure_append](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/expenditure-append.md) | 546 | `result-track:ef82581d2f4e5d213d872703133c37cdee51d1dd405d14124ed97772ed216cca` |
| 65 | `theorem` | [expenditure_monotone](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/expenditure-monotone.md) | 551 | `result-track:b03983606c7a0fbd8f3614f3c77b9b6a542eaae6b5648df15855f9ee81d46d05` |
| 66 | `theorem` | [record_attempt_exact](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/record-attempt-exact.md) | 557 | `result-track:9b8c43f621d19380476095d54ac5e146bdefca4d191fa2dd24dcbe556c0dcc12` |
| 67 | `def` | [rejectedAttempt](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/rejectedattempt.md) | 565 | `declaration-track:eb0f35e10a0633c30acfc6a5d5bb6d067185715703c2ba697a50c1be267ceff2` |
| 68 | `theorem` | [rejected_search_arbitrarily_long](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/rejected-search-arbitrarily-long.md) | 574 | `result-track:039732d1958644aeb4b4e4aa1a635a86f3f5314cbaa166253f63afe9da5e4fd5` |
| 69 | `theorem` | [local_budgets_do_not_bound_total](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/local-budgets-do-not-bound-total.md) | 583 | `result-track:711f93dff3ecbb1f61cda4dbeb24452924406a8a46b2bf9b617cbe8419e6d501` |
| 70 | `structure` | [TrackedSession](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/trackedsession.md) | 600 | `declaration-track:1b30f4f184c9159577ccea408335157da51318c4070b9e12eba0621c3d1dab76` |
| 71 | `def` | [TrackedSession.recordAttempt](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/trackedsession-recordattempt.md) | 607 | `declaration-track:3334854b50440bce71ab450173221edf322e84125bb3931bd3fbe7c958133016` |
| 72 | `theorem` | [tracked_attempt_expenditure](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/tracked-attempt-expenditure.md) | 614 | `result-track:068bb2bddd26983eb920d992672e38991cb0ee7c4c6fe4e74b58c4d5120f8aac` |
| 73 | `def` | [TrackedSession.restart](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/trackedsession-restart.md) | 622 | `declaration-track:9d703d39141975669fd32058e67be2e14773d042fb35198fe74281fcb6e5a11d` |
| 74 | `theorem` | [tracked_restart_expenditure](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/tracked-restart-expenditure.md) | 630 | `result-track:4a1f38bb120f32c80f0d81da8a28564dbdff28bb539f21ea8a083fb40d76696c` |
| 75 | `theorem` | [tracked_restart_funding](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/tracked-restart-funding.md) | 637 | `result-track:46c3720ccc821bb2836972452b9f76da34ec66396552c50618602ac74a594938` |
| 76 | `theorem` | [tracked_restart_attempt_and_repair](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/tracked-restart-attempt-and-repair.md) | 644 | `result-track:b2b4d8fd322d556a345f56fc1d3927f661e909bc135f87f02b05b1d6758c89d3` |
| 77 | `theorem` | [tracked_restart_lift_and_history](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/tracked-restart-lift-and-history.md) | 653 | `result-track:cff038050b1da696f76d17862745ef32358a829e6780c69e2ae4e3fc159eea71` |
| 78 | `theorem` | [tracked_restart_attempt_retained](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/tracked-restart-attempt-retained.md) | 660 | `result-track:8fa3e1d9cf225ed8d6da6e4f7556a7e35d788864dc22edd9a368bf9a209cec07` |
| 79 | `theorem` | [tracked_restart_safe](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/tracked-restart-safe.md) | 666 | `result-track:2cd465c097e2c5792245a5bb99a7354c70bdaba621204fd119d880a008d50d6f` |
| 80 | `theorem` | [restart_cannot_erase_expenditure](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/declarations/restart-cannot-erase-expenditure.md) | 673 | `result-track:0af695ff967208d165b8b769e6d0f993e1f9000d708bb88cf6471d8cd71073a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb22258434b3e057f71cf0f80d8bae1682fd027a5484c3faa81678596385b9f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
