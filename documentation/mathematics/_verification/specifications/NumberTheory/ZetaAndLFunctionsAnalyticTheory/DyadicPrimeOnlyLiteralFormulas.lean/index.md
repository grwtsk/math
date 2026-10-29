# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyLiteralFormulas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62de5142c35b41848a78f3856b491b7158fcc847",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyLiteralFormulas.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62de5142c35b41848a78f3856b491b7158fcc847`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyLiteralFormulas.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyLiteralFormulas.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPrimeOnlyCoordinateCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coefficient_eq_log_div_of_prime](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/coefficient-eq-log-div-of-prime.md) | 42 | `result-track:9ac71f8507d5d8ab719447ce89549242bc4caf513a1a5bf9cf7abadeebd58192` |
| 2 | `def` | [primeWindowHarmonicLogMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primewindowharmoniclogmass.md) | 48 | `declaration-track:3789eac25999a25122bd1cb28705a24ea536b615dc6103668f173211e541dfa8` |
| 3 | `def` | [primeWindowLogMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primewindowlogmass.md) | 52 | `declaration-track:493cff2d2598d8e0d5e816002ea5ee4598471fd6ef23770e70702485c2a30e70` |
| 4 | `theorem` | [primeOnlyMass0_eq_harmonicLogMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primeonlymass0-eq-harmoniclogmass.md) | 55 | `result-track:44ac5380b03e5947f66852f493b7d323ca0bdbb7544620162f790f04137bfc67` |
| 5 | `theorem` | [primeOnlyMass1_eq_logMass_div_sub_harmonic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primeonlymass1-eq-logmass-div-sub-harmonic.md) | 66 | `result-track:755f4ecab51f0b6cd5bb3d1b480ae96eb29dd0b9a4ee51618764080aa67a66a9` |
| 6 | `theorem` | [primeOnlyMass0_add_mass1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primeonlymass0-add-mass1.md) | 95 | `result-track:2b1527deccb111a1cf24798d648f030ca5791948fb3641f1d5f5cb073c296481` |
| 7 | `theorem` | [primeWindowLogMass_eq_theta_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primewindowlogmass-eq-theta-sub.md) | 104 | `result-track:799c650b12be0a7605d577d6a9f16f3125bc74e1724a910c71438e9d427e6c01` |
| 8 | `theorem` | [primeOnlyMass0_add_mass1_eq_theta_increment](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primeonlymass0-add-mass1-eq-theta-increment.md) | 133 | `result-track:da4c91144ccc80db60b8485097cd6d2762050c33d437682a170a38147b87a5ee` |
| 9 | `def` | [primeLogWeightedDFTPhaseSum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primelogweighteddftphasesum.md) | 142 | `declaration-track:0b5b1686dfdc8b6e1cd8e93813d2f85e82d726abb21563985de6a868d6b12cb4` |
| 10 | `def` | [primeLogWeightedMassComplex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primelogweightedmasscomplex.md) | 148 | `declaration-track:eb5b65afaed673813264ed505e15a84ea7ad025ed20b6638ec120e5ace1e1221` |
| 11 | `theorem` | [greenPrimeOnlyDFTPhaseSum_eq_logWeighted](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/greenprimeonlydftphasesum-eq-logweighted.md) | 152 | `result-track:9324c436d86096c0052eebd5593421b9406fb0c5ca0c27a9ac50deb2067ded51` |
| 12 | `theorem` | [greenPrimeOnlyWindowMassComplex_eq_logWeighted](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/greenprimeonlywindowmasscomplex-eq-logweighted.md) | 163 | `result-track:27ee764e23270c96ce25a0cbd7b054cb5b03dc645c0590517ca07aa79656e92a` |
| 13 | `def` | [primeLogWeightedDFTDiscrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/primelogweighteddftdiscrepancy.md) | 174 | `declaration-track:75553a5ba3d8dc948ef7fe227c2e8a24d5576a756511fb66d398ab986f835aad` |
| 14 | `theorem` | [greenPrimeOnlyFourierPrimeCoordinate_eq_logWeightedDFT](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/greenprimeonlyfourierprimecoordinate-eq-logweighteddft.md) | 179 | `result-track:5dcebfb5fc557584d2cbd80883adc47da5ff60130a082f22ed4464cea0695389` |
| 15 | `theorem` | [greenPrimeOnlyArithmeticFourierCoordinate_eq_literal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/declarations/greenprimeonlyarithmeticfouriercoordinate-eq-literal.md) | 189 | `result-track:ca9da7828aedfffce8dd9236e768abb60d961d454920de33b990561768c7e9ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f291967b37c3ada4ce61af709c0ca8a79d679f07b0e472e2efcf0d76d203562 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyLiteralFormulas.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyLiteralFormulas.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
