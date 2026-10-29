# Verification target: GRWTSK.NumberTheory.Moebius.ModFourCharacterMertensEnergyEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f4fd6387300544531090b83a6d529798e538efc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f4fd6387300544531090b83a6d529798e538efc`.

Source path: `GRWTSK/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ChiFourMertensResidueDecomposition`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DyadicOddMertensSquareRootEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/dyadicoddmertenssquarerootenergy.md) | 40 | `declaration-track:c1ff80a68e2e5a6feba5b6b54b8be9b84f7ca2a2b065226c94dedd490e59a74b` |
| 2 | `theorem` | [oddMertensEnergy_of_parity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/oddmertensenergy-of-parity.md) | 49 | `result-track:32ecc8dc57bfc1ffa1ef0f65351617fe89a6f267df1e8328945515406a0f325f` |
| 3 | `theorem` | [oddMertensEnergy_of_pointwise](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/oddmertensenergy-of-pointwise.md) | 60 | `result-track:d2fb78cbd80a6cda8f7ab81d62b173accc9a1127c131be819ca311c793cf46fc` |
| 4 | `theorem` | [oddMertensEnergy_of_modFourUnitResidues](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/oddmertensenergy-of-modfourunitresidues.md) | 68 | `result-track:5be75bc0f0130132f1dc613afb75c4e69d5348181548a4d60d486e5ca9137d24` |
| 5 | `def` | [DyadicModFourCharacterMertensSquareRootEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/dyadicmodfourcharactermertenssquarerootenergy.md) | 93 | `declaration-track:c2a8b90180e90aa7d272f0bab020780d677b42afd456432281e015d46cc34f75` |
| 6 | `theorem` | [modFourCharacterEnergy_of_unitResidues](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/modfourcharacterenergy-of-unitresidues.md) | 99 | `result-track:b5cd74a409fae994850e295bcd7e6341db05f905b59921bc90d1f0091f576fd2` |
| 7 | `theorem` | [modFourUnitResidueEnergy_of_odd_and_discrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/modfourunitresidueenergy-of-odd-and-discrepancy.md) | 109 | `result-track:ea8179201eeb11afadac36f7e20dc685dfac196b809679bae640e93bbdcfee18` |
| 8 | `theorem` | [modFourUnitResidueEnergy_of_characterEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/modfourunitresidueenergy-of-characterenergy.md) | 153 | `result-track:92361c0a0aa4fa3c77cc6c1469a665c7a4d372db090065fa7f720017f8738a48` |
| 9 | `theorem` | [dyadicModFourUnitResidueEnergy_iff_characterEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/dyadicmodfourunitresidueenergy-iff-characterenergy.md) | 164 | `result-track:d541bc38ff1650f3a0fc19ed515b348956016318d3b14799e5c17583db057727` |
| 10 | `theorem` | [modFourUnitResidueEnergy_of_pointwise_and_chiFour](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/modfourunitresidueenergy-of-pointwise-and-chifour.md) | 173 | `result-track:a5d8e11f318ab85265a72646a985be4d37822bf03b5a2fe93df2220a3656fb97` |
| 11 | `theorem` | [naturalScaleCongruenceL1_of_characterEnergies_twoUnit_regular](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/naturalscalecongruencel1-of-characterenergies-twounit-regular.md) | 182 | `result-track:ab0d1b0ee167d220f84b0a0fb2a1684455cc2cc7ffdc72da4d6b1c54bbda622f` |
| 12 | `structure` | [ToModFourCharacterMertensSquareRootEnergyAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/tomodfourcharactermertenssquarerootenergyadapter.md) | 195 | `declaration-track:4bc90ad2acb64bcce1b919effdd33bc841f9155f23338ec0752cf6c12ec786b0` |
| 13 | `structure` | [ModFourCharacterMertensSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/modfourcharactermertenssourcedata.md) | 202 | `declaration-track:b392484037402cef9a6439bd7898f66fc8281d741e39470194fafc08879cace2` |
| 14 | `def` | [ModFourCharacterMertensSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/modfourcharactermertenssource.md) | 213 | `declaration-track:913ff9b2585b138bc2c69f73487a904b4389e67736c27de53a2ad00a36ef6d02` |
| 15 | `abbrev` | [ModFourCharacterMertensAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ModFourCharacterMertensEnergyEquivalence.lean/declarations/modfourcharactermertensadapter.md) | 224 | `declaration-track:85443fc0fc064446188a4a61bd5434f0b062427751416f28055dcb237490c124` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d976f91376f59980942f29dbbba34448153a1fbf90decdbcf4f27cd092a910a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
