# Signed Abel packet: quotient-only Ramare coefficients and bilinear phase synthesis

Contribution: grwtsk.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED. This note describes finite mathematical source, not an admitted analytic theorem or a proof of RH. All three mathematical leaves coexist at `7b863b2ea52083f4c21f454ac527c2608736a888`. The final source revision only makes the pinned trigonometric dependency defining pi explicit; no prior acceptance is transferred.

## Exact arithmetic cofactor

Keep X=2^j, Y=2X, Q=2^floor((j+1)/3), and the existing selected prime band P={p prime:Q<p<=2Q}. More generally let P be any finite set of primes and k_P(m) its existing distinct selected-prime-divisor count. Define

```
a_P(0)=0,
a_P(m)=mu(m)/(k_P(m)+1), m>0.
```

This coefficient depends on the quotient m and selected set P, not on the particular extracted prime p or on h,N. The source proves |a_P(m)|<=1 and |a_P(m)|<=1/2 when p in P and p divides m. On the coprime quotient support, k_P(pm)=k_P(m)+1, so a_P(m) is exactly the old source coefficient mu(m)/k_P(pm).

For a variable real input f, define the raw and repeated prefixes

```
A_P(f;h,N)=sum_(p in P) sum_(1<=m<=floor((N+h)/p), h<pm) f(pm-h)a_P(m),
R_P(f;h,N)=sum_(p in P) sum_(1<=m<=floor((N+h)/p), h<pm, p|m) f(pm-h)a_P(m).
```

The existing coprime prefix is EXACTLY A_P(mu)-R_P(mu). Hence the existing retained signed bulk is

```
B_j = T_j(U_P) - T_j(A_P(mu)) + T_j(R_P(mu)).
```

The unsifted contribution U_P is unchanged. All ordinary windows, floors, kernel weights and depths remain literal. This is an alternative representation of the same source, not an extra independently assumed model.

The correction R_P is NOT the older repeatedPrefix. On repeated terms its denominator is k_P(m)+1 rather than k_P(pm). With P={p}, a_P(p)=-1/2: raw and repeated terms still cancel at the original integer p^2. Deleting the new correction is also invalid.

For one-bounded f the new source derives

```
|R_P(f;h,N)| <= (1/2) sum_(p in P) floor((N+h)/p^2).
|T_j(R_P(mu))| <= S_P(Y-1),
S_P(Z)=sum_(p in P) floor(Z/p^2).
```

Consequently comparison of the complete packet P_j with the raw expression T_j(U_P)-T_j(A_P(mu)) costs at most 2+S_P(Y-1). The first two units are the inherited boundary allowance. The exact corrected expression adds no arithmetic boundary premise. The crude incidence bound is still polynomial at the chosen cube-root band; it must not be absorbed into an all-positive-exponent budget.

## Literal bilinear windows

The inspected openai/math convention is the exclusive cofactor interval

```
I(M,A,h,N)=[floor(h/A)+1, min(M,floor((h+N)/A)+1)).
```

For A>0, membership is exactly m<M and h<Am<=h+N. Given a sufficient exclusive cutoff, this equals the original filtered inclusive quotient interval. The new local source proves this including empty and terminal cases.

A common source cutoff is

```
M_j=floor((Y-1)/(Q+1))+1.
```

For every source-supported window N+h<Y and selected prime p, floor((N+h)/p)<M_j. The actual band consists of odd primes for j>=2; primality and Q<=p<=2Q are proved with no distribution estimate. The two smaller scales are not silently subjected to an odd-prime theorem.

Let e(alpha*n)=exp(2*pi*i*alpha*n). Define the finite bilinear window

```
B(P,M,N,d,a,c,alpha,h)
 = sum_(p in P) sum_(m in I(M,dp,h,N)) a(m)c(p)e(alpha*p*m).
```

`bilinearWindow_upstream_order` proves equality to the inspected upstream outer-range-M/inner-prime expression with its conditional window term. This is source-shape matching to the exact unfolded definition, not an imported OAI declaration or a checked cross-environment theorem.

The shifted-input sum with f(dp*m-h) satisfies

```
ShiftedWindow(e(alpha*n))
 = e(-alpha*h) B(P,M,N,d,a,c,alpha*d,h).
```

Both the origin phase and the dilation in the frequency are essential. Natural subtraction is justified by the lower window guard. A finite synthesis g(n)=sum_i b_i e(alpha_i*n) therefore yields an exact sum of these bilinear windows. The norm comparison charges every coefficient:

```
||ShiftedWindow(g)|| <= sum_i |b_i| E_i
```

when the same bilinear windows have norms at most E_i. No major-arc or zero-frequency component is dropped. The weighted-origin comparison also retains the supremum allowance on its origin weights; an unweighted averaged-origin theorem is not automatically a bound for an arbitrary weighted source.

## Complete source handoff

For d=1, a=a_P, c=1, the actual raw prefix for a real input f equals the real part of the complex shifted-input operator. Both input coefficients needed by the upstream bilinear theorem are one-bounded. This removes the previous prime-dependent denominator obstruction; it does not supply the theorem's rational-approximation conditions or quantitative conclusion.

Let W_P(M,h,N)=sum_(p,m in the actual window)|a_P(m)|. If the real part of a finite synthesis g approximates mu on EVERY required ordinary prefix with error eta(h,N), the raw-prefix error is bounded by eta(h,N) W_P(M,h,N). The source preserves this envelope under the original kernel rather than replacing all windows by a premature maximum.

The full packet model is

```
Model_j(g) = T_j(U_P) - T_j(phasePrefix(g)) + T_j(R_P(mu)).
```

Thus the unsifted and repeated-prime parts remain exact and signed. The final theorem gives

```
|P_j-Model_j(g)| <= 2 + T_j((h,N) -> eta(h,N) W_P(M_j,h,N)).
```

More generally `full_packet_bilinear_comparison` consumes any proved source-window envelope for the raw synthesis error. No independently useful synthesis, small coefficient mass, major-arc bound, averaged minor-arc bound, or subpolynomial whole-model estimate is supplied here. An exact finite Fourier representation can make a residual zero while leaving a large and difficult spectral sum; it is not a cancellation theorem.

## Mathematical sources and next obligation

The nearest external source is OpenAI, *Ordinary two-point correlations of multiplicative functions*, September 24, 2026, pinned `openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. The inspected files are MinorArcRamareError, MinorArcRamareWindow, MinorArcWindowInterval, MinorArcBilinearWindow and MinorArcBilinearSieve under `lean/OAI/NumberTheory/TwoPoint/Fourier/`. Their exact identities, hypotheses and classification appear in `docs/reference/literature/reading-background/openai-math-ramare-bilinear-20261027.md`.

The next analytic obligation is to apply a replayed source-matched minor-arc estimate to this precise bilinear window while paying ALL remaining frequencies, cofactor length, origin weights, synthesis coefficient mass, reconstruction error, and the signed unsifted/repeated-prime contribution. The target remains a bound by C_delta X^delta for every delta>0. A fixed logarithmic saving or a finite operator identity alone does not meet it.

No dependency migration, upstream analytic admission, public-root promotion, remote runner dispatch, force push, or change to existing mathematical hypotheses occurred. Native validation and operational receipts belong outside math, pinned to the final mathematical commit.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0945997e9167239c024d63305c98694d51b9ea273d74af48dfd6a02f40e8c737 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
