# Adaptive finite-height Perron: a larger noncircular near-critical Mertens range and finite original RH-shaped FAR bound

Research date: 2026-11-02, America/Los_Angeles.
Attribution: grwtsk contributors, mathematical source and Lean source-assistance OpenAI ChatGPT.
Classification: complete ordinary mathematical proof using accepted P&T finite-height RH verification and elementary Perron/truncated sums; source-level Lean proof candidates UNCOMPILED per user. NO global RH proof.

## 1. Exactly preserved original sources and public evidence

All source definitions and original signs remain unchanged:
- grwtsk/math MoebiusReciprocalZetaPerronBridge.lean, blob
  69ae2587f1f6e30adec21b9d7dcf43eeffa2a499,
  gives genuine R(s)=(s-1)/ZetaAsymptotics.riemannZeta₁(s),
  perronVertical(x,sigma,H) and exact horizontal correction.
- grwtsk/math MoebiusPerronLocalCriticalWindow.lean, blob
  d48a4182e582a228e140d445b5778b41791962b8,
  gives SOURCE-CANDIDATE local finite-rectangle contour shifts
  requiring only Z1 nonzero on the actual rectangle.
- grwtsk/math MoebiusReciprocalCriticalCompact.lean, blob
  312fc9341c57dc783acc914b5ed43bd2d3bf2152,
  records Platt-Trudgian as an explicit external *finite-height*
  unimported theorem and compact true reciprocal bounds.
- grwtsk/math MoebiusFarCompleteUpperTransfer.lean, blob
  11b3913a25626bbd4e1a593b50c31e82bac6abee,
  gives the EXACT original signed cross decomposition with
  three previously paid genuine source subpackets.
- grwtsk/math MoebiusCausalMertensSquareBridge.lean, blob
  be156509d9679a22b52b32d087f87d8449a047ef,
  preserves true original finiteMertensPrefix and the physical
  causal finite Abel identity; MertensPrimitive.lean records
  pickupVelocity(u)=exp(-u/2)*M(exp u),
  wholePickup=int velocity, pickupEnergy=int wholePickup^2.

The pinned Lean/Mathlib release remains Lean v4.34.1 and
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
NO original coefficient, birth gate, squareful zero,
physical signed Gram, endpoint quadrature, fixed dyadic
grid or source mask has changed.

Independent certified finite-height input: Platt and Trudgian,
"The Riemann hypothesis is true up to 3*10^12,"
Bull. London Math. Soc. 53 (2021), 792-797,
DOI 10.1112/blms.12460, proves all zeta zeros up to
H0=3*10^12 have Re(s)=1/2. This is a finite-height theorem,
NOT RH. It has NOT been imported into pinned Lean.

For each fixed 0<delta<1/2 let sigma=1/2+delta.
The genuine R(s) has no poles on
  sigma<=Re(s)<=2, |Im(s)|<=H0
by the finite verification, the exact real-axis zeta
nonvanishing, and pinned Mathlib Re(s)>=1 nonvanishing.
Therefore an EXISTENTIAL C_delta<infinity satisfies
  |R(s)|<=C_delta throughout this compact rectangle.
No numerical minimum |Z1|, hence no numeric C_delta,
has been calculated or independently certified.

## 2. Crucial change: use an ADAPTIVE absolutely convergent right line

The prior direct right-line truncation selected c=2 and
H=x^2, which forced x<=sqrt(H0)≈1.732e6 to stay inside
the verified height range.

For N>=8 put
  x=N+1/2, L=log x>=2,
  c(x)=1+1/L, H=H0=3e12.                     (1)
This is a legitimate Perron line because c(x)>1,
and so the ORIGINAL Möbius Dirichlet series is
absolutely convergent:
  1/zeta(c+it)=sum_{n>=1} mu(n)/n^(c+it).
No zero-free extension, RH assertion, or newly defined
Möbius coefficient is needed on that right line.
The exact scalar identity x^c=e*x now removes one full
power of x from the traditional c=2 right-edge cost.

The standard truncated Perron kernel at real c>0
satisfies for all y>0,y!=1,H>0:
 |1_(y>1) - (1/(2*pi))*int_{-H}^H
                   y^(c+it)/(c+it) dt|
       <= (2/pi)*y^c/(H*|log y|).            (2)
This is Fourier/Perron inversion plus integration by
parts of both oscillatory tails. It is ordinary complex
calculus independent of zeta's zeros. The classical
Tang-Chen Perron lemma at a variable right line is a
separate public reference; our constants use (2).

Interchange the absolutely convergent ORIGINAL μ-series
with the finite t integral and set y=x/n. The EXACT
original finiteMertensPrefix N then obeys:
  |M(N)-V_(c,H)(x)|
   <= (2/pi)*(x^c/H)*S_c(x),                 (3)
  S_c(x)=sum_{n>=1}
            1/(n^c*|log(x/n)|).
The half-integer x ensures every denominator is nonzero,
|x-n|>=1/2. The sum is positive and genuinely convergent
because c>1.

## 3. An independent explicit reciprocal-log sum bound

We prove the elementary estimate
  S_c(x)<=64*L,    L=log x>=2, c=1+1/L.     (4)
No Möbius cancellation or zero-free hypothesis occurs.

A. n<=x/2: here |log(x/n)|>=log2>1/2.
Use the decreasing p-series:
  sum_(n>=1)n^(-c)<=1+int_1^infinity t^(-c)dt
                   =1+1/(c-1)=1+L.
Therefore contribution A <=2(1+L).

C. n>=2x: again |log(x/n)|>=log2>1/2.
Since 2x is an integer for half-integer x, the
integral comparison gives
  sum_(n>=2x)n^(-c) <= int_(2x-1)^infinity t^(-c)dt
          =(2x-1)^(1-c)/(c-1)<=L,
because 2x-1>=1 and 1-c<0.
Thus C<=2L.

B. x/2<n<2x: monotonicity/mean-value theorem gives
  |log(x/n)| >= |x-n|/max(x,n)
                 > |x-n|/(2x).
Because n>x/2, c<=2 and x^(1-c)=e^(-1)<1,
  1/(n^c*|log(x/n)|)
       <=2^(c+1)*x^(1-c)/|x-n|
       <8/|x-n|.
Write x=N+1/2. For each k>=0, at most two integers n
satisfy |x-n|=k+1/2. There are no relevant k>2x.
The harmonic integral comparison gives
  sum_(x/2<n<2x)1/|x-n|
    <=2*sum_(k=0)^(2x)1/(k+1/2)
    <=4+2log(4x+1)
    <=8+2L,
using 4x+1<=5x and log5<2 for x>=8.5.
Therefore B<=64+16L.

Combining:
  S_c(x)<=2+2L+64+16L+2L
        =66+20L <=53L <=64L
for L>=2. This proves (4) with considerable slack.

With x^c=e x, 2/pi<1 and e<3, (3)-(4) give
  |M(N)-V_(c,H0)(x)|
    <=(2/pi)*e*x/H0*64L
    <192*xL/H0
    <=200*xL/H0.                           (5)

This is a NEW fixed-HEIGHT original Möbius truncation
inequality, for every N>=8, not merely N<=sqrt(H0).
The bound becomes weak for huge x, but remains VALID.

## 4. Independent finite VERIFIED-HEIGHT contour shift

Fix delta in (0,1/4], sigma=1/2+delta,
c=1+1/L (so 1<c<=3/2, sigma<c).
The verified finite-height rectangle has no Z1 zeros
for sigma<=Re(s)<=c, |Im s|<=H0.

By the preexisting honest local contour shift,
  V_(c,H0)(x)=V_(sigma,H0)(x)
                 +Horizontal_(sigma,c,H0)(x).    (6)

The standard original normed integral upper bounds from
the same genuine reciprocal C_delta are
  |V_(sigma,H0)(x)|
    <=(C_delta/pi)*x^sigma*(1/sigma+log H0),     (7)
because |sigma+it|>=sigma for |t|<=1
and >=|t| for 1<=|t|<=H0, with both orientations.

For both original horizontal edges, |s|>=H0,
the total interval length is at most 2(c-sigma),
and x^(Re(s))<=x^c=e*x for x>=1. Thus
  |Horizontal_(sigma,c,H0)(x)|
    <=(C_delta/pi)*(c-sigma)*e*x/H0
    <=2*C_delta*x/H0.                           (8)

Combining (5)-(8), for ALL N>=8:
  |M(N)| <=
    (C_delta/pi)*x^sigma*(1/sigma+log H0)
      +(2*C_delta+200log x)*x/H0.               (9)

This is unconditional ordinary mathematics from a
PUBLISHED finite verification plus standard complex
integral estimates. It has NO global zero-free claim.
It preserves the ORIGINAL Mertens sum and all contour
terms, and does not rely on the previous c=2,H=x^2
small-domain restriction.

## 5. An EXPLICIT conservative cutoff and RH-SHAPED finite bound

Put L0=1+log H0, Q=H0/(1000*L0), and
  X_delta=Q^(1/(1/2-delta)), 0<delta<=1/4.      (10)
H0=3e12 implies Q>1e8 and thus X_delta>e^2.

If x=N+1/2<=X_delta, then
  x^(1-sigma)<=Q
and
  log x<=log(X_delta)
       <=4log H0
because 1-sigma=1/2-delta>=1/4 and Q<H0.
Consequently
 (2*C_delta+200log x)*x/H0
    <=x^sigma*(2*C_delta+800log H0)/(1000*L0)
    <=(C_delta/500+4/5)*x^sigma
    <=(C_delta+1)*x^sigma.                     (11)

Equations (9)-(11) give the genuine near-critical
Mertens envelope for every 8<=N with x<=X_delta:
  |M(N)| <= D_delta*x^(1/2+delta),             (12)
  D_delta=(C_delta/pi)*
             (1/(1/2+delta)+log H0)+C_delta+1.

These are finite *existential* constants from the
published verified strip, not explicit numerical
certificates or an all-N Mertens theorem.

Numerical real-parameter cutoff calculations:
    delta   X_delta approx    floor(log2(X_delta))
    0.001   1.10e16           53
    0.01    2.16e16           54
    0.05    6.12e17           59
    0.10    1.02e20           66
    0.25    1.04e32           106
The near-critical estimate exponent changes with delta;
the wider ranges at larger delta have weaker power exponents.
The bounds may be numerically ineffective because C_delta
has not been computed.

For comparison the previous c=2,H=x^2 scheme at H0
only reached x<=sqrt(H0)≈1.732e6, i.e. dyadic J<=20.
The adaptive right edge extends the theoretical 0.01
near-critical window to dyadic J<=54.
This is a genuine gain in the finite-height method, not
an asymptotic RH proof.

## 6. Exact original Möbius causal-energy and signed FAR implications

On the range N+1/2<=X_delta, (12) yields
|M(N)|<=D_delta' N^(1/2+delta) with
D_delta'=2D_delta+8 (N<8 paid by |M(N)|<=N;
N>=8 uses N+1/2<2N and sigma<1).
The same bound applies to M(e^u) via original floor cutoffs
when 0<=u<=Tstar=log(X_delta-1/2).

The ORIGINAL source physical velocity is exactly
  pickupVelocity(u)=exp(-u/2)*M(exp u).
Therefore
  |pickupVelocity(u)|<=D_delta'*exp(delta*u).
True original interval integration gives
  |wholePickup(t)|
    <=D_delta'*exp(delta*t)/delta
for 0<=t<=Tstar, and the nonnegative ORIGINAL
energy satisfies
  pickupEnergy(T)<=
    (D_delta'^2/(2*delta^3))*exp(2delta*T),
    0<=T<=Tstar.                               (13)
No change to coefficients, original birth gate,
finite endpoint or causal kernel is made.

Original pickupCross=pickupEnergy-pickupDiagonal
with nonnegative pickupDiagonal, hence its one-sided
upper is <=the RHS of (13).
The preexisting signed source identity is EXACT:
  pickupCross(T_J) =
     collarIncident(B_J,J)+shortRatio(B_J,J)
       +reducedClose(B_J,J)+farReducedOrLongCross(B_J,empty,J).
The three genuine previously paid packets have
independent elementary bank-uniform every-positive-rate
ABSOLUTE upper envelopes, with their pinned Lean
numeric formalizations still UNPROVED/NOT_RUN.

Choose their fixed rate r=2delta. They supply one
bank-independent Cpaid_delta with
   |incident|+|short|+|reducedClose|
       <= Cpaid_delta*exp(2delta*T_J).
Combining with (13), for all admissible true-prime
bank families B(J) and all J>=1 with T_J<=Tstar,
  farReducedOrLongCross(B_J,empty,J)
    <= [D_delta'^2/(2delta^3)+Cpaid_delta]*
                         exp(2delta*T_J).       (14)

This is a FINITE-DYADIC RH-SHAPE upper envelope for
the ACTUAL complete signed far source, not a surrogate
Gram. It does NOT prove the global all-positive-rate
statement because for each fixed delta, Tstar<infinity
and C_delta can depend arbitrarily on delta.

The new additive source
 MoebiusAdaptiveFiniteScaleRHReturn.lean
provides a conditional source theorem body at this exact
finite range; its one remaining source-calculus interface
AdaptiveFiniteRangeMertensEnergyTarget is the elementary
original finite-prefix-to-energy implication (13), NOT
a hidden far/RH cancellation assumption.

## 7. Precise noncircularity and continuation

All finite verified-height assumptions are explicit:
 PublishedFiniteHeightZetaZerosOnHalf is the Platt–Trudgian
 EXTERNAL finite result (unported into pinned Lean);
 FiniteHeightCompactReciprocalBoundTarget is standard
 continuity/compactness on a fixed rectangle;
 AdaptiveAbscissaAndCutoffTarget,
 AdaptiveRightLineTruncationTarget,
 AdaptiveFiniteHeightContourNormTarget,
 AdaptiveFiniteCutoffAbsorptionTarget and
 AdaptiveFiniteRangeMertensEnergyTarget
 are RH-INDEPENDENT elementary/complex-source numerical
 or physical calculus interfaces, still UNPROVED LEAN.
 The three pre-existing paid subpacket magnitude targets
 are also exposed and not promoted to axioms.

The two new Lean source proof candidates retain exact
unmodified original coefficient, physical source and
Perron kernel. This work does NOT assert any theorem
on a zero-free region at arbitrarily large height, an
effective numerical C_delta, or a universal J bound.

A zeta zero above H0 and to the right of 1/2 remains
compatible with the finite-height published evidence.
Such a zero would invalidate an attempted unbounded
shift and could create Mertens contributions of larger
power. Therefore (14) cannot be extended to every J
without genuinely additional analytic or arithmetic
information. The full every-positive-rate original FAR
bound and canonical RH remain OPEN.

## 8. Static and independent diagnostic scope

Independent numeric arithmetic check for H0=3e12:
Q=H0/(1000*(1+log H0))≈1.009e8.
For selected genuine half-integer x with N=8,16,64,256,
1024,10000, a finite sum plus conservative positive
integral tail upper on S_c(x) gave ratios S_c(x)/log x
between 1.08 and 1.93, comfortably below the proven
64. This does NOT validate the infinite theorem:
the three-region integral comparison is the actual proof.

The new source is additive ONLY; no original file,
root import, pinned toolchain or external repo mutated.
User explicitly deferred Lean compilation. Git source
readback can confirm publication identity but is not
Lean parser/elaborator/expected-types/kernel/transitive
axiom/opaque/native acceptance. All such facets NOT_RUN.
No Noe native worker, CI, scheduled automation or
browser workflow dispatched.

## References

- Platt–Trudgian, Bull. London Math. Soc. 2021,
  "The Riemann hypothesis is true up to 3·10^12",
  https://doi.org/10.1112/blms.12460 .
- Tang–Chen, MIT, The Prime Number Theorem with Error Term,
  2019, page 33, explicit truncated Perron formula:
  https://math.mit.edu/research/highschool/primes/materials/2019/December/Chen-Tang-PrimeNumberTheorem.pdf .
- Mathlib original reciprocal/Z1 source at pinned commit:
  https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/Harmonic/ZetaAsymp.lean .
- grwtsk/math original Perron source at current main.
