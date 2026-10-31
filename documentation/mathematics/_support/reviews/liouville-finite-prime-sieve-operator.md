# Exact finite-prime sieve operator and the conditioning barrier

**Disposition:** source-bound iterated prime-delay identity, exact finite-horizon
conditioning bounds, and a support-versus-loss obstruction; no new Liouville
cancellation estimate and no claim of Riemann Hypothesis completion.

**Prepared against `grwtsk/math/main`:**
`51adcda8ec057fafdf13e2664f3f8def3d0b5a6c` with tree `1a547674a74987f8494676a8c61f7cd37f14fb22`.

**Upstream source candidates:**

- `LiouvilleGrowingPrimeBandIdentity.lean`, blob
  `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`;
- `LiouvillePrimeBandNormEquivalence.lean`, blob
  `caf6277e63c4b9139b42b07cffc8b8f925ea799d`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleFinitePrimeSieveOperator.lean`.

**Verification status:** analytical derivation and static source construction
only. Compilation, expected-type checking, fresh-kernel replay, and transitive
axiom audit are all `NOT_RUN`.

## 1. One exact prime-sieve factor

Retain the actual Liouville waveform

\[
F(u)=\sum_{n\le e^u}\lambda(n)r_n(u)
\]

with the unchanged causal response. For a prime \(p\),

\[
\lambda(pn)=-\lambda(n),
\qquad
r_{pn}(u)=p^{-1/2}r_n(u-\log p).
\]

Therefore

\[
p^{-1/2}F(u-\log p)
=
-\sum_{\substack{m\le e^u\\p\mid m}}
\lambda(m)r_m(u).
\tag{1.1}
\]

Adding (1.1) to \(F(u)\) removes all multiples of \(p\):

\[
\boxed{
\left(I+p^{-1/2}D_{\log p}\right)F(u)
=
\sum_{\substack{n\le e^u\\p\nmid n}}
\lambda(n)r_n(u),
}
\tag{1.2}
\]

where \(D_hF(u)=F(u-h)\). Repeated powers of \(p\) are removed exactly; they
are not an exceptional term.

## 2. Iterated finite-prime inclusion-exclusion

Let \(P\) be a finite set of primes and put

\[
Q_P=\prod_{p\in P}p.
\]

The delay operators commute. Iterating (1.2) gives

\[
\mathcal S_PF
:=
\prod_{p\in P}
\left(I+p^{-1/2}D_{\log p}\right)F.
\tag{2.1}
\]

For a subset \(S\subseteq P\), write

\[
d_S=\prod_{p\in S}p.
\]

Expanding the product,

\[
\mathcal S_PF(u)
=
\sum_{S\subseteq P}
d_S^{-1/2}F(u-\log d_S).
\tag{2.2}
\]

Since \(d_S\) is squarefree,

\[
d_S^{-1/2}F(u-\log d_S)
=
(-1)^{|S|}
\sum_{\substack{m\le e^u\\d_S\mid m}}
\lambda(m)r_m(u).
\tag{2.3}
\]

For each fixed source index \(m\), the subset coefficient in (2.2) is

\[
\sum_{S\subseteq\{p\in P:p\mid m\}}(-1)^{|S|}.
\]

It equals one when no selected prime divides \(m\), and zero otherwise.
Consequently

\[
\boxed{
\mathcal S_PF(u)
=
F_P^{\mathrm{sift}}(u)
:=
\sum_{\substack{n\le e^u\\(n,Q_P)=1}}
\lambda(n)r_n(u).
}
\tag{2.4}
\]

This is a complete source identity, not a sieve approximation. It retains the
original Möbius/Liouville signs, causal births, and every surviving repeated
prime power.

## 3. Exact conditioning bounds

Every shift \(D_{\log p}\) is a contraction on \(L^2(0,T)\) because the
waveform vanishes at negative physical time. If \(g\) also vanishes on the
negative half-line, then

\[
(1-p^{-1/2})\|g\|_{2,T}
\le
\|(I+p^{-1/2}D_{\log p})g\|_{2,T}
\le
(1+p^{-1/2})\|g\|_{2,T}.
\tag{3.1}
\]

Every intermediate sieve waveform still vanishes for negative time, so (3.1)
can be iterated. Define

\[
L_-(P)=\prod_{p\in P}(1-p^{-1/2}),
\qquad
L_+(P)=\prod_{p\in P}(1+p^{-1/2}).
\tag{3.2}
\]

For

\[
E_P^{\mathrm{sift}}(T)
=
\int_0^T|F_P^{\mathrm{sift}}(u)|^2\,du,
\]

the exact comparison is

\[
\boxed{
L_-(P)^2H(T)
\le
E_P^{\mathrm{sift}}(T)
\le
L_+(P)^2H(T).
}
\tag{3.3}
\]

Thus

\[
H(T)
\le
\kappa(P)E_P^{\mathrm{sift}}(T),
\qquad
\kappa(P)=L_-(P)^{-2}.
\tag{3.4}
\]

The finite-prime sieve is a genuine exact preconditioner, but its condition
number grows with the selected band.

## 4. The exact paid supplier

A sufficient scale-dependent arithmetic statement is

\[
\boxed{
\begin{aligned}
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;
\forall T\ge0\;\exists P_T:\qquad
\kappa(P_T)E_{P_T}^{\mathrm{sift}}(T)
\le C_\varepsilon e^{\varepsilon T}.
\end{aligned}
}
\tag{4.1}
\]

The set \(P_T\) may change with \(T\), but the complete inverse-conditioning
cost must be included. Equation (3.4) then gives the unchanged
all-positive-rate energy target.

Omitting \(\kappa(P_T)\) would be invalid. The long oscillatory one-delay
fixture in the predecessor review shows that the factor
\((1-p^{-1/2})^{-1}\) is already sharp for one abstract delay, and iteration
multiplies the losses.

## 5. Elementary cost for an initial prime band

Let

\[
P(Y)=\{p\le Y:p\text{ prime}\}.
\]

For \(0\le x\le1/\sqrt2\),

\[
-\log(1-x)
\le
\frac{x}{1-x}
\le
(2+\sqrt2)x.
\tag{5.1}
\]

Therefore

\[
\begin{aligned}
\log\kappa(P(Y))
&=
2\sum_{p\le Y}-\log(1-p^{-1/2})\\
&\le
2(2+\sqrt2)\sum_{p\le Y}p^{-1/2}\\
&\le
2(2+\sqrt2)\sum_{n\le Y}n^{-1/2}\\
&\le
(8+4\sqrt2)\sqrt Y.
\end{aligned}
\tag{5.2}
\]

Hence

\[
\boxed{
\kappa(P(Y))
\le
\exp\!\left((8+4\sqrt2)\sqrt Y\right).
}
\tag{5.3}
\]

Similarly,

\[
L_+(P(Y))^2
\le
\exp(4\sqrt Y).
\tag{5.4}
\]

If a prescribed cutoff \(Y(T)\) satisfies

\[
\sqrt{Y(T)}=o(T),
\tag{5.5}
\]

both forward and inverse conditioning costs are \(e^{o(T)}\). In the
all-positive-rate growth class, the original energy and the corresponding
sifted energy are then equivalent. The sieve may expose a more useful
arithmetic support, but it does not weaken the required exponential rate.

## 6. Exact support reduction

If \(P(Y)\) contains every prime at most \(Y\), every surviving integer
\(n>1\) has all prime factors greater than \(Y\). If \(\Omega(n)\) is the total
number of prime factors counted with multiplicity, then

\[
n>Y^{\Omega(n)}.
\]

For \(n\le e^T\),

\[
\boxed{
\Omega(n)<\frac{T}{\log Y}.
}
\tag{6.1}
\]

Thus a polynomial cutoff \(Y(T)=T^A\) reduces the surviving degree only to

\[
\Omega(n)=O\!\left(\frac{T}{\log T}\right),
\]

not to a fixed degree.

The necessity is exact. If a prime \(q\notin P\), then every power \(q^j\)
survives the sieve. Therefore, to ensure that every survivor \(n\le e^T\) has

\[
\Omega(n)\le k,
\]

the selected set must contain every prime satisfying

\[
q^{k+1}\le e^T,
\qquad\text{equivalently}\qquad
q\le e^{T/(k+1)}.
\tag{6.2}
\]

This is the prime-power obstruction recorded in the new source.

## 7. Bounded-degree reduction has unpayable norm cost

For the initial prime band, the classical prime number theorem and partial
summation give

\[
\sum_{p\le Y}p^{-1/2}
\sim
\frac{2\sqrt Y}{\log Y}.
\tag{7.1}
\]

Since \(-\log(1-x)\ge x\),

\[
\log\kappa(P(Y))
\ge
2\sum_{p\le Y}p^{-1/2}
\sim
\frac{4\sqrt Y}{\log Y}.
\tag{7.2}
\]

Substituting the necessary fixed-degree threshold
\(Y=e^{T/(k+1)}\) yields

\[
\log\kappa(P(Y))
\gtrsim
\frac{4(k+1)}{T}
e^{T/(2(k+1))}.
\tag{7.3}
\]

This dominates every linear function \(\varepsilon T\). Therefore the
condition number itself grows faster than every \(e^{\varepsilon T}\).

Consequently:

\[
\boxed{
\text{positive finite-prime norm inversion cannot reduce the source to
bounded }\Omega\text{-degree at all-positive-rate cost.}
}
\tag{7.4}
\]

This does not exclude cancellation in a rough-number source with growing
\(\Omega\), nor does it exclude a signed inclusion-exclusion argument used
before norms. It excludes only the bounded-degree reduction followed by the
positive norm inverse.

The PNT comparison is analytical background in the review. It is not imported
as a Lean theorem in this increment.

## 8. What remains viable

The sieve factorization identifies a precise next arithmetic object:

\[
F_{P(Y(T))}^{\mathrm{sift}}(u)
=
\sum_{\substack{n\le e^u\\p\mid n\Rightarrow p>Y(T)}}
\lambda(n)r_n(u).
\tag{8.1}
\]

A useful result must do more than note that this source is sparse. It must
prove cancellation strong enough to pay both its energy and the exact
conditioning loss.

Two routes remain structurally legitimate:

1. choose a subquadratic or otherwise subexponentially conditioned cutoff and
   prove all-positive-rate cancellation for the rough-number waveform;
2. retain the signed subset expansion (2.2) inside the double-Abel or endpoint
   consumer and obtain cancellation across subsets before applying a norm.

The second route is genuinely different from multiplying norm-inverse
constants. Its target should be a complete signed subset-delay average, not
the maximum or sum of the absolute values of all subset terms.

## 9. Formalization and verification boundary

The new source declares:

- finite prime bands and their product;
- exact survivor predicate and sifted waveform;
- subset-product delay expansion;
- lower, upper, and inverse sieve-conditioning factors;
- the initial prime band;
- the exact waveform identity;
- the two-sided norm comparison;
- the fully paid scale-dependent supplier;
- the elementary initial-band inverse-cost bound;
- omitted-prime-power survival and the prime-power degree cutoff.

Only the prime-membership projections and the construction proof for the
initial band are written as Lean theorems. The analytical identities and
asymptotic comparisons remain named propositions.

Required validation commands are:

```text
lake env lean \
  GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleFinitePrimeSieveOperator.lean

lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleFinitePrimeSieveOperator.lean
```

Compilation, expected types, fresh-kernel replay, and transitive axiom audit
remain `NOT_RUN`. Publication does not establish the paid supplier, the
Liouville energy target, or RH.
