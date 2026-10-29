# Verification target: Prime Fin Prime Factors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2b24d6d23b4c1a4534d32b68f54bfe795c026e0",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variantfa1c9732a8e688ff205d651a06d66398278e92aecdf4ce1634705c2784705cea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2b24d6d23b4c1a4534d32b68f54bfe795c026e0`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variantfa1c9732a8e688ff205d651a06d66398278e92aecdf4ce1634705c2784705cea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeFin/Variantfa1c9732a8e688ff205d651a06d66398278e92aecdf4ce1634705c2784705cea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Infinite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_setOf_prime](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/infinite-setof-prime.md) | 23 | `result-track:6628e381858579c93813b6be8d6ebd3d0b4f64b8460402bb54911b073ab20922` |
| 2 | `instance` | [Primes.infinite](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primes-infinite.md) | 26 | `declaration-track:1bc3ff7e5c42b2f4909140bf01489d4518edc84393f4f9c25729ba417f14295a` |
| 3 | `instance` | [Primes.countable](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primes-countable.md) | 28 | `declaration-track:12a6ba4916d0cb2af689428288ce7e6f81c1424a9a478ef23d390bc8d50cf179` |
| 4 | `def` | [primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors.md) | 31 | `declaration-track:5ad9d6d91c80eafbbe6c60773f0a46488a9f273935dcaf574a46b089e4bbfe3a` |
| 5 | `lemma` | [toFinset_factors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/tofinset-factors.md) | 33 | `result-track:a7bdaebf27d7114809170d413a7aee07341da6d36574068f42c08ca088475a5b` |
| 6 | `lemma` | [mem_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/mem-primefactors.md) | 35 | `result-track:c88c35b02a67d20f30d592823475d0d389fa96955dc1e7aeab2cf27181bb36e3` |
| 7 | `lemma` | [mem_primeFactors_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/mem-primefactors-of-ne-zero.md) | 38 | `result-track:e5165cb506fa8c48667cfa8b13a0dc4be4f297020b0923993f11c9c34b3af5b2` |
| 8 | `lemma` | [primeFactors_mono](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-mono.md) | 41 | `result-track:f09528cd4b285cd2f05bb47fe432f6c9a8f26aedd91e2161e6b5e6493628e3af` |
| 9 | `lemma` | [mem_primeFactors_iff_mem_primeFactorsList](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/mem-primefactors-iff-mem-primefactorslist.md) | 45 | `result-track:d054164937f1591ee28ce486f23d8843e753a04c7e00e211b7638656ba18f239` |
| 10 | `lemma` | [prime_of_mem_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/prime-of-mem-primefactors.md) | 48 | `result-track:3cb641f984454bd07bebd3e717150e5b0a43fe65bbf6c78e3a121db9e2e34273` |
| 11 | `lemma` | [dvd_of_mem_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/dvd-of-mem-primefactors.md) | 49 | `result-track:7d275768d1cc0a026f0fb88833c0c72f0b35407c351c2d3938ac1663559eec20` |
| 12 | `lemma` | [pos_of_mem_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/pos-of-mem-primefactors.md) | 51 | `result-track:2cbad797be76d8a6b0634826f1cb63d2c7743b7bb8b5db24acd5d7990517314c` |
| 13 | `lemma` | [le_of_mem_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/le-of-mem-primefactors.md) | 54 | `result-track:22727f0976246ed8bd50ed8a29ca2e67fbd58c4bb341639db2de968613f1d8e4` |
| 14 | `lemma` | [primeFactors_zero](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-zero.md) | 57 | `result-track:6f3f521e6c620859f25037fce508468f4332d1c50ffbff955e199b031d1fccd1` |
| 15 | `lemma` | [primeFactors_one](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-one.md) | 61 | `result-track:88b5342eb19c18572d1c1c39e8dfba4cf11feec037da43173e4aa98fe3f35393` |
| 16 | `lemma` | [primeFactors_eq_empty](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-eq-empty.md) | 65 | `result-track:26379108c67bc80a725ab9ad8cd42d8d440f1056189a974d1d40bd8dd0974fe9` |
| 17 | `lemma` | [nonempty_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/nonempty-primefactors.md) | 74 | `result-track:d70835b4cd3374b20b399aca02f750366a6e1f77a82b7aa92b419bec62a16737` |
| 18 | `lemma` | [Prime.primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/prime-primefactors.md) | 78 | `result-track:f8169bcc2c0f8ef8dbcd62d6ff0f446c372cda8c017fbdbd653b7c4d16e44d3b` |
| 19 | `lemma` | [primeFactors_mul](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-mul.md) | 81 | `result-track:2b2fdd20d8678eb83e06ea68fe196b91fad3f2c6c8f6fdf8fe5ae2a09c396165` |
| 20 | `lemma` | [Coprime.primeFactors_mul](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/coprime-primefactors-mul.md) | 86 | `result-track:dcf7c23a2dabbc651153ed1e714c31c7fb542dff0ec7684eefe7c71a13db345d` |
| 21 | `lemma` | [primeFactors_gcd](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-gcd.md) | 90 | `result-track:30f1627cce410d4455988b27635ff48f545e83106b9acb8af11abd85bb96d0ed` |
| 22 | `lemma` | [disjoint_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/disjoint-primefactors.md) | 94 | `result-track:57543dd552a72bd32304c044cb214dbd9dae07319898503be66fcd43d501176f` |
| 23 | `lemma` | [Coprime.disjoint_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/coprime-disjoint-primefactors.md) | 99 | `result-track:ff9b4677ac8065dc84b467b136e50e706128f3ef1e7f8499a6a8ba30dfde4327` |
| 24 | `lemma` | [primeFactors_pow_succ](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-pow-succ.md) | 103 | `result-track:d21b76dd279bf332de65c97443e1cd7dc4541d77fd657eda3fdd2ba2445c27bf` |
| 25 | `lemma` | [primeFactors_pow](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-pow.md) | 110 | `result-track:1546f913503e8adf413a95f5dd0b7a9e7445055e0fb5b4b1be6c366b06332c29` |
| 26 | `lemma` | [primeFactors_prime_pow](../../../../../NumberTheory/ElementaryNumberTheory/PrimeFinPrimeFactors.lean/declarations/primefactors-prime-pow.md) | 116 | `result-track:6db7561b8d23b4be5ab559a3e8a54c221bf38527a34615feba6c7bd185a6e1f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a374b3ad83ae025f75b533166a4dd89e3b9955efcbfce1990ed5476e15253f16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variantfa1c9732a8e688ff205d651a06d66398278e92aecdf4ce1634705c2784705cea.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/PrimeFin/Variantfa1c9732a8e688ff205d651a06d66398278e92aecdf4ce1634705c2784705cea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
