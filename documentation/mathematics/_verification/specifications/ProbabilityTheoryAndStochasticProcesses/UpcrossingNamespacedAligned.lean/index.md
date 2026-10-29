# Verification target: Upcrossing Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c741b9622b69b07d8b5d36b3fcbbbe7576e4786a",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c741b9622b69b07d8b5d36b3fcbbbe7576e4786a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.Monotone` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Process.HittingTime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowerCrossingTimeAux](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtimeaux.md) | 140 | `declaration-track:3f118c84ccb4d20a31e469a57e8ee4991307a59bc3168044056d7bbe9be478c2` |
| 2 | `def` | [upperCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime.md) | 147 | `declaration-track:7e100ec46ebd33baf0c691c41348bc96abc7016eb40d0411452612640f9d1c7a` |
| 3 | `def` | [lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime.md) | 156 | `declaration-track:060d0cc587c7e28b744a5079a9fcea3b2fa92f8095342694005cbdc10acb3173` |
| 4 | `theorem` | [upperCrossingTime_zero](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-zero.md) | 167 | `result-track:604895d9a3587e9b289d42fa16054ca9ac8d4735b7b518ef98e7274d31b4e5b4` |
| 5 | `theorem` | [lowerCrossingTime_zero](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime-zero.md) | 172 | `result-track:fe0d3e05e23c69c543aab55e20cc0a05747a60a4b6feda112f78b7bec34c0952` |
| 6 | `theorem` | [upperCrossingTime_succ](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-succ.md) | 176 | `result-track:49f1f68e32df4ca73aa14db97f90061672568aa7111a196078f9a24476e0bb4c` |
| 7 | `theorem` | [upperCrossingTime_succ_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-succ-eq.md) | 181 | `result-track:8794b4d5c8b599503c1555a0ed2134f1ab7b12b8ac8340470e46b8fede93b8e4` |
| 8 | `theorem` | [upperCrossingTime_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-le.md) | 195 | `result-track:005140120ca0e1e03632d00ca998ca18926856c45547aa43a4aa019b95004298` |
| 9 | `theorem` | [upperCrossingTime_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-zero-source-edition-2.md) | 202 | `result-track:89a24ebe6b9520ea0ac719a177f8ee0bffe049881fd7b39cc28fbdebdc4cd235` |
| 10 | `theorem` | [lowerCrossingTime_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime-le.md) | 206 | `result-track:bfe2eb065ae783cf229123d5cec92fa90ebe77aaf19576727469b3e276cb70ec` |
| 11 | `theorem` | [upperCrossingTime_le_lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-le-lowercrossingtime.md) | 210 | `result-track:dca40e66261448f3682b808e2db1c9e4824026b26e8bfdadd1e4fba96182374b` |
| 12 | `theorem` | [lowerCrossingTime_le_upperCrossingTime_succ](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime-le-uppercrossingtime-succ.md) | 215 | `result-track:428d93b5ae5e719c616df33462a5e787f17b4f8405158d7e7ba3376e6b4f2b87` |
| 13 | `theorem` | [lowerCrossingTime_mono](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime-mono.md) | 221 | `result-track:984c6350bf7c62f4244322cfbee4f036730242780485b74346babbd2082897fb` |
| 14 | `theorem` | [upperCrossingTime_mono](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-mono.md) | 228 | `result-track:63450e0ae5af1cf8982ebf99112ae0141876bb369e12d33b33f16def6bf76945` |
| 15 | `theorem` | [stoppedValue_lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/stoppedvalue-lowercrossingtime.md) | 239 | `result-track:8ed4b6e5071dbb667061ffdb053aef9749cbbd40dc2de40447e300faf106e3f4` |
| 16 | `theorem` | [stoppedValue_upperCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/stoppedvalue-uppercrossingtime.md) | 245 | `result-track:c51c9c00aaa53efb855d906cd7822e665501f4063390ac379e0d3e86ccf0df7b` |
| 17 | `theorem` | [upperCrossingTime_lt_lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-lt-lowercrossingtime.md) | 251 | `result-track:16155cce54f943335c78713f7048228a670d3a1362466f3eddfa7d3199ae9e12` |
| 18 | `theorem` | [lowerCrossingTime_lt_upperCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime-lt-uppercrossingtime.md) | 261 | `result-track:ce43e0d71a354ebbdcd7e9c3c182c937034825b20bc28c1eb77014509611464c` |
| 19 | `theorem` | [upperCrossingTime_lt_succ](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-lt-succ.md) | 271 | `result-track:06847c872b5795160caa180ddf80c83156f88bab9e8075e94635d91508863953` |
| 20 | `theorem` | [lowerCrossingTime_stabilize](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime-stabilize.md) | 277 | `result-track:4054522ecfd2370b757a496ec868b409f9e2be7234d5dc1e326cfd43ea929780` |
| 21 | `theorem` | [upperCrossingTime_stabilize](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-stabilize.md) | 282 | `result-track:21ea6187054c9bbabdeac5270bff3207e92dd80f4dbcbbcde5d240863b080c5c` |
| 22 | `theorem` | [lowerCrossingTime_stabilize'](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime-stabilize-source-edition-2.md) | 287 | `result-track:c75b9001c752b9873db9475b5ceb6b1f46f82b7c9a65cec057dc4e243a1d102a` |
| 23 | `theorem` | [upperCrossingTime_stabilize'](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-stabilize-source-edition-2.md) | 292 | `result-track:67a48579a256a522e5e1c2f871790dda5f0772484a866d9d6892bb83333468b4` |
| 24 | `theorem` | [exists_upperCrossingTime_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/exists-uppercrossingtime-eq.md) | 298 | `result-track:145222c2f5605d41a20121fa27856e964d27dfa07dcbf333328ae5b825f945c1` |
| 25 | `theorem` | [upperCrossingTime_lt_bddAbove](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-lt-bddabove.md) | 310 | `result-track:93de7bf357642c56a08d04ffa841c7b63909900d5736b8c08193d9c6d10b0db4` |
| 26 | `theorem` | [upperCrossingTime_lt_nonempty](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-lt-nonempty.md) | 318 | `result-track:8982f4f1a66cb6e04d5b5e2f45f5e9b84479a73cc0dbdb0f5cd50a4fddbaa201` |
| 27 | `theorem` | [upperCrossingTime_bound_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-bound-eq.md) | 323 | `result-track:c35d61b50ee0d61363cdada213731dfcebd5524cdf71ca81ec6be8113b838096` |
| 28 | `theorem` | [upperCrossingTime_eq_of_bound_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-eq-of-bound-le.md) | 337 | `result-track:98d985ea6f8794685625095ede058b03dc7ec2af8ae0cca3f643b322d81a2bb8` |
| 29 | `theorem` | [Adapted.isStoppingTime_crossing](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/adapted-isstoppingtime-crossing.md) | 345 | `result-track:d7034ee05d6d97f152f090f5b9ad492f14eb0e5f53aeff58cc08010823a32d45` |
| 30 | `theorem` | [Adapted.isStoppingTime_upperCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/adapted-isstoppingtime-uppercrossingtime.md) | 363 | `result-track:be12e2d3c5be95c57542f1bf887a90478bf005df5074bc029c1deba919440eec` |
| 31 | `theorem` | [Adapted.isStoppingTime_lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/adapted-isstoppingtime-lowercrossingtime.md) | 368 | `result-track:3c6d0fff24cf8d1a7d45b637dd7665b95b43ea09dfc818c8eaa1865e3139cee9` |
| 32 | `def` | [upcrossingStrat](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingstrat.md) | 376 | `declaration-track:7132cf4dc1149806c9cf878926aae863182425f6f23da5c6912feda817f842c3` |
| 33 | `theorem` | [upcrossingStrat_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingstrat-nonneg.md) | 381 | `result-track:4e06d96270ac9c9160a08ef3b3758c28c2baaef00001856665c51ef98cbd25ce` |
| 34 | `theorem` | [upcrossingStrat_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingstrat-le-one.md) | 385 | `result-track:a11a240a19d78c92065288083daffac1059971ae6d48475b58efff4a07ba95a8` |
| 35 | `theorem` | [Adapted.upcrossingStrat_adapted](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/adapted-upcrossingstrat-adapted.md) | 406 | `result-track:abcf5c3aa83ca9745e0aee58e1bef8f18a54c81469ebe2af30c994623596c13d` |
| 36 | `theorem` | [Submartingale.sum_upcrossingStrat_mul](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/submartingale-sum-upcrossingstrat-mul.md) | 418 | `result-track:bee06fcf5d6aeeea4d162601912d01f2c1ecd076bf47f91d4b3d4dad3aa9b32d` |
| 37 | `theorem` | [Submartingale.sum_sub_upcrossingStrat_mul](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/submartingale-sum-sub-upcrossingstrat-mul.md) | 425 | `result-track:f640953c45a9ec11eaf6cbc83b90fa4cc47abe4190e0114cb0f9c80b32a2ad9e` |
| 38 | `theorem` | [Submartingale.sum_mul_upcrossingStrat_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/submartingale-sum-mul-upcrossingstrat-le.md) | 435 | `result-track:7c574e381e9e607644d65bd757ec5fb2b15e57b3fe240da6f801592dc46a3b68` |
| 39 | `def` | [upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore.md) | 458 | `declaration-track:ae12a86baaf7aa1666662de01e09b27b6a5d4792916371776071636bce115e60` |
| 40 | `theorem` | [upcrossingsBefore_bot](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore-bot.md) | 464 | `result-track:7d2de2a541eb9a30b8c0c41cee16b56b623549a31aadf1199c6367b39acce905` |
| 41 | `theorem` | [upcrossingsBefore_zero](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore-zero-source-edition-2.md) | 468 | `result-track:d75273d4e101d6648bfa5f97422869af08253942409d039cdd8f8f84be97ecef` |
| 42 | `theorem` | [upcrossingsBefore_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore-zero.md) | 472 | `result-track:0f0c3523d2102a883e55dc37949f960129d73d95e164fd91f9c6d65a67f20f0e` |
| 43 | `theorem` | [upperCrossingTime_lt_of_le_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-lt-of-le-upcrossingsbefore.md) | 476 | `result-track:3805d361ae70d1b90bdb293c33d2e4b4ca52aa785edd6bdc6a46838bb36b1bfc` |
| 44 | `theorem` | [upperCrossingTime_eq_of_upcrossingsBefore_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-eq-of-upcrossingsbefore-lt.md) | 484 | `result-track:7de0bd4f845ade8bc34d4918b06865bf9b40d64b99c256b2d86a9f52589759b7` |
| 45 | `theorem` | [upcrossingsBefore_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore-le.md) | 490 | `result-track:9cffcacbf75261fbac86effc7855afb7b93e79fe564dc00069f097aa23627538` |
| 46 | `theorem` | [crossing_eq_crossing_of_lowerCrossingTime_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/crossing-eq-crossing-of-lowercrossingtime-lt.md) | 500 | `result-track:5c1ff8b907489bc49885166134a3493d8faad8f671862bf6d2565096f7589dbe` |
| 47 | `theorem` | [crossing_eq_crossing_of_upperCrossingTime_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/crossing-eq-crossing-of-uppercrossingtime-lt.md) | 529 | `result-track:db82748c5b4a41bf5334cb43df139832548108eedd6bfb0acd570fcc56679783` |
| 48 | `theorem` | [upperCrossingTime_eq_upperCrossingTime_of_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/uppercrossingtime-eq-uppercrossingtime-of-lt.md) | 543 | `result-track:703b2518323c8e4f9a0b4dd7f4cb32ad6d732d5ea399668480f2a9c61c9853a5` |
| 49 | `theorem` | [upcrossingsBefore_mono](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore-mono.md) | 551 | `result-track:1e80735284206e3720a867d980cd3a3c59c5574ee3e250d9eecdec6e6a101095` |
| 50 | `theorem` | [upcrossingsBefore_lt_of_exists_upcrossing](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore-lt-of-exists-upcrossing.md) | 562 | `result-track:9aabf2b2ed70ebb8548b34144e3968d00ce947e02b33b9fd188b899362b4fe5c` |
| 51 | `theorem` | [lowerCrossingTime_lt_of_lt_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/lowercrossingtime-lt-of-lt-upcrossingsbefore.md) | 581 | `result-track:b2cfa56dbca10008c49d5f54ec2022cc56b57d7e5a401a77b36069f0e8eab34c` |
| 52 | `theorem` | [le_sub_of_le_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/le-sub-of-le-upcrossingsbefore.md) | 587 | `result-track:65775f2f555c92deee9c0aa0924fe7d3c793a4c483873a2952deda5b389b7b1e` |
| 53 | `theorem` | [sub_eq_zero_of_upcrossingsBefore_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/sub-eq-zero-of-upcrossingsbefore-lt.md) | 596 | `result-track:799945abd4dfe4524f1379f40098b54269bac9c46663cb6d34ef865ee1a965c1` |
| 54 | `theorem` | [mul_upcrossingsBefore_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/mul-upcrossingsbefore-le.md) | 607 | `result-track:dfe2f08193262b2498e22ddae1c32a81edc3a8b30cdd7607c7951dcaf266bf62` |
| 55 | `theorem` | [integral_mul_upcrossingsBefore_le_integral](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/integral-mul-upcrossingsbefore-le-integral.md) | 663 | `result-track:2e6cd88b8fef16c242aadbb207c488e219ed3c8e8830b0dd9cb13f7816d4193f` |
| 56 | `theorem` | [crossing_pos_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/crossing-pos-eq.md) | 678 | `result-track:222b218c220115c95f947e7a21974b48770df56ea3341fa350f789fd937c66d4` |
| 57 | `theorem` | [upcrossingsBefore_pos_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore-pos-eq.md) | 726 | `result-track:c6ec6086c6aa035de20f0d9ea5716fd4bf18c479b5498f9cf6bf25e30903da3e` |
| 58 | `theorem` | [mul_integral_upcrossingsBefore_le_integral_pos_part_aux](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/mul-integral-upcrossingsbefore-le-integral-pos-part-aux.md) | 731 | `result-track:fb60bbb11edf156c5052bbca01239ed6f88e8f476ae408b43c68989f85dfcd5d` |
| 59 | `theorem` | [Submartingale.mul_integral_upcrossingsBefore_le_integral_pos_part](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/submartingale-mul-integral-upcrossingsbefore-le-integral-pos-part.md) | 746 | `result-track:6c33231080242b1af3ee82e283ba92bc680186f626b6b3296818c9728f72aa25` |
| 60 | `theorem` | [upcrossingsBefore_eq_sum](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossingsbefore-eq-sum.md) | 782 | `result-track:7e0bb5578bec0ce5f993da3ca4adc92815342b19dd831737449cb6ffdd33afd0` |
| 61 | `theorem` | [Adapted.measurable_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/adapted-measurable-upcrossingsbefore.md) | 808 | `result-track:8afc032ec25a6caed44a2f89d681b87d97c8db0ab312a0dacc599c8e3ab326f4` |
| 62 | `theorem` | [Adapted.integrable_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/adapted-integrable-upcrossingsbefore.md) | 819 | `result-track:319d5e75f0dd2e0e71be090023f48ab474667855a1fa6c2cb4992144968ce39c` |
| 63 | `def` | [upcrossings](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossings.md) | 831 | `declaration-track:3089e962dcfbd42fdf96e0b0f477ea262b17b20d1ce16c4a53330af25a7cbfd0` |
| 64 | `theorem` | [Adapted.measurable_upcrossings](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/adapted-measurable-upcrossings.md) | 836 | `result-track:7eebb0f3e8f72ed7f1e8cda82538a48f7c6f4022ec9763d239b741b2334e73d8` |
| 65 | `theorem` | [upcrossings_lt_top_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/upcrossings-lt-top-iff.md) | 841 | `result-track:40b95b2bbd5c847e407111b6ee27ae68dd40fadbd73102e7110adac7c20f52db` |
| 66 | `theorem` | [Submartingale.mul_lintegral_upcrossings_le_lintegral_pos_part](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingNamespacedAligned.lean/declarations/submartingale-mul-lintegral-upcrossings-le-lintegral-pos-part.md) | 860 | `result-track:0bbfe46761f960961f6207583d3c65fcd6f4224f161c1922c615d03ee8d4c65d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8f8308a97f0e76a715bf558a2ce46ce6bb3ccfbf2c7891d0e90a7e311cbac4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
