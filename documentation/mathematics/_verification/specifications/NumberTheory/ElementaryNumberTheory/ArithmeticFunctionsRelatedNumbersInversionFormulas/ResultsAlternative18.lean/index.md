# Verification target: Results Alternative18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9abaada2781c8745aae8c22d130ba7b4e5197e80",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9abaada2781c8745aae8c22d130ba7b4e5197e80`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.MultiplicativePhase` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationSpectralLens` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/primeweight.md) | 32 | `declaration-track:f591c2bf59cf72ac45575be62202e151e52dce77a0f401486ce565d8b82ba928` |
| 2 | `theorem` | [primeWeight_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/primeweight-nonneg.md) | 34 | `result-track:4dc3ded671078cbb32e733d502604df80b8adb2581f0ebe56ac3350e73316e33` |
| 3 | `theorem` | [primeWeight_eq_zero_of_not_prime_power](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/primeweight-eq-zero-of-not-prime-power.md) | 37 | `result-track:651d62acea127de26e468586fcdce76008c8c0bf8e44bdee7ba58a5d8771fc98` |
| 4 | `def` | [totalWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/totalweight.md) | 42 | `declaration-track:2d56e719d5eee3450b622865e4e04a21e204e0fad583ca88207d8841b06a7e29` |
| 5 | `def` | [cosineMultiplier](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/cosinemultiplier.md) | 45 | `declaration-track:1ca5139ae8eab0821a5df0afc5abde5c39cf21854db3ae3c44f08735b2c43709` |
| 6 | `def` | [phaseDefect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefect.md) | 49 | `declaration-track:03e9d69998fc75f606cacf5079727d5b6878c5d205b08d1f8f291652048b64b4` |
| 7 | `def` | [spectralMultiplier](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/spectralmultiplier.md) | 53 | `declaration-track:fd77e061c11d56c192f1fb7eb6f8856a733d7cbbb2b089612cf11aac53259dc1` |
| 8 | `theorem` | [totalWeight_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/totalweight-nonneg.md) | 56 | `result-track:c30394f11391f25e4bc1303d94083baa25b9005fa135370082e8bc7c400cb583` |
| 9 | `theorem` | [phaseDefect_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefect-nonneg.md) | 59 | `result-track:a7b2e0e6d980e09b410164c4197ed953cb118e5023c98a11135501ce8a305d90` |
| 10 | `theorem` | [phaseDefect_le_four_totalWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefect-le-four-totalweight.md) | 63 | `result-track:a7765d774a3932559314375fc7332556cc547638752d8fea6b574fed5828f9d6` |
| 11 | `theorem` | [cosineMultiplier_eq_budget_add_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/cosinemultiplier-eq-budget-add-defect.md) | 77 | `result-track:c9d417a95da4b0adb03912ece42018f2e782bf4e1748c48a7f197131b2e24bc6` |
| 12 | `theorem` | [spectralMultiplier_eq_budget_add_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/spectralmultiplier-eq-budget-add-defect.md) | 86 | `result-track:1686759b47d43efd6e97803da71599d8f9f7c0531177ea35bd34b95e152b6826` |
| 13 | `theorem` | [phaseDefect_zero_frequency](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefect-zero-frequency.md) | 92 | `result-track:2fe8f65ecaeb52efc4fc5e6305b1b5a7610b6d8d1b4237e693cff419a5bf347b` |
| 14 | `theorem` | [spectralMultiplier_zero_frequency](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/spectralmultiplier-zero-frequency.md) | 95 | `result-track:ad6144b90f26cce76684e836433d9833482db8d4e7f1d8f1983f13dc3573edd3` |
| 15 | `theorem` | [cosineMultiplier_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/cosinemultiplier-lower.md) | 99 | `result-track:532236f7f71e5b576ebb8cd94a61894f167d671a7d9be3830cdc168ff405b8a8` |
| 16 | `theorem` | [cosineMultiplier_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/cosinemultiplier-integrable.md) | 106 | `result-track:36884590188894ed724bd46178a48e0690de2dcd4acb23e25b5e368ac63f19fb` |
| 17 | `theorem` | [primePowerContribution_eq_cosine_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/primepowercontribution-eq-cosine-integral.md) | 118 | `result-track:587447865b7bd6e4624144839e09d410f7aeaaca218dbf667a73e85279007ff9` |
| 18 | `theorem` | [phaseDefect_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefect-integrable.md) | 146 | `result-track:11674c8a2d96ae54dcf0121ddb001e0502d32188a426ab03fa69be09e9ed27eb` |
| 19 | `theorem` | [cosine_integral_eq_budget_add_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/cosine-integral-eq-budget-add-defect.md) | 159 | `result-track:f8403e27fbe21f1d75266322c7fe1ccc4b57b79737277f5c1dc46c5b7cdfd5be` |
| 20 | `theorem` | [sourceQuadraticValue_eq_budget_add_phase_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/sourcequadraticvalue-eq-budget-add-phase-integral.md) | 176 | `result-track:ca09b9368b1c9f3a22a36f1b7a55b72d8abab87e02b1d5aaf1fc4df22b16b663` |
| 21 | `theorem` | [phase_integral_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phase-integral-nonneg.md) | 191 | `result-track:a0bf7387a24541e4970564ab7fb3d6fad49e7907b92af5fd35dfaf50f5b24dfa` |
| 22 | `def` | [phaseDefectMass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefectmass.md) | 196 | `declaration-track:50eccf521175b501bb8913b4e7a8a8bc91448d6c2a01c71dac0bbfbecf16f829` |
| 23 | `theorem` | [phaseDefectMass_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefectmass-integrable.md) | 199 | `result-track:e6dfb029c8000184cec6723d5fc6f03b675286e1bdc8ec9beadef62e9e0a75ba` |
| 24 | `theorem` | [phaseDefectMass_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefectmass-nonneg.md) | 204 | `result-track:1e7def3ef6a80e366d40ba34b0789b1b1f481992db37dac0f8f15184ceddc4ef` |
| 25 | `theorem` | [phaseDefectMass_le_four_totalWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/phasedefectmass-le-four-totalweight.md) | 207 | `result-track:d005cf2b3245b5d1bb1c84ab8854fe9d08788ba2ffd2ed7e1de10f4fd9563dab` |
| 26 | `theorem` | [actual_primePowerContribution_eq_budget_sub_half_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/actual-primepowercontribution-eq-budget-sub-half-defect.md) | 218 | `result-track:e53331ee96496416f998cdab405192307f117fecb294b5998b99614b19083305` |
| 27 | `theorem` | [actual_sourceQuadraticValue_eq_budget_add_phaseDefectMass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/actual-sourcequadraticvalue-eq-budget-add-phasedefectmass.md) | 233 | `result-track:afc7aaacb3b144a612c4f071f769c071a8946fd89662fd61d3b3b786e6636dba` |
| 28 | `theorem` | [actual_archimedeanDensity_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/actual-archimedeandensity-integrable.md) | 242 | `result-track:f0513e0b4ba795ad7b47ee7e1520d6956eb828a7ead9cb60c339399ea44839dc` |
| 29 | `theorem` | [actual_spectralMultiplier_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/actual-spectralmultiplier-integrable.md) | 250 | `result-track:cf9cb94778ad8979a7b3d7342219a5b02a37eed8f6cc51b338831d9b3f1b79d9` |
| 30 | `theorem` | [actual_sourceQuadraticValue_eq_spectral_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ResultsAlternative18.lean/declarations/actual-sourcequadraticvalue-eq-spectral-integral.md) | 261 | `result-track:e01b77a9a56e3d5929f1290ae3b39bcb0fcd688f3dd40a351762550f7a44e201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef298cdb1ecc2ed1e1427ac46e2daf22512ffeffc3b2a927d379c5617837b8bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
