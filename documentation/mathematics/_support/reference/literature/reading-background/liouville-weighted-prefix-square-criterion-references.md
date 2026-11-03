# Literature and formalization ledger: weighted Liouville prefix-square criterion

## RH-LIOUVILLE-WEIGHTED-PREFIX-SQUARE-01

- **Title, attribution, date:** *Weighted Liouville prefix squares: an exact Hardy route to uniform causal energy*, grwtsk contributors, 2026-10-31.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Lean source candidate:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixSquareCriterion.lean`, Git blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`, SHA-256 `bb76a97ae1fc14f64c688937cf2a29d22ebd8426a4af7c0b58902f7bcd2a8087`.
- **Mathematical review:** `documentation/mathematics/_support/reviews/liouville-weighted-prefix-square-criterion.md`, Git blob `3607eb5d88ee06df18a6ed5cceecf74bd1ddc131`.
- **Static verification target:** `documentation/mathematics/_verification/targets/liouville-weighted-prefix-square-criterion.json`, Git blob `1f3b12107ffedaff09615b275679d2dbad9e01fe`.
- **Exact local predecessors:** `LiouvilleCausalEnergyTarget.lean` blob `a00aaa07c067b4c88203372870b5d5d151de0de4`; `MoebiusEndpointSparseGapAllRate.lean` blob `a8216e7e18982dce97bacb8d42d301a022f4f28e`; growing-prime-free VK review blob `6ca7dd92de09bff6b72fdc462d6ffbfde23bf0fa`.
- **Classical background:** Cauchy--Schwarz/Hardy integral inequalities; Titchmarsh's discussion of the stronger weak Mertens mean-square hypothesis; classical RH consequences for Liouville summatory functions. No new general RH criterion is claimed.
- **Exact mathematical scope:** with `L(x)=sum_{n<=x} lambda(n)`, the unchanged causal response satisfies `H_lambda(T) <= (T^2/2) integral_1^(exp T) L(x)^2/x^2 dx`. Every-positive-rate control of this weighted moment implies the original uniform causal energy with explicit constant `4*A_(epsilon/2)/epsilon^2`. At integer `N`, the moment is exactly `sum_{k<=N} L(k)^2/[k(k+1)]` and a complete terminal-weighted all-shift Liouville correlation.
- **Quantitative obstruction:** the current Vinogradov--Korobov input yields only `exp(T-c Phi(T))`, and `(1-delta)T-c Phi(T) -> +infinity` for every fixed `delta<1`; the averaged supplier is not discharged.
- **Formal proof boundary:** the source proves only the constant assembly from named suppliers. Moment nonnegativity, the Abel--Hardy transfer, continuous/discrete identity, complete shift identity, and dyadic-to-continuous transfer remain named propositions rather than axioms or accepted theorems.
- **Verification:** source inspection `DONE`; mathematical derivation `WRITTEN`; compilation, expected interfaces, fresh-kernel replay, transitive axiom audit and native execution all `NOT_RUN`; weighted-prefix supplier, uniform energy and RH remain `UNPROVED`.
- **Repository status:** published directly on existing `grwtsk/math/main` through a guarded non-force update preserving concurrent history. Publication is not proof acceptance.
