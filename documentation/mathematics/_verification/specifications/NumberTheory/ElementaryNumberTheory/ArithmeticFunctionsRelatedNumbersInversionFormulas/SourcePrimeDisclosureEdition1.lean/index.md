# Verification target: Source Prime Disclosure Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a59c9000024bc7cdbee6f9d836f78676a832cf4f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a59c9000024bc7cdbee6f9d836f78676a832cf4f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceOrbitCoordinates` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeDivisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/primedivisors.md) | 22 | `declaration-track:0356da8146e2f16efb0080ca6cf13574782cc3284e8dc07b80a849127eb5fa55` |
| 2 | `theorem` | [primeDivisors_fresh_coprime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/primedivisors-fresh-coprime.md) | 25 | `result-track:968358ae1305074d769bc65f9b581785134cfaf2fe5acb1affefb367206cecec` |
| 3 | `theorem` | [primeDivisors_insert](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/primedivisors-insert.md) | 41 | `result-track:7cd894a9ce988227db7acde5e4b96edb99650c9e284916e38b0185210b798673` |
| 4 | `theorem` | [primeDivisors_insert_disjoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/primedivisors-insert-disjoint.md) | 65 | `result-track:c5d0230313235f9c2402e4182521f511224e57443209fafdf4ee99cb1257225f` |
| 5 | `def` | [centeredDisclosure](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/centereddisclosure.md) | 75 | `declaration-track:328161a159f588d970656e3db139d34d8e92230ed924ff45ef9014279e8b913c` |
| 6 | `def` | [disclosedMean](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/disclosedmean.md) | 79 | `declaration-track:43f29d32b67a8f7c5a3bc46fbfddd8cfe2ef2cc3303dc390325ac5bba20dcdcd` |
| 7 | `def` | [disclosedDivisorSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/discloseddivisorsum.md) | 82 | `declaration-track:7bee0769eca1e626e19c8811f8436a5316defe969e89435bad511e35c5025a0c` |
| 8 | `def` | [freshPrimeCorrection](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/freshprimecorrection.md) | 85 | `declaration-track:26ca51c177ba2a663c52ee448a64e9ee78b5bd4618f63e0ffeee14cdcde1f623` |
| 9 | `theorem` | [moebius_fresh_prime_mul](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/moebius-fresh-prime-mul.md) | 89 | `result-track:5b460a7fcd339eacc6c1a829d8e0d6e20fc0915fd56fe12c6ae55f09a827a1a9` |
| 10 | `theorem` | [fresh_prime_discrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/fresh-prime-discrepancy.md) | 97 | `result-track:8bd892695761553259024815f040626071c530a52adeee2f0656e7c9c8536c28` |
| 11 | `theorem` | [centeredDisclosure_insert_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/centereddisclosure-insert-prime.md) | 110 | `result-track:b91d1ebb82c929f7b6b8ea7a0a1fc74042d3b10acb313f4683d6897394475988` |
| 12 | `theorem` | [centeredDisclosure_primeDivisors_insert](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/centereddisclosure-primedivisors-insert.md) | 134 | `result-track:477fc0ca4597532895eba297e8cbcba1fb11edec692281e95e27baca8f4fd5cc` |
| 13 | `theorem` | [centeredDisclosure_coverage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/centereddisclosure-coverage.md) | 145 | `result-track:aa3bc13227631126736d1bd95fa62482555cb28c42ff22c57c235c0b589e4acb` |
| 14 | `def` | [disclosureSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/disclosuresource.md) | 172 | `declaration-track:14aa9350dcba903e39f3ffd4be613a6b3f3c9e6ebba00ed949fbcd0ef3a2314b` |
| 15 | `def` | [correctionSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/correctionsource.md) | 176 | `declaration-track:ec4af947e2c3442433dd0904408c5ad1b9b818db360954644e82ce4af7342c21` |
| 16 | `theorem` | [disclosureSource_insert_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/disclosuresource-insert-prime.md) | 180 | `result-track:c6ad7b5bdbc560e701ceda352cb524217ba93450f9e8bc37cdd19e13dbdfcd0f` |
| 17 | `theorem` | [disclosureSource_primeDivisors_insert](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/disclosuresource-primedivisors-insert.md) | 191 | `result-track:4585bcdd94e61b60917e0892e3b1b4099635c27550cacea26859a23ae315f199` |
| 18 | `def` | [plainSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/plainsource.md) | 202 | `declaration-track:bd8032b836abbb77444a822df462edacd42d699759240585e0583e773d2f26cb` |
| 19 | `def` | [primeMultipleSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/primemultiplesource.md) | 205 | `declaration-track:e798b805f691fb64234e7bb0dd2ee4f3effea9a2577884c27edb80b288e4a20c` |
| 20 | `theorem` | [correctionSource_eq_mean_and_multiples](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/correctionsource-eq-mean-and-multiples.md) | 210 | `result-track:ef2c41999f4fb24a0a4c2f51e702173bad0d21a0c49a441ece21cbc4f3ae2b71` |
| 21 | `def` | [physicalDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/physicaldiagonal.md) | 227 | `declaration-track:c433d0fc9619f146fea7f669bea2cbd786850535494fcdf80ec8391c91b77054` |
| 22 | `def` | [compensatedReadout](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/compensatedreadout.md) | 231 | `declaration-track:c46dbac293edaaf49aefa1eea9e5e1f7476988b2c543ff9748320456796b6e55` |
| 23 | `theorem` | [compensatedReadout_row_increment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/compensatedreadout-row-increment.md) | 237 | `result-track:649cc1c90a9a20cf7aa6fb2fb9dd264f86128956dca98ca0b570fbd6e1ad0209` |
| 24 | `theorem` | [compensatedReadout_two_row_increment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/compensatedreadout-two-row-increment.md) | 253 | `result-track:cd8d41f0d9459e015f2527ca160a8d75496b89005affcc3f0dbcc0e20cf609db` |
| 25 | `theorem` | [repeated_prime_divisor_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/repeated-prime-divisor-zero.md) | 272 | `result-track:6bb0eb466a072893b22a5587f61f827e7c2b6b3faefe0316d37532ab9012636d` |
| 26 | `theorem` | [prime_power_mangoldt_coefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/prime-power-mangoldt-coefficient.md) | 277 | `result-track:c05a77a63fba3bb1cde701624fd6d65685124fa492373be6c91ae738c0da937a` |
| 27 | `theorem` | [prime_three_centering_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeDisclosureEdition1.lean/declarations/prime-three-centering-fixture.md) | 285 | `result-track:f1ff65fb9d614161e406fb33b6fda3d49e2d0297b4608bbe041561d481974e38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b28a8991b8c3958839daec99ea05e9948c437583308e8534a04c03e5dcab4ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
