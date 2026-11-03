# Original-source adaptive certificate refinement, growing error-mass transfer and finite physical faults

Date: 2026-11-02. Repository: grwtsk/math. Mathematical direction: grwtsk contributors; formalization assistance: OpenAI ChatGPT. Existing Mathlib, elliptic record #4239, original arithmetic and external mathematical citations retain their independent authorships and licenses.

## Scope, research search and exact source

This is a source-based continuation of the source-preserving Möbius/RH program. The primary prior publication is f54a3e637a5cca77aa2a2b687db1dd00897d0103, which introduced a source-return atlas and five-way minimum upper-certificate portfolio. New source work is ADDITIVE and does not change the original arithmetic coefficient, causal response, endpoint index or signed ordered Gram.

The original source is:
  mu(n) = (ArithmeticFunction.moebius n : Z) as real,
  r_n(u) = if log(n)<=u then 2*((sqrt n)^-1 - exp(-u/2)) else 0,
  X(T) = sum_(1<=m,n<=floor(exp T),m!=n) mu(m)*mu(n)*integral_0^T r_m(u)*r_n(u) du,
  H(T) = integral_0^T wholePickup(u)^2 du.
For T>=0, prior source gives H(T)=pickupDiagonal(T)+X(T). The endpoint five-moment quadrature E(T) has absolute |E(T)-X(T)|<=1/4. No finite phase, residue modulo q, geometric chart or physical readout may erase the original integer n, squareful zero, both ordered orientations or signed defect.

The accompanying v2 registry traces 30 individually inspected source files and 29 typed connections (with 12 research boundaries); it links to the predecessor 31-node/20-edge atlas. The repository is much larger than either focused inventory, so this is NOT a proof or code inspection of every file and NOT an assertion that every claimed mathematical connection has been constructed.

## New mathematical connection 1: meet independent source-certified decoder radii

New candidate source:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusAdaptiveDecoderCertificates.lean
Git blob 516c59a95971d44c09d05266696d0635f6f35f8e (13 public theorem candidates; 2 definitions).

Given the SAME full original source, a scalar decoder a_n and two genuine coefficient-radius certificates
  |mu(n)-a_n| <= eta_n and |mu(n)-a_n| <= zeta_n
for EVERY original n in endpointIndex(T), define
  etaMeet(n) = min(eta_n,zeta_n).
The meet is another valid original-index ErrorCertificate. Because r_n(u)>=0 and the certificates ensure eta_n,zeta_n>=0, the pointwise positive radius wave and its physical-time square energy decrease:
  R_meet(T,u) <= R_eta(T,u), R_meet(T,u) <= R_zeta(T,u),
  radiusEnergy(meet,T) <= radiusEnergy(eta,T),
  radiusEnergy(meet,T) <= radiusEnergy(zeta,T).
Only the left comparison is written as a separate named public candidate; the right comparison follows by switching the two inputs.

The older COMPLETE ordered-pair decoder-error envelope B_eta(T), with both source/decoded mixed terms and the error-error term, also decreases under pointwise tighter nonnegative radii. Consequently every source certificate affected by the decoder radii becomes no worse, and the unified five-way sourcePortfolioUpper decreases; the old rounded RS, original elliptic signed residual and Putnam sparse-plus-dense branches are literally unchanged. This is an actual per-index certificate intersection, not averaging two measurement theories with potentially incompatible scalar decoders. If observations are in different typed representations, one must first prove DecoderCompatible phase transport, as in the predecessor.

This module also imports the repo's independently constructed CertifiedTransversal. It instantiates a true covering correspondence from original canonical SourceAtom to its FULL natural sourceIndex. A theorem about a target can return to every source atom only through a proved relation-preserving return property. This is not a source-injective or source-covering claim for any lossy residue quotient.

The independently verified source EndpointCovarianceDyadicAbel covers BOTH original indices by dyadic blocks, and the new bridge returns its exact full ordered block sum to the same sourcePortfolioUpper. No fixed-j block estimate is promoted to all-height cancellation. The repo's DyadicSignedResidueWaveform sums every parity and nonunit class before squaring; the new bridge identifies its true complete dyadic energy with the original arithmetic-derived two-bit observedEnergy. These are exact same-source connections, not new bounds on each residue channel.

## New mathematical connection 2: subexponentially growing mass is enough

New candidate source:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSubexponentialResolutionTransfer.lean
Git blob 428391a8b48bd41cae1d85ba44f39765a44cef89 (4 theorem candidates).

The previous positive causal radius source already proved, with an actual original-index coefficient error certificate:
  radiusEnergy(eta(T),T) <= 4*T*M_eta(T)^2,
  M_eta(T)=sum_(original n<=floor(exp T)) eta_n/sqrt(n).

The old sufficient criterion imposed a UNIFORMLY BOUNDED M_eta on one G. This increment proves a strictly more flexible sufficient criterion:
  SubexponentialOn(M_eta,G) -> SubexponentialOn(radiusEnergy,G).
For any requested epsilon>0, apply the actual mass estimate at delta=epsilon/4:
  M_eta(T) <= C_delta * exp(delta*T).
The square consumes epsilon/2 of exponent, and the remaining epsilon/2 absorbs the time factor using
  T <= (2/epsilon)*exp((epsilon/2)*T)
for nonnegative T. Hence the explicit eventual rate certificate
  radiusEnergy(T) <= (8*C_(epsilon/4)^2/epsilon)*exp(epsilon*T).
The constant and threshold may depend on epsilon; the set G itself is FIXED before epsilon. This does not construct the actual source-specific all-rate mass estimate. It is a noncircular analytic implication with an independently named arithmetic premise.

The old two-way observedEnergy/actual pickupEnergy growth equivalence then holds under source-index-certified, potentially UNBOUNDED but subexponential weighted error mass. It connects to the existing canonical RH good-scale theorem ONLY if the complete signed observed waveform energy is independently subexponential on an AffineFrequent G. Another theorem shows the same two all-rate inputs bound the FIVE-METHOD sourcePortfolioUpper, via its positive-radius-energy branch, without requiring independent all-rate control of every other branch. This is a bounded conservative route; it does not prove observed-energy cancellation, the dense squarefree long-gap packet, or RH.

## New mathematical connection 3: true finite faults in a physical two-bit stream

New candidate source:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFiniteFaultPhysicalReturn.lean
Git blob b83ee97742ed168431b2efb3d995c4f2c50ffdeb (13 theorem candidates; 3 definitions).

Any actual physical-bit record readRecord(p,chart,r) decodes to one of {-1,0,+1}; an absent or wrong-index record also reads zero. This follows from the existing Boolean nonzero/negative sign codec. The actual original Mathlib Mobius coefficient likewise lies in {-1,0,+1}. Thus regardless of validity, any readout has an absolute ORIGINAL coefficient error at most 2. This alphabet fact does NOT prove the physical apparatus is valid or that its reading equals mu(n).

Fix ONE finite set F of original integer source labels, independent of observation time T. Assume the actual PhysicalStream is EXACT outside F for every positive n (ExactOffFaults). This is an explicit input, not inferred from geometric admissibility, code size or finite sample count. Set:
  eta_F(n) = 2 if n in F, otherwise 0.
This gives an actual full original-index ErrorCertificate, and a uniform cost:
  M_(eta_F)(T) <= C_F := sum_(n in F) 2/sqrt(n),
  radiusEnergy(eta_F,T) <= 4*T*C_F^2   for T>=0.

The old positive radius-energy source then proves an all-positive-rate error-budget theorem for ANY fixed finite F (as long as the true exactness outside F is established), the two-way all-positive-rate observed/original signed energy equivalence, and the canonical conditional RH consumer under the still-unsupplied original observed-energy growth premise. This is robustness to a finite true fault set, not an algorithm to discover which observations are incorrect or to compute mu(n).

The original actual Godel chart transfer preserves ExactOffFaults without changing F. If another independent original-index ErrorCertificate is available, the physical fault radius may be intersected with it using the first module. One additional two-sided result compares the finite-fault physical observed energy against the complete DYADIC parity/nonunit residue energy from DyadicSignedResidueWaveform: each is bounded by twice the other plus twice the true positive error radiusEnergy. The full complex gauge detector from CMKaehlerZQGaugeFullReturn is already connected to this identical original signed residue energy in the preceding source atlas. This does NOT establish a physical Kähler gauge or a global elliptic detector.

## Source graph research and refusal to coerce unrelated invariants

The v2 directed graph now includes the full original MertensPrimitive, CanonicalPrimeTyping, physical codec and stream, both decoder envelopes, positive radius, the five-way portfolio, new certified meet, growing mass and finite faults, the complete dyadic two-index Abel cover, classwise dyadic residue waveform, endpoint quadrature, exact projective elliptic port, actual GoodPrimeBank matched packets and full signed defect, rooted finite torsion, compensated CM gauge, fixed source-conserving categorical transversal, finite local Connes trace, Selmer/Sha, Rank32 record source, S4/torus port and original low/high-wave Young packet.

It deliberately does not claim a complete match to every file in grwtsk/math or unverified remote research theorem. Specific missing data remain:
- True Rank32 Mordell-Weil independence is not a finite 32-column GF(2) character computation, and Mordell-Weil FREE rank is not rational torsion.
- The nonrigid M23 finite candidate/descent method has no constructed source action on RH zeros or the original Mobius packet.
- Finite Connes-type Frobenius companion traces and Jordan obstructions are not an adelic central operator or a BSD height-lattice correspondence. Finite Selmer cardinality retains Sha[p].
- Finite Weil inertia and quartic sources do not prove source-exact full-test Weil positivity.
- Tao/Chowla/Elliott ordinary fixed shifts or logarithmic correlations do not yield uniform growing-shift complete signed correlation; Sarnak dynamics needs genuine orbit/observable and scale adapters. Erdős external adapters use a separately pinned toolchain.
- Farey determinant-one graph neighbors are not Fáry's planar straight-line theorem. Neither supplies uniform physical Kakeya overlap, the dense signed arithmetic remainder, or RH. Geometric S4/tori models are source views, not PDE covariance.
- The quantitative Mertens source explicitly assumes a separately proven classical log-power theorem; its signed/absolute allowance is rate-one with logarithmic improvements, not all-positive-rate RH energy.
- The RS exact rounding source supplies a 3T original-cell observation cost, but the old CodedMomentTransport path from #1403 was NOT FOUND on inspected main; no removed or moved file is assumed to have been verified or importable.
- Finite Turing/zero checks and finite rank/prime evidence cannot imply an unbounded analytic RH conclusion.

## Finite numerical preflight and actual verification limits

A NEW local 50-decimal-digit mpmath script actually executed 8,429 nonrigorous finite assertions over nine horizons and original indices through n=40. True integer trial-division mu(n), literal causal response Gram, fault set F={1,4,7,23}, independent coarse and refined radii, complete source/observed error and positive radius energy, all dyadic pairs, all parity/residue components, and the nested min upper envelope were checked. The elliptic arm was ONLY an algebraic identity fixture; it was NOT a genuine GoodPrimeBank or point-count certificate.

At N=23 in that finite test, the original fixed fault profile had positive radius energy about 26.09366, and the meet with an independent valid envelope reduced it to about 7.49428; the original signed source cross remained unchanged. This demonstrates finite expected behavior, not an asymptotic theorem or Lean compile result.

Reproducible local-only files:
- /mnt/data/moebius_refinement_fault_preflight_20261102.py; SHA256 36bdec1994bc4732c1b3639bf6afc4d3b41f2987a4288ed79d8ad0c7fb6cb87d.
- /mnt/data/moebius_refinement_fault_preflight_20261102.json; SHA256 7449dbcac815271ade562017a3ee23574619fc5761384ac9bed625371e3f5d55.
These are noninterval numerical checks, not theorem proof artifacts. They do not run Lean and cannot certify unbounded rate quantifiers.

Pinned repository toolchain at inspection: leanprover/lean4:v4.34.1, Git blob ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5. Mathlib pinned d13f23b723b8a846827a245b89c10fc7d3f11612, manifest Git blob c8044c56be77c58e6f41cca024b25237c59e8c79. There is no lean, lake or elan binary on the local execution PATH. A static proof-text delimiter check, Git source readback, and source comments can NOT replace parsing, elaboration, compilation, fresh kernel checks and transitive axiom auditing.

Required acceptance:
1. Build all THREE leaf modules and entire transitive pinned import closure with warning-as-error, exact expected statement checks.
2. Check exact certified min radius, nonnegative weighted response, pair-error envelope product monotonicity, min portfolio conservativity, dyadic covers, all-residue source conservation and CertifiedTransversal interface.
3. Check every real rate and constant in the epsilon/4 proof; original G is fixed before the rate, and mass growth is not assumed bounded.
4. Verify physical bit record trichotomy, 2-valued error radius, zero versus missing, positive source index and fixed finite F, actual chart transfer, original cutoff and whole signed dyadic residue energy.
5. Fresh independent Lean kernel replay and complete transitive axiom/sorryAx/private/opaque/unsafe audit for exact source head and dependencies; reject unlicensed trust and unproved mathematical axioms.
6. Preserve other branches and concurrent main edits, do not edit root GRWTSK.lean, do not change dependency pins, and do not dispatch any foreign runner or scheduler. Operational receipts belong outside mathematical source, under separately authorized Noe management.

All three new mathematical files are SOURCE_PROOF_CANDIDATE and NATIVE_COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. The dense original signed long-gap and global observed energy all-positive-rate arithmetic suppliers remain OPEN. The canonical Riemann Hypothesis remains OPEN.
