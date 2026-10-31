# Literature ledger shard: Putnam-style endpoint counting with Gram energy

## RH-MOEBIUS-ENDPOINT-PUTNAM-ENERGY-COUNTING-01 (2026-10-31)

- **Attribution:** grwtsk contributors.
- **New source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamEnergyCounting.lean`.
- **Review:** `documentation/mathematics/_support/reviews/moebius-endpoint-putnam-energy-counting.md`.
- **Static target:** `documentation/mathematics/_verification/targets/moebius-endpoint-putnam-energy-counting.json`.
- **Exact inherited source:** the literal Möbius response Gram and endpoint cross from `MertensPrimitive.lean`; the endpoint approximation from `PickupEndpointQuadrature.lean`; the diagonal bound and good-scale return from `GoodScaleEnergyCriterion.lean`; the prior small-gap and terminal anti-diagonal localizations from `MoebiusEndpointGapLocalization.lean` and `MoebiusEndpointTerminalGapLocalization.lean`.
- **New programme-specific estimate:** for any finite set `A` of additive gaps, the complete ordered actual endpoint packet satisfies `|X_A(T)| <= 2*|A|*pickupDiagonal(T) <= 4*|A|*T^2`. The gap magnitudes are unrestricted. The proof uses the literal two-vector Gram Young inequality and the count of at most two neighbours per selected gap.
- **New terminal source estimate:** after excluding any selected gap set, every pair touching one of the final `M` births satisfies `|X_birth_outside(A,M,T)| <= 16*M^3/floor(exp T)^2` when `2*M <= floor(exp T)`. At `M=floor(exp(2T/3))` this is eventually at most `64`.
- **Consumer reduction:** with the rate gap set `{1,...,floor(exp(epsilon*T/2))}` and the terminal birth width above, both counted sectors are all-positive-rate. The remaining supplier is the complete signed core with large gap and both indices below the terminal strip.
- **Method boundary:** a complete positive Gram on a dense regular graph saturates the degree-times-diagonal-energy factor. This is an abstract method obstruction, not a Möbius counterexample.
- **External comparison:** Jizhou Guo, *Logarithmic Chowla Correlations Across All Shift Scales*, arXiv:2608.23500v4 (2026), gives a full-shift logarithmic theorem outside an exceptional set sparse by every fixed power of `log x`; such a set can still have exponential cardinality at `x=exp T`. Scott D. Hughes, *Effective logarithmic two-point Chowla bounds in every window*, arXiv:2609.28526 (2026), remains logarithmically averaged. OpenAI's fixed-form ordinary two-point theorem at commit `4eaee87548250b2682affda7d05d947c05554bae` has form-dependent constants. None is asserted to prove the signed dense-core endpoint supplier.
- **Novelty boundary:** finite graph degree counting and Gram Young inequalities are elementary. The local contribution is their exact embedding into the unchanged causal endpoint source, the arbitrary-gap cardinality bound, the full terminal-birth-strip estimate, and the resulting rate-localized core.
- **Verification:** `SOURCE_PROOF_CANDIDATE`; compilation, exact expected types, fresh-kernel replay, native execution, external theorem replay, and transitive axiom audit are `NOT_RUN`. No complete endpoint estimate, uniform causal-energy estimate, or RH theorem is claimed.
- **Canonical ledger:** this source-complete shard is additive. The monolithic `paper-to-formalization-references.md` is not replaced from partial connector output.
