# Local-to-global analytic supplier: Fejér windows for the actual Liouville walk

Local mathematical attribution: grwtsk contributors.
Research date: 2026-10-31.
Baseline source: grwtsk/math at
9fcdd3a98232805b10ea12508f2a2afeb16ae8fe.

**Status:** mathematical derivation of finite universal identities and
conditional arithmetic transfers; no unconditional new Liouville/Möbius
cancellation, no proof of RH, and no Lean source claimed accepted. This is
a DOCUMENTATION-ONLY analytic increment. Lean compilation,
fresh kernel replay, expected types, and transitive axiom audit of the
earlier source candidates remain NOT_RUN.

## 1. The exact root-labelled finite source

Fix N>=1, 1<=H<=N, and real labels a_1,...,a_N. In applications
use the actual positive-integer ArithmeticFunction.liouville or
ArithmeticFunction.moebius, not an arbitrary random surrogate.
Place the finite labels on Z/NZ, only as a FINITE READOUT;
there is no assertion that the infinite arithmetic source is periodic.

Write
    S_N = sum_(n=1)^N a_n,
    D_N = sum_(n=1)^N a_n^2,
    C_N(h) = sum_(t=0)^(N-1) a_(1+t) a_(1+((t+h) mod N)),
                 h in Z/NZ.

The existing signed cyclic-walk source
GRWTSK/ProbabilityTheoryAndStochasticProcesses/
SignedCyclicWalkPacket.lean, source Git blob
2f07d2d96384e6bbcca610bce9f5cb1eecade91b,
has the source proof candidate for

    sum_(h mod N) C_N(h) = S_N^2,
    C_N(0) = D_N.

The preceding analytical review
signed-cyclic-chowla-zero-mode-local-global.md
(blob a6f8e43608be4caef7feaa82800d29868a091ec0)
proves the exact ordinary/cyclic gap pairing

    C_N(h) = U_N(h)+U_N(N-h),    1<=h<N,
    U_N(h) = sum_(n=1)^(N-h) a_n a_(n+h).

Each wrapped term is an opposite-gap orientation. It is not
legitimate to delete it or bound every seam in absolute value
before complete shift aggregation.

## 2. The new exact Fejér/short-window quadratic

Define the cyclic H-window sum at each original root:

    B_(N,H)(t) = sum_(r=0)^(H-1) a_(1+((t+r) mod N)),
    V_N(H) = sum_(t=0)^(N-1) B_(N,H)(t)^2.

Every root has exactly H occurrences across all windows:

    sum_(t=0)^(N-1) B_(N,H)(t) = H S_N.            (1)

Expanding the nonnegative window square and regrouping by
the *signed* cyclic gap s-r gives

    V_N(H)
      = H D_N + 2 sum_(h=1)^(H-1)(H-h) C_N(h).     (2)

Proof: there are H diagonal pairs r=s. For each positive
difference h<H there are H-h ordered pairs (r,s) with s-r=h,
and H-h with r-s=h. The real cyclic correlations obey
C_N(-h)=C_N(h), by the root translation and swapping
factors. This holds even when H is comparable to N;
the first h is interpreted modulo N in the cyclic source.
The sum in (2) retains every sign and BOTH orientations.
It is not a positive majorant on individual correlations.

Cauchy--Schwarz applied to the original N window roots
proves the exact deterministic local-to-global inequality:

    H^2 S_N^2
       = (sum_t B_(N,H)(t))^2
       <= N V_N(H),                               (3)

or equivalently

    S_N^2 <= (N/H^2)*V_N(H).                     (3')

Equation (3) is not a Liouville-specific estimate:
it holds for every real finite word. Its arithmetic content
can only enter through a NEW upper bound for V_N(H).

A second proof uses Fourier characters on Z/NZ.
Set

    Ahat_N(k) = sum_(t=0)^(N-1) a_(1+t) exp(-2pi i k t/N),
    W_H(k) = sum_(r=0)^(H-1) exp(2pi i k r/N).

Parseval yields the exact nonnegative spectrum

    V_N(H) = (1/N)sum_(k=0)^(N-1)
                         |Ahat_N(k)|^2 |W_H(k)|^2, (4)
    V_N(H) >= (H^2/N) S_N^2.                     (4')

The latter is the k=0 term and reproduces (3).
All nonzero Fourier modes are NONNEGATIVE contributions.
Positivity alone supplies the lower inequality (4'), not
the needed upper saving. A spectral method must control
the actual original zero mode or prove an applicable
upper bound for the whole positive quadratic. No spectral
or heat-flow analogy is used as an arithmetic estimate.

## 3. A quantitatively exact sufficient arithmetic supplier

For 0<eta<1 put

    H_eta(N) = ceil(N^(1-eta)).

Then 1<=H_eta(N)<=N and H_eta(N)>=N^(1-eta).
Consider the DIRECT, currently UNSUPPLIED arithmetic estimate:

    (WindowDiffusive_eta)
    exists A_eta>=0, for EVERY N>=1,
       V_N(H_eta(N)) <= A_eta * N * H_eta(N),     (5)

with the ACTUAL Liouville signs in V_N.

Under (5), inequality (3') gives

    |L(N)|^2 <= A_eta N^2/H_eta(N)
              <= A_eta N^(1+eta),               (6)
    L(N) = sum_(n<=N) lambda(n).

Every source constant is uniform in N and across the
FULL active shift range 1<=h<H_eta(N). No per-shift
constant or selective endpoint can be concealed.

The original causal Liouville response is

    F_lambda(u)
      = 2 sum_(n<=exp u)lambda(n)
          (n^(-1/2)-exp(-u/2))
      = integral_1^(exp u) L(t)t^(-3/2)dt,  u>=0. (7)

The second equality is exact Abel summation. For t>=1,
L(t)=L(floor t), and (6) yields
|L(t)|<=sqrt(A_eta)*t^((1+eta)/2). Thus

    |F_lambda(u)|
      <= (2 sqrt(A_eta)/eta) (exp(eta u/2)-1).

Consequently, for every T>=0,

    H_lambda(T) = integral_0^T |F_lambda(u)|²du
      <= (4 A_eta/eta^3) (exp(eta T)-1).         (8)

This is a COMPLETE mathematical deduction under the
EXPLICIT unsupplied arithmetic premise (5). It proves
no cancellation merely from the cyclic or Fourier
representations.

The square-divisor causal-delay transport in
square-divisor-causal-energy-closure.md (blob
e0c33c64a358c0c6f24f043d36e9504dba765292)
then implies

    H_mu(T)
      <= (4 A_eta/eta^3) (1+1/eta)^2 exp(eta T). (9)

This uses ALL original causal weights and the
original Möbius coefficients after complete
real-valued delay transport. The four parity
sectors, squareful zeros, and curvature allowance
retain their already established distinct scope.

If (5) were proved FOR EVERY eta in (0,1), equation
(9) would establish the source all-positive-rate
energy target; the prior conditional analytic return
would yield RH subject to its actual source/kernel
acceptance. This remains conditional, not a new proof.

### Intermediate critical-strip exponent ladder

More generally suppose at some fixed 0<alpha<=1,
beta>=0, with H(N)=ceil(N^alpha), one has the
unsupplied family

    V_N(H(N)) <= A * N * H(N) * N^beta
                      for every N>=1.           (10)

Then (3') implies

    |L(N)| <= sqrt(A)*N^(1-alpha/2+beta/2).

When 1-alpha+beta>0, the Abel integral gives a
causal energy upper exponent 1-alpha+beta
(with a finite exponent-dependent constant).
Thus alpha=1/2 and beta=0 would give a causal
energy exponent 1/2, and, through the EXISTING
conditional Laplace return, a zero-free benchmark
Re(s)>3/4. This is only a PARAMETRIC IMPLICATION;
the arithmetic estimate for alpha=1/2 is NOT
proved by current short-interval literature.

## 4. A sharp scope test: the half-horizon window criterion

Set H_*(N)=ceil(N/2). The following two
ALL-POSITIVE-RATE statements are equivalent:

(P) for every eps>0, exists K_eps such that
    |L(N)|<=K_eps N^(1/2+eps) for all N>=1;

(W) for every eps>0, exists A_eps such that
    V_N(H_*(N))
       <= A_eps N H_*(N) N^(2eps)
                            for all N>=1.

(W)->(P): since H_*(N)>=N/2, (3') gives
    S_N² <= 2 A_eps N^(1+2eps).

(P)->(W): every cyclic H_*-window is at most TWO
ordinary intervals of the original 1..N prefix.
Each ordinary interval sum is a difference of two
prefixes; a wrapped window is at most a sum of two
such differences. Therefore
    |B_(N,H_*)(t)|<=4 K_eps N^(1/2+eps)
for every t, and
    V_N(H_*) <= 16 K_eps² N^(2+2eps)
              <= 32 K_eps² N H_* N^(2eps).

This is an EXACT all-rate EQUIVALENCE, with
explicit constants, not an extra arithmetic proof.
Classical analytic number theory identifies (P)
for the actual Liouville coefficients with RH,
through zeta(2s)/zeta(s), or through the existing
exponent-preserving Liouville/Möbius causal delay
return and its separately audited Laplace consumer.

## 5. Why current short-interval results do not prove (5)

Matomäki, Radziwill, Tao, Teravainen, Ziegler,
*Higher uniformity of bounded multiplicative
functions in short intervals on average*,
Annals of Mathematics 197 (2023), 739-857,
DOI 10.4007/annals.2023.197.2.3, prove
qualitative o(X H) cancellation on average in
short Liouville windows (with additional
polynomial/nilsequence phase uniformity).
The averaging variable is the interval origin,
not all N cyclic roots at one specific cutoff.

Siddarth Menon, *Improved bounds for multiplicative
functions in almost all short intervals*,
arXiv:2607.15574 (2026), refines quantitative
normalized mean-square bounds by essentially
logarithmic factors on the short interval length
in the ranges of his theorem. The result is
nontrivial but not diffusive square-root-scale
mean-square control.

For ordinary short windows, a rate of the shape

    average_start |B_start/H|² <= o(1)

only gives average |B_start|²=o(H²).
The required diffusive scale in (5) is
average |B_start|²=O(H). For polynomial
H=N^alpha, a bound of order H²/(log N)^c
is larger than O(H) by H/(log N)^c, which
diverges. This is the first quantitatively
unpaid bridge, before any cyclic boundary
transfer or full-height RH return.

OpenAI Math's published fixed-affine
ordinary two-point theorem also lacks the
uniform joint parameters for all h<H_eta(N).
The existing GRWTSK Walsh pattern / TV
theorems are unconditional finite identities
and comparisons, not an estimate for (5).

## 6. Source-dependent and hostile fixtures

For all-one labels a_n=1,
    S_N=N,  C_N(h)=N, V_N(H)=N H².
Equation (3') is equality. The proposed
diffusive bound (5) would fail for
H_eta(N)->infinity. Thus the group and
Fejér algebra cannot force the saving.

For an alternating even-length sign prefix
a_n=(-1)^n, S_N=0. For even H, every
cyclic window is zero, hence V_N(H)=0.
The signed, negative off-diagonal correlations
cancel the positive diagonal EXACTLY.

For a balanced two-block sign array of length
N=2m with +1 on the first m indices and -1
on the final m indices, S_N=0 while
V_N(m) is of order N*m². Thus a one-scale
small zero mode need not make the WHOLE
short-window energy diffusive; the near-half
window criterion in Section 4 becomes
equivalent only when it holds for EVERY
original prefix N and all positive rates.

No hostile sign fixture is asserted to be
completely multiplicative. Arithmetic
multiplicativity is the missing source
property a real proof must exploit.

## 7. Exact consumer disposition

The new junction is:
    genuine quantitative SHORT-WINDOW second
    moment supplier for actual lambda,
        V_N(H_eta(N)) <= A_eta N H_eta(N)
                         for all eta,N
           => explicit all-height Liouville
              pointwise prefix bound (6)
           => original causal Abel energy (8)
           => exact square-divisor delay (9)
           => existing conditional canonical RH
              Laplace return.

The equivalence criterion (P)<->(W) is
a source-sensitive alternative test, NOT an
independently proved supplier. The general
Fejér identity makes the zero-frequency
obstruction visible; a positive spectrum or
random-model expectation is insufficient.

The only new theorem-level content of THIS
increment is finite algebra plus precise
conditional mathematical implications; no
new nontrivial uniform arithmetic estimate
is supplied. There is NO claim of originality
for Fejér, Parseval, Cauchy--Schwarz, or Abel
summation. What is new within this programme
is their exact quantifier/constant-boundary
comparison against the existing GRWTSK
source and the 2023/2026 literature.

Independent finite diagnostics: 81,600
exact integer assertions over N=1,...,100,
all 1<=H<=N, for actual Mobius, actual
Liouville, all-positive and alternating
comparison fixtures. They check the full
cyclic packet, window convolution (1)-(2),
nonnegative zero-mode inequality, and
opposite-gap transport. Finite diagnostics
are not a proof of (5) or formal acceptance.

No Lean source files, imports, dependencies,
proof axioms, kernel receipts, effectful
verification runners, or schedulers are
changed by this analytical increment.
