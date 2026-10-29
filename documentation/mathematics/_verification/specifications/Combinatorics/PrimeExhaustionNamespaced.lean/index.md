# Verification target: Prime Exhaustion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19a5127f758ad9a5a0d7f78daac91c036cc2fe1a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variant384323ded6db832f6da4c7f7f83ce7a4bba1e13c8eab5e86a6bc7c222cdddcb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19a5127f758ad9a5a0d7f78daac91c036cc2fe1a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variant384323ded6db832f6da4c7f7f83ce7a4bba1e13c8eab5e86a6bc7c222cdddcb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variant384323ded6db832f6da4c7f7f83ce7a4bba1e13c8eab5e86a6bc7c222cdddcb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primesUpTo](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/primesupto.md) | 26 | `declaration-track:3984ef2d03731e69fdf8881b3d7684e4fb5e360f7860591c15398c6545b584be` |
| 2 | `theorem` | [mem_primesUpTo_iff](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/mem-primesupto-iff.md) | 30 | `result-track:270da9ec3066071f2c48ef5072217da78c4492fcb0eaa7e112aaeee629998978` |
| 3 | `theorem` | [primesUpTo_prime](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/primesupto-prime.md) | 41 | `result-track:bdf9d8891cb71f73e8998637b0b422516eb106c1d06d2d805705e7987dc8d1d7` |
| 4 | `theorem` | [primesUpTo_pos](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/primesupto-pos.md) | 47 | `result-track:26f2744376c531c7dd413c48e61c42056e9e6749abd7f4be75821e4359278e95` |
| 5 | `theorem` | [prime_factor_mem_primesUpTo_of_dvd_le](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/prime-factor-mem-primesupto-of-dvd-le.md) | 53 | `result-track:4d325a1f3ca78713afaa0a7af96443e29a17da5f573f8d73fb82198c590a0923` |
| 6 | `theorem` | [factorization_le_self](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/factorization-le-self.md) | 63 | `result-track:9e1ceb129cd794d8285d6ef69dc1d8c9f8de1527688343ed68e89d9bab642960` |
| 7 | `theorem` | [factorization_support_subset_primesUpTo](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/factorization-support-subset-primesupto.md) | 80 | `result-track:377d7abf120457c9dfdb9880c7dd0e30baede9e35cceef4b20325265fd23549b` |
| 8 | `theorem` | [nat_mem_boundedSmoothNumbers_primesUpTo_self](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/nat-mem-boundedsmoothnumbers-primesupto-self.md) | 95 | `result-track:3514ec259405421bcf94c44679daffd777a31e8802f0736a0e02eb5363a0bcc8` |
| 9 | `theorem` | [Icc_subset_boundedSmoothNumbers_primesUpTo](../../../../Combinatorics/PrimeExhaustionNamespaced.lean/declarations/icc-subset-boundedsmoothnumbers-primesupto.md) | 126 | `result-track:06d3f41b2ea096cc2cc41eaaaf2060e7f38131464a45d2a1c80d98e510c284cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c8749fac8065c2061229cb9b98b25d931eaa3b2aed98a1c30a44f55c0f9672e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variant384323ded6db832f6da4c7f7f83ce7a4bba1e13c8eab5e86a6bc7c222cdddcb0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variant384323ded6db832f6da4c7f7f83ce7a4bba1e13c8eab5e86a6bc7c222cdddcb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
