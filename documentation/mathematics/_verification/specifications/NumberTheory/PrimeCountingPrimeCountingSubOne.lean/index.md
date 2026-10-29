# Verification target: Prime Counting Prime Counting Sub One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7caa306df3db2e323017bffff9b461347b99a25e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/index.md) · [Full source](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7caa306df3db2e323017bffff9b461347b99a25e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Nth` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SmoothNumbers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCounting'](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting-source-edition-2.md) | 45 | `declaration-track:895117f41bc08ba8399504c25800b67416478328f2c8cf8ad714e5354d418c4c` |
| 2 | `def` | [primeCounting](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting.md) | 51 | `declaration-track:6b1d37cf4a3c8eafff5e8e552e080729eb4bba28c64bcd63a77edf69c67a0d1f` |
| 3 | `theorem` | [primeCounting_sub_one](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting-sub-one.md) | 61 | `result-track:4cbd2e27bac60c76dbef69117e9d4e35686049bbeee3a60293d84ffe6587cc61` |
| 4 | `theorem` | [monotone_primeCounting'](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/monotone-primecounting.md) | 64 | `result-track:030c79081d3b21d7379af1e73482778ab1d884cf9f1d0ef0e992ec851838e4cb` |
| 5 | `theorem` | [monotone_primeCounting](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/monotone-primecounting-source-edition-2.md) | 67 | `result-track:43ecd49ac327209616a9a9edd7c4615c53ea85dc396e81655b91cb71d30f1cbb` |
| 6 | `theorem` | [primeCounting'_nth_eq](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting-nth-eq.md) | 71 | `result-track:ac7f6e7e2706761d68bc160872e700976e2373099669f6d7981a34f3db374830` |
| 7 | `theorem` | [add_two_le_nth_prime](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/add-two-le-nth-prime.md) | 75 | `result-track:7b7895257e2240c77fe00e9f397c5fcec6fa32e978efa31e99d1956d2f19d74b` |
| 8 | `theorem` | [surjective_primeCounting'](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/surjective-primecounting-source-edition-2.md) | 78 | `result-track:7ff63a36cae946635584ed64e6345691e015475fc05559764f395ecf90961efd` |
| 9 | `theorem` | [surjective_primeCounting](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/surjective-primecounting.md) | 81 | `result-track:3c9c16a9739417faab344b0bb205ee112a350f649c6cb0ecb20a28042bc1311b` |
| 10 | `theorem` | [tendsto_primeCounting'](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/tendsto-primecounting.md) | 89 | `result-track:b7c8083a7456e2577b5af86ee29f24cb8ddba0cd6579e6af6d644f5c2a306631` |
| 11 | `theorem` | [tensto_primeCounting](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/tensto-primecounting.md) | 93 | `result-track:041663f65410828d4d2a7803f76b431b648e0eb52af749906e41922c4abfa1d0` |
| 12 | `theorem` | [prime_nth_prime](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/prime-nth-prime.md) | 97 | `result-track:c08098874ecb29ba6a058e32170627306b798c37daaae53acf698ac53c788ff7` |
| 13 | `lemma` | [primeCounting'_eq_zero_iff](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting-eq-zero-iff.md) | 101 | `result-track:87b57e220cdba43d6070c2abf2e934b80d881c031e5855de82cea821a382c934` |
| 14 | `lemma` | [primeCounting_eq_zero_iff](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting-eq-zero-iff-source-edition-2.md) | 105 | `result-track:eca5576ac0773b9f083b5b830b978205266470ee02558d53d39364e7a51581c9` |
| 15 | `lemma` | [primeCounting_zero](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting-zero.md) | 109 | `result-track:271f8b6bb12cc0dadb3b0d7d6fc151822aa26723dc40f804bcf01d9096264cc1` |
| 16 | `lemma` | [primeCounting_one](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting-one.md) | 113 | `result-track:2bc73a9513b3fa63ecff55acd24a0e416a90d2bfa2f7a899baad65063f646e1d` |
| 17 | `theorem` | [primesBelow_card_eq_primeCounting'](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primesbelow-card-eq-primecounting.md) | 118 | `result-track:34744742465f62e29bc49992c26d70dc686996b014129d0f7b8096b81f1a1a78` |
| 18 | `theorem` | [primeCounting'_add_le](../../../../NumberTheory/PrimeCountingPrimeCountingSubOne.lean/declarations/primecounting-add-le.md) | 123 | `result-track:6bd5d6ae1c87ef0db79fa7fea0c628a8ed8d1c28e8d32a739b4093a37d6cf75d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9444fd81dbf525164814d44d0278d13a313b6f9ace46a95e21341ba10001d646 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
