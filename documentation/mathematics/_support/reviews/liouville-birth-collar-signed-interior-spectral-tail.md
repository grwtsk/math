# Source-exact fifth-power birth collar, long-gap reduction, and arithmetic spectral-tail control

Local mathematical attribution: grwtsk contributors. Investigation date: 2026-10-31.

**Proven mathematically below:** an unconditional uniform-energy removal of the
last N^(4/5) ORIGINAL causal Liouville labels on controlled fifth-power scales;
the exact complete signed three-sector decomposition; a source-equivalent
interior long-gap all-positive-rate target; and a sharper current-arithmetic
bound on the complete terminal-pair sector. Also derived is a genuine
high-frequency Sobolev moment for the original zeta-quotient spectrum on the
externally known fixed damping half-plane.

**Verification status:** source proof scripts in the additive Lean module are
SOURCE_PROOF_CANDIDATE. The real-integral collar and spectral theorems below
are analytical proofs, NOT new Lean-accepted declarations. Compilation,
expected interfaces, fresh kernel replay and transitive axiom audit NOT_RUN.
No all-positive-rate arithmetic cancellation or Riemann Hypothesis proof.

## 1. Unchanged source and precise geometry

The original causal response is
  r_n(u)=2 max(n^(-1/2)-exp(-u/2),0), n>=1
from `CCC.pickupResponse`, source blob
`45e06c371d67bcf8c939d20a95fcbc63570546fa`.

The original Liouville coefficients are
  a(n)=lambda(n)=(-1)^Omega(n), n>=1, |a(n)|=1
from `LiouvilleCausalEnergyTarget.lean`, blob
`a00aaa07c067b4c88203372870b5d5d151de0de4`.
No model/random signs are substituted.

At integer N>=2, T=log N and R=N-W, with 0<=2W<=N, define
  B_(N,W)(u)=sum_(1<=n<=R) a(n) r_n(u),
  C_(N,W)(u)=sum_(R<n<=N) a(n) r_n(u),
  H_B=integral_0^T |B(u)|²du,
  H_C=integral_0^T |C(u)|²du.

On the CLOSED time interval [0,log N], the original dynamic waveform
equals B+C: any n>N has not been born and every n=N term is zero
at the birth endpoint. At u=0, r_1(0)=0; no fictitious
`pickupResponse 0` is introduced.

The full original half-off-diagonal signed aggregate is
`LiouvilleDoubleAbelCausalKernel.positiveGapAggregate N`, blob
`b102b4af07b0a1001424b084101c2cc16077181a`.
Its finite three-sector partition is proved as a Lean source candidate
in the additive module, using the original `lattice`, `signedPair`
and `causalKernel` definitions. No absolute value or dropped orientation
is used in that algebraic identity. The historical double-Abel boundary
closure blob `54dc35f79844d1fbfc59f5b408f7e06039c0e812`
is unchanged.

## 2. Unconditional uniform birth-collar energy theorem

The following argument holds for ANY real coefficients a(n) with
|a(n)|<=1; thus it applies to literal positive-index Liouville and
Möbius coefficients.

Set Delta=log(N/R)=log(1+W/R). Because W<=N/2, R>=N/2>=1,
and elementary log(1+x)<=x gives Delta<=W/R.

Every n>R has birth time log n>log R. Hence C(u)=0 throughout
0<=u<=log R. For log n<=u<=log N the original response has
the exact fundamental-theorem-of-calculus identity

  r_n(u)=integral_(log n)^u exp(-v/2)dv.

Because exp(-v/2)<=1/sqrt(R) on this interval,

  0<=r_n(u)<=(u-log n)/sqrt(R)
             <=(u-log R)/sqrt(R).

There are at most W indices n, so

  |C(u)| <= (W/sqrt(R)) (u-log R)
      for log R<=u<=log N.

Squaring and integrating the COMPLETE signed collar waveform,

  H_C <=(W²/R) * integral_0^Delta t² dt
      = W² Delta³/(3R)
      <= W^5/(3R^4)
      <=(16/3)W^5/N^4.                         (C1)

The collar diagonal
  D_C=sum_(R<n<=N) a(n)² integral_0^T r_n(u)²du
satisfies, by the SAME pointwise bound,

  0<=D_C <= W^4/(3R^4).                        (C2)

These are physical-time integral results, not mere finite numerical tests,
and every coefficient sign remains intact until after the full waveform is
formed. They require no cancellation estimate.

## 3. Exact fifth-power scales and controlled coverage

Take an integer k>=2 and set

  N=k^5, W=k^4, R=k^4(k-1), T=5 log k.

Then 2W<=N, W^5=N^4, and W/R=1/(k-1). Thus (C1)-(C2) give

  H_C <= (1/3)(k/(k-1))^4 <= 16/3,
  D_C <= 1/(3(k-1)^4) <= 1/3.                  (C3)

The original complete energy H_lambda(T)=||B+C||² obeys

  H_lambda(T) <=2H_B+2H_C <=2H_B+32/3,
  H_B<=2H_lambda(T)+2H_C <=2H_lambda(T)+32/3. (C4)

These inequalities pay the whole 2<B,C> mixed term by the
Cauchy-Schwarz/Young square inequality; they do not erase it.
They are valid with every original Liouville coefficient.

For a fixed logarithmic mesh choose k=2^j, j>=1, so

  N_j=2^(5j), W_j=2^(4j), R_j=N_j-W_j,
  T_j=5j log 2, G_j=j².

The time mesh has spacing 5log 2, so every sufficiently large T
has some T_j in [T,T+5log2]. Monotonicity of the ORIGINAL
nonnegative cumulative energy fills the gaps; no sparse-only
claim is substituted for all-height control.

## 4. Exact signed partition and the reduced arithmetic target

Write K_T(m,g)=integral_0^T r_m(u)r_(m+g)(u)du.
For N=N_j and R=R_j, define the ORIGINAL signed components

  A_short(j)=sum_(1<=m<m+g<=R, 1<=g<=G_j)
               a(m)a(m+g)K_(T_j)(m,g),

  A_long(j)=sum_(1<=m<m+g<=R, g>G_j)
              a(m)a(m+g)K_(T_j)(m,g),

  A_terminal(j)=sum_(1<=m<m+g<N, m+g>R)
                  a(m)a(m+g)K_(T_j)(m,g).

The positive-gap original `signedPair` has strict m+g<N.
Terms with m+g=N are zero at birth, so the source equality is

  A_N=A_short+A_long+A_terminal.                (C5)

The additive Lean module proves the exact three-way finite split
with the ORIGINAL source `lattice N`, `signedPair N` and
`causalKernel (log N)`; it is valid also for N=0,1 as a
finite algebraic identity.

For the bulk indices 1<=n<=R, full Gram expansion retains both
orientations and the complete diagonal:

  H_B=D_B+2A_short+2A_long.                     (C6)

The actual diagonal and short-gap absolute allowance are elementary:
since 0<=r_n(u)<=2/sqrt(n), and T=T_j,

  0<=D_B<=4T(1+T),
  |A_short|<=4G_j T(1+T).                      (C7)

Combine (C4), (C6) and (C7), without replacing A_long by an
absolute value:

  H_lambda(T_j)
     <=4 A_long(j) + (8+16G_j) T_j(1+T_j) +32/3.
                                                         (C8)

Conversely, since D_B>=0, C4 and C7 yield

  A_long(j) <= H_lambda(T_j) +16/3
                   +4G_j T_j(1+T_j).                     (C9)

The harmless factors G_j=j² and T_j~j are polynomial in j,
hence O_epsilon(exp(epsilon*T_j)) for every epsilon>0.

**Exact arithmetic equivalence (mathematical, not Lean certified):**
the original `UniformEnergySupplier` is equivalent to

  For every epsilon>0 there is C_epsilon>=0 such that
  for every j>=1,
      A_long(j)<=C_epsilon exp(epsilon*T_j).

The direction from the reduced one-sided supplier uses C8 and
affine coverage of T_j. The reverse direction uses C9.
This is a STRICTLY SMALLER arithmetic source inventory:
all terminal indices n>2^(5j)-2^(4j) and short gaps <=j²
have been paid explicitly. It is **not** a weaker mathematical
conjecture than RH; the equivalence prevents that misreporting.

## 5. The complete terminal signed sector, with all mixed terms

Retain the collar diagonal D_C and write the complete signed
terminal-positive-gap half-energy exactly as

  A_terminal=<B,C>+(H_C-D_C)/2.                 (C10)

Here <B,C>=integral_0^T B(u)C(u)du; it includes all signed
bulk-collar pairs and both orientations in the full energy.
The other term is the full collar-collar off-diagonal half-Gram.

By Cauchy-Schwarz, C3 and nonnegativity of H_C,D_C,

  |A_terminal|
   <=sqrt(H_B H_C)+(H_C+D_C)/2
   <=(4/sqrt 3)*sqrt(H_B)+17/6.                 (C11)

**New actual-arithmetic partial gain.** The separately checked
Dirichlet zero-free bound from QuasiRiemannTracker PR #99 gives,
after classical zero-free-to-Liouville-summatory transport, the
external-input fixed exponent

  H_lambda(log N)=O_epsilon(N^(alpha_*+epsilon)),
  alpha_*=0.7467639332266.

At the same fifth-power scales, C4 implies
H_B=O_epsilon(N^(alpha_*+epsilon)). Therefore C11 proves,
conditional on that externally checked theorem and standard
analytic transfer,

  |A_terminal(j)|
    =O_epsilon(N_j^(alpha_*/2+epsilon))
    =O_epsilon(N_j^(0.3733819666133+epsilon)).   (C12)

This is a genuine stronger arithmetic bound for an original
SIGNED SECTOR, versus the known O(N^alpha) complete aggregate.
It is not a new global exponent improvement.

The actual source PR:
https://github.com/GTimG/QuasiRiemannTracker/pull/99
merged revision `fc2f46afbfda62351055d3c12fcacd4f6916cc63`;
the exact `Candidate.bound` theorem uses
`theta_*=8733819666133/10000000000000`.
The official verify/admission GitHub checks passed; local
`grwtsk/math` kernel replay and analytic return remain NOT_RUN.
The earlier exact external checking/spectral review is
`liouville-actual-spectral-zero-free-return.md`, blob
`865b57cd3a852e9e32773ffcf6bc926ce36e57a3`.

The direct sign-free kernel allowance of the complete terminal
sector is of order W³/N² (up to absolute constants) for W<=N/2.
At W=N^(4/5), that is N^(2/5), whereas the actual arithmetic
input improves the terminal sector to N^(0.37338+epsilon).
The distinction is quantitative, and the improved exponent does
not come from taking absolute values of signed correlations.

## 6. Genuine arithmetic spectral frequency-tail moment

For u>=0 the ORIGINAL causal waveform is absolutely continuous
on compact intervals: every term joins continuously at its
birth u=log n. Away from the discrete births,

  F_lambda'(u)=exp(-u/2)*L(exp u),               (C13)

where L(x)=sum_(1<=n<=x)lambda(n). This is a.e. derivative, not
a claim of classical differentiability at every birth.

For sigma>alpha_*, the above externally supplied summatory
estimate makes BOTH
  F_lambda in L²(exp(-sigma*u)du)
and
  exp(-u/2)*L(exp u) in L²(exp(-sigma*u)du).

Let g_sigma(u)=exp(-sigma*u/2)*F_lambda(u) for u>=0 and 0 otherwise.
The original exact birth response gives F_lambda(0)=0. Hence
g_sigma belongs to H¹(R), with no delta contribution at u=0.
Its weak derivative is

  g_sigma'(u)=exp(-sigma*u/2)*
    (exp(-u/2)*L(exp u)-sigma*F_lambda(u)/2)
     for u>0 a.e.

With the Fourier convention `hat g(t)=int_R exp(-it*u)g(u)du`,
Plancherel gives the ACTUAL arithmetic spectral moment

  (1/(2pi))*int_R t²|Phi_lambda(sigma/2+it)|²dt
   =int_0^infinity exp(-sigma*u)*
      |exp(-u/2)*L(exp u)-sigma*F_lambda(u)/2|²du
   =: C_sigma < infinity.                       (C14)

Here Phi_lambda is exactly the ORIGINAL Laplace transform
  zeta(2z+1)/(z*(z+1/2)*zeta(z+1/2)),
initially established on Re z>1/2 and extended to this damping
region using the externally checked zero-free theorem.

Thus for any frequency threshold U>0,

  int_(|t|>=U)|Phi_lambda(sigma/2+it)|²dt
     <=(2pi/U²)*C_sigma.                         (C15)

This is genuine source-specific *high-frequency mass control*,
not a generic sign-free square-delay operator bound.
It does NOT extend the spectral mass to sigma<=alpha_*.
The exact frequency moment is proved in this mathematical review,
but no Lean Sobolev/Plancherel code or admitted proof of the
zero-free-to-summatory bridge is claimed.

## 7. Hostile boundary and scale sharpness

The exponent 4/5 for a UNIVERSAL constant-energy deletion
cannot be increased using only coefficient magnitude.

Take all-positive coefficients and integers 8<=W<=N/4.
At least W/8 indices lie between N-W+1 and N-3W/4.
For u in [log N-W/(4N), log N] these indices have
u-log n >=W/(2N), and the exact response obeys
  r_n(u)>=W/(2*N^(3/2)).
Therefore the all-positive collar waveform is at least
W²/(16*N^(3/2)) on an interval of length W/(4N), giving

  H_C^(+)>=(1/1024)*W^5/N^4.                   (C16)

For W=N^(4/5+delta), 0<delta<1/5, the lower grows like
N^(5delta). This does NOT describe actual Liouville signs;
it proves the exponent's sign-free optimality.

At N=1, the original terminal coefficient is born with zero
response and there are no positive gaps. At W=0 the collar is
empty. The source-level finite partitions remain valid at N=0
as empty sums; the REAL log-integral collar theorem assumes N>=2.
No `pickupResponse 0` positive-part identity is used.

Independent finite high-precision diagnostics (not Lean evidence):
- k=2, N=32, W=16: H_C(liouville)=0.0198190547202,
  H_C(all positive)=0.1063270719874;
- k=3, N=243, W=81: H_C(liouville)=0.0067651764331,
  H_C(all positive)=0.0861169071161;
- k=4, N=1024, W=256: H_C(liouville)=0.0005914842498,
  H_C(all positive)=0.0750450612902;
- k=5, N=3125, W=625: H_C(liouville)=0.0003685662000,
  H_C(all positive)=0.0689626081758.
For k=2,3 the direct 3-sector signed double sums and independent
physical Gram energy agreed to high precision (residual <10^-60).
The analytic inequalities, not these fixtures, prove the
general k result.

## 8. Source implementation, acceptance and remaining obstruction

New additive Lean source
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalBirthCollar.lean`
contains complete original coefficient definitions, exact finite
signed three-sector partition, fixed-waveform split, positive
fourth/fifth-power arithmetic, and an explicit scalar cross-term
identity/Young bound.

The separately named OPEN Lean targets
`FifthPowerCollarEnergyBound` and
`OriginalWaveformAtFifthPower` make the unencoded real-integral
bounds/source bridge visible. They are `Prop` definitions ONLY,
not axioms and not accepted theorems. The mathematical arguments
are completed above, but their imported Lean/API steps must
still be formalized and compiled.

Next independent arithmetic obligation:
  A_long(j)=O_epsilon(exp(epsilon*5j*log2))
  at every positive epsilon and all j>=1,
with the EXACT original signed coefficients, middle/interior
gap mask, and complete source return.

No existing Chowla fixed-shift, logarithmic-average,
zero-free theta_*>1/2, sign-free kernel positivity,
finite computation, or formal conditional wrapper
proves that RH-strength bound. All-positive-rate
cancellation, the canonical RH and the complete local
Lean verification closure remain OPEN/NOT_RUN.
