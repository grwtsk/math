# Literature ledger shard: terminal anti-diagonal localization of the Möbius endpoint

## RH-MOEBIUS-ENDPOINT-TERMINAL-GAP-01 (2026-10-31)

- **Attribution:** grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **New source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointTerminalGapLocalization.lean`.
- **Review:** `documentation/mathematics/_support/reviews/moebius-endpoint-terminal-gap-localization.md`.
- **Exact source retained:** the original Möbius coefficient, `CCC.pickupResponse`, `pickupResponseGram`, complete ordered `pickupCross`, and `PickupEndpointQuadrature.endpointSum`.
- **New source-specific estimate:** if `N=floor(exp T)`, `2*M<=N`, and the ordered additive distance is at least `N-M`, then the complete terminal sector has absolute value at most `16*sqrt(2)*M^(7/2)/N^(5/2)`. With `M=floor(exp(2T/3))` the cost is at most `128*exp(-T/6)` eventually.
- **Exact consumer reduction:** small gaps, the terminal anti-diagonal, and a signed middle complement reconstruct the complete endpoint cross. For rate `epsilon`, only gaps between `exp(epsilon*T/4)` and `N-exp(2T/3)` remain arithmetically unresolved.
- **External comparison:** Jizhou Guo, *Logarithmic Chowla Correlations Across All Shift Scales*, arXiv:2608.23500v4, especially fixed-moment shift-window Theorems 1.2--1.4; Scott D. Hughes, *Effective logarithmic two-point Chowla bounds in every window*, arXiv:2609.28526; OpenAI fixed-affine ordinary two-point comparator at commit `4eaee87548250b2682affda7d05d947c05554bae`. These works are not asserted to prove the signed middle-gap supplier.
- **Moment obstruction:** bounded normalized fixed moments permit the constant positive packet family and therefore do not control a signed outer sum over exponentially many gaps. A source identity with outer-shift cancellation is still required.
- **Verification:** source proof candidate and written mathematical derivation only. Compilation, exact expected interfaces, fresh-kernel replay, native execution, external theorem replay, and transitive axiom audit are `NOT_RUN`. No complete endpoint estimate, uniform energy theorem, or RH proof.
- **Canonical ledger:** this source-complete shard is additive. The historical `paper-to-formalization-references.md` monolith is not replaced from partial connector output.
