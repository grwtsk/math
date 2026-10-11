# Waveform interfaces and remaining obligations

Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex. Classical constructions and direct Mathlib imports retain their origins; no originality claim. Local source is MIT; Mathlib is Apache-2.0.

`Basic.lean`, `Scheduling.lean` and `Interfaces.lean` keep arithmetic pickup, procedural controls and operator potentials distinct. A descriptor names an object; it does not establish its theorem, reconstruction, rights or operational authority.

## Coverage and discrete allocation

A pinned obligation enumeration is serviced through the exact intervals `[S_n,S_(n+1))`. With every batch at least one, `coverage` proves that every index enters a service interval. An unbounded clock alone permits starvation; the counterexample always selects channel zero. For eligibility that changes, a later adapter must prove coverage of every persistently eligible obligation and retain parked obligations. Fairness is conditional on continuing admissible service, rather than successful completion or perpetual authorization.

Use integer quotas with denominator `Q>0`, nonnegative quotas summing to `Q`, and a positive floor for each required channel. Add quotas to accumulated credit, serve a channel with maximal credit, and subtract `Q` from its credit. Any maximal choice satisfies the proof; an executable implementation must pin stable-ID tie breaking. `debt_invariant` and `upper_from_lower` establish `-Q ≤ D_c ≤ (m-1)Q`. `service_bound` proves `N*q_c ≤ Q*count_c(N)+(m-1)Q`; `no_starvation` gives arbitrarily many slots. Independent flooring of positive fractions fails.

The theorem concerns quantized quotas, not an unproved softmax quantizer. Changing the eligible set requires an epoch/credit-transfer policy. A finite machine adapter must additionally prove that intermediate credits, counts and products fit its integer representation; these mathematical integer proofs are not machine-overflow proofs.

## Waveforms and operators

The bounded integer encoding is injective at each coefficient input. The geometrically damped coefficient construction has summable amplitudes and derivative envelope, and a checked continuously differentiable/Lipschitz waveform. Analytic continuation and recovery of the entire sequence from the waveform remain separate. Frequency damping pays the magnitude of each integer frequency; duplicate frequencies can still lose ordering and sign.

Family labels do not establish sampled-potential equality. `SameSampledPotential` requires equality at every integer site, which suffices for equality of the displayed discrete action. `sampled_alias` exhibits distinct formulas with equal samples when frequency and phase are zero. It does not transfer phase-averaged IDS, irrational-frequency hypotheses, or almost-Mathieu-specific results. A bounded self-adjoint operator and unitary-conjugacy adapter still need domains and their proofs. Determinant one holds for every real potential; it supplies no uniform trace bound.

## Fourier, reconstruction and P04

Mathlib's normalized L² transform preserves norms and inner products. The angular convention is `hat f(xi)=F f(xi/(2*pi))`; its measure change introduces `1/(2*pi)`. `angularTransform` defines that rescaling only. `AngularWindowCertificate` requires actual zero extension, integrability, an L² representative, the exact angular kernel and angular Parseval. No certificate is fabricated from the native isometry.

Retain every ordered cross term and its source/sign/phase. The first Hilbert-inner argument is conjugated: a spectral product `hat h_m * conjugate(hat h_n)` corresponds to the reversed inner-product arguments. Equal total energy does not determine the diagonal or pair ledger.

If reconstruction error is at most `delta`, the energy error is at most `delta*(2*norm(approximation)+delta)`. Add the diagonal error separately, then charge frequency tails, finite-grid/quadrature, clipping, drift and calibration exactly once. A nonzero hard-window signal cannot simply be assumed exactly bandlimited. Finite samples require a genuine reconstruction/tail theorem.

`p04_conditional` gives the polynomial conclusion only from an exact readout identity, a uniform readout bound and a uniform error bound with nonnegative coefficients/exponents. The actual Möbius-specific uniform P04 estimate is not supplied here. No RH claim follows.

## Replay and claim status

Run `python3 checks/Analysis/Fourier/Controls/check.py --output <absent-directory>` in the pinned checkout with dependencies already installed. It compiles selected sources into fresh objects, checks consumers/axioms, and requires six unsupported inferences to fail. Its receipt records exact input hashes. It grants no effect authority and uses no independent human reviewer.

Finite serialization tests can establish the tested byte outcomes. Universal implementation refinement additionally requires source-bound encoder/parser/validation/target/identity proofs and explicit compiler, library, memory and resource semantics. Mathematical interfaces or a passing finite corpus cannot supply those obligations. SHA-256 input correctness is distinct from collision freedom.
