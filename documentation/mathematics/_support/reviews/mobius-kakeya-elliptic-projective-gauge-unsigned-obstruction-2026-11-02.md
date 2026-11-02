# Möbius projective gauge, elliptic prime transport, and unsigned Kakeya obstruction

Date: 2026-11-02
Status: mathematical proof note; NO claim of RH, unconditional endpoint estimate, Lean compilation, fresh kernel replay, or transitive axiom audit.

## I. Explicit prime-compatible nonaffine Möbius gauge

The projective transformation \(g(x)=x/(x+1)\), represented by \(\begin{pmatrix}1&0\\1&1\end{pmatrix}\in\mathrm{SL}_2(\mathbb Z)\), is a bijection on the projective line modulo every prime, including all extensions. It is NOT a globally defined affine transformation: its pole must be retained.

Let \(E:y^2=x^3-x\) and \(E':Y^2=X(X+1)(X+2)\). Both are integral elliptic models of discriminant 64, hence have good reduction for all odd primes.

For any field \(K\) with \(2\ne0\), and \(x\ne-1\), define
\[
\Phi(x,y)=\left(\frac{-2x}{x+1},\,\frac{-2y}{(x+1)^2}\right).
\]
This is a lift of the projective gauge (followed by multiplication by -2 on the base). The exact algebraic identity
\[
\left(\frac{-2y}{(x+1)^2}\right)^2-
\left(\frac{-2x}{x+1}\right)
\left(\frac{-2x}{x+1}+1\right)
\left(\frac{-2x}{x+1}+2\right)
=\frac4{(x+1)^4}(y^2-x^3+x)
\]
proves that \(\Phi\) carries affine solutions on \(E\) into those on \(E'\). The inverse where \(X\ne-2\) is
\[
\Psi(X,Y)=\left(\frac{-X}{X+2},\,\frac{-2Y}{(X+2)^2}\right).
\]
Indeed \(X+2=2/(x+1)\), and substitution gives both inverse identities.

The exceptional original point \((-1,0)\) maps to the point at infinity \(O'\); the original infinity \(O\) maps to \((-2,0)\). These are the only exceptional cases and provide a bijection on the full smooth projective curves. The map DOES NOT preserve the chosen group origin. It agrees with the origin-preserving coordinate shift \((x,y)\mapsto(x-1,y)\) after translation by the two-torsion point \((-1,0)\) on \(E\).

All formulas and exceptions are defined over \(\mathbb F_p\) for odd \(p\), and commute with Frobenius. Therefore for every odd \(p\) and every \(r\ge1\):
\[
\#E(\mathbb F_{p^r})=\#E'(\mathbb F_{p^r}),\qquad b_{p,r}(E)=b_{p,r}(E').
\]
The equality of primitive orbit counts also follows from \(N_{p,r}=\sum_{d\mid r}d\,b_{p,d}\) by arithmetic Möbius inversion; the local Euler factors and finite-field elliptic zeta functions coincide. This is NOT a statement about classical Riemann zeta zeros.

**Typed-port gap:** The existing GRWTSK elliptic GeometricFiberPort uses affine fibers plus one infinity point. This nonaffine gauge exchanges an affine two-torsion point with infinity. It needs a new projective-point equivalence or a faithful exceptional-point ledger before it can instantiate that affine-only interface. Merely copying its affine witness would be incorrect.

## II. An explicit unsigned source obstruction

Retain the original response \(r_n(u)=2(n^{-1/2}-e^{-u/2})\mathbf1_{u\ge\log n}\). Define a COMPARISON, not a substitute for the original signed source:
\[
F_{\rm abs}(u)=\sum_{n\le e^u}\mu(n)^2r_n(u),\quad
H_{\rm abs}(T)=\int_0^T F_{\rm abs}(u)^2\,du.
\]

**Unconditional theorem:** For \(T\ge3\),
\[
H_{\rm abs}(T)\ge\frac{(e-1)^2}{16e^4}(e^T-e^3).
\]

**Proof:** Let \(S(N)\) count squarefree integers through \(N\). Non-squarefree integers are divisible by some \(k^2\) with \(k\ge2\), so
\[
N-S(N)\le N\sum_{k\ge2} k^{-2}
\le N\bigl(1/4+\sum_{k\ge3}[k(k-1)]^{-1}\bigr)=3N/4.
\]
Thus \(S(N)\ge N/4\). For \(u\ge3\), \(N=\lfloor e^{u-2}\rfloor\ge e^{u-2}/2\). For each \(n\le N\), \(r_n(u)\ge2(e-1)e^{-u/2}\). Hence
\[
F_{\rm abs}(u)\ge2(e-1)e^{-u/2}S(N)
\ge\frac{e-1}{4e^2}e^{u/2}.
\]
Square and integrate over \([3,T]\). QED.

Writing \(K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du\), define the positive ordered off-diagonal packet
\[
Q_{\rm abs}(T)=\sum_{\substack{m,n\le\lfloor e^T\rfloor\\m\ne n}}
\mu(m)^2\mu(n)^2 K_T(m,n).
\]
Since \(\mu(n)^4=\mu(n)^2\), its diagonal is the EXACT original source diagonal \(D(T)\le2T^2\). Thus
\[
Q_{\rm abs}(T)=H_{\rm abs}(T)-D(T)
\ge\frac{(e-1)^2}{16e^4}(e^T-e^3)-2T^2.
\]
This packet is exponentially large at dyadic times \(T=j\log2\). It proves that *unsigned* tube coverage alone cannot yield the required all-positive-rate signed estimate. It does not preclude signed, interference-preserving Kakeya methods.

For the original signed energy \(H(T)\) and original signed cross \(X(T)\), the exact source-bound defect is
\[
Q_{\rm abs}(T)-X(T)=H_{\rm abs}(T)-H(T).
\]

## III. No new rate from a mere isometric gauge

If \(U_j:L^2([0,j\log2])\to L^2(\mathbb R^2)\) is an isometry and \(f_j=U_j(F|_{[0,j\log2]})\), then
\(\|f_j\|_2^2=H(j\log2)\) by definition. Requiring \(\|f_j\|_2^2\le B(1+j)^k\) for this construction is already a strong ORIGINAL arithmetic energy estimate; isometric chart changes do not prove it. A nonisometric source-faithful Kakeya comparison must derive both its signed kernel preservation and its input-norm/defect estimates independently.

The exact task is unchanged: prove, unconditionally,
\[
\forall\epsilon>0\,\exists C_\epsilon\ge0\,\forall j\in\mathbb N:
\quad E(j\log2)\le C_\epsilon 2^{\epsilon j}.
\]
The fixed good-scale theorem in grwtsk/math then returns canonical RH, but neither subsection above proves this arithmetic premise.

## IV. Source identity and acceptance boundary

Source inspected: grwtsk/math main at \`1cd28953d5486658264162d385c5da6a99a09d95\`, with the following source files:

- [MoebiusEllipticFiberKernelComparison.lean](https://github.com/grwtsk/math/blob/1cd28953d5486658264162d385c5da6a99a09d95/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticFiberKernelComparison.lean): original full signed cross = elliptic trace packet + all rough/mixed/matched defects.
- [EllipticPrimeResidueFiberPorts.lean](https://github.com/grwtsk/math/blob/1cd28953d5486658264162d385c5da6a99a09d95/GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueFiberPorts.lean): affine-only port and full source-tagged prime fibers.
- [MoebiusStereographicTubeResidual.lean](https://github.com/grwtsk/math/blob/1cd28953d5486658264162d385c5da6a99a09d95/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStereographicTubeResidual.lean): genuine source-indexed tube geometry and positive dense budget.
- [CMKaehlerZQGaugeFullReturn.lean](https://github.com/grwtsk/math/blob/1cd28953d5486658264162d385c5da6a99a09d95/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQGaugeFullReturn.lean): exact source recovery by compensated gauge, no rate estimate.
- [PickupEndpointQuadrature.lean](https://github.com/grwtsk/math/blob/1cd28953d5486658264162d385c5da6a99a09d95/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean): quarter-unit error and conditional good-scale RH consumer.

Upstream Kakeya source pinned to openai/math \`4eaee87548250b2682affda7d05d947c05554bae\`: [Main.lean](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/MeasureTheory/Kakeya/Main.lean), [Definitions.lean](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/MeasureTheory/Kakeya/Definitions.lean).

**Verification:** This note contains direct mathematical proofs and source-bound distinctions. New Lean implementation of the projective exceptional-point equivalence: NOT_DONE. Full downstream Lean compilation, kernel checking and transitive axiom audit: NOT_RUN. All-positive-rate signed estimate (P) and RH completion: OPEN.
