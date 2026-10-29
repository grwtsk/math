# Verification target: Assumptions Assumption Defect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaf785ecdea6e3333f85aebc45eb75bc09ee7a53",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/index.md) · [Full source](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaf785ecdea6e3333f85aebc45eb75bc09ee7a53`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [JudgmentLanguage](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/judgmentlanguage.md) | 17 | `declaration-track:9f30879fd6111cc9df31b3cbf958a92f6d561eccc4e416c3b3a62cd6e9ab2840` |
| 2 | `structure` | [AssumptionObligation](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/assumptionobligation.md) | 28 | `declaration-track:c7fb59348ff32d2998002d825734301ebaeaf4166bb0f94929b83104cc5f7454` |
| 3 | `def` | [AssumptionObligation.Holds](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/assumptionobligation-holds.md) | 37 | `declaration-track:d63c1e49a92cd2ee611432bba9a8d637f42adedffc415887aa1b231acca8fb48` |
| 4 | `structure` | [ConditionalProposal](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/conditionalproposal.md) | 42 | `declaration-track:e81b1deef63602c01e9d9e6c60ce22ae163576ecd8f92e12aca4a8a82efbbab5` |
| 5 | `def` | [InventoryPremises](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/inventorypremises.md) | 51 | `declaration-track:d6a13cdbf6beb685bcda2651c5f8edbaad71dee6ec3580a7dc2d0f2844c5d2d9` |
| 6 | `structure` | [ConditionalDerivation](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/conditionalderivation.md) | 56 | `declaration-track:277f11f20f8f1a052c6d70397e8d5cb1855d4d59b0126a05965502549e80cba0` |
| 7 | `structure` | [DischargedAssumption](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/dischargedassumption.md) | 62 | `declaration-track:466506c18ed093163506244a0657f6666ae482eb6a32eecc4804a6d8eef68098` |
| 8 | `def` | [DischargeInventory](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/dischargeinventory.md) | 70 | `declaration-track:d57e290ac66d2e1ad723faf16c16aa2a24aa20f214961e0c9de3b401143586b8` |
| 9 | `def` | [RemainingPremises](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/remainingpremises.md) | 75 | `declaration-track:a55a712c79e7a92ab39088cce1ede931435ab03a704f28573eb0c79292bd0b32` |
| 10 | `theorem` | [assembleInventory](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/assembleinventory.md) | 80 | `result-track:fdeff3f0e74dd713d3fc13a95e3b9fa0a20d1e42f56917ace5d041355b97fe1d` |
| 11 | `def` | [FreshReplay](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/freshreplay.md) | 90 | `declaration-track:b5eccd2ea5879bebd227fb8f67fa7fbc6c1ae8d243791e6706e430e66601da72` |
| 12 | `structure` | [RecheckedResult](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/recheckedresult.md) | 97 | `declaration-track:ca8702aba308031ed8b70ba5c4d450ed424cc2d852217337d5565b4c025ee3cf` |
| 13 | `def` | [recheck](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/recheck.md) | 108 | `declaration-track:947d7fd133794a5b3ea21b0309b53c9ea259c74a445d0de1e2eba6d7275564f8` |
| 14 | `theorem` | [RecheckedResult.conclusion](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/recheckedresult-conclusion.md) | 118 | `result-track:f02111acf17a09ac5e742e534675583441fa07e0bed4c2ef653337a9585ad132` |
| 15 | `theorem` | [RecheckedResult.closed_conclusion](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/recheckedresult-closed-conclusion.md) | 126 | `result-track:587fd1888c17550e65916e89dbbe311abc70b8bc49bd5afd91da04416b4c5a0b` |
| 16 | `theorem` | [false_remaining_blocks_closure](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/false-remaining-blocks-closure.md) | 135 | `result-track:1d3128887864ac811f320264f65b6365a16756a7cc2c0f9bdf0526d6f3f6cd57` |
| 17 | `theorem` | [false_obligation_has_no_discharge](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/false-obligation-has-no-discharge.md) | 143 | `result-track:a8961c2d422dd2723ccbdcf2f35bc805dd1a0e8b1de5752ab4aec1421f73354b` |
| 18 | `theorem` | [wrong_source_blocks_binding](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/wrong-source-blocks-binding.md) | 150 | `result-track:5a6663dc33f45348fcf50b5af553406d31fca123d28fbbb3f06dac3716fcfafd` |
| 19 | `theorem` | [wrong_scope_blocks_binding](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/wrong-scope-blocks-binding.md) | 155 | `result-track:e2133f460ebb58c0808dd0eba64ca469528a16c7d7a35cdbdcdac9aa4103e3d8` |
| 20 | `theorem` | [wrong_statement_blocks_binding](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/wrong-statement-blocks-binding.md) | 160 | `result-track:4bf5a5c8bbf80e89a74741e0c0fd9e327c4f356499613503ec481ae176297e6d` |
| 21 | `theorem` | [discharge_event_cannot_be_replay](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/discharge-event-cannot-be-replay.md) | 166 | `result-track:f6cc7f839aa13bcf68598d4adf317ebce1636109fd477542f38132e09d411d67` |
| 22 | `inductive` | [Source](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/source.md) | 177 | `declaration-track:6c4ec37cc711126ca470e7de4435cd034f438211f41cb5e35380a91576483ff1` |
| 23 | `inductive` | [Statement](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/statement-source-edition-2.md) | 183 | `declaration-track:b613dfecf30a9d0902ad2bd2ce7078701701167f585c72dd587fe46af4c6195e` |
| 24 | `def` | [language](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/language-source-edition-2.md) | 192 | `declaration-track:c15409468214b60d24746135484703a72f3c24b7b3798bea9d6c7529cf74ec86` |
| 25 | `def` | [obligation](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/obligation-source-edition-2.md) | 204 | `declaration-track:b2b6f72494d9baa3d9f97369d49f8410f8cde59bd68c31d1e6b709eded1d3cd0` |
| 26 | `theorem` | [square_certificate](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/square-certificate.md) | 208 | `result-track:9431800ade8e91f1a8325c28ccfb858c57d3896b0b16f2eebf70e378c67bdbd4` |
| 27 | `theorem` | [positive_certificate](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/positive-certificate.md) | 213 | `result-track:c0c759b5d5cebe06d376790ebf3df7cc9391a3994e4f9ca808321752520693b0` |
| 28 | `def` | [proposal](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/proposal.md) | 218 | `declaration-track:1a192bd08b99cf3ec890c6722e96daaba4e0d3912365e81c3d7efb541faedd01` |
| 29 | `theorem` | [dependentDerivation](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/dependentderivation-source-edition-2.md) | 224 | `result-track:9f08a3cd7075b7a10c5c4e149ab413e93533f81346184f1ac6a1eca84a710298` |
| 30 | `def` | [discharges](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/discharges-source-edition-2.md) | 234 | `declaration-track:8941113776a506a794549b036c87304aa6cc4bec98a32e7994a1bc3dba7cdf8c` |
| 31 | `def` | [replay](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/replay-source-edition-2.md) | 244 | `declaration-track:d9c14dc06fc23c0fbdf9d84d227ac6804f1b7fed70c5bdc82a0380ec7b6c99c4` |
| 32 | `theorem` | [replayed_consequence](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/replayed-consequence.md) | 252 | `result-track:354284a83a4aeea0dea82ee7ceae7663fefa7454e036bbe5d3010f6e7b9c5271` |
| 33 | `theorem` | [wrong_scope_has_no_discharge](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/wrong-scope-has-no-discharge.md) | 256 | `result-track:904d52dea1ae52a483a5deedcc035af9248318bcd1533879fb1fef1d5f66d988` |
| 34 | `theorem` | [changed_source_is_not_original](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/changed-source-is-not-original.md) | 262 | `result-track:ac776569b29e1581ac08292865c95bb8c7546e612ac2828b669d15dd147d7770` |
| 35 | `theorem` | [square_is_not_negative](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/square-is-not-negative.md) | 270 | `result-track:4d1f6bcb5cf6e4a0dd126f2097e4c486d67f2f3e9d21db33b1ea0dedc97af228` |
| 36 | `def` | [blockedProposal](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/blockedproposal.md) | 276 | `declaration-track:2b0d0038d350cd306a1b6a4ae88836ca6e78e9220c6835427f0e696bae8cf532` |
| 37 | `theorem` | [blockedDerivation](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/blockedderivation.md) | 282 | `result-track:f727316075f1685d2e644a4b8cf953027ef17e781d29fece201f357ca3f35471` |
| 38 | `def` | [partialDischarges](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/partialdischarges.md) | 290 | `declaration-track:c1fcb9249c6b6f4de4330e590f53b8038b97edb5e364da90ede365615b461eca` |
| 39 | `def` | [partialReplay](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/partialreplay.md) | 297 | `declaration-track:0e1dc4ebfe29d1dfc6f72d02d3e44d1203208bf5b041efdcbf484be722846789` |
| 40 | `theorem` | [partial_replay_still_blocked](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/partial-replay-still-blocked.md) | 307 | `result-track:96e5fe12916458b4514a8683e28e6f66414408d430ebe62c6eb1e2c350fc80d5` |
| 41 | `theorem` | [blocked_proposal_has_no_full_discharge](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/blocked-proposal-has-no-full-discharge.md) | 313 | `result-track:90492f6209f61d58e9c3933c98ab001470957ba1c6ef1db1fc573b680219afe2` |
| 42 | `theorem` | [partial_replay_is_not_unconditional](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/partial-replay-is-not-unconditional.md) | 321 | `result-track:806bc850a5b78e8c648abdffcdcd4f83f3dcc34727a3e51ca6fd82de2796cc15` |
| 43 | `theorem` | [stale_replay_rejected](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/stale-replay-rejected.md) | 326 | `result-track:fd9e0a5a555d38ec086dcb4997ce204a7ef4b0621b2f3b7651f76eccdaf2f302` |
| 44 | `inductive` | [Source](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/source-source-edition-2.md) | 339 | `declaration-track:b69afce967767847f6bbb86e3abafff5bbad6d3797a2ce400796b422ad1ac914` |
| 45 | `inductive` | [Statement](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/statement.md) | 344 | `declaration-track:3f133b778c795d8ccb922b7c76fc52742ae459d3ade9608c8383b75c442d2b1c` |
| 46 | `def` | [language](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/language.md) | 350 | `declaration-track:8688b149b97b50e229dc2f5247e02b26b2cf806718c4f5ff151efcd19a97428e` |
| 47 | `def` | [obligation](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/obligation.md) | 360 | `declaration-track:291b92348d841717ae9b1a702e1acb9acfd7a6df59df19b01e364dbe2c952811` |
| 48 | `theorem` | [zero_extension_certificate](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/zero-extension-certificate.md) | 365 | `result-track:a059d138a4018b6127407ae14a6bdf19de31a0744620cc631effd68f3c46f12d` |
| 49 | `def` | [proposal](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/proposal-source-edition-2.md) | 370 | `declaration-track:cc4095ef6e84a149c93b1cdfa711e61b6dca78da1d6284a3f796e3512e85db8f` |
| 50 | `theorem` | [dependentDerivation](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/dependentderivation.md) | 376 | `result-track:0c46c55188b87c2ccab60ecdb72117ffa979d910f3c60cfcfe0028babec08527` |
| 51 | `def` | [discharges](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/discharges.md) | 385 | `declaration-track:6e5dc9821c49187cbe4e8e0479e8771026dcb341571c8363c37fb1b4f03b5861` |
| 52 | `def` | [replay](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/replay.md) | 389 | `declaration-track:a78d8ebc350cd430c65714873bf1e5135415258906e8cc2b724565c1edf6e6d4` |
| 53 | `theorem` | [point_evaluation_replayed](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/point-evaluation-replayed.md) | 397 | `result-track:dc1921384bc26872ed4521f362668e83280a62d687b14536416ac0c021218f7c` |
| 54 | `theorem` | [radius_change_requires_rebinding](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/radius-change-requires-rebinding.md) | 401 | `result-track:deb0093675bbf8120fecc36e9b4c0b63250b5100b5f109ba84e2edcf4c8e4dcc` |
| 55 | `def` | [AssumptionDefect](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/assumptiondefect.md) | 425 | `declaration-track:f2d27a0a316609ea7119b342816478a4bf85ae8953d5f88d0678761728a28aae` |
| 56 | `theorem` | [mem_assumptionDefect](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/mem-assumptiondefect.md) | 429 | `result-track:d64e39400401fab9a288d77ceb547c5e7fad9ba18cff2548387ed1a6d454c170` |
| 57 | `theorem` | [assumptionDefect_eq_empty_iff](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/assumptiondefect-eq-empty-iff.md) | 434 | `result-track:b4d144d6143ce9cb65034e12d111593038ec076446aae8b036f8178100e286c5` |
| 58 | `theorem` | [nonempty_assumptionDefect_iff](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/nonempty-assumptiondefect-iff.md) | 447 | `result-track:d1d6e5dda05c8eb6bba56dbebcc31f6f6eb345cbb2aa61c1e93c8f478d2e04fb` |
| 59 | `theorem` | [RecheckedResult.closed_conclusion_of_empty_defect](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/recheckedresult-closed-conclusion-of-empty-defect.md) | 453 | `result-track:9d130c22f18a504ad3198a14ed6c8c69959d019d72fc5dcaf0d769fcdb9d3feb` |
| 60 | `theorem` | [true_target_with_nonempty_defect](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/true-target-with-nonempty-defect.md) | 466 | `result-track:61bccc15cebe36a52107d473116111f502f11dd6eb21fff50b39da2abaa26cec` |
| 61 | `def` | [falseLanguage](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/falselanguage.md) | 473 | `declaration-track:348d4ec75b92f35ca6b3f16351aa41729757121ff1bf68285ae9c50c38c5f5de` |
| 62 | `def` | [falseProposal](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/falseproposal.md) | 480 | `declaration-track:d5a2af565e48ff7792a201c94f8343bc5ea1f895372857371ad56b36b24c08f4` |
| 63 | `def` | [emptyDischarges](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/emptydischarges.md) | 486 | `declaration-track:55f41b50f34dc96abbd8ed76e903985ec8952cbc7d99fc8e3370719622cf7632` |
| 64 | `theorem` | [false_target_has_empty_defect](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/false-target-has-empty-defect.md) | 490 | `result-track:cbf6301d8ec06c8da1905a847fcdf5712abd6e77a6efc60506ce35b7cb945354` |
| 65 | `theorem` | [false_target_has_no_rechecked_result](../../../../Combinatorics/AssumptionsAssumptionDefect.lean/declarations/false-target-has-no-rechecked-result.md) | 495 | `result-track:047337d732e3981a0f4b06556169d9aaec69a360177e6ed267c88576fdcee45f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dac0baae963cb2d713c4ad88542d642937ae3dabe533ac6efdca10d13572355 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
