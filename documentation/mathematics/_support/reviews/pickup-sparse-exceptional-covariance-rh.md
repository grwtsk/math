# Paying symmetric sparse exclusions in the original signed RH pickup covariance

Local attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. The Lean declarations below are source proof candidates; compilation, fresh kernel checking, expected-type checks, and the transitive axiom audit are **NOT_RUN**.

## Statement, source object, and mathematical purpose

The immutable starting point is the existing `GRWTSK.RiemannHypothesis.CCC.pickupCross T`:

\[
X(T)=\sum_{\substack{1\le m,n\le N_T\\m\ne n}}
\mu(m)\mu(n)G_T(m,n),\quad
N_T=\lfloor e^T\rfloor,\quad
G_T(m,n)=\int_0^T r_m(u)r_n(u)\,du,
\]

with the **original** causal source `pickupResponse n u = if log n ≤ u then 2(1/sqrt(n)-exp(-u/2)) else 0`. The existing source supplies `pickupEnergy=pickupDiagonal+pickupCross`, `pickupDiagonal ≤ 2T²`, and `|endpointSum(T)-pickupCross(T)| ≤ 1/4`. It further supplies `riemannHypothesis_of_cross_good_scales` on the fixed covering grid \(T=j\log2\). The new contribution is to pay a growing family of **symmetric sparse exclusions** at a harmonic rather than counting-scale cost, and to retain the complementary signed source as the remaining RH obligation.

## New unconditional inequality, in complete detail

Let \(A\subset\mathbb N\) be finite, and set

\[
R_A(m)=[m-2,m+2]\cap\mathbb N\ \cup\ (m+A)\ \cup\ \{\max(m-a,0):a\in A\}.
\]

As formally counted in `EndpointCovarianceDyadicAbel.excludedRow_card_le`, every row has \(|R_A(m)|\le K=2|A|+5\). On **positive indices**, the relation \(n\in R_A(m)\) is symmetric. In the truncated subtraction branch \(n=m-a\), the assumption \(n\ge1\) implies \(m=n+a\); the possible collapse to zero lies outside the original positive pickup inventory. The five-neighbor relation and both translates are symmetric separately.

For \(u\ge\log n\), the actual response satisfies \(0\le r_n(u)\le2/\sqrt n\); before birth it is zero. Therefore, for every \(T\ge0\) and positive \(m,n\),

\[
0\le G_T(m,n)\le4T/(\sqrt{mn}).
\]

The complete excluded *signed* covariance is

\[
X_{\mathrm{exc}}(T;A)=
\sum_{\substack{1\le m,n\le N_T\\m\ne n,\;n\in R_A(m)}}
\mu(m)\mu(n)G_T(m,n).
\]

The actual Möbius signs are not replaced in the definition, only in the absolute bound. From \(|\mu(n)|\le1\),

\[
|X_{\mathrm{exc}}|\le4T\sum_{m,n\in E_A}
\frac1{\sqrt m\sqrt n}.
\]

For any symmetric relation \(E\) on the finite positive inventory with maximum row degree \(K\), the elementary identity \((w_m-w_n)^2\ge0\) gives

\[
\begin{aligned}
2\sum_{(m,n)\in E} w_mw_n
&\le\sum_{(m,n)\in E}(w_m^2+w_n^2)\\
&=2\sum_m \deg_E(m)w_m^2\\
&\le2K\sum_m w_m^2.
\end{aligned}
\]

Take \(w_m=m^{-1/2}\). The elementary harmonic bound, independent of PNT, is

\[
\sum_{m=1}^{\lfloor e^T\rfloor} \frac1m\le1+T\qquad(T\ge0).
\]

Consequently,

\[
\boxed{|X_{\mathrm{exc}}(T;A)|\le
4T(1+T)(2|A|+5),\qquad T\ge0.}\tag{1}
\]

This is a source-specific **unconditional** absolute estimate. It is logarithmic in the endpoint inventory size and polynomial in physical time for fixed \(A\); the offset sizes \(a\in A\) do not appear. The improvement is genuine because the weighted adjacency quadratic uses both the row degree and the column degree supplied by symmetry. The five-neighbor case \(A=\varnothing\) costs at most \(20T(1+T)\).

## Exact signed partition and the paid dyadic cover

Define `regularCovariance A T` to be precisely the complementary original signed ordered-pair sum with \(m\ne n\) and \(n\notin R_A(m)\). Then for all real \(T\), without any estimate,

\[
X(T)=X_{\mathrm{reg}}(T;A)+X_{\mathrm{exc}}(T;A).
\]

Applying the previous source-exact *two-index* dyadic partition to **only** the regular part gives signed regular blocks \(X^{\mathrm{reg}}_{jk}(T;A)\). All indices, orientations, diagonal exclusions, and source response Gram entries are unchanged:

\[
X_{\mathrm{reg}}(T;A)=\sum_{j,k<J_T}X^{\mathrm{reg}}_{jk}(T;A),
\quad J_T=1+\lfloor\log_2 N_T\rfloor
\quad (N_T\ge1).
\]

Using (1) and the existing *one-time* endpoint quadrature correction gives, for every \(T\ge0\),

\[
\boxed{\mathcal E(T)\le
\sum_{j,k<J_T}|X^{\mathrm{reg}}_{jk}(T;A)|+
4T(1+T)(2|A|+5)+\tfrac14.}\tag{2}
\]

If actual regular blocks satisfy \(|X^{\mathrm{reg}}_{jk}(T;A)|\le B_T\) for every ordered \((j,k)\), then the sharp finite slot-counting allowance is

\[
\mathcal E(T)\le J_T^2B_T+4T(1+T)(2|A|+5)+\tfrac14.
\]

Thus the **new** sparse-exception payment is independent of \(J_T^2\) and has no scale-power loss. Neither this inequality nor the dyadic identity supplies \(B_T\), and the regular block sum remains signed before any optional absolute value is used.

## RH-facing implication with a growing family, without assuming the global bound

Fix the existing dyadic scales \(G=\{j\log2:j\in\mathbb N\}\). Let \(A(T)\) be a finite set selected independently of the rate parameter. Assume **both** of the following all-positive-rate properties on this fixed set \(G\):

1. Sparse cardinality: for every \(\delta>0\), \(|A(T)|\le C_\delta e^{\delta T}\) for all sufficiently large \(T\in G\).
2. Remaining **signed** regular covariance: for every \(\delta>0\), \(X_{\mathrm{reg}}(T;A(T))\le D_\delta e^{\delta T}\) for all sufficiently large \(T\in G\).

These are strictly identified source observables and do **not** assume a bound on the complete \(X\) or on RH itself. A finite source-inclusion theorem is still required to associate an independently defined number-theoretic bad set with \(A(T)\). Splitting an arbitrary desired rate into two positive portions, polynomial \(4T(1+T)\) is subexponential, the sparse cardinality product is subexponential, and (1) makes the entire excluded sector subexponential on \(G\). Adding the signed regular upper bound gives `SubexponentialOn pickupCross G`. `dyadic_coverage` plus the existing `riemannHypothesis_of_cross_good_scales` then returns the **canonical** `_root_.RiemannHypothesis`.

The precise Lean declaration is

`GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalRHGrowing.riemannHypothesis_of_sparse_family_regular_on`.

For one fixed \(A\), the cardinality hypothesis follows automatically. The corresponding narrower source theorem is `PickupSparseExceptionalCovariance.riemannHypothesis_of_regular_good_scales`.

**This is a conditional reduction, not an unconditional proof of RH.** The regular covariance estimate is the remaining RH-strength arithmetic target. No prime-number-theorem assertion can be substituted for it without a genuine source-preserving Mobius-correlation transfer.

## Zero-abscissa and positive-spike implications of the RH programme

Write \(H(T)=\int_0^T F_\mu(u)^2du\ge0\), \(D(T)=\mathrm{pickupDiagonal}(T)\) and \(P_A(T)=\max(0,X_{\mathrm{reg}}(T;A))\). Because the **actual** original source satisfies \(H=D+X_{\mathrm{reg}}+X_{\mathrm{exc}}\), \(0\le D\le2T^2\) and (1), elementary signed algebra yields both inequalities

\[
\boxed{P_A(T)\le H(T)+4T(1+T)(2|A|+5),}\tag{3}
\]
\[
\boxed{H(T)\le P_A(T)+2T^2+4T(1+T)(2|A|+5).}\tag{4}
\]

These are direct conditional-free inequalities for each \(T\ge0\), once the unchanged original source identities are used. The proposed Lean declaration `PickupSparseRegularDyadic.energy_regularPositive_sandwich` states their conjunction. They show the **positive part after forming the complete signed regular sum** is a quantitative energy detector. Taking positive parts termwise would be a different, generally much larger object.

The independently published same-source analytic review `documentation/mathematics/_support/reviews/prime-free-energy-zero-abscissa-and-liouville-residue.md` at math commit `731fe26e897e68898522bbf11d3677516aa53465` derives, using the classical Mertens zero-abscissa theorem and the existing source-to-Laplace transport,

\[
\limsup_{j\to\infty}\frac{\log(1+H(j\log2))}{j\log2}=2\Theta-1,
\]

where \(\Theta\) is the supremum of the real parts of nontrivial zeta zeros. **This is analytic source-derived comparison, not a newly Lean-certified theorem.** Combining it with (3)--(4) yields the further source-exact consequence for any **fixed** \(A\), or any \(A(j\log2)\) with cardinality \(\exp(o(j))\):

\[
\boxed{\limsup_{j\to\infty}
\frac{\log(1+P_{A(j\log2)}(j\log2))}{j\log2}=2\Theta-1.}\tag{5}
\]

Indeed the two error budgets in (3)--(4) are \(\exp(o(j))\), and \(H,P_A\ge0\). For any positive \(\delta\), an error of this size is eventually bounded by \(C_\delta e^{\delta j\log2}\), hence cannot alter the upper exponential growth exponent. In the source's classical analytic scope, (5) identifies RH with rate-zero growth of the **regular** signed covariance positive part, after *any* such sparse exclusion family; it does **not** supply that growth. If an off-critical zero exists at real part \(\beta>1/2\), then for every \(0\le\delta<2\beta-1\), (5) forces

\[
\limsup_{j\to\infty}e^{-\delta j\log2}
P_{A(j\log2)}(j\log2)=+\infty.
\]

Thus no sparse collection of adjacent/translated covariance pairs can conceal the forced positive spikes in the remaining original signed source. This is a hostile consequence of the existing conditional RH return, not evidence of an off-critical zero or proof of RH.

## Comparison, hostile boundary cases, and originality scope

- Previous `EndpointCovarianceDyadicAbel.lean` proved the **count** \(2|A|+5\), but did not price the weighted Gram. The new argument uses the original response envelope and symmetry to turn that count into the explicit time-polynomial payment (1).
- Existing `PickupRoughDirectNearDiagonal.lean` has an independently useful one-sided *near-triangle* harmonic bound with an \(H\) width factor and a different frozen rough-prime source. The new theorem works on the original complete pickup and both index orientations, and includes arbitrarily large **fixed translation offsets** with no offset-magnitude loss. It does not claim superiority over a signed estimate for the remaining far/regular sector.
- **Non-symmetric mask counterexample:** let \(E=\{(m,1):2\le m\le N\}\). It has row degree one but its weighted mass is \(\sum_{m=2}^N m^{-1/2}\asymp\sqrt N\), much larger than \(\sum_{m=1}^N1/m\). Column degree is unbounded. Hence symmetry is essential; a merely one-sided exceptional-row count cannot inherit (1).
- **Zero-index counterexample:** natural subtraction saturates at zero. With \(m=10, a=11, n=0\), one has \(n\in R_{\{11\}}(m)\), but \(m\notin R_{\{11\}}(n)\). The source theorem correctly assumes positive indices.
- **Growing-set obstruction:** taking \(|A(T)|\) comparable to \(e^T\) does not yield a subexponential bound in (1); the every-positive-rate cardinality premise cannot be dropped.
- A symmetric positive Gram estimate cannot replace the actual **signed** regular remainder: doing so would reintroduce an exponent-one absolute allowance. The independent arithmetic estimate is absent.
- This is elementary finite AM--GM/harmonic summation applied to a new exact-source relation, not a claimed independent proof of RH or a novel general inequality. Prior-art novelty for the general weighted-degree estimate is **not claimed**.

## Publication, source versions, and evidence gates

Starting reviewed math source: `grwtsk/math@f258061f1ebf0f73f8b031f15a992254a46e4413`, with the already published source `EndpointCovarianceDyadicAbel.lean` at blob `b002496144258d70e3cea4af818811692da5865a` and retained issue #1544. The new source leaves, intended to be published additively on the existing `main`, are:

- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupSparseExceptionalCovariance.lean`.
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupSparseExceptionalRHGrowing.lean`.
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupSparseRegularDyadic.lean`.

The reviewed parent imports are Mathlib's harmonic bound, `MertensPrimitive` (original cutoff and Möbius Gram), `EndpointCovarianceDyadicAbel` (row count and both-index cover), `PickupEndpointQuadrature` (quarter correction), `PickupDyadicEndpoint` (fixed grid and return), and the existing `GoodScaleSubexponential` transport lemmas.

Source-only static checks: all three new `.lean` leaves have no `sorry`/`admit`/new-axiom/native-decision term in source and have no root import promotion, package-lock change or runner. Independent seeded finite diagnostics check 260,701 assertion groups, including 246,050 positive-index symmetry checks, 518 exact weighted-Schur and signed-mask decompositions, 2,247 actual response Gram comparisons, eight actual small-source signed covariance comparisons and 24 numerical energy/positive-regular sandwich checks at increased precision. The actual Gram is evaluated from its exact elementary closed integral for these diagnostics and cross-checked by quadrature. The full check manifest is `preflight-result.json`; its result remains **FINITE_DIAGNOSTICS_PASS_NOT_LEAN**. Numerical and finite checks do not establish all-scale arithmetic cancellation or Lean validity.

All Lean acceptance facets remain **NOT_RUN**. A later authorized executor must pin the final publication commit, exact Git blobs, `lean-toolchain` and `lake-manifest.json`, then run fresh source-bound module builds/elaboration/expected-type checks/kernel replay, and a transitive axiom audit (including imported generated/private/opaque proofs). Reject `sorryAx`, new research axioms and altered hypotheses. Preserve operational receipts in `grwtsk/noeaaeue`, outside math; the passive verification issue alone does not authorize execution. The missing arithmetic input remains a source-exact, all-positive-rate, signed **regular** covariance estimate, with any actual arithmetic exclusions explicitly shown to lie in the paid mask.
