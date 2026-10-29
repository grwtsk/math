# Verification target: GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dac989dfd24f1a125653b4dbdb16a9663314610",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/HigherPrimePowers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/HigherPrimePowers.lean/index.md) · [Full source](../../../../NumberTheory/HigherPrimePowers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dac989dfd24f1a125653b4dbdb16a9663314610`.

Source path: `GRWTSK/NumberTheory/Chebyshev/HigherPrimePowers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/HigherPrimePowers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.PowerOccupancy`](../../../../NumberTheory/PowerOccupancy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerBases](../../../../NumberTheory/HigherPrimePowers.lean/declarations/primepowerbases.md) | 29 | `declaration-track:cc1be3f76284d4cb165dcf7e5570880be92ebd2b01ab26ef9d6c666390c9115e` |
| 2 | `theorem` | [mem_primePowerBases_iff](../../../../NumberTheory/HigherPrimePowers.lean/declarations/mem-primepowerbases-iff.md) | 34 | `result-track:2902b272756caef1b8a523c1a8131377c5550132f19b47913c9436cec2d0a578` |
| 3 | `theorem` | [primePowerBases_card_le_one](../../../../NumberTheory/HigherPrimePowers.lean/declarations/primepowerbases-card-le-one.md) | 44 | `result-track:69d63e97560247de520c269e2f82943eef1c6def11e0426198bb0f7cd302d809` |
| 4 | `def` | [exponentCutoff](../../../../NumberTheory/HigherPrimePowers.lean/declarations/exponentcutoff.md) | 54 | `declaration-track:b5a733f8cd30a44f87fae20a209dc49b45f88378b0473478a1c887a4620df206` |
| 5 | `theorem` | [exponent_mul_log_base_le](../../../../NumberTheory/HigherPrimePowers.lean/declarations/exponent-mul-log-base-le.md) | 58 | `result-track:ac82c56908f37668cba253e7c7b545a3e77ea74857c22475bec6e734d4804aef` |
| 6 | `theorem` | [exponent_le_cutoff](../../../../NumberTheory/HigherPrimePowers.lean/declarations/exponent-le-cutoff.md) | 67 | `result-track:f81aaedaff4b4eed5a0ecfabc44a1c929b75c8b0f4e5dfd31a93fdea2e76654c` |
| 7 | `theorem` | [two_le_exponentCutoff](../../../../NumberTheory/HigherPrimePowers.lean/declarations/two-le-exponentcutoff.md) | 77 | `result-track:ad2b82b08984e93db922777bcf3cdeb5edaadcddf365a2d6c40b7d37e1a13f92` |
| 8 | `theorem` | [primePowerBases_eq_empty_above_cutoff](../../../../NumberTheory/HigherPrimePowers.lean/declarations/primepowerbases-eq-empty-above-cutoff.md) | 85 | `result-track:3dcfc7d7bebf2d4a9bf4d35667a8252c90c5e969a325af0074e466f18c8667ba` |
| 9 | `def` | [higherPrimePowerMassUpTo](../../../../NumberTheory/HigherPrimePowers.lean/declarations/higherprimepowermassupto.md) | 93 | `declaration-track:040f168af96f298c11b087230db1982ca4a7abbbc980dde19b3cb161983dbdee` |
| 10 | `def` | [higherPrimePowerMass](../../../../NumberTheory/HigherPrimePowers.lean/declarations/higherprimepowermass.md) | 97 | `declaration-track:d142fa00eb6883e2420403113b41dffda4608a583b14699edd371d1f5c479f8e` |
| 11 | `theorem` | [massUpTo_eq_complete](../../../../NumberTheory/HigherPrimePowers.lean/declarations/massupto-eq-complete.md) | 100 | `result-track:6e8ab83a1e29823d389ecb7b17a084ac19844c93d92d2143ecacc8f8287bced5` |
| 12 | `theorem` | [log_base_le](../../../../NumberTheory/HigherPrimePowers.lean/declarations/log-base-le.md) | 115 | `result-track:23a5339cc8ebc19ec202843c2a9d033882b83fef31c05cef93e0923efcf96175` |
| 13 | `theorem` | [fiber_mass_le](../../../../NumberTheory/HigherPrimePowers.lean/declarations/fiber-mass-le.md) | 122 | `result-track:67b3aad7bf0dc14e84cd0b2db492c010d9893b6e42a72bd325f9be4dc8b7daf0` |
| 14 | `theorem` | [higherPrimePowerMass_nonneg](../../../../NumberTheory/HigherPrimePowers.lean/declarations/higherprimepowermass-nonneg.md) | 140 | `result-track:c255a0e09a66129d1f609c655f5c3161d881808a3acebd9d118529196a456224` |
| 15 | `theorem` | [massUpTo_le_harmonic_sum](../../../../NumberTheory/HigherPrimePowers.lean/declarations/massupto-le-harmonic-sum.md) | 147 | `result-track:0ea06849bf6cfb075841bfae0a79fe2e86b15d8fa26ba1d7b2611e6633932c93` |
| 16 | `theorem` | [harmonic_sum_from_two_le_log](../../../../NumberTheory/HigherPrimePowers.lean/declarations/harmonic-sum-from-two-le-log.md) | 156 | `result-track:775fec7949748308dce0b44f328db33277760ccdb5b114295173fcc88ea503b8` |
| 17 | `theorem` | [higherPrimePowerMass_le_log_budget](../../../../NumberTheory/HigherPrimePowers.lean/declarations/higherprimepowermass-le-log-budget.md) | 171 | `result-track:13a28eb739b4d432b5796909522970bd34d2707cefe81ada512ab08709ad11ca` |
| 18 | `theorem` | [exponent_three_present_control](../../../../NumberTheory/HigherPrimePowers.lean/declarations/exponent-three-present-control.md) | 180 | `result-track:52cc10d77751e807235e9f5186729d9225c618c2949f52d8c9b248eae025be26` |
| 19 | `theorem` | [right_prime_square_present_control](../../../../NumberTheory/HigherPrimePowers.lean/declarations/right-prime-square-present-control.md) | 184 | `result-track:379a38a45b8888b1b57e465edc68dc3f7b2ad9b98454706a66744409c070ee88` |
| 20 | `theorem` | [empty_fiber_control](../../../../NumberTheory/HigherPrimePowers.lean/declarations/empty-fiber-control.md) | 188 | `result-track:f22c897bb34ef60c653e9e603600edbfb7e6801b6add7d3bc6f48bde71f710b6` |
| 21 | `theorem` | [composite_base_duplicate_control](../../../../NumberTheory/HigherPrimePowers.lean/declarations/composite-base-duplicate-control.md) | 192 | `result-track:426b4280fbdfed45fa41019c86f8815f27685cbbc3f71933dc502da33c5114fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fe657eacaf21f3b3750ae206db011a5fea3a2b6f78b2a61bc90ecb898e53a85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/HigherPrimePowers.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/HigherPrimePowers.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
