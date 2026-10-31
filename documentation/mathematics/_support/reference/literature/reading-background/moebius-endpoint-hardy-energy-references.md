# Literature and formalization ledger: endpoint Hardy-prefix energy

## RH-MOEBIUS-ENDPOINT-HARDY-01

- **Title, attribution, date:** *Endpoint Hardy-prefix energy reduction and square-variation obstruction*, grwtsk contributors, 2026-10-31.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Lean source candidate:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointHardyEnergy.lean`, Git blob `2db64804ef020dad509ab68cd44beff04b3fbfa0`.
- **Mathematical review:** `documentation/mathematics/_support/reviews/moebius-endpoint-hardy-energy.md`, Git blob `22caa3d94ea696054419c02f6c6ee30dfd2d6723`.
- **Exact local source boundary:** current `PickupCellQuadratic`, `FiniteResponseSum`, `PickupEndpointQuadrature`, and `MertensPrimitive` sources at parent `a92798f1ee34dc27a3cca84a6d25bd10bcab5e4e`.
- **Historical internal comparison:** square-variation/coherence package commit `5f1ae29c5d19342dd0a6d3796ccc0894c8417a03`; quartic endpoint weighted-square telescope commit `109cb0579deaa7a0a0198f0c6ee7fcb1d5156371`. Their generic ideas are not claimed as new.
- **Exact mathematical scope:** define `x_n=M_n*(n^(-1/2)-(n+1)^(-1/2))`, `Q_n=sum_(k<n)x_k`, `P_K=sum_(n<K)log((n+1)/n)*(Q_n^2+Q_(n+1)^2)`, and the weighted increment variation `V_K`. The literal physical-time energy satisfies `P_K-4V_K <= H(log K) <= 4P_K`; elementary source bounds give `V_K<=1/2`, hence `P_K-2<=H(log K)<=4P_K`.
- **Completion boundary:** a dyadic all-positive-rate bound on `P_(2^j)` is equivalent to the complete endpoint estimate after the existing quadrature, diagonal, monotonicity, and coverage returns. The bound itself is not proved.
- **Method obstruction:** square-mass control of the increments alone cannot bound Hardy-prefix mass. A normalized flat packet has increment square mass one and finite Hardy mass `(L+1)/2`.
- **Formal proof boundary:** `polynomial_step` and `prefix_square_step` have source proof terms. The Abel/birth identities, cell-integral comparison, `V_K<=1/2`, completion equivalence, and flat finite fixture remain named propositions, not axioms or accepted theorems.
- **Verification:** source inspection `DONE`; analytical derivation `WRITTEN`; compilation, expected types, fresh-kernel replay, transitive axiom audit, and native execution all `NOT_RUN`. Complete endpoint control, uniform energy, and RH remain `UNPROVED`.
- **Canonical ledger status:** this source-bound shard is published without reconstructing or replacing a larger ledger from partial connector output.
