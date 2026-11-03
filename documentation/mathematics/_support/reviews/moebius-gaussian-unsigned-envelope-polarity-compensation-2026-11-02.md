# Heat-agnostic positive-envelope obstruction and true Möbius signed Gaussian polarity compensation

Research date: 2026-11-02.
Local mathematical attribution: grwtsk contributors; derivation/Lean source formalization assistance by OpenAI ChatGPT.
Scope: the ORIGINAL exact Möbius physical-time pickup, original integer μ(n), squareful zero values, sign, physical causal birth gate, all ordered Gram orientations, and single fixed J log2 grid. No artificial Mertens coefficient or pseudo-random source.
Status: source-level Lean proof candidates, compilation DEFERRED_PER_USER; parser, elaborator, expected theorem types, fresh kernel and transitive axiom auditing NOT_RUN. No new claim of RH.

## 1. Pinned current repository context

Scanned existing grwtsk/math/main:
 e7753c12896b72ed2fe5ddc1945f16e769aeda56
before authoring. During research, concurrent grwtsk/math main advanced; new files are additive and must be rebased with non-force update.

Relevant source files and immutable Git blobs:
- MoebiusGaussianLogHeatSource.lean,
  e7443337b95b8491492acfa120809f6873f77ef1:
  sourceHeatCoeff(s,n)=μ(n)e^(-s(log n)^2),
  sourceHeatRadius(s,n)=|μ(n)|(1-e^(-s(log n)^2)),
  signed sourceHeatWave, signed sourceHeatEnergy,
  exact original-vs-heat residual.
- MoebiusDecoderPositiveResponse.lean,
  35686a42c743827cad84898acd5e08f9e1fd6c37:
  radiusWave(eta,T,u)=Σ_(1≤n≤floor(e^T)) eta(n)*pickupResponse(n,u),
  radiusEnergy(eta,T)=∫_0^T radiusWave²du,
  full ordered nonnegative Gram.
- MoebiusGaussianSquarefreeRadiusSharpness.lean,
  5c757b36c1ebdf5370fd5481b5c8d945b05775cf:
  four explicitly unported elementary Props for original
  squarefree band population, loss, terminal response, interval
  square lower. Its true J≥9 band count and response are reused;
  no PNT, RH or zero-free result imported.
- MoebiusGaussianRadiusSharpThreshold.lean,
  fbd5804dc33f3156845daacc530143cfcdf041b5:
  source-positive Gaussian reconstruction exponent a=1/2,
  earlier inventory-free conditional zero-free bridge and
  elementary dyadic exponential divergence Prop.
- MoebiusGaussianStrongHeatUniformEnergy.lean,
  a3dc512aa819b858e603414be345ad2506e5ada7:
  signed heated waveform energy H_s(T)≤16e² T at FIXED s≥1.
  This is not the ORIGINAL unsmoothed Möbius square energy.
- MoebiusGaussianHeatSignedEvolution.lean,
  ee8bf6ec9238386882c79cde1dc7c2c3f685c285:
  exact full signed heat parameter increment with its
  separately retained mixed energy and increment square.
- MoebiusGaussianHeatAbsoluteEnergyStability.lean,
  eb3d30a9b103fe8a26e1f1448c6f9d8d44fd86cf:
  for the near-zero schedule s=e^(-2T), original and
  heated SIGNED energies differ by ≤32T³e^-T.
- MoebiusGaussianSaturatedRadiusUpper.lean,
  8c1cce6102cdf39d62aab580c2ecca14062f649d:
  complete positive radius upper 16T e^T min(1,sT²)²,
  previously duplicate inverse-root population closed
  by current source.
- MoebiusCausalMertensSquareBridge.lean,
  be156509d9679a22b52b32d087f87d8449a047ef:
  OriginalBalancedPNTLogPowerTarget is a named UNPORTED
  Lean proposition giving unconditional ordinary
  classical PNT log-power positive upper on TRUE pickupCross.
  It is not RH or a zero-free Re>1/2 result.

## 2. Every Gaussian schedule has a SOURCE-EXACT magnitude split

For all original positive integers n and every real heat s,
the strictly positive heat multiplier h_s(n)=e^(-s(log n)^2)
satisfies the exact identity
  |μ(n)|=|μ(n) h_s(n)|+|μ(n)|(1-h_s(n)).
For s≥0 the two RHS terms are nonnegative, including true
squareful zeros and n=1 (zero radius at n=1).
Define source unsigned wave
  A(T,u)=Σ_n |μ(n)| r_n(u),
heated unsigned wave
  U_s(T,u)=Σ_n |μ(n)h_s(n)| r_n(u),
positive source-minus-heat radius
  R_s(T,u)=Σ_n |μ(n)|(1-h_s(n))r_n(u),
where every sum uses the SAME actual endpointIndex T
and physically born response
 r_n(u)=2*(n^(-1/2)-exp(-u/2)) if u≥log n, else zero.

The true ORIGINAL response is nonnegative at all u, so
 A(T,u)=U_s(T,u)+R_s(T,u),
and each of U_s,R_s is nonnegative if s≥0.
The complete original-positive physical-time square energies are
 A_E(T)=∫_0^T A(T,u)^2du,
 U_E(s,T)=∫_0^T U_s(T,u)^2du,
 R_E(s,T)=∫_0^T R_s(T,u)^2du.
The last is EXACTLY the old sourceHeatRadiusEnergy(s,T).
They contain all original diagonal and both ordered
offdiagonal response-Gram terms, with coefficient
magnitudes, not source signs. In contrast
 H_E(s,T)=sourceHeatEnergy(s,T)
         =∫_0^T(Σ_n μ(n)h_s(n)r_n(u))²du
is the SIGNED actual heated source square. U_E≠H_E in general.

The elementary pointwise Hilbert-square bound
 A(T,u)²=(U_s+R_s)²≤2(U_s²+R_s²)
and interval integration give
 A_E(T)≤2(U_E(s,T)+R_E(s,T)) for EVERY s≥0.      (D1)

## 3. An unconditional large original UNSIGNED energy, PNT-free

At every original dyadic T_J=J log2, J≥9, N=2^J,
the PREVIOUS source-verified-in-ordinary-math squarefree band
 I_J=[N/4,N/2]∩{n:μ(n)≠0}
contains at least N/32 TRUE source integers. This follows
from the explicit elementary union bound on d²|n,
no PNT or RH input.

For the final PHYSICAL interval u∈[T_J−1/4,T_J],
all these n have already been born and the genuine response
obeys
 r_n(u)≥e^(-T_J/2)/2.
Every original source unsigned weight |μ(n)|≥1 for
nonzero integer Möbius values. Therefore
  A(T_J,u)≥(N/32)*(e^(-T_J/2)/2)
          =e^(T_J/2)/64,   u∈[T_J−1/4,T_J].
The original unsigned source energy integrates this quarter
unit, so
  A_E(T_J)≥(1/4)*(e^(T_J/2)/64)²
          =e^(T_J)/16384.                           (D2)

Combining (D1),(D2) gives for EVERY heat s≥0, even
a heat schedule s(J) depending arbitrarily on scale,
  U_E(s,T_J)+R_E(s,T_J)≥e^(T_J)/32768.       (D3)
Thus
  max(U_E,R_E)≥e^(T_J)/65536,
for every J≥9 and every s≥0. The exponential
rate ONE cannot be simultaneously removed from both
NONNEGATIVE sources by choosing a heat time.

For any 0<r<1 and every real K, the elementary divergence
e^((1−r)T_J)→∞ shows that at arbitrarily large J,
one of the original U_E(s(J),T_J),R_E(s(J),T_J)
exceeds K e^(rT_J), no matter which nonnegative schedule
is selected. The new theorem
no_heat_schedule_two_positive_all_scale_rates
formalizes this quantifier with the OLD elementary
ElementaryDyadicExponentialDivergenceTarget still
unported in Lean. This is a rigorous no-go for the
*method of independently paying both positive envelopes*.
It is NOT a claim that the signed H_E grows at rate one
and does not contradict RH.

## 4. ORIGINAL two-polarity mixed sign identity

For the ACTUAL heat coefficient c_s(n)=μ(n)h_s(n), define
  c_s^+(n)=max(c_s(n),0),
  c_s^-(n)=max(-c_s(n),0).
Both are nonnegative, retain the original squareful zeros,
and satisfy c_s=c_s^+−c_s^-, |c_s|=c_s^++c_s^-.
Define the corresponding REAL original physical-time waves
  P_s(T,u)=Σ_n c_s^+(n)r_n(u),
  N_s(T,u)=Σ_n c_s^-(n)r_n(u).
They use exactly the same n and physical birth gates.
Then
  actual SIGNED heat wave=P_s−N_s,
  actual UNSIGNED heated wave= P_s+N_s.
Therefore the true full square energies satisfy
  U_E(s,T)−H_E(s,T)
   =∫_0^T[(P_s+N_s)²−(P_s−N_s)²]du
   =4∫_0^T P_s(T,u)N_s(T,u)du.             (P1)

This is an EXACT, nonnegative, original-index
positive/negative cross overlap, containing both ordered
mixed coefficient-polarity Gram orientations (two in each
polarity combination), not a probabilistic expectation,
independent random-sign assumption or a new zeta model.

The new source MoebiusGaussianSignedPolarityDebt.lean
includes positive/negative coefficient and wave identities,
the integral polarization theorem, and a quantitative
arithmetic-source cancellation-debt consumer.

## 5. At critical near-identity heat, the missing cancellation is EXPONENT-ONE

Assume physical dyadic T=T_J≥32, J≥9. Choose the stronger
near-identity Gaussian heat s(T)=exp(-T/2), so it is truly
positive and decays to zero.

Elementary Taylor exp(T/2)≥(T/2)^4/4!=T^4/384 for T≥0.
For T≥32,
  s(T)T²=T²exp(-T/2)
        ≤384/T² ≤384/1024=3/8<1/2.
For every actual n≤exp T, (log n)²≤T² and
  h_s(n)=exp(-s(log n)²)≥1-s(log n)²≥1/2.
Hence U_s(T,u)≥A(T,u)/2 pointwise (positive response),
and thus
  U_E(s(T),T_J)≥A_E(T_J)/4
                  ≥e^(T_J)/65536.          (P2)
This is an actual unconditional-positive source lower
from PNT-free counting plus original birth and heat.

If one hypothetically had the STILL MISSING signed
heat-energy bound
  H_E(s(T_J),T_J)≤C_r e^(rT_J)
at any r<1, the exact polarity identity (P1) would force
  4∫P_sN_s ≥ e^(T_J)/65536−C_r e^(rT_J).   (P3)
The RHS is exponent-one for all sufficiently large T_J.
Thus any RH-strength signed-heat estimate at this
near-identity schedule cannot come from small positive
wave amplitudes; it necessarily requires substantial
positive/negative ORIGINAL Möbius interference.

P3 is a NECESSARY conditional arithmetic statement,
not a proof of the signed-heat bound or RH. The new
source has theorem bodies
 halfRootSchedule_preserves_half_from_time_32,
 halfRoot_schedule_unsigned_heat_exponential_lower,
 signedHeatCancellationDebt_necessary_for_small_observation,
 halfRoot_schedule_requires_signed_polarity_credit.

## 6. Stronger unconditional classical PNT compensation (still rate ONE)

The maintained ClassicalMertensLogPowerInput and
OriginalBalancedPNTLogPowerTarget are ordinary
UNCONDITIONAL classical PNT estimates, NOT established
in pinned Lean. At β=1, the genuine full original
source satisfies a rate-one log saving
 pickupCross(T)≤C e^T/(1+T), T≥0, C≥0,
using actual source finite Abel/energy calculus.

The original diagonal costs at most 2T², so
 pickupEnergy(T)≤2T²+C e^T/(1+T).
The exact source signed Gaussian comparison at
s(T)=exp(-T/2) gives
 H_E(s(T),T)≤2pickupEnergy(T)+2R_E(s(T),T).
The already ordinary-math-proved positive radius bound
 R_E(s(T),T)≤16T^5
therefore gives
 H_E(s(T),T)≤2C e^T/(1+T)+4T²+32T^5.       (P4)

Combining (P2),(P4) with exact source (P1):
  4∫_0^T P_sN_s du ≥
     e^T/65536 −2C e^T/(1+T)−4T²−32T^5,
     for every dyadic J≥9 with T_J≥32.     (P5)

This is a concrete PNT-strength lower, no RH strength.
Since (1+T)^(-1)→0, T^k e^(-T)→0, P5 implies
  liminf_(J→∞) e^(-T_J)*
    4∫ P_s(T_J,u)N_s(T_J,u)du ≥1/65536.
In particular the true ± signed polarities must possess
substantial POSITIVE physical-time mixed cancellation
even under ORDINARY classical PNT, not merely RH.
This is fully rigorous ORDINARY mathematics if one
uses the standard unconditionally proved classical
PNT quantitative Mertens input and source Abel calculus.
The repository source keeps that analytic theorem
EXPLICITLY UNPORTED as
 OriginalBalancedPNTLogPowerTarget;
there is NO claim of a kernel-verified PNT theorem.

The new Lean source
 MoebiusGaussianClassicalPNTPolarity.lean
contains the exact pointwise quantitative P5 theorem body,
with hPNT supplied explicitly as a Prop, no sorry or axiom.
It does not prove the input or imply the all-rate
Mertens/FAR bound.

## 7. Independent source diagnostics and method limitations

Noncertifying numerical checks of the TRUE original μ
with an independently computed finite Möbius sieve and
the exact prefix-sum representation of birth-gated r_n(u)
used 3001-point Simpson quadrature on original [0,T_J].
These checks are NOT the source of the proof and
cannot be regarded as kernel or interval arithmetic.
Representative values:

 J    s schedule   U_E         R_E       U_E+R_E       H_E
 9    exp(-T/2)     354.772     76.569     431.341       2.4744
 9    s=1           34.054    483.197     517.251       2.9012
 12   exp(-T/2)    3043.270    550.379    3593.649       5.9608
 12   s=1           55.760   5141.767    5197.526       4.0042
 14   exp(-T/2)   13770.189   1557.148   15327.337       8.5961
 14   s=1           70.835   22288.699   22359.534       4.7413

PNT-free squarefree band counts on [N/4,N/2] are
79 for J=9, 621 for J=12, 2491 for J=14.
All exceed the elementary required N/32.
The rigorous lower e^T/32768 is respectively 0.015625,
0.125, and 0.5. It is conservative but independent
of all numerical testing and of selected heat.

No xi/de Bruijn-Newman analytic identification is made:
Gaussian heat here acts on ORIGINAL arithmetic log n,
not the ξ Fourier variable. Strong heat s≥1 has
unconditional O(T) signed-heat energy but exponentially
large positive reconstruction error. Near-identity
s=e^(-T/2) has polynomial reconstruction error but
large unsigned absolute heated energy. Equations D3/P3
show why no two-positive-envelope argument alone bridges
that gap; actual SIGNED arithmetic cancellation is needed.

**Important:** This source proof does NOT exclude RH.
Even under RH a large unsigned ± heat overlap is
expected. The PNT result provides sign-overlap at
exponent-one but does NOT reduce the signed difference
to every arbitrarily small positive exponential rate.
The global original signed FAR/fixed compensated core
and original energy abscissa zero remain OPEN.

## 8. Lean acceptance / no circular research input

The additive source proof candidates are:
 - MoebiusGaussianUnsignedDualEnvelope.lean
   exact coefficient-wave split, true source unsigned
   squarefree lower and dual-positive-envelope no-go.
 - MoebiusGaussianSignedPolarityDebt.lean
   exact ± coefficient/wave overlap and near-identity
   signed interference debt, including explicit T≥32.
 - MoebiusGaussianClassicalPNTPolarity.lean
   conditional classical PNT rate-one polarity credit
   with exact constants and the original source ledger.

They reuse the previously unported elementary gates:
 ElementarySquarefreeBandPopulationTarget,
 ElementarySquarefreeTerminalResponseTarget,
 ElementaryTerminalRadiusIntegralTarget,
 ElementaryDyadicExponentialDivergenceTarget.
No NEW Mertens or RH-sized axiom is authored.
The classical rate-one source upper is explicitly
hPNT : OriginalBalancedPNTLogPowerTarget, which is
ordinary classical PNT mathematics but unproved in
the currently pinned Lean source.

All proof-body typechecking, parsing and native
compilation remain DEFERRED_PER_USER, and independent
fresh kernel and full transitive axiom/opaque/native
audits are NOT_RUN. Static comment matching and no
authored proof placeholders is NOT a kernel receipt.
No original coefficient, signed physical Gram,
native runner, toolchain, root import or scheduler
changed. Any Git commit/readback records source
identity, not complete formal mathematical proof.

The true global all-positive-rate signed FAR upper,
equivalent fixed-core bound and canonical RH remain OPEN.
