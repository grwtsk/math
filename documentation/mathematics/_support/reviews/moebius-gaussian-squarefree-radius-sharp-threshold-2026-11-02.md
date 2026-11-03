# Sharp exponent frontier of the actual positive Möbius Gaussian reconstruction radius

Research date: 2026-11-02.
Original mathematical attribution: grwtsk contributors; mathematical derivation and Lean source assistance: OpenAI ChatGPT.
Ordinary mathematical status: fully justified by elementary squarefree counting, scalar inequalities and the original birth-gated causal response. No PNT, RH, Mertens cancellation or zero-free-region input.
Lean status: additive SOURCE_PROOF_CANDIDATES, UNCOMPILED. The four elementary lower-bound Lean ports remain explicit separately named Props, not axioms or RH-strength oracle. Kernel/transitive audit NOT_RUN per user.

## 1. Read and reconcile the ACTUAL current repository inputs

The initial live repo was grwtsk/math/main e7753c12896b72ed2fe5ddc1945f16e769aeda56. On this current head, a concurrent contributor already formalized the inverse-root finite-sum statement which the previous source treated as an unproved input:

  MoebiusQuantitativeMertensAbsoluteAbel.lean
    blob b2fe063451f58ff9b892aa164d780bd20279192e,
    theorem invsqrt_range_sum_le_two_sqrt.
  MoebiusGaussianHeatSharpSourceEnvelope.lean
    blob bb74da49d0f69d3accdb43281b67b8a800ea03ee,
    theorem endpoint_invsqrt_sum_le_two_sqrt_exp.
  MoebiusGaussianHeatAbsoluteEnergyStability.lean
    blob eb3d30a9b103fe8a26e1f1448c6f9d8d44fd86cf,
    old heat schedule s=e^(-2T) gives
    |pickupEnergy(T)-sourceHeatEnergy(s,T)|
       <=32*T³*e^(-T)<=192 (source candidate).
  MoebiusGaussianHalfRootMassImprovement.lean
    blob 972679fba73136eca8dc152e89c1f225db1ca0ae,
    introduces OriginalInverseRootInventoryTarget and
    upper <=16*T^5*s²*e^T.
  MoebiusGaussianLogHeatSource.lean
    blob e7443337b95b8491492acfa120809f6873f77ef1,
    original signed Gaussian coefficient and true source
    radius/energy, both signed-error mixed terms retained.
  MoebiusDecoderPositiveResponse.lean
    blob 35686a42c743827cad84898acd5e08f9e1fd6c37,
    actual original-index nonnegative radius wave/energy.

A new additive source MoebiusGaussianSaturatedRadiusUpper.lean imports the exact concurrent inverse-root theorem and supplies a direct proof body of the PREVIOUSLY OPEN elementary Prop OriginalInverseRootInventoryTarget. This is an important genuine source connection; prior proof code remains uncompiled and no native acceptance is claimed. The source also sharpens the radius energy for large artificial heat s without inventing or deleting any original coefficient.

The new source GaussianRadiusSharpThreshold.lean also gives TWO
conditional analytic corollaries that NO LONGER take the
independently elementary OriginalInverseRootInventoryTarget
as a hypothesis:
  halfRoot_zero_free_without_separate_inventory_premise;
  hypothetical_zero_halfRoot_spikes_without_inventory_premise.
They instantiate the existing half-root heat→zero-free and
hypothetical-zero→heat-spikes statements with the exact
concurrent source inventory theorem. Their remaining
standard complex Laplace / dyadic-ceiling premises are
UNPORTED, and the independently needed HEATED SIGNED ENERGY
all-J upper is still OPEN. This is source-level premise
elimination, NOT an RH proof or a compiled theorem.

Another new source MoebiusGaussianSquarefreeRadiusSharpness.lean captures the elementary lower, and MoebiusGaussianRadiusSharpThreshold.lean records its precise exponent obstruction.

## 2. Source identity, preserving the ENTIRE original signed arithmetic

For physical time T>=0, let N=floor(exp T), endpointIndex(T)={1,...,N}.
The original real arithmetic coefficient is mu(n), with n=1 included, mu(n)=0 on squareful integers, mu(n)=±1 on squarefree n. The original response is
  r_n(u)=2*(n^(-1/2)-exp(-u/2)) if u>=log n,
          0 if u<log n.
For s>=0 an ARTIFICIAL logarithmic Gaussian heat parameter, the exactly source-matched coefficient and complete POSITIVE reconstruction radius are
  mu_s(n)=mu(n)*exp(-s*(log n)^2),
  eta_s(n)=|mu(n)|*(1-exp(-s*(log n)^2))>=0.
The signed original waveform is never replaced in the true energy E(T)=pickupEnergy(T). The new positive error radius is the full original-index, actual causal source error wave
  Rwave_s(T,u)=sum_(1<=n<=floor(exp T)) eta_s(n)*r_n(u)
and its complete positive time-square integral
  R_s(T)=sourceHeatRadiusEnergy(s,T)
        =int_0^T Rwave_s(T,u)^2 du.
This positive quantity includes all diagonal and both ordered OFFDIAGONAL radius interactions; it is NOT the signed original pickupEnergy nor the signed heated sourceHeatEnergy.

## 3. New SATURATED upper valid for every s>=0 and T>=0

For n in the true source endpoint inventory, 0<=log n<=T. Elementary
  0<=1-exp(-x)<=min(1,x), x>=0,
and |mu(n)|<=1 imply
  0<=eta_s(n)<=min(1,s*T²)=:m(s,T).
The originally indexed weighted positive radius mass is
  A_s(T)=sum_(1<=n<=N) eta_s(n)/sqrt(n)
       <=m(s,T)*sum_(1<=n<=N) n^-1/2.
The existing concurrent source theorem gives
  sum_(1<=n<=N) n^-1/2<=2sqrt(N)<=2exp(T/2).
Therefore
  A_s(T)<=2m(s,T)*exp(T/2).                    (U1)

The source's actual response positivity and
  0<=r_n(u)<=2/sqrt(n)
for every original n>=1 and every physical u give
  Rwave_s(T,u)<=2A_s(T).
Integrating its square over the actual interval [0,T],
  R_s(T)<=4T*A_s(T)^2
         <=16T exp(T)*min(1,s*T²)^2.           (U2)

This is STRICTLY sharper than the previously published
  R_s(T)<=16T^5 s² exp T
whenever s*T²>=1. For s*T²<=1 the results agree exactly.
(U2) requires NO signed Mertens, PNT or RH input.

The new source file has:
 originalInverseRootInventory_closed_from_existing_source,
 sourceHeatRadius_le_saturated,
 sourceHeat_mass_le_saturated,
 sourceHeat_radiusEnergy_le_saturated.
All four are proof BODY candidates, not kernel-check receipts.

## 4. An elementary squarefree density on a true DYADIC subinterval

Let J>=9, N=2^J>=512 and T=J log 2=log N.
Choose the ORIGINAL, literal integer band
  I_N=[N/4,N/2]∩ℕ.
It has N/4+1 indices. A positive integer n is nonsquarefree
iff some integer d>=2 has d²|n. For a fixed d with d²<=N/2,
the number of multiples of d² in I_N is at most
  (N/4)/d²+1,
because the interval has real length N/4.
The union bound, counting over every d>=2, gives
  #nonsquarefree in I_N
    <=(N/4)*sum_(d>=2)1/d²+sqrt(N/2).
An entirely elementary integral comparison yields
  sum_(d>=2)1/d²
      <=1/4+int_2^infinity x^-2 dx
      =3/4.
Therefore
  #squarefree in I_N
    >=N/4+1-3N/16-sqrt(N/2)
    =N/16+1-sqrt(N/2).
For N>=512,
  sqrt(N/2)<=N/32,
hence
  #{n in I_N: |mu(n)|=1}>=N/32.               (L1)
This uses NO PNT, zero-free region or asymptotic density theorem. Every n in I_N is still an actual source integer and no signed source term has been deleted: we select the squarefree band ONLY for a lower bound on the completely nonnegative radius wave.

For n∈I_N and J>=9, log n>=T-log4>=T/2,
and log n<=T. Put A=s*T²>=0 and m=min(1,A).
Then x_n=s*(log n)²>=A/4. The elementary uniform
  1-exp(-x)>=min(x,1)/2, x>=0
and min(A/4,1)>=min(A,1)/4 give
  eta_s(n)>=m/8.                               (L2)

## 5. The ACTUAL terminal birth gate is necessary

Select the fixed physical-time interval
  u∈[T-1/4,T].
Since n<=N/2 and log2>1/4, every selected original n
is already born at u. Thus the ACTUAL response is
  r_n(u)=2*(1/sqrt(n)-exp(-u/2)).
Using n<=N/2 and u>=T-1/4:
  1/sqrt(n)>=sqrt2*exp(-T/2),
  exp(-u/2)<=exp(1/8)*exp(-T/2).
The elementary inequalities sqrt2>7/5 and
exp(1/8)<=8/7 imply
  2*(sqrt2-exp(1/8))>18/35>1/2.
Hence
  r_n(u)>=exp(-T/2)/2.                        (L3)

Every unselected term in the radius wave remains
NONNEGATIVE (eta>=0, original causal response>=0).
Combining (L1),(L2),(L3) without dropping any source
sign from the ORIGINAL signed physical energy:
  Rwave_s(T,u)
    >=(N/32)*(m/8)*(exp(-T/2)/2)
    =m*exp(T/2)/512,  u∈[T-1/4,T].          (L4)
The complete nonnegative square integral over [0,T]
is at least the one over this terminal 1/4-unit interval:
  R_s(T)
    >=(1/4)*(m*exp(T/2)/512)^2
    =exp(T)*m²/1048576.                       (L5)
The integer 1048576=2^20, not an empirically fitted constant.

The new Lean module states L1 with the EXACT source
dyadicSquarefreeWitnessBand(J)=
  [2^J/4,2^J/2] filtered by moebiusReal!=0.
It keeps independent elementary unported Lean interfaces:
 ElementarySquarefreeBandPopulationTarget (L1, subset, T>=1),
 ElementarySquarefreeGaussianLossTarget (L2),
 ElementarySquarefreeTerminalResponseTarget (L3),
 ElementaryTerminalRadiusIntegralTarget (standard positive
     integral-square minorant over last 1/4 interval).
The source theorem proof bodies then sum the complete
positive radius and conclude (L4), (L5), and the matching
source_radius_sandwich. None of these input Props contains
the target global signed FAR upper or RH.

## 6. The EXACT exponential threshold of positive reconstruction

Combining (U2) and (L5) at EVERY J>=9, s>=0:
  exp(T_J)/2^20 * min(1,s*T_J²)^2
   <=R_s(T_J)
   <=16T_J exp(T_J)*min(1,s*T_J²)^2.         (S1)
The two bounds have matching EXPONENTIAL scale; the
remaining gap is at most a fixed positive constant
times one factor of T_J. This is a real sharpness
frontier for this particular NONNEGATIVE error method,
not a proof of RH-strength signed cancellation.

For artificial schedules s_a(T)=exp(-aT):
  If a>0, eventually s_a(T)*T²<=1. Then S1 becomes
    2^-20*T^4 exp((1-2a)T)
      <=R_(s_a)(T)
      <=16*T^5 exp((1-2a)T).
  If a<=0, for T>=1, s_a(T)*T²>=1, so
    2^-20*exp T <=R<=16*T exp T.
Therefore for every fixed real a,
  lim_(J→infty) log R_(s_a)(T_J)/T_J
     = {1-2a if a>0, 1 if a<=0}.           (S2)
This last step is standard logarithmic squeeze, since
log(T_J)/T_J→0 and T_J=Jlog2→infinity.

In particular the critical schedule a=1/2 has
genuinely polynomial positive reconstruction radius:
  2^-20*T_J^4 <=R_(s_a)(T_J)<=16*T_J^5
for every sufficiently large J. The earlier a=2
schedule has exponentially decaying source error.

For 0<=a<1/2 and EVERY fixed 0<r<1-2a, the stronger
elementary bound min(1,exp(-aT)*T²)>=exp(-aT)
for T>=1 yields
  R_(s_a)(T_J)>=2^-20*exp((1-2a)*T_J)
and hence
  limsup_J exp(-r*T_J)*R_(s_a)(T_J)=+infty. (S3)

The new Lean source GaussianRadiusSharpThreshold.lean
also connects the concurrently proved original inverse-root
inventory to the previous Gaussian-zero-free consumers,
so their formerly duplicate elementary source premise is
not required by these new corollaries. It
gives a proof body for the explicit pointwise
dyadicGaussianRadius_lower_exponential and the
arbitrarily-large positive-error excursion implication.
The only additional unported Lean input is the standard
real exponent divergence on Jlog2, explicitly named
ElementaryDyadicExponentialDivergenceTarget.
The entire limit statement S2 is justified here
in ordinary mathematics; no Lean theorem of S2 is
claimed compiled or accepted.

**Interpretation:** The threshold a=1/2 is SHARP for
the sufficiency method of bounding the original
source-minus-heat reconstruction with POSITIVE radius.
Using stronger smoothing (a<1/2) cannot have a
subexponential complete positive reconstruction radius,
without changing the source or controlling its signed
error by a different mechanism. This does NOT assert
the genuine SIGNED original-vs-heated square-energy
difference is large; it may contain cancellations.
No conclusion about the canonical RH follows from
this radius lower bound alone.

## 7. Independent finite diagnostics, not certificates

A separate finite integer squarefree sieve and
trapezoidal direct integration of the ACTUAL
positive radius wave (with original floor(exp u)
birth activation) checked J=9,10,12,14 for artificial
heat exponents a=0.25,0.5,1.0.
Every test satisfied the exact S1 lower and upper.
For example:
 J=9,N=512: squarefree band count 79 >= N/32=16;
    at a=0.5, R≈76.5691,
    lower=0.00048828125, upper≈51104.355.
 J=12,N=4096: band count 621>=128;
    at a=0.5, R≈550.3788,
    lower=0.00390625, upper≈545113.12.
 J=14,N=16384: band count 2491>=512;
    at a=0.5, R≈1557.148,
    lower≈0.008457, upper≈1376852.7.
These broad inequalities are verified MATHEMATICALLY
by (L1)-(L5), not inferred from finite floating-point
checks. The numerical integration is noncertifying.

## 8. Research acceptance and next arithmetic task

The new source development is strictly additive. The
original μ(n), causal birth cutoff, original signed
physical Gram, all pair orientations, true terminal
dyadic grid, old source files, root imports, Lean pin
and Mathlib pin remain UNCHANGED.

Static source checks show no authored proof placeholders or unsafe/native declarations, and comment delimiters are balanced.
Proof-bearing scripts are SOURCE_PROOF_CANDIDATES
until a later user-authorized Lean compilation, expected
types check, independent kernel replay and complete
transitive axiom/native/opaque audit.

Current pinned user-deferred status: compilation,
parser, elaboration, expected types, kernel and
transitive axiom audit ALL NOT_RUN.
No CI, Noe native owner, scheduler or automation run.

The unresolved RH mathematical supplier is STILL
an independently proved full all-positive-rate
signed original FAR or fixed compensated core bound,
or equivalently an independently proved all-positive
rate original weighted square energy. A Gaussian
coefficient heat model can faithfully transfer the
source only after its complete positive error is paid,
and its SIGNED heated observed energy is STILL open.
S2-S3 delimit the permissible smoothing schedules for
the positive-error transfer, not the analytic arithmetic
zero-free conclusion.
