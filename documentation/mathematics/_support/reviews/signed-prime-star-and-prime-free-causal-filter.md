# Signed prime-star compensation and a stable prime-free causal filter

Local mathematical attribution: grwtsk contributors.
Research date: 2026-10-31.

**Mathematical status:** The prime-star asymptotic below follows unconditionally from the prime number theorem and the ORIGINAL causal pickup. The finite-prime source factorization and two-sided energy bounds are algebraic/analytic theorems with proofs below. **Neither is a new bound for the complete signed arithmetic remainder. Problem P and RH remain open.** This is an analytic research note, not an executed Lean theorem. The relevant source candidates still have COMPILATION_NOT_RUN, EXPECTED_TYPES_NOT_RUN, FRESH_KERNEL_NOT_RUN and TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## 1. Freeze the actual original source

For u≥0 and n≥1, set

\[
r_n(u)=2(n^{-1/2}-e^{-u/2})\,1_{u\ge\log n},\quad
F_\mu(u)=\sum_{n\le e^u}\mu(n)r_n(u),
\quad K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du\ge0.
\]

The source's original ordered signed off-diagonal and integrated energy are

\[
X_\mu(T)=\sum_{\substack{m,n\le\lfloor e^T\rfloor\\m\ne n}}
 \mu(m)\mu(n)K_T(m,n),\quad
H_\mu(T)=\int_0^T F_\mu(u)^2du=D_\mu(T)+X_\mu(T).
\tag{1}
\]

All integer labels, Möbius signs, four parity channels, time births, both pair orientations, and the original real response weights are retained. Source context: grwtsk/math #1406, #1527, #1528 and #1530; the prior signed doubling subsector note was published as commit 20bc6a3819d8d3f1cf37c46937be29061be7c311 (blob e8c729644d878a955ba3d5023dd01f17380d7c73).

## 2. An exponentially large, genuinely negative prime-star sector

Retain precisely the ordered pairs (1,p) and (p,1), for all primes p≤e^T. The original arithmetic sign is μ(1)μ(p)=−1, so

\[
X_\star(T):=-2\sum_{p\le e^T}K_T(1,p)\le0.
\tag{2}
\]

Write x=e^T. A direct integration of the ORIGINAL causal kernel, with the genuine birth at log p, gives for 2≤p≤x:

\[
K_T(1,p)=
4\left[
\frac{\log(x/p)}{\sqrt p}
-2\left(\frac1{\sqrt p}-\frac1{\sqrt x}\right)
-\left(\frac1{\sqrt p}-\frac1{\sqrt x}\right)^2
\right].
\tag{3}
\]

To calculate the whole sector using arithmetic counting, define

\[
A(x)=\sum_{p\le x}p^{-1/2},\qquad
B(x)=\sum_{p\le x}p^{-1/2}\log(x/p)
=\int_2^x\frac{A(t)}t\,dt.
\]

The prime number theorem and partial summation imply

\[
A(x)\sim\frac{2\sqrt x}{\log x},\quad
B(x)\sim\frac{4\sqrt x}{\log x},\quad
\frac{\pi(x)}{\sqrt x}\sim\frac{\sqrt x}{\log x}.
\tag{4}
\]

The sum over primes of the final square in (3) is at most
\(\sum_{p\le x}1/p=O(\log x)=o(\sqrt x/\log x)\). Thus

\[
\sum_{p\le x} K_T(1,p)
=4\left[B(x)-2A(x)+\frac{2\pi(x)}{\sqrt x}\right]
+o\left(\frac{\sqrt x}{\log x}\right)
\sim\frac{8\sqrt x}{\log x}.
\]

Consequently the **exact ORIGINAL** signed pair sector has the unconditional asymptotic

\[
\boxed{X_\star(T)\sim-16\frac{e^{T/2}}T.}
\tag{5}
\]

An independent continuum normalization check is
\(\int_0^1[-(\log t)/\sqrt t-2(1/\sqrt t-1)]\,dt=2\);
it reproduces the coefficient 16 after counting both orientations. This is a check, not a substitute for the arithmetic proof using PNT.

Define the complete signed complement \(R_\star(T)=X_\mu(T)-X_\star(T)\). Since \(H_\mu(T)\ge0\), equation (1) gives the exact lower relation

\[
R_\star(T)=H_\mu(T)-D_\mu(T)-X_\star(T)\ge-D_\mu(T)-X_\star(T).
\]

Independently of the historical diagonal bound, \(0\le r_n(u)\le2/\sqrt n\), so

\[
D_\mu(T)
\le4\int_0^T\sum_{n\le e^u}\frac1n\,du
\le4T+2T^2.
\tag{6}
\]

Combining (5) and (6) proves, **without RH and without P**, that

\[
\boxed{\liminf_{T\to\infty}T e^{-T/2}R_\star(T)\ge16.}
\tag{7}
\]

In particular no estimate \(R_\star(T)\le C_\delta e^{\delta T}\) for fixed \(\delta<1/2\) can hold for all large T, even if RH is true. The only valid small-target decomposition is the **compensated** expression
\[
X_\mu(T)=R_\star(T)+X_\star(T),
\tag{8}
\]
or a truly source-derived alternative with all compensation terms paid. Replacing the exact \(X_\star\) with its asymptotic equivalent in a proposed every-rate certificate is unsound: the unspecified lower-order prime-counting error may be much larger than \(e^{\delta T}\).

This is an important hostile case for a proposed "positive defect / negative torsion credit" proof. Negative arithmetic edges are real, but deleting them leaves an exponentially large positive remainder that requires equally precise cancellation.

## 3. Exact prime-free factorization, no dropped opposite-parity channel

Let P be any fixed finite set of primes and Q their squarefree product. Define the ORIGINAL rough/prime-free Möbius waveform

\[
U_P(u)=\sum_{\substack{m\le e^u\\(m,Q)=1}}\mu(m)r_m(u),
\quad U_P(u)=0\text{ for }u<0,\quad
V_P(T)=\int_0^T U_P(u)^2\,du.
\tag{9}
\]

Squarefree support and multiplicativity give the literal coefficient partition \(n=dm\), with d|Q and (m,Q)=1; terms with repeated selected prime factors have μ(n)=0. The exact response scaling is
\[
r_{dm}(u)=d^{-1/2}r_m(u-\log d).
\]
If \(S_a f(u)=f(u-a)\), extending f by zero to negative time, the source—not a model—therefore obeys
\[
\boxed{
F_\mu=\sum_{d\mid Q}\frac{\mu(d)}{\sqrt d}S_{\log d}U_P
=\prod_{p\in P}(I-p^{-1/2}S_{\log p})U_P.
}
\tag{10}
\]

Freeze P during the inner integral over u∈[0,T]. Every causal shift contracts the truncated L² norm:
\(\|S_a f\|_{L^2(0,T)}\le\|f\|_{L^2(0,T)}\).
For each prime p, the ordinary norm triangle and reverse triangle give
\[
(1-p^{-1/2})\|f\|_2
\le\|(I-p^{-1/2}S_{\log p})f\|_2
\le(1+p^{-1/2})\|f\|_2.
\]
Applying the inequalities successively to (10) yields an unconditional **two-sided comparison of the COMPLETE energy**, rather than an inequality obtained by dropping mixed terms:
\[
\boxed{
\prod_{p\in P}(1-p^{-1/2})^2 V_P(T)
\le H_\mu(T)\le
\prod_{p\in P}(1+p^{-1/2})^2 V_P(T).
}
\tag{11}
\]

For P={2}, the exact odd-coefficient source is
\(U_{\{2\}}(u)=\sum_{m\text{ odd}}\mu(m)r_m(u)\), and
\[
F_\mu(u)=U_{\{2\}}(u)-2^{-1/2}U_{\{2\}}(u-\log2),
\]
\[
(1-1/\sqrt2)^2 V_{\{2\}}(T)\le H_\mu(T)
\le(1+1/\sqrt2)^2V_{\{2\}}(T).
\tag{12}
\]
Thus the complete 00/01/10/11 energy has an exact **quantitative** bridge to a single odd-residue source; it is not assumed that the mixed sectors vanish.

## 4. Growing sieve with an explicitly subexponential cost

The finite-prime theorem (11) is uniform in the finite set P at its explicit constants. Choose **for each fixed outer horizon T** the set
\(P_T=\{p:p\le T\}\), frozen during the integral. Since
\(\sum_{p\le T}1/\sqrt p\le2\sqrt T\) and
\(-\log(1-a)\le a/(1-a)\) for 0<a<1, the constants in (11) imply for T≥2

\[
\boxed{
e^{-c\sqrt T}V_{P_T}(T)
\le H_\mu(T)\le e^{4\sqrt T}V_{P_T}(T),
\qquad c=\frac4{1-2^{-1/2}}.
}
\tag{13}
\]

Both distortions are \(e^{o(T)}\), with no prime-distribution theorem needed for this step. Since for every ε>0, \(c\sqrt T\le\epsilon T+c^2/(4\epsilon)\), the every-positive-rate upper-bound property for \(H_\mu\) on the dyadic grid is **equivalent** to the same property for the actual growing prime-free energy \(V_{P_T}\) on that grid. To connect this equivalence back to the existing endpoint supplier, use the already-written source comparison \(|E(T)-X_\mu(T)|\le1/4\), equation (1), the polynomial diagonal, and dyadic coverage. These established source candidates still require their advertised Lean acceptance.

This equivalence is a reduction to a different actual arithmetic observation, not the missing upper bound: a rough-number source can still have large signed correlations. A sieve cutoff larger than the controlled parameter range may make \(\prod(1-p^{-1/2})^{-2}\) too large; (13) does NOT license an arbitrary moving prime family.

## 5. Literal Liouville counting and zeta poles survive the filter

For squarefree m, \(\mu(m)=\lambda(m)=(-1)^{\Omega(m)}\); for squareful m, μ(m)=0. Thus \(U_P\) is the genuine squarefree-filtered Liouville parity imbalance over P-rough integers, with the *original* causal weights. In particular the odd source at P={2} is not a Fourier proxy.

For fixed P and Re s>1, the corresponding Dirichlet series is
\[
\sum_{\substack{m\ge1\\(m,Q)=1}}\frac{\mu(m)}{m^s}
=\frac1{\zeta(s)\prod_{p\in P}(1-p^{-s})}.
\tag{14}
\]
At a hypothetical zeta zero ρ with Re ρ>1/2, each factor \(1-p^{-\rho}\) is nonzero. Hence this *actual rough-counting arithmetic source* retains the analytic pole. The Liouville parent identity \(\sum\lambda(n)n^{-s}=\zeta(2s)/\zeta(s)\) likewise has a nonremovable pole there. This is an arithmetic-residue and direct summatory-count hook, not just an observation about spectral frequencies.

## 6. Exact remaining RH-facing obligation and prior-work boundary

The concrete dyadic target remains, for every δ>0, \(E(j\log2)\le C_\delta e^{\delta j\log2}\) for every sufficiently large j, with the SAME ordered signed source and source-bound quarter-unit error. Formula (11), or its growing-sieve instance (13), reduces it to proving every-positive-rate control of \(V_{P_T}(T)\) at the corresponding T. Nothing here proves that estimate. Conversely the compensated prime-star remainder (8) must retain the exact negative prime sum, not only its leading asymptotic.

Closest local predecessors: #1419 already describes finite-prime source extraction and prime-block hinge difficulties, but its positive-kernel argument is insufficient beyond small selected prime sets; this note instead uses **two-sided L² norm comparison even when individual block kernels change sign**. #1527/#1528 retain all four real signed residue sectors, #1529/#1530 supply cyclic and Fejér identities but not a diffusive bound, #1531 records a signed double-Abel source, #1406 the endpoint correction, and #334 the RH proof-path ledger. Prime number theorem, Euler products, finite sieve extraction and Hilbert-space triangle inequalities are classical; global theorem novelty is NOT claimed.

Finite independent diagnostic: source file /mnt/data/liouville_residue_remainder_reference.py, SHA-256 59f04f53592ebe8f44c227102cb2848b18be7f7732b1c4a437a92621a66999db, reported 394 finite formula/energy comparison checks at N=8,16,32,64,128,256,512 and prime sets empty, {2}, {3}, {2,3}, {2,3,5}. These are floating-point FINITE_DIAGNOSTICS, not rigorous certified error enclosures, asymptotic proofs or Lean evidence. No Lean, Lake, clean-kernel replay, transitive axiom audit, remote verification worker, scheduler, root-import migration or deployment was run. Only this source-bound analytic note and (if linked from an issue) passive research tracking are within scope.
