# Verification target: GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc9f1b27c8350304ca5ae7a1476f1a366df326e6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/PrimeFilterEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc9f1b27c8350304ca5ae7a1476f1a366df326e6`.

Source path: `GRWTSK/NumberTheory/Moebius/PrimeFilterEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/PrimeFilterEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeFactorFilters`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeFactorFilters.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PolynomialEnergyCriterion.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noteEnergy](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/noteenergy.md) | 15 | `declaration-track:ce33406ef19e553481b6e5dd4a7c700e8593c408d00b9469e6b3aacc257abae3` |
| 2 | `def` | [noteCorrelation](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/notecorrelation.md) | 17 | `declaration-track:5b529f8cf9d00d5cf5223b706d2845447a02222659d7e3c01b935f2d45103980` |
| 3 | `theorem` | [noteCorrelation_zero_before](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/notecorrelation-zero-before.md) | 20 | `result-track:7f4942c45299a03503c5ce6f15f0f168604dd04655265ac333ef2bf222425dbb` |
| 4 | `theorem` | [causalShift_continuous](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/causalshift-continuous.md) | 32 | `result-track:e06d726133fa68b2b62e4256dda2bbab3bc848d3b9e6ad713d419f8f19496521` |
| 5 | `theorem` | [primeNoteCascade_continuous](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/primenotecascade-continuous.md) | 40 | `result-track:490ab1483ad824409102bf9bb1bf2dec597f042d6e7ea7b8a0c41f1ba754d2a7` |
| 6 | `theorem` | [primeNoteCascade_zero](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/primenotecascade-zero.md) | 47 | `result-track:c2fed2421c67dcbf3cfd3c8614f7122aa020f8a8c488e1aab4fe555d21317f86` |
| 7 | `theorem` | [primeNoteCascade_negative](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/primenotecascade-negative.md) | 60 | `result-track:9a2400410679c406af1b41dafcaf5c46b448ead0bf1853869bd6069b5be95dc4` |
| 8 | `theorem` | [noteEnergy_nonneg](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/noteenergy-nonneg.md) | 68 | `result-track:45fa927ef6af3c48f5dd78ca2a14ff5b7ee531a13c627adb6880c5c5eca1b4eb` |
| 9 | `theorem` | [noteEnergy_mono](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/noteenergy-mono.md) | 71 | `result-track:d2f67854a8b624b92eee7bb46f429770da4c9dd1986ee301ac78e89644f859d5` |
| 10 | `theorem` | [causalShift_energy](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/causalshift-energy.md) | 78 | `result-track:a3a4196bbb0492a606376ce2bc2524ab1daf21197f3e42ec3ee30c37609472ad` |
| 11 | `theorem` | [energy_after_prime_filter](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/energy-after-prime-filter.md) | 125 | `result-track:cd5473977f402660d597284fe323de0b59378aae5d4b87caa9a288976c44b99c` |
| 12 | `theorem` | [energy_after_prime_insertion](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/energy-after-prime-insertion.md) | 159 | `result-track:4a26bcb12c43fc1e3bf2ef9759a916e55e02cc75fa6e8740b1a7da02abb87cad` |
| 13 | `theorem` | [pickupEnergy_eq_cascade_energy](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/declarations/pickupenergy-eq-cascade-energy.md) | 167 | `result-track:23fd1e7e743316374d76d4708ee9e419258c33f91fa5d90bcedeaf4bf0236cf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e6ad130d60d103d68ddd9eb810132e42a8e4204a93aef780579e534857c9c9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/PrimeFilterEnergy.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/PrimeFilterEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
