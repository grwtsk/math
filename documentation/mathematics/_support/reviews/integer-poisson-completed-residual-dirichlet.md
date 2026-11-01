# Completed residual and finite centered Dirichlet truncation

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.

**Disposition.** This note replaces the proposed “discard the outer zero tail” comparison by an exact completed residual. Every nontrivial zero not contained in the certified positive-height set remains in that residual with a nonnegative Poisson weight. The unknown finite head is therefore dominated without any collar loss. The completed residual is then approximated by a finite von Mangoldt Dirichlet polynomial, equivalently by a complete signed transform of the existing centered p-adic unit-window packets. The only remaining arithmetic estimate is the square energy of that completed finite transform.

The finite frame and perturbation transfers are written as Lean source candidates. The Hadamard-product identity and the explicit tail estimate are derived here but remain separately named source propositions pending Lean formalization. Compilation, exact-type checking, fresh-kernel replay, and transitive axiom auditing are `NOT_RUN`. No cofinal numerical witness or RH proof is claimed.

## 1. Completed Poisson residual

Let

\[
\xi(s)=\frac12s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s).
\]

For `Re(s)>1`, the symmetrically ordered Hadamard product gives

\[
\operatorname{Re}\frac{\xi'}{\xi}(s)
=
\sum_{\rho}m(\rho)
\frac{\operatorname{Re}s-\operatorname{Re}\rho}
{(\operatorname{Re}s-\operatorname{Re}\rho)^2+
 (\operatorname{Im}s-\operatorname{Im}\rho)^2},
\tag{1}
\]

where the sum is over all nontrivial zeros with analytic multiplicity. At `Re(s)>1` the real-part series is absolutely convergent and every summand is nonnegative.

Logarithmic differentiation of the completed factor gives

\[
\frac{\xi'}{\xi}(s)
=
\frac1s+\frac1{s-1}-\frac12\log\pi
+\frac12\psi(s/2)+\frac{\zeta'}{\zeta}(s).
\tag{2}
\]

Fix the seven-eighths-adapted line

\[
s_k=\frac98+ik,\qquad 0\le k\le Z.
\]

Let `known` be a certified subset of the actual positive-height zeros through height `Z`. Define

\[
K_k^{\rm known}
=
\sum_{\rho\in\mathrm{known}}m(\rho)
\frac{9/8-\operatorname{Re}\rho}
{(9/8-\operatorname{Re}\rho)^2+(k-\operatorname{Im}\rho)^2}
\]

and

\[
R_k
=
\operatorname{Re}\frac{\xi'}{\xi}(s_k)-K_k^{\rm known}.
\tag{3}
\]

Subtracting only `known` removes exactly those positive terms. All other zeros remain, including

- uncredited positive-height zeros through `Z`;
- their negative-height conjugates;
- the first outer collar;
- the entire remote zero tail.

Consequently

\[
0\le P_k^{\rm unknown}\le R_k,
\tag{4}
\]

where `P_k^{unknown}` is the finite source used by the integer Poisson frame. Thus

\[
E_Z^{(7/8)}
:=\sum_{k=0}^Z(P_k^{\rm unknown})^2
\le
\sum_{k=0}^Z R_k^2.
\tag{5}
\]

This is the exact resolution of the outer-collar issue. The collar is not asserted small; it is retained inside the completed residual. If an off-line pair occurs just outside the target head, it makes the arithmetic residual larger and therefore prevents a false one-zero certificate.

The source also proves the finite precursor of (4): for the canonical absolute-height head through `Z`, subtracting `known` leaves a finite set difference that contains the entire uncredited positive-height head. This part uses only finite-set inclusion and positivity.

## 2. Actual prime series

Mathlib proves, for `Re(s)>1`,

\[
-\frac{\zeta'}{\zeta}(s)
=
\sum_{n\ge1}\frac{\Lambda(n)}{n^s}.
\tag{6}
\]

Combining (2) and (6), the completed residual is

\[
R_k=
\operatorname{Re}\left[
\frac1{s_k}+\frac1{s_k-1}-\frac12\log\pi
+\frac12\psi(s_k/2)
-
\sum_{n\ge1}\Lambda(n)n^{-s_k}
\right]-K_k^{\rm known}.
\tag{7}
\]

No prime, prime power, gamma term, pole term, certified zero, or remote zero is omitted.

For a finite cutoff `N`, define

\[
A_{N,k}=
\operatorname{Re}\left[
\frac1{s_k}+\frac1{s_k-1}-\frac12\log\pi
+\frac12\psi(s_k/2)
-
\sum_{n\le N}\Lambda(n)n^{-s_k}
\right]-K_k^{\rm known}.
\tag{8}
\]

This is the source definition `finiteCompletedResidualSample`.

## 3. Exact p-adic centered reassembly

For each positive integer `n`, let

\[
c_n=\frac{1-\Lambda(n)}2.
\tag{9}
\]

Then

\[
-\Lambda(n)=2c_n-1
\]

and therefore

\[
-\sum_{n\le N}\Lambda(n)n^{-s}
=
2\sum_{n\le N}c_n n^{-s}
-
\sum_{n\le N}n^{-s}.
\tag{10}
\]

The first sum in (10) is one complete signed object. It must be formed before squaring; replacing it by the sum of individual packet energies removes cross-window cancellation.

The existing prime-window seam satisfies, on the unit window `(n-1,n]`,

\[
\operatorname{pntWindow}(n-1,1)=\Lambda(n).
\]

For a source-preserving split `mu=u_n-2v_n`, the existing centered identity gives

\[
\Lambda(n)-1
=-2\,\operatorname{centeredLargePrimePacket}(n-1,1,u_n,v_n).
\]

Hence

\[
\boxed{
\operatorname{centeredLargePrimePacket}(n-1,1,u_n,v_n)=c_n.
}
\tag{11}
\]

Thus (10) is exactly a finite Dirichlet transform of the existing centered p-adic packets, together with the deterministic constant polynomial. This is a stronger source connection than a collection of unrelated prime windows: all unit windows occur with their original complex Mellin phases and all mixed terms survive.

The Lean module proves the finite coefficient algebra and the conditional p-adic reassembly. The singleton `Finset.Ioc` normalization is kept as a named interface pending elaboration against the pinned API.

## 4. Explicit tail

Since

\[
0\le\Lambda(n)\le\log n,
\]

and `|n^{-s_k}|=n^{-9/8}`, one has

\[
|R_k-A_{N,k}|
\le
\sum_{n>N}(\log n)n^{-9/8}.
\]

The function `(log x)x^{-9/8}` is decreasing for `x>=1`, so

\[
\sum_{n>N}(\log n)n^{-9/8}
\le
\int_N^\infty(\log x)x^{-9/8}\,dx
=
N^{-1/8}(8\log N+64).
\tag{12}
\]

Set

\[
\tau_N=N^{-1/8}(8\log N+64).
\]

The bound is uniform in `k`.

Choose

\[
N_Z=(Z+1)^{128}.
\tag{13}
\]

Writing `x=Z+1>=2`,

\[
(Z+1)\tau_{N_Z}^2
=x^{-31}(1024\log x+64)^2.
\]

Using `log x<=x` and `64<=32x`,

\[
(Z+1)\tau_{N_Z}^2
\le
\frac{1056^2}{x^{29}}
\le
\frac{1056^2}{2^{29}}
<\frac1{100}.
\tag{14}
\]

The last inequality is the exact integer comparison

\[
100\cdot1056^2=111{,}513{,}600<536{,}870{,}912=2^{29}.
\]

The exponent `128` is not optimized. It is selected to leave a simple uniform rational budget.

## 5. Finite one-zero criterion

For real vectors `R=(R_k)` and `A=(A_{N,k})`, if

\[
|R_k-A_k|^2\le\tau^2,
\]

then

\[
R_k^2\le2A_k^2+2\tau^2.
\]

Therefore

\[
\sum_{k=0}^Z R_k^2
\le
2\sum_{k=0}^ZA_k^2+2(Z+1)\tau^2.
\tag{15}
\]

Assume

\[
\sum_{k=0}^ZA_{N_Z,k}^2<\frac35.
\tag{16}
\]

Equations (14)-(16) give

\[
E_Z^{(7/8)}
<2\left(\frac35+\frac1{100}\right)
=\frac{61}{50}
<\frac{32}{25}.
\]

The seven-eighths frame

\[
16D_Z\le25E_Z^{(7/8)}
\]

then implies `D_Z<2`, hence

\[
\boxed{D_Z\le1.}
\tag{17}
\]

This is formalized by

```text
sampleEnergy_le_two_approx_add_two_uniformError
sevenEighthsEnergy_le_completedResidualEnergy
unknownDeficit_le_one_of_completedResidual_truncation
completedResidualFiniteCertificateAt_to_oneUnit
```

and the corresponding cofinal conditional RH consumer.

## 6. Exact remaining arithmetic target

The new source-facing target is finite:

\[
\boxed{
\sum_{k=0}^Z A_{(Z+1)^{128},k}^2<\frac35
}
\tag{18}
\]

on a cofinal family of certified heights, with the certified-zero subtraction in (8) retained exactly.

This target differs materially from the earlier packetwise proposal:

1. the completed deterministic terms are retained;
2. all certified zero contributions are subtracted explicitly;
3. every outer zero remains inside the completed residual rather than being called a small tail;
4. the finite prime source is the actual von Mangoldt polynomial;
5. its p-adic representation is one signed centered transform before squaring;
6. the only truncation error is the explicit absolutely convergent prime-series tail (12).

The theorem (18) remains unproved. Proving it is still strong enough to construct the cofinal one-unit numerical witness and hence RH through the existing return.

## 7. Novelty boundary and source comparison

The Hadamard product for `xi`, the logarithmic derivative formula, and the von Mangoldt Dirichlet series are classical. Mathlib already formalizes the last identity on `Re(s)>1` and the pointwise bound `Lambda(n)<=log n`.

The programme-specific contribution is the exact combination with:

- the canonical analytic-multiplicity zero inventory;
- certified positive-height subtraction;
- the seven-eighths nearest-grid frame;
- retention of the complete outer zero divisor;
- the existing centered p-adic unit-window seam;
- the explicit finite cutoff `(Z+1)^128`;
- the rational energy threshold `3/5`.

No claim is made that the classical completed-log-derivative identity has already been elaborated in Lean here. It remains the named `CompletedPoissonDomination` proposition. Likewise the tail and scheduled budget remain named propositions until their integral comparison is qualified in Lean.

## 8. Verification status

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- finite algebraic transfer: `SOURCE_PROOF_CANDIDATE`;
- completed Hadamard domination: `NOT_FORMALIZED`;
- explicit tail integral: `NOT_FORMALIZED`;
- scheduled tail budget: `NOT_FORMALIZED`;
- finite arithmetic energy bound (18): `UNPROVED`;
- cofinal numerical witness: `UNPROVED`;
- RH: `UNPROVED`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`.
