# Liouville weighted-prefix channel criterion equivalence — source ledger shard

- **Title, attribution, date:** *The generalized channel certificate is exactly the discrete weighted-prefix target*, grwtsk contributors, 2026-10-31.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Lean source candidate:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixChannelCriterionEquivalence.lean`.
- **Mathematical review:** `documentation/mathematics/_support/reviews/liouville-weighted-prefix-channel-criterion-equivalence.md`.
- **Static verification target:** `documentation/mathematics/_verification/targets/liouville-weighted-prefix-channel-criterion-equivalence.json`.
- **Exact local predecessors:** arbitrary-channel Liouville return blob `8d3868eac539f2e1a7664973f5fd27da3254a918`; generic finite covariance blob `1e88479b60ade504d9da34a700f8a75d1d6d6991`; weighted-prefix criterion blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`.
- **Mathematical scope:** the singleton channel has count at most one, zero cross-channel residual, and channel energy equal to the original discrete weighted-prefix square. Hence its dynamic channel certificate is equivalent to the discrete target.
- **Boundary:** this is a method-equivalence result, not new Liouville cancellation. The continuous weighted-prefix supplier, uniform causal energy and RH remain open.
- **Verification:** source inspection `DONE`; derivation `WRITTEN`; compilation, expected types, fresh kernel, transitive axiom audit and native execution `NOT_RUN`.
