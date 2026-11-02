# Prime-smooth Möbius orbit energy and the near-critical bank threshold

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-02.
Formalization assistance: OpenAI ChatGPT. Source proof candidate only.

## 1. Source and objective

The arithmetic source was first inspected at `grwtsk/math@fea5aca39bea76e71d18a48b85001becf1223f35` and was re-read unchanged at the source-bearing main `24f84f64e743ace636fd03ba8f81cc2d2c0b569f`; the final publication guard was rebound to later docs-only head `967d94b0f9d33fc638a31356a082545a8022a76a`.  It proves the finite arithmetic convolution

\[
  \mu(n)\,1_{\text{$P$-rough}}(n)
  = \sum_{d\mid n,\,d\text{ $P$-smooth}} \mu(n/d)
\]

and the corresponding exact rough and matched Mertens-prefix identities.  The
present advance derives the complementary inverse convolution and transports it
to the unchanged causal response Gram.

The point is not to bound the negative prime-dilation packet or its positive
complement separately.  The preceding local star theorem shows that these
pieces force one another.  Instead, all selected-prime dilations belonging to
one prime-free core are kept in one complete signed orbit square and paid as a
single nonnegative internal energy.

## 2. Exact selected-smooth/rough convolution

For a finite prime bank `P`, define

\[
  \kappa_P(d)=\mu(d)1_{\text{$P$-smooth}}(d),
  \qquad
  \rho_P(q)=\mu(q)1_{\text{$P$-rough}}(q).
\]

Then

\[
  \boxed{\mu=\kappa_P*\rho_P.}
\]

This follows prime-power by prime-power.  If `p in P`, then the local factors
are

\[
  \kappa_P: 1,-1,0,0,\ldots,
  \qquad
  \rho_P: 1,0,0,0,\ldots,
\]

whose convolution is `1,-1,0,...`.  If `p notin P`, the roles are reversed.
Multiplicativity then gives the global identity, including every squareful zero.

For a finite cutoff `N`, this is

\[
  \mu(n)=\sum_{dq=n}\kappa_P(d)\rho_P(q).
\]

## 3. Exact causal-orbit decomposition

Retain the original causal response

\[
 r_n(u)=2\bigl(n^{-1/2}-e^{-u/2}\bigr)1_{\log n\le u}.
\]

For `q<=N`, define the complete selected-prime orbit waveform

\[
  G_{P,N,q}(u)
  =\rho_P(q)\sum_{1\le d\le N/q}\kappa_P(d)r_{dq}(u).
\]

Finite Fubini and the convolution identity give, for every real `u`,

\[
  \boxed{
  \sum_{1\le n\le N}\mu(n)r_n(u)
  =\sum_{1\le q\le N}G_{P,N,q}(u).
  }
\]

At the physical cutoff `N=floor(exp T)`, define

\[
 I_P(T)=\sum_{q\le N}\int_0^T G_{P,N,q}(u)^2\,du
\]

and the complete ordered between-core packet

\[
 C_P(T)=\sum_{\substack{q,r\le N\\q\ne r}}
    \int_0^T G_{P,N,q}(u)G_{P,N,r}(u)\,du.
\]

Then the unchanged Möbius pickup energy satisfies the exact identity

\[
  \boxed{\mathcal H(T)=I_P(T)+C_P(T).}
\]

No prime-dilation edge, squareful zero, causal birth, or ordered orientation is
removed.  The internal term is nonnegative by construction.

## 4. Source-specific internal-energy bound

For positive integers `d,q`, the literal response satisfies the pointwise
comparison

\[
  0\le r_{dq}(u)\le d^{-1/2}r_q(u).
\]

Before the birth of `dq`, the left side is zero.  After the birth, the two
constant terms agree and the negative exponential term on the left has the
larger magnitude, giving the inequality directly.  Hence

\[
  0\le K_T(dq,eq)\le (de)^{-1/2}K_T(q,q),
\]

where `K_T` is the original causal Gram.

The support of `kappa_P` consists of the squarefree products of selected
primes.  Therefore

\[
 \sum_d \frac{|\kappa_P(d)|}{\sqrt d}
 =\prod_{p\in P}\left(1+p^{-1/2}\right).
\]

Using the complete orbit sum before the outer inequality gives

\[
\begin{aligned}
 \int_0^T G_{P,N,q}(u)^2\,du
 &\le \rho_P(q)^2 K_T(q,q)
   \left(\sum_d\frac{|\kappa_P(d)|}{\sqrt d}\right)^2\\
 &=\rho_P(q)^2K_T(q,q)
   \prod_{p\in P}(1+p^{-1/2})^2.
\end{aligned}
\]

Put

\[
  \mathcal K(P)=\prod_{p\in P}(1+p^{-1/2})^2.
\]

Since `rho_P(q)^2<=mu(q)^2`, summing over `q` and using the already proved
original diagonal estimate yields

\[
  \boxed{
  0\le I_P(T)\le \mathcal K(P)\mathcal D(T)
  \le 2\mathcal K(P)T^2.
  }
\]

This finite theorem pays every same-core selected-prime interaction, including
all parent-child, child-child, and higher Boolean-cube layers.  The earlier
prime-star compensation identity is the degree-zero/degree-one truncation of
this complete orbit square.

## 5. Delay-Euler/Hamiltonian interpretation

For `q` rough with respect to `P`, complete multiplicativity on the squarefree
selected support and the exact dilation law give

\[
  G_{P,q}
  =\mu(q)\prod_{p\in P}
    \left(I-p^{-1/2}\tau_{\log p}\right)r_q,
\]

where `tau_h` is causal right translation by the real amount `h` with zero
extension.  Expanding the product selects a squarefree divisor `d`, with shift

\[
  \sum_{p\mid d}\log p=\log d.
\]

Thus the prime-dilation widths from the real Hamiltonian work enter here as
nonorthogonal causal delays.  Unlike the counting-`l2` point-spectrum interval,
this representation preserves the original response Gram.  The norm estimate
above is exactly the finite Euler-operator bound

\[
 \left\|\prod_{p\in P}(I-p^{-1/2}\tau_{\log p})\right\|
 \le\prod_{p\in P}(1+p^{-1/2}).
\]

## 6. Near-critical growing banks

Let `P_T` contain all primes up to

\[
 Y_\alpha(T)=(1+T)^2\bigl(\log(2+T)\bigr)^\alpha,
 \qquad 0\le\alpha<2.
\]

The classical Chebyshev prime-count upper bound and partial summation give

\[
  \sum_{p\le Y}p^{-1/2}\ll\frac{\sqrt Y}{\log Y}.
\]

Since `log(1+x)<=x`,

\[
\begin{aligned}
 \log\mathcal K(P_T)
 &\le 2\sum_{p\le Y_\alpha(T)}p^{-1/2}\\
 &\ll T\bigl(\log T\bigr)^{\alpha/2-1}=o(T).
\end{aligned}
\]

Consequently, for every `epsilon>0`,

\[
  2\mathcal K(P_T)T^2\le C_\epsilon e^{\epsilon T}
\]

for all sufficiently large `T`.  The entire internal orbit energy is therefore
all-positive-rate for the same near-critical cutoff already appearing in the
balanced dense-bank work.

The boundary is meaningful.  The norm-payment argument can approach the
quadratic-logarithmic threshold but cannot reach terminal primes of size
`exp(T)`: for such a bank the sum of `p^{-1/2}` is already of order
`exp(T/2)/T`, and the Euler norm is far beyond subexponential physical time.
The terminal prime-star compensation must therefore be handled by signed
cross-core cancellation, not by an internal orbit norm.

## 7. Exact reduction of the RH-facing source

Because `I_P(T)>=0`, the exact identity gives

\[
  C_P(T)\le\mathcal H(T).
\]

Conversely, an all-positive-rate upper bound for `C_P` plus the proved
all-positive-rate internal allowance gives the same bound for `mathcal H`.
Therefore, for the near-critical growing bank and on any fixed scale set `G`,

\[
  \boxed{
  C_{P_T}\text{ is subexponential on }G
  \iff
  \mathcal H\text{ is subexponential on }G.
  }
\]

With the existing affine-frequency coverage theorem, a proof of the remaining
between-core bound implies the canonical Riemann Hypothesis.  This is a source
reduction, not new cancellation: the between-core bound remains RH-strength.

## 8. Comparison with existing repository work

- `MoebiusPrimeSmoothFiniteConvolution.lean` supplies the exact rough-side
  convolution and finite Mertens prefixes used here.
- `LiouvilleWeightedPrefixFinitePrimeOrbits.lean` contains an analogous
  selected-prime orbit payment for a different weighted-prefix kernel.  The
  present result is for the actual Möbius causal responses and uses the direct
  finite Euler factor `prod(1+p^(-1/2))^2`.
- `MoebiusPrimeDilationStarCompensation.lean` localizes the first two orbit
  levels and proves the forced positive child packet.  The complete orbit
  square explains why those levels must not be estimated separately.
- `MoebiusBalancedTwoSidedPNTDense.lean` proves on paper logarithmic-power
  control for dense tagged rectangles with near-critical banks.  Such bounds
  remain exponent-one in shell size and do not by themselves provide the
  all-positive-rate between-core estimate.
- `MoebiusPrimeDilationPointSpectrumInterval.lean` constructs a valid
  nonseparable point-spectrum interval, but its orthogonal coordinates erase
  the causal Gram.  The delay-Euler operator above is the source-preserving
  spectral object.
- OpenAI’s *Weighted Dilation Graphs, Smooth Shifted Primes, and Totient
  Fibers* develops a local transference theorem from independent prime labels
  to divisibility-constrained physical graphs and a Type-II estimate with
  arbitrary logarithmic saving.  Its native scale is `x`, with
  `L=log x`; the resulting `x L^{-A}` estimates remain exponent-one in our
  physical time `T=log x`.  They may be relevant to the remaining between-core
  graph, but they do not by themselves furnish an all-positive-rate bound.
  Its prime groups also extend to `exp(L^d)`, far beyond the range payable by
  the elementary orbit Euler norm, so a source map and transference estimate
  would be required rather than a direct import.

No claim is made that this finite orbit extraction is a new general theorem of
multiplicative number theory.  Its programme-specific contribution is the
explicit causal-energy payment and the sharp near-critical bank threshold in
the unchanged RH consumer.

## 9. Verification boundary

The ordinary finite derivation above is complete.  The attached Lean module
records the exact definitions, visible finite source gates, internal-energy
bound interface, near-critical allowance, growth equivalence and conditional
RH consumer.  The weighted finite convolution Fubini, pairwise causal dilation
bound, selected-smooth Euler support identity and Chebyshev-to-all-rate estimate
remain separately named proof obligations in the source candidate.

Not run:

- Lean parsing/elaboration or compilation;
- exact expected-type checks;
- fresh independent kernel replay;
- transitive axiom audit;
- native execution.

The between-core supplier, endpoint arithmetic estimate and RH remain unproved.

## 9. Reconciliation with the completed Mertens-square energy integration

Current `grwtsk/math/main` advanced to `cedf6c48caabd9b2d92ec4e45da6355bee863d81` while this package was being prepared.  The new source
`MoebiusCausalMertensSquareEnergyIntegration.lean` proves, at source-candidate
level, the exact identity

\[
  \operatorname{pickupEnergy}(T)
  =\int_0^T\left(\sum_{n\le e^T}\mu(n)r_n(u)\right)^2du
\]

and the two genuine-source upper bounds

\[
 \operatorname{pickupEnergy}(T)
 \le \int_0^T A_T(u)^2du
 \le \sum_{k<N_T}M(k+1)^2
     \bigl(K_T(1,k+1)-K_T(1,k+2)\bigr),
\]

where

\[
 A_T(u)=\sum_{k<N_T}|M(k+1)|\,[r_{k+1}(u)-r_{k+2}(u)].
\]

The orbit decomposition is compatible with that exact source. Since the
internal orbit energy is nonnegative,

\[
 C_P(T)\le \operatorname{pickupEnergy}(T),
\]

so the complete net between-core packet is bounded above by both Mertens
majorants.  This is an exact comparison, not a new Mertens estimate.

The coarser Mertens-square majorant has the already documented half-exponent
loss.  Even the hypothetical RH-scale prefix estimate
`|M(x)| <<_delta x^(1/2+delta)` gives through that Cauchy budget only
`exp((1/2+2delta)T)`, not every positive rate.  The sharper absolute-prefix
wave may preserve the right rate under the same hypothesis, but that hypothesis
is itself RH-strength.  Consequently neither positive majorant supplies the
missing arithmetic cancellation.

## 10. One-sided cross control becomes absolute control of the complete net packet

The exact orbit identity is

\[
  H(T)=I_P(T)+C_P(T),\qquad H(T)\ge0,\quad I_P(T)\ge0.
\]

Therefore

\[
  -C_P(T)\le I_P(T).
\]

For the near-critical bank with `0<=alpha<2`, the internal energy is
all-positive-rate after the finite Euler and Chebyshev gates are supplied.
Hence the negative part of the **complete net** between-core packet is already
all-positive-rate.  On any fixed scale set `G`,

\[
 C_P\text{ is subexponentially bounded above on }G
 \iff |C_P|\text{ is subexponentially bounded on }G.
\]

The absolute value is outside the entire signed between-core sum.  This does
not permit separate absolute values on prime-dilation credit, child Type-II
compensation, mixed tags, or cross-parent packets.  It does identify a valid
junction for norm-based methods: they may target the complete net operator,
not the individual sign sectors.

## 11. Sharp phase transition of the absolute half-weight Euler payment

Let

\[
 K(Y)=\prod_{p\le Y}(1+p^{-1/2})^2.
\]

Classical PNT and partial summation give

\[
 \sum_{p\le Y}p^{-1/2}\sim\frac{2\sqrt Y}{\log Y},
\]

while `sum_{p<=Y}p^-1=O(log log Y)`. Thus

\[
 \log K(Y)
 =2\sum_{p\le Y}\log(1+p^{-1/2})
 \sim\frac{4\sqrt Y}{\log Y}.
\]

For

\[
 Y_\alpha(T)=(1+T)^2(\log(2+T))^\alpha
\]

one obtains

\[
 \frac{\log K(Y_\alpha(T))}{T}
 \sim 2(\log T)^{\alpha/2-1}.
\]

Therefore:

- if `0<=alpha<2`, the cost is `exp(o(T))` and is payable at every
  positive rate;
- if `alpha=2`, the cost has asymptotic exponential rate `2`, so it is
  not all-positive-rate;
- if `alpha>2`, it exceeds every fixed exponential rate along all
  sufficiently large times.

This is a sharp limitation of the **absolute Euler-norm method**, not a lower
bound on the actual signed internal orbit energy.  It explains why terminal
prime bands near `e^T` cannot be absorbed by this payment and must remain in
a joint signed compensation theorem.

## 12. Comparison with OpenAI weighted-dilation transference

At `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, the weighted
dilation-graph transference theorem transfers an ideal operator norm to a
physical divisibility graph, and its Type-II theorem gives arbitrary
logarithmic saving of the form

\[
 x(\log x)^{-A}.
\]

For the present physical time `x=e^T`, this is

\[
 e^T T^{-A},
\]

which is not bounded by `C_epsilon e^(epsilon T)` for any fixed
`epsilon<1`.  Even the transference moment saving
`exp(-cT^0.52 log T)` leaves

\[
 \exp\bigl(T-cT^{0.52}\log T\bigr)=\exp((1-o(1))T).
\]

Thus the external graph theorem does not by itself close the causal endpoint
supplier.  A viable use must produce a substantially stronger ideal norm for
the **complete net between-core operator**, or exploit an additional
source-specific cancellation before the outer scale factor appears.

## 13. Revised bounded next step

The next theorem should use the exact prime-smooth convolution to assign every
integer to one rough core and estimate the complete net cross-core quadratic
form

\[
 C_{P_T}(T)=\sum_{q\ne r}\int_0^T G_{P_T,q}(u)G_{P_T,r}(u)\,du
\]

for a bank below the subcritical `alpha<2` threshold.  Because its negative
side is already paid, an absolute bound for this one complete net quantity is
now equivalent to the required one-sided bound.  The estimate must still be
formed before splitting prime-dilation credit from forced positive Type-II and
cross-parent compensation.

## 14. Fifth-power Mertens spikes localize in the net cross-core packet

Current main subsequently added the source-bound spike target

\[
 |M(N)|^5\le 1944N^4
 \left[H\!\left(\log\left(N+\frac{|M(N)|}{2}\right)\right)
       -H(\log N)\right],\qquad N\ge1.
\]

Let

\[
 T_N=\log\left(N+\frac{|M(N)|}{2}\right).
\]

Since `H(log N)>=0`, the orbit identity and internal Euler payment give
for every finite bank `P`

\[
 \boxed{
 |M(N)|^5
 \le 1944N^4\left[C_P(T_N)+\mathcal K(P)\mathcal D(T_N)\right].
 }
\]

Equivalently,

\[
 C_P(T_N)
 \ge \frac{|M(N)|^5}{1944N^4}
      -\mathcal K(P)\mathcal D(T_N).
\]

For a subcritical near-critical bank, the second term is all-positive-rate.
Consequently, if along an unbounded sequence

\[
 |M(N)|\ge N^\theta,\qquad \theta>\frac45,
\]

then, after choosing any internal rate smaller than `5theta-4`,

\[
 C_{P_{T_N}}(T_N)
 \gg N^{5\theta-4}
\]

along that sequence.  Thus a true large Mertens spike cannot be hidden inside
the paid same-core orbits: it forces a **positive** spike in the complete net
between-core packet.

Conversely, an all-positive-rate bound for the net cross-core packet, together
with the internal payment, returns the existing all-rate energy bound and hence
implies the local consequence

\[
 |M(N)|\ll_\delta N^{4/5+\delta}
\]

for every `delta>0` through the fifth-power detector.  This local exponent is
weaker than the final analytic RH return, but it is an explicit hostile test for
any proposed cross-core estimate.

The Lean source contains the exact finite inequality
`mertensSpike_forces_orbitCross_budget` conditional on the visible spike target,
and records the asymptotic sequence statement as
`NearCriticalMertensSpikeForcesCrossGrowth` pending formalization of its
quantifiers and the PNT/Chebyshev internal allowance.
