# Density, quartic defects, and the remaining arithmetic return

Human mathematical direction: grwtsk contributors.
Synthesis, deductions and algebra checks: OpenAI ChatGPT.

## Status and scope

This note imports the stated seven-eighths zero-free theorem from OpenAI's
source and the published Guth--Maynard zero-density theorem. It does not
rebuild their formal proofs or independently audit their complete dependencies.
The new tail estimate below is a written mathematical deduction. The accompanying
sixteen tests check finite algebra, constants, and the fixed band partition;
they are not a verification of infinite analytic estimates or an RH proof.
No remote repository is changed by this note.

Inspected repository heads:
- grwtsk/math: 0242bb202aafc15c8212aee3015e9bf9002edb3e.
- openai/math: 1581d4cbdd69a0faf34b2089614fe2a814316a6a.

The two-thirds result is a proportion of zeros simple and on the critical line.
It is not nonvanishing in Re(s)>2/3. The three external inputs respectively
control a proportion, the frequency of large values/zero density, and a fixed
zero-free region. Their headlines do not give the missing universal exclusion.

## 1. A source-specific tail improvement

Use exactly the compact source of the supplied manuscripts:

    b(u)=(1-u^2)^4 on [-1,1], zero outside;
    g_A(t)=A^(-1/2)b(t/A);
    q_A=(g_A''-g_A/4)/sqrt(Z_A);
    Z_A=4096/109395+65536/(45045 A^2)+196608/(5005 A^4);
    U_A(z)=integral q_A(t) exp(zt) dt.

Here A>=200. Write a nontrivial zero as rho=1/2+d+i gamma and retain its
analytic multiplicity. The square U_A(rho-1/2)^2 is an ordinary complex square.
Absolute values below are used only to majorize a tail; they do not replace
that signed source by a sum of absolute squares.

### 1.1 Uniform source transform estimate

Compact traces and two integrations by parts give

    U_A(z)=(z^2-1/4) sqrt(A)/sqrt(Z_A)
             * integral_(-1)^1 b(u) exp(Azu) du.

The endpoint derivatives of b of orders 0 through 3 vanish. The absolute
endpoint derivatives of orders 4 through 8 are respectively

    384, 3840, 17280, 40320, 40320.

Repeated integration by parts therefore bounds the last integral by

    2 exp(A|Re z|) [384/|Az|^5+3840/|Az|^6+17280/|Az|^7
                    +40320/|Az|^8+40320/|Az|^9].

For |Im z|>=2 and A>=200, |Az|>=400 and
|z^2-1/4|<=(17/16)|z|^2. Also 1/sqrt(Z_A)<331/64. The rational upper
bound on the resulting leading constant is less than 5000. Hence

    |U_A(d+i gamma)| <= 5000 exp(A|d|)/(A^(9/2)|gamma|^3),

and

    |U_A(d+i gamma)|^2 <= 25,000,000 exp(2A|d|)/(A^9 |gamma|^6).       (1)

This estimate is unconditional for the specified test source. It is not an
identity identifying a zero-side sum with every other native reader.

### 1.2 Density-stratified tails

Import the zero-free assertion Re(rho)<=7/8 and functional reflection, giving
|d|<=D=3/8. For each FIXED d in [0,D], Guth--Maynard and the ordinary total
zero count give a bound on the number of zeros with |Re(rho)-1/2|>=d and
|Im(rho)|<=Y of the form

    O_(d,epsilon)(Y^(nu(d)+epsilon)),
    nu(d)=min(1, 15(1/2-d)/(11/2+5d)).                             (2)

The harmless factor for reflection is included in the constant. For d=0,
use the ordinary O(Y log Y) total count. Below d=1/10 that total-count
exponent is the minimum in (2). We do not need uniform constants for a
continuum of d values: every application below fixes a finite partition first.

A dyadic decomposition of ordinates yields

    sum_(|gamma|>T, |d_rho|>=d) |gamma|^(-6)
       <= C_(d,epsilon) T^(nu(d)+epsilon-6).                       (3)

Indeed, on (2^j T,2^(j+1)T], multiply the cumulative count by (2^j T)^(-6)
and sum the geometric series. Its exponent is negative. Multiplicities remain
in the cumulative count.

For a band [a,b] in displacement, (1)--(3) give a contribution at most

    C A^(-9) exp(2Ab) T^(nu(a)+epsilon-6).                         (4)

The best exponent threshold from THIS chosen envelope is

    sup_(0<=d<=3/8) 2d/(6-nu(d)) = 59/452 = 0.130530973451327... .  (5)

To check (5), for d<=1/10 the ratio is 2d/5. For d>=1/10 it is

    2d(11+10d)/(51+90d),

whose derivative has strictly positive numerator. At d=3/8,
nu(d)=15/59, yielding (3/4)/(6-15/59)=59/452.

Consequently, for every kappa>59/452 there are C,eta>0 such that

    sum_(|Im rho|>exp(kappa A)) |U_A(rho-1/2)|^2
         <= C A^(-9) exp(-eta A).                                (6)

For kappa near the threshold, choose a finite displacement partition fine
enough and epsilon small enough that all exponents in (4) are negative.
Larger kappa only reduces the tail. This proves (6) without an unproved
continuum-uniform density constant.

### 1.3 A rational choice of schedule

There is a particularly simple quantitative version:

    T(A)=exp(2A/15),
    sum_(|Im rho|>T(A)) |U_A(rho-1/2)|^2
         <= C A^(-9) exp(-A/100),  A>=200.                         (7)

Use 300 fixed bands [j/800,(j+1)/800], j=0,...,299, and epsilon=1/100 in
(2). Direct rational calculation gives

    (2/15)(6-nu(j/800)-1/100)-2(j+1)/800 >= 8489/589500 > 1/100.

This is checked for every band in both Python modes. Alternatively the
limiting right-edge margin is 19/1180, and subtracting 2/800+(2/15)/100
still leaves more than 1/100. Sum the finitely many constants in (4).

The constant C in (6)--(7) includes the constants in the external density
estimate. It has NOT been evaluated numerically here. This is an asymptotic
source-tail theorem, not a numerical certificate with an explicit final C.
The threshold 59/452 is optimal only for the envelope selected in (2), not a
claim of optimality among all zero-density results or all possible arguments.

With only the ordinary width D=1/2 and total count, the analogous leading
height exponent is 1/5. With D=3/8 and total count it is 3/20. The density
stratification reduces it further as in (5). The two-thirds proportion can
help constants and the treatment of positive on-line terms; it does not enter
this exponent improvement.

## 2. What the shorter tail does not do

For the original ordinary-square zero sum, the finite head can still have a
negative contribution. If every head zero has displacement at most h_A,
the source paper's elementary bound is

    Re U_A(d+i gamma)^2 >= -(2/3) A^3 h_A^2 cosh(A h_A)^2.

Combining (7) with h_A=A^(-2) T(A)^(-1/2)=A^(-2)exp(-A/15) would bound the
whole signed zero sum from below, using N(T)=O(T log T). The price
A^3 h_A^2 T log T is exactly 2/15 for that schedule.
But the assertion about EVERY zero in EVERY such growing head remains
unproved. Since T(A) tends to infinity and h_A tends to zero, that assertion
already implies RH. The shorter tail does not produce it. Any conversion
from the zero sum to a different native source also needs its exact adapter.

A hypothetical finite quartet at beta=3/4 and a very large ordinate would
not contradict any of the headline proportion, density, or 7/8 bounds. This
is a logical comparison of conclusions, not a construction of a counterexample
to RH or to the full detailed explicit formulas.

## 3. A common local signed obstruction

An off-line pair in the two-thirds proof has a real matrix contribution

    vv^T+conjugate(v)conjugate(v)^T=2(aa^T-bb^T),  v=a+i b.

This retains an indefinite channel rather than replacing it by vv*.
For the reflection-orbit quartic

    P(X)=((X-gamma)^2+d^2)((X+gamma)^2+d^2)=X^4+pX^2+r,
    p=2(d^2-gamma^2), r=(d^2+gamma^2)^2,

our Hermite test is

    (p/2,0,1,0) H (p/2,0,1,0)^T = p^2-4r=-16d^2 gamma^2.

With a normalized test vector, the negative value has magnitude

    kappa(d,gamma)=16d^2 gamma^2/[1+(d^2-gamma^2)^2].

Any positive matrix approximating that SAME Hermite matrix must have operator
error at least kappa. The orbit polynomial is built from a putative zero;
it is not an independent unconditional zeta approximation.
The sofic norm corner preserves any fixed negative witness, whereas a
normalized counting statistic can miss it. Repeating a corner does not
create new zeros or revalidate the prime-side estimates for a different test.

## 4. The all-depth inequality that would close the matrix route

Retain the actual germ F(w)=-E#(z(w))/E(z(w)), z(w)=i(1+w)/(1-w), with
F(w)=sum c_k w^k. Define

    T_N(i,j)=1_(i>=j)c_(i-j), H_N(i,j)=c_(i+j+1),
    A_N=1+||T_N||, beta_N=||H_N||/A_N,
    G_N=H_N H_N*, mu_N=Tr(G_N)/N,
    J_N=[mu_N^3+Tr(G_N^3)-N mu_N^3]/A_N^6.

The supplied tensor paper proves

    (5/9) beta_N^6 <= J_N <= N beta_N^6,
    A_(2N) <= (1+beta_N) A_N.

The first inequality retains the cubic mean. Its scalar algebra is

    mu^3+(lambda-mu)^2(lambda+2mu)-(5/9)lambda^3
      =3(mu-2lambda/3)^2(mu+lambda/3).

A proved estimate J_(2^j)<=C(2^j)^p for every j would therefore imply
log A_(2^j)=O(j^2), hence ||T_N||<=exp(O((log N)^2)) for all N by compression.
The source-specific subexponential matrix criterion would then give RH.
More generally log(1+J_N)=o(N) on dyadic sizes suffices. This permits
intermediate growth; it does not require uniform contractivity at each stage.

Guth--Maynard use a phase matrix with entries w(n/L)n^(it), not H_N by
definition. Their sixth-moment and affine-overlap ideas are well matched to
investigating J_N, but no identity between these actual sources has been
proved here. The all-depth bound above remains OPEN.

## 5. An exact coefficient interface before applying large-value estimates

One way to expose the native arithmetic is to put

    s(w)=3/2+2w/(1-w), a(w)=xi'(s(w))/xi(s(w)).

Near w=0, F(w)=(a(w)-1)/(a(w)+1). Write a(w)=sum a_k w^k. Then

    c_0=(a_0-1)/(a_0+1),
    c_k=[a_k-sum_(j=1)^k a_j c_(k-j)]/(1+a_0), k>=1.              (8)

In the safe initial domain,

    a(w)=1/s+1/(s-1)-(log pi)/2+psi(s/2)/2
                       -sum_(n>=2) Lambda(n)n^(-s).

Define q_0(x)=1 and

    q_k(x)=sum_(j=1)^k binom(k-1,j-1)(-x)^j/j!, k>=1.

Expansion of exp(-xw/(1-w)) proves that its w^k coefficient is q_k(x).
Thus

    a_k=archimedean_k
              -sum_(n>=2) Lambda(n)n^(-3/2)q_k(2log n).            (9)

For each fixed k this converges absolutely. The prime-power weights,
archimedean terms, and quotient recursion are all retained. The generating
polynomial and quotient recursion are checked as finite algebra, not as new
analytic prime estimates.

For |w|<=1/4, Re s(w)>=11/10. Truncating the Dirichlet sum after M>=3
costs at most M^(-1/10)(10log M+100) uniformly there. Cauchy's estimate
therefore multiplies this tail by 4^k for its kth coefficient. Passing from
a_k to c_k still incurs the actual inverse/convolution cost of (8).

A Guth--Maynard application to dyadic parts of (9) must account for the
coefficient supremum, not just its square energy, and for polynomial length,
observation interval, separation, product boundaries and every tail. A bound
on the number of large values is not by itself a bound on the value at t=0.
The necessary prime-side representation of J_N, with acceptable complete costs,
is the next analytic task rather than an already supplied theorem.

## 6. Heat, fixed collars, and the endpoint

The supplied Gaussian bridge is correct in its growing-profile space; it is
not ordinary L2 contraction of Xi. Fixed positive-time real-rootedness does
not establish zero-time real-rootedness. The 7/8 collar gives Tao-time 9/32,
or 9/128 in the X_tau convention, by strip contraction.

The finite-height-to-metric theorem, with verified real-zero height H, gives

    ||T_N|| <= exp((N-1)asinh((3/4)/(H^2+55/64))).

Even for H=3*10^12 this is a fixed positive exponential allowance. It does not
prove the rate zero. Independently shrinking that allowance, or proving J_N
subexponential, is necessary. At H=0 the disk factor is 5/11 rather than 1/3.

For the positive-heat matrix route the paper prices the return by
||T_N(tau)-T_N(0)||<=L tau 4^N. Choosing tau_N<=exp(-N^2) pays this cost
provided the actual positive-heat matrices already have a proved subexponential
bound. Selecting the schedule does not prove that bound.

An alternative endpoint already in the repository is weighted covariance
approximation by positive finite models in one safe half-plane. Its source
comparison, not the existence of finite positive models, is still missing.
Only one complete endpoint is required.

## Source pointers

Author manuscripts: subexponential_arithmetic_return.pdf §§2--5,7;
transported_weights_tensor_return.pdf §§2,7; sofic_boundary_weil_kernel_updated.pdf
§§7--13,16; oscillator_bounce_scan_addendum.pdf §6; grover_hodge_signed_source_v2.pdf
§§2--3,10. PDF hashes are in source-bindings.json.

External primary sources inspected:
- Guth--Maynard, New large value estimates for Dirichlet polynomials,
  Annals of Mathematics 203 (2026), 623--675; arXiv:2405.20552v2,
  Theorems 1.1--1.2, Sections 4 and 9.
- Alpoge--Furman, More than two thirds of the zeros of the Riemann zeta function
  are simple and on the critical line, arXiv:2608.13637v2, Lemma 3.2,
  Proposition 4.1 and Section 7.2.
- Lamzouri, A new proof that more than 2/3 of the zeros of the Riemann zeta
  function are simple and on the critical line, arXiv:2609.02882v1,
  Remark 3.4. Its optimality concerns its specified second-moment method.
- OpenAI openai/math at the pinned revision: lean/docs/003.md,
  lean/ComparatorChallenges/QuasiRiemannHypothesis.json,
  lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean.
- Rodgers--Tao, arXiv:1801.05914; Platt--Trudgian, arXiv:2004.09765.

The first test attempt compared unexpanded SymPy matrix entries structurally,
which falsely rejected an exact pair identity. Its logs and failed reports are
retained under attempts/. The corrected test expands each entry; all sixteen
tests pass in both modes. No source mathematics was changed to make it pass.
