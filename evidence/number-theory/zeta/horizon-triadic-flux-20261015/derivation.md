# Horizon-matched triadic flux

## Status and source boundary

This is a written mathematical reduction with exact finite symbolic and rational
checks.  It is not a Lean admission, a witness of the remaining arithmetic
growth proposition, a new zero-free region, or a proof of the Riemann
hypothesis.

The selected repository sources are the literal Möbius pickup, the endpoint
defect recurrence, the polynomial and subexponential energy consumers, and the
existing conditional return to `_root_.RiemannHypothesis`.  The source
coefficients, closed natural cutoffs, endpoint terms, Möbius signs, and all
mixed interactions are retained.

The triadic correspondence source is used only for its independently typed
ternary face moment and exact finite `(+,+,-)` Fourier projector.  It is not
used to infer positive transport from a forbidden-pair matching, and no
pairwise interface is treated as determining the complete face moment.

## 1. Source recurrence

Put

\[
 M_n=\sum_{m\le n}\mu(m),\qquad
 A_n=\sum_{m\le n}\frac{\mu(m)}{\sqrt m},
\]

and

\[
 Q_n=A_n-\frac{M_n}{\sqrt n},\qquad
 g_n=\frac1{\sqrt n}-\frac1{\sqrt{n+1}},\qquad
 x_n=M_ng_n.
\]

The exact endpoint recurrence is

\[
 \boxed{Q_{n+1}=Q_n+x_n,\qquad Q_1=0.}\tag{1}
\]

The newly arriving coefficient cancels between the two source prefixes.  No
pointwise estimate for `M_n` is inserted into (1).

For the `n`th logarithmic cell set

\[
 \ell_n=\log\frac{n+1}{n}.
\]

The finite zero-damping endpoint energy is

\[
 \boxed{H_N=\sum_{n=1}^{N}Q_n^2\ell_n.}\tag{2}
\]

## 2. Horizon-matched Abel weight

For a fixed horizon `N`, define the backward logarithmic potential

\[
 L_{N,n}=\log\frac{N+1}{n+1}\qquad(1\le n<N).
\]

It is nonnegative and vanishes at the terminal index.  Define

\[
 \boxed{
 J_N=2\sum_{n=1}^{N-1}L_{N,n}Q_nM_ng_n
 }\tag{3}
\]

and

\[
 \boxed{
 K_N=\sum_{n=1}^{N-1}L_{N,n}(M_ng_n)^2.
 }\tag{4}
\]

`J_N` is the complete signed horizon flux.  `K_N` is its diagonal quadratic
variation.  The two are not interchangeable.

From (1),

\[
 Q_{n+1}^2-Q_n^2=2Q_nx_n+x_n^2.
\]

Multiply by `L_{N,n}` and sum.  Since

\[
 L_{N,n-1}-L_{N,n}=\ell_n,
 \qquad L_{N,N}=0,
 \qquad Q_1=0,
\]

finite summation by parts gives the exact identity

\[
 \boxed{H_N=J_N+K_N.}\tag{5}
\]

There is no omitted terminal term: the weight was selected to vanish at the
actual horizon.  This is a horizon-matched identity, not the deletion of the
terminal charge occurring in a fixed-damping Abel formula.

## 3. Complete Volterra Gram form

Equation (1) gives

\[
 Q_n=\sum_{j<n}x_j.
\]

Substituting into (2) and interchanging only finite sums yields

\[
 \boxed{
 H_N=
 \sum_{j,k=1}^{N-1}
 x_jx_k\log\frac{N+1}{\max(j,k)+1}.
 }\tag{6}
\]

The kernel is positive semidefinite because

\[
 \log\frac{N+1}{\max(j,k)+1}
 =\sum_{m=\max(j,k)+1}^{N}\ell_m
\]

is the Gram kernel of the finite prefix indicators.  Its diagonal is exactly
`K_N`; its complete off-diagonal part is exactly `J_N`:

\[
 K_N=\sum_{j=1}^{N-1}x_j^2L_{N,j},
 \qquad
 J_N=2\sum_{1\le j<k<N}x_jx_kL_{N,k}.
\tag{7}
\]

Positive semidefiniteness of the full Gram form does not prove an upper bound
for the signed off-diagonal part.  Conversely, deleting the off-diagonal terms
changes the arithmetic source.

## 4. The correction is unconditionally polylogarithmic

The elementary source bounds give

\[
 |M_n|\le n,
 \qquad
 0\le g_n\le\frac1{\sqrt n\,(n+1)}.
\]

Hence

\[
 x_n^2=(M_ng_n)^2\le\frac1{n+1}.
\tag{8}
\]

Therefore

\[
 K_N\le
 \sum_{m=2}^{N}\frac{\log((N+1)/m)}m.
\]

The summand is decreasing on `[1,N]`, so comparison with its integral gives

\[
 \boxed{0\le K_N\le\frac12\log^2(N+1).}\tag{9}
\]

This estimate uses no Mertens cancellation.

A second exact identity records the undamped cumulative flux:

\[
 2\sum_{n=1}^{N}Q_nx_n
 =Q_{N+1}^2-\sum_{n=1}^{N}x_n^2.
\tag{10}
\]

It is useful as a self-normalized diagnostic, but (5), not (10), is the
horizon-matched criterion used below.

## 5. Comparison with the literal pickup energy

On the logarithmic cell `u in [log n,log(n+1)]`, put

\[
 h_n(u)=\frac1{\sqrt n}-e^{-u/2}.
\]

The exact source identity is

\[
 \boxed{W(u)=2\bigl(Q_n+M_nh_n(u)\bigr),}\tag{11}
\]

and

\[
 0\le h_n(u)\le g_n.
\]

Let

\[
 D_n=\int_{\log n}^{\log(n+1)}h_n(u)^2\,du.
\]

Then

\[
 M_n^2D_n\le M_n^2g_n^2\ell_n
 \le\frac1{n+1}\frac1n,
\]

so

\[
 \boxed{\sum_{n\ge1}M_n^2D_n\le1.}\tag{12}
\]

Using

\[
 (x+y)^2\le2x^2+2y^2
\]

in both directions gives the complete cell estimates

\[
 \int_{\log n}^{\log(n+1)}W(u)^2\,du
 \le8Q_n^2\ell_n+8M_n^2D_n,
\tag{13}
\]

\[
 Q_n^2\ell_n
 \le\frac12\int_{\log n}^{\log(n+1)}W(u)^2\,du
   +2M_n^2D_n.
\tag{14}
\]

Consequently, for

\[
 P_N=\operatorname{pickupEnergy}(\log(N+1)),
\]

one has

\[
 \boxed{P_N\le8H_N+8,\qquad H_N\le\frac12P_N+2.}\tag{15}
\]

Every within-cell drift is paid in (12); endpoint samples are not promoted to
continuous estimates without this comparison.

## 6. A single subpower supplier

For a sequence `f_N`, write `NatSubpowerUpper(f)` for

\[
 \forall\varepsilon>0\ \exists C_\varepsilon\ge0\ \forall N\ge1:
 \quad f_N\le C_\varepsilon(N+1)^\varepsilon.
\]

Define

\[
 \mathsf{HorizonTriadicFluxSubpower}
 :=\operatorname{NatSubpowerUpper}(J).
\tag{16}
\]

Because `J_N<=H_N`, subpower growth of `H_N` implies (16).  Conversely, (5)
and (9), together with

\[
 \frac12\log^2(N+1)\le\varepsilon^{-2}(N+1)^\varepsilon,
\]

show that (16) implies subpower growth of `H_N`.  Thus

\[
 \boxed{
 \mathsf{HorizonTriadicFluxSubpower}
 \iff
 \operatorname{NatSubpowerUpper}(H).
 }\tag{17}
\]

By (15), natural-cutoff subpower growth of `H_N` is equivalent to the
repository's real-time `PickupEnergySubexp` class.  The forward direction uses
`N=floor(exp T)` and `N+1<=2 exp T`; the reverse direction evaluates at
`T=log(N+1)`.  Therefore the written bridge is

\[
 \boxed{
 \mathsf{HorizonTriadicFluxSubpower}
 \iff
 \mathsf{PickupEnergySubexp}
 \iff
 \mathsf{PickupCrossSubexp}.
 }\tag{18}
\]

The second equivalence is already an active checked repository theorem.  Once
the first equivalence is admitted, the existing checked consumer yields

\[
 \boxed{
 \mathsf{HorizonTriadicFluxSubpower}
 \Longrightarrow
 \_root_.\mathsf{RiemannHypothesis}.
 }\tag{19}
\]

No witness of (16) is supplied.

## 7. Exact P04 reformulation

Define the polylogarithmic version

\[
 \mathsf{HorizonTriadicFluxPolylog}
 :\Longleftrightarrow
 \exists C,r\ge0\ \forall N\ge1:
 J_N\le C(1+\log(N+1))^r.
\tag{20}
\]

Again (5), (9), and `J_N<=H_N` show that (20) is equivalent to a
polylogarithmic bound for `H_N`.  Equation (15) converts this exactly into the
repository's `PickupEnergyPoly` class, and the active source theorem
`pickupCrossPoly_iff_pickupEnergyPoly` converts it into `PickupCrossPoly`.
Hence the written source-preserving reformulation is

\[
 \boxed{
 \mathsf{HorizonTriadicFluxPolylog}
 \iff
 \mathsf{PickupEnergyPoly}
 \iff
 \mathsf{PickupCrossPoly}.
 }\tag{21}
\]

Thus P04 can be attacked as one horizon-matched signed triadic moment rather
than as separate divergent sign parts.  This reformulation does not make P04
true; it freezes the exact remaining interaction.

## 8. Exact triadic face representation

For each `n`, define finite Laurent polynomials

\[
 A_n(z)=\sum_{1\le a<n}\mu(a)
 \left(a^{-1/2}-n^{-1/2}\right)z^a,
\]

\[
 B_n(z)=\sum_{1\le b\le n}\mu(b)z^b,
 \qquad
 C_n^-(z)=\sum_{c=2}^{2n-1}z^{-c}.
\]

Normalized Haar orthogonality gives

\[
 \boxed{
 \int_{\mathbb T}A_n(z)B_n(z)C_n^-(z)\,dm(z)=Q_nM_n.
 }\tag{22}
\]

Therefore

\[
 \boxed{
 J_N=
 2\sum_{n=1}^{N-1}
 L_{N,n}g_n
 \int_{\mathbb T}A_nB_nC_n^-\,dm.
 }\tag{23}
\]

This is the complete signed `(+,+,-)` face moment.  Replacing it by a squared
modulus changes the theorem.  Applying the finite coprime projector further
splits each face into primitive shapes and a squarefree radial coordinate, with
all floors, signs and divisor-index interactions retained.

## 9. Quantitative exponent law

Suppose for some `alpha>=0`

\[
 J_N\le C(N+1)^\alpha.
\tag{24}
\]

Then (5), (9), and (15) give pickup-energy growth of exponential rate at most
`alpha`, up to a polynomial factor in time.  Hence every damping strictly
larger than `alpha` is integrable.  Equivalently, every completed vertical line
with

\[
 \sigma>\alpha/2
\]

is controlled.  The special case `alpha=0` with subpower constants is the full
right-half-plane criterion used in (19).

This gives a quantitative research scale:

- `alpha<1` improves the elementary energy abscissa;
- `alpha<2/3` reaches the reciprocal line `sigma=1/3`;
- `alpha=0` closes the existing all-positive-damping route.

No improved exponent is proved here.

## 10. Hostile controls

The implementation rejects the following substitutions.

1. Delete `K_N` from (5).
2. Replace `Q_n M_n` by `|Q_n M_n|`.
3. Replace the signed face moment (22) by a Hermitian squared modulus.
4. Reuse one horizon kernel at a different terminal cutoff.
5. Infer subpower growth from a finite diagnostic prefix.
6. Treat positive semidefiniteness of the full Volterra Gram matrix as an upper
   bound for its signed off-diagonal part.
7. Infer an Euler product from the additive face condition `a+b=c`.
8. Promote the inactive Lean candidates or exact Python checks to kernel
   acceptance.

## 11. Smallest unresolved theorem

The new resume theorem is

\[
 \boxed{
 \forall\varepsilon>0\ \exists C_\varepsilon\ge0\ \forall N\ge1:
 \quad
 2\sum_{n=1}^{N-1}
 \log\frac{N+1}{n+1}
 Q_nM_ng_n
 \le C_\varepsilon(N+1)^\varepsilon.
 }\tag{25}
\]

It is named `HorizonTriadicFluxSubpower`.

The stronger P04-scale version replaces the right side by
`C(1+log(N+1))^r`.  Neither version is proved.
