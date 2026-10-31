# Literature ledger shard: obstruction analogues for Liouville causal energy

## RH-LIOUVILLE-OBSTRUCTION-CONNECTIONS-01 (2026-10-31)

- **Local title/byline:** *Formal obstruction analogues for the Liouville
  causal-energy programme*, grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Local source base:** `grwtsk/math@1c09200e05209c39c4ac901faa817e1d21e38373`,
  tree `43eb1f33abcba5d351d3c0eda0de9e7a0ebee544`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleObstructionConnections.lean`.
  It formalizes seven logical obstruction classes, exact evidence-status
  separation, an additive global-potential telescope, and the current-source
  predicates `SubexponentialConditioning`,
  `CompleteBuchstabNegativePartBound`, and `TypeIIBuchstabBridge`.
- **Local proved scope:** unsigned observations do not determine signs;
  pointwise constants do not imply a uniform family constant; one good scale
  does not imply all-scale control; an indefinite nonnegative correction
  improves a one-sided upper bound; one positive rate does not imply every
  positive rate; an additive potential telescopes.
- **Open local bridges:** `TypeIIBuchstabBridgeImpliesPaidSupplier` and
  `TypeIIBuchstabBridgeImpliesUniformEnergy` remain propositions, not
  theorems or axioms. No actual Type-II, Chowla, entropy, or global-potential
  estimate for the Liouville Buchstab covariance is supplied.
- **Selberg-sieve formalization:** Mathlib at
  `d13f23b723b8a846827a245b89c10fc7d3f11612`,
  `Mathlib/NumberTheory/SelbergSieve.lean`, blob
  `29f3dc9e9e53e9e429df6c862714cf8327a2b554`, by Arend Mellendijk.
  Exact use: nonnegative upper-bound sieve, Lambda-squared construction, and
  main-term diagonalization. No parity-breaking prime lower bound is inferred.
- **Sieve-parity background:** Kevin Ford and James Maynard,
  *On the theory of prime producing sieves* (2024), arXiv:2407.14368.
  Exact use: Type-I/Type-II and rough modified-Liouville parity context.
  It is not imported as a Lean theorem and is not claimed to prove the local
  causal covariance estimate.
- **Ordinary two-point formalization:** `openai/math` at
  `4eaee87548250b2682affda7d05d947c05554bae`;
  comparator blob `8764f91cc16967f765b4f19c4378ff8fb5f29cd0`,
  solution blob `2bd48811e73bbdc80c1f738fa889a14189186408`,
  scope document blob `dad638d19609ebbddc93a5594dfc2ecd2a26a7a6`.
  Exact use: fixed nonproportional affine forms with a logarithmic saving and
  form-dependent implied constants. Missing bridge: explicit summable
  dependence for the growing prime/cutoff/descendant family in the physical
  Buchstab covariance.
- **Erdos discrepancy:** Terence Tao, *The Erdős discrepancy problem*,
  Discrete Analysis (2016), arXiv:1509.05363. The pinned Formal Conjectures
  statement is
  `google-deepmind/formal-conjectures@b6939a3a0d89e5f999fa8c6483a6ef646c1e2923`,
  `FormalConjectures/ErdosProblems/67.lean`, blob
  `1502ac6a160ce32dfb39f387dad02386df60d194`; both headline proof bodies
  remain `sorry`. Exact use: existential-consumer versus all-scale-consumer
  quantifier comparison, not a transfer of theorem acceptance.
- **Zeta23 formalization:** Levent Alpöge and Ralph Furman,
  *More than two thirds of the zeta zeros are simple and on the critical line*
  (2026), arXiv:2608.13637; formal source
  `anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
  `zeta23/README.md` blob `302fa9094863279d0ec83fca012d2b7bf59d5ccd`.
  Exact use: rank--trace/inertia and method-ceiling analogy for retaining an
  indefinite signed certificate. A zero-proportion theorem is not promoted
  to RH or to the all-positive-rate Liouville estimate.
- **Quasi-RH formalization:** `openai/math@4eaee87548250b2682affda7d05d947c05554bae`,
  `lean/docs/003.md`, blob `cf794e93da2e1a494434153f5b91f2990fe9fd60`.
  Exact use: one fixed zero-free exponent versus the required all-positive-rate
  family. No exponent bootstrap is inferred.
- **PFR formalization:** Gowers, Green, Manners, and Tao,
  *On a conjecture of Marton* (2023/2025), arXiv:2311.05762;
  `teorth/pfr@7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f`,
  `PFRPalomar/Solution.lean` blob
  `4d49574ba10382abfe9fdd319b70a857e8842e14`,
  `PFR/RhoFunctional.lean` blob
  `af3f89faaf4f12edd2ec9796b93ae77474a99c70`,
  README blob `6ada80d876476dd76a29ea76b8334290dc50c660`.
  Exact use: global entropy/Ruzsa-potential amortization as a method model.
  No Liouville potential is imported or asserted to exist.
- **Radical-log API boundary:** the project note records
  `sum_{p|q} log p = log(rad(q))`, locates
  `Nat.radical_eq_prod_primeFactors`, and leaves product-cast and
  `Real.log_prod` normalization obligations explicit. This is classified as
  an API/formalization obstruction, not arithmetic cancellation.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NATIVE_EXECUTION_NOT_RUN`.
  Upstream build or Comparator reports are not transferred as local receipts.
- **Open arithmetic:** construct a subexponentially conditioned cutoff family
  and control the negative part of the complete signed Buchstab covariance
  after the full prime sum, preserving closed descendants, repeated prime
  powers, rough survivors, birth collars, and exact inverse conditioning.
- **Canonical ledger:** this exact shard is stored in the canonical
  reading-background directory. The monolithic
  `paper-to-formalization-references.md`, blob
  `07460c99b61213ed2bd7258bde31a558824d91ce`, is byte-preserved because the
  available source path does not provide a safe source-complete append.
