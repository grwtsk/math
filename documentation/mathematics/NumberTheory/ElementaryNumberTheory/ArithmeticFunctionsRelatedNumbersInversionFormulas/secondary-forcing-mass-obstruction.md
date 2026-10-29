# The full-layer mass obstruction and the remaining observed-source route

Local mathematical attribution: grwtsk contributors.

## Scope and evidence

This is an independent mathematical deduction from the supplied causal-response and
prime-factor-layer definitions. No new literature search or external paper theorem
is used. The elementary real Dirichlet-series argument below is a written proof,
not a claim that its analytic steps have been implemented in Lean. The companion
`PickupSecondaryForcing.lean` supplies source proof scripts for the exact finite
arithmetic reduction, the two forcing steps, the consequences of a full-vector
mass inequality, and a scalar pole-slope lemma. Compilation, kernel replay and
transitive axiom auditing of all new source scripts are NOT_RUN.

The source must not be changed to make a generic operator estimate applicable.
In particular, an existing uniform mass theorem for another quadratic form does
not prove the false full-vector mass statement identified here.

## 1. The two independently specified forcing vectors

At time T_j=j log 2, use the existing layer waveforms f_{k,j}, with the original
response r_n and complete squarefree prime-factor layers. Let

    s_k = (-1)^k,       b_k = (k+1)(-1)^k,
    (Ba)_0 = a_0,      (Ba)_k = a_k+a_{k-1} (k>=1).

These are the existing coefficient forward map and explicit vectors, not vectors
chosen by looking at an eigenvalue or an unresolved error. Direct calculation gives

    Bs=e_0,             Bb=s.

Let Omega(n) count prime factors with multiplicity. Since mu(n)=0 off the
squarefree stratum, Omega(n) can equally be replaced by the number of DISTINCT
prime factors in every product with mu(n). Define

    c(n) = (1+Omega(n))*mu(n),
    W(u) = sum_{1<=n<=exp(u)} c(n)*r_n(u),
    H_1(T) = integral_0^T |W(u)|^2 du.

The finite layer expansion proves

    sum_k b_k f_{k,j}(u)
      = sum_{1<=n<=2^j} (1+Omega(n))*mu(n)*r_n(u).

On 0<=u<=T_j, terms born after u vanish. Thus the existing layer quadratic
energy of b is precisely H_1(T_j). No later-birth or terminal term is deleted
without this source identity. Its image under B is the original waveform F;
the image of F under B is the independent single response r_1.

The original energy is denoted H_0(T)=integral_0^T |F(u)|^2 du. The forcing
energy R(T)=integral_0^T r_1(u)^2 du obeys R(T)<=4T.

## 2. What an all-vector mass inequality would actually imply

Suppose, at a particular j, a number m_j>0 satisfies

    m_j E_j(a) <= E_j(Ba)                 for EVERY coefficient vector a,

where E_j is the actual layer Gram energy. Apply it first to a=s, then to a=b:

    m_j H_0(T_j) <= R(T_j),
    m_j H_1(T_j) <= H_0(T_j).

Consequently

    m_j^2 H_1(T_j) <= R(T_j) <= 4T_j,             (1)
    H_1(T_j) <= 4T_j/m_j^2.                      (2)

These are finite algebraic consequences of the declared quantifier over ALL a.
They do not use RH. They remain valid when empty and terminal-zero layer rows
are retained. In contrast, an inequality asserted ONLY for a=s has no right
to be reapplied to b.

## 3. The actual secondary Dirichlet series

For real s>1, define

    A(s) = sum_{n>=1} (1+Omega(n))*mu(n)/n^s.

The series is absolutely convergent: |mu(n)|<=1 and
Omega(n)<=log(n)/log(2) for n>=1. This also justifies the following exchanges.
Write Z(s)=zeta(s) and

    S(s) = sum_p 1/(p^s-1).

Partition each squarefree summand by a distinguished prime factor. If n=pm
and p does not divide m, then mu(n)=-mu(m). The Euler product, initially in
its absolutely convergent half-plane, gives

    sum_n mu(n) Omega(n)/n^s
      = -sum_p p^(-s) product_{q!=p}(1-q^(-s))
      = -Z(s)^(-1) sum_p p^(-s)/(1-p^(-s)).

Hence the SOURCE-EXACT identity is

    A(s) = (1-S(s))/Z(s).                         (3)

This is not a Gaussian, random-sign, character-family or substitute arithmetic
series. For every finite prime set, its finite-product version is an elementary
polynomial identity; absolute convergence permits the limit for s>1.

Now expand the real logarithm of the positive Euler product:

    log Z(s) = sum_p sum_{k>=1} p^(-ks)/k.

Thus

    S(s) = log Z(s) + R_*(s),
    R_*(s) = sum_p sum_{k>=2} (1-1/k)p^(-ks).

For every real s>1, the remainder is unconditionally bounded:

    0 <= R_*(s)
      <= sum_p sum_{k>=2} p^(-k)
      = sum_p 1/[p(p-1)]
      <= sum_{n=2}^infinity 1/[n(n-1)] = 1.        (4)

No prime number theorem, zero-free region or conjecture is needed for this bound.

For h>0, monotone integral comparison for sum_n n^(-1-h) yields

    1/h <= Z(1+h) <= 1+1/h.

Therefore h Z(1+h)->1 as h->0+, and log Z(1+h)->infinity. Equations (3)-(4) imply

    A(1+h) = [1-log Z(1+h)-R_*(1+h)]/Z(1+h) -> 0,
    A(1+h)/h -> -infinity.                        (5)

In particular, A has no finite right derivative at 1 when extended continuously
by A(1)=0. This is the real-variable logarithmic singularity; no branch choice
of a complex logarithm is required.

A useful finite form is: if L>=0, h Z<=2, R>=0 and log Z>=2L+2, then

    (1-log Z-R)/Z < -L h.                         (6)

The companion Lean file proves this scalar inequality. The zeta/Euler-product
identifications in this section are still part of the written analytic proof,
not automatically certified by that scalar lemma.

## 4. An energy rate below one contradicts that singularity

For n>=1 and real z>0, direct integration of the prescribed response gives

    integral_0^infinity exp(-zu) r_n(u) du
      = n^(-(z+1/2)) / [z(z+1/2)].

For real s>1, absolute convergence justifies summing this identity with c(n):

    A(s) = s(s-1/2) integral_0^infinity
                      exp(-(s-1/2)u) W(u) du.     (7)

Suppose H_1(T)<=C exp(alpha T) eventually, for a fixed 0<=alpha<1.
Absorb the bounded initial interval into C. On each unit interval [k,k+1],
Cauchy-Schwarz gives

    integral_k^(k+1) |W(u)| du <= sqrt(H_1(k+1)).

Choose z_0 with alpha/2<z_0<1/2. Then

    integral_0^infinity (1+u) exp(-z_0 u)|W(u)| du
      <= sqrt(C) exp(alpha/2)
         sum_{k>=0} (k+2) exp(-(z_0-alpha/2)k) < infinity.

Consequently the integral on the right of (7), and its first derivative in s,
converge locally uniformly for s in a real neighborhood of 1. This can be seen
directly from the mean-value bound for exp(-(s-1/2)u) and the displayed integrable
dominating function. Multiplication by s(s-1/2) preserves continuous
differentiability. Thus (7) supplies a C^1 extension of A through s=1.
By (5) this extension has value 0 at 1, but its right difference quotient tends
to minus infinity. Contradiction.

The same argument applies to a bound at every sufficiently large dyadic time:
H_1 is nonnegative and monotone, and the next dyadic time is at most log(2) away,
so an exponential bound on that grid gives one globally with a fixed multiplier.

Therefore, for every 0<=alpha<1, C>=0 and starting index J, there is j>=J such that

    H_1(T_j) > C exp(alpha T_j).                   (8)

This is a theorem about the SECOND forcing. It is NOT an exponential lower bound
for the original Mobius pickup energy H_0.

## 5. Exact upper exponential growth rate of the secondary energy

For u>=0 and n<=exp(u),

    1+Omega(n) <= 1+u/log(2),
    0<=r_n(u)<=2/sqrt(n),
    sum_{n<=exp(u)} 1/sqrt(n) <= 2 exp(u/2).

The last inequality follows from monotone integral comparison. Hence

    |W(u)| <= 4(1+u/log(2)) exp(u/2),
    H_1(T) <= 16(1+T/log(2))^2 (exp(T)-1).         (9)

Combining (8) and (9) proves the unconditional written theorem

    limsup_{j->infinity} log(1+H_1(T_j))/T_j = 1.  (10)

No statement about zeta zeros was assumed or concluded in this calculation.

## 6. Consequences for full-vector mass and phase changes

Combining (1) with (10), every positive full-vector mass profile must satisfy

    limsup_{j->infinity} log(1/m_j)/T_j >= 1/2.    (11)

Equivalently, for any 0<=beta<1/2 and c>0, a lower bound
m_j>=c exp(-beta T_j) cannot hold for all sufficiently large j.
In particular all of the following full-vector supplier proposals are impossible:

- a fixed positive mass floor;
- a polynomially decaying positive mass floor;
- a reciprocal mass bounded at every positive exponential rate.

This refutes the attempted ALL-VECTOR supplier, not the logically valid
conditional theorem already in the repository. Nor does it refute a mass theorem
for a different operator. What fails is identifying such a theorem with the full
arithmetic layer form while retaining a uniform or all-rate reciprocal constant.

If the ORIGINAL H_0 is later proved subexponential, the single-step inequality
m_j H_1(T_j)<=H_0(T_j) improves (11) to a lower limsup of 1. Thus full-spectrum
conditioning may deteriorate exponentially even when the wanted source observation
is well controlled. This is exactly why an observed inverse entry is weaker than
a full inverse-operator norm.

Bounded-phase comparison holds for arbitrary coefficients. Applying it to c(n)
shows that every normalized finite phase law supported on [-1,1] has secondary
energy between H_1/9 and 9 H_1. Such changes preserve rate (10). They cannot hide
the secondary obstruction or repair a full-vector mass claim by a fixed-cost
change of representation.

## 7. What survives for the actual RH route

The valid entry remains the actual source H_0, phaseCross or endpointSum, with
all-positive-rate control and the existing coverage/analytic return. No change
is made to the original arithmetic source or its quantifier order.

A source-only inequality

    m_j E_j(s) <= E_j(e_0)

is not refuted by the second forcing argument: its quantifier does not include b.
The companion source proves its direct quantitative consequence for H_0 and keeps
that distinction explicit. The boundary inverse entry and source spectral measure
remain legitimate places for a quantitative estimate. The orthogonal Jacobi
realization is not supplied by merely naming a source mass.

This increment does not establish an all-positive-rate bound for H_0, Y or E,
and therefore does not prove RH. It eliminates an impossible stronger supplier
rather than reopening the already constructed endpoint or analytic return.

## 8. Formal scope and publication contents

The two previously delivered finite-phase and phase-optimization modules are
included for publication unchanged from their attached source bytes. The new
PickupSecondaryForcing module has the exact secondary arithmetic coefficients,
the two forcing equalities, source integral, finite-law comparison, finite mass
consequences and a finite logarithmic slope inequality. It contains no theorem
asserting (8), (10), or (11), and no axiom providing them. Those are written results
proved above; their full Lean analytic implementation remains pending.

All prior source and toolchain pins remain unchanged. New acceptance requires
fresh native compilation and full transitive logical-dependency auditing.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aeb4e028a01a7e5548441188a1f500bfb2bfe794d83d0870ffeae3aa5c001cf5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
