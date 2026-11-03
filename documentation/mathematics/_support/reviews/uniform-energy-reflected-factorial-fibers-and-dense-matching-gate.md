# Uniform energy for reflected factorial-prime fibers: sharp sparse theorem, dense obstruction, and signed matching gate

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Mathematical disposition:** The actual-source reflected factorial-block waveform has a new, explicitly proved uniform energy bound \(H_B(T)\le 9T/25\) and a positive linear asymptotic slope. The complementary dense-source every-positive-rate \`uniform_energy\` obligation remains UNPROVED and is RH-equivalent through existing source-preserving analytic returns. An unconditional classical-Vinogradov--Korobov dense bound is established at exponent \(1-o(1)\), plus a source-specific signed matching sufficient criterion and an exact sign-blind counterexample. No inference of RH, P, new formal acceptance, or new automorphic Euler product is made.

## 1. Exact original source and distinct energy goals

The original numerical labels, Möbius signs, and causal births are
\[
r_n(u)=2\bigl(n^{-1/2}-e^{-u/2}\bigr)_+,\qquad
F_\mu(u)=\sum_{n\ge1}\mu(n)r_n(u),
\qquad H(T)=\int_0^T F_\mu(u)^2\,du,\quad T\ge0.
\]
At every fixed u the sum is finite. For each prime ell>=2, let \(I_\ell=\{(\ell+1)!+2,\ldots,(\ell+1)!+\ell+1\}\). These are disjoint prime-length COMPOSITE blocks. Let \(B=\bigcup_{\ell\ {\rm prime}}I_\ell\) and \(C=\mathbb N_{>0}\setminus B\), and define \(F_B,F_C\) by restricting the exact original sum to B,C. Put \(H_B(T)=\int_0^T F_B(u)^2du\), \(H_C(T)=\int_0^T F_C(u)^2du\).

These are **not** the earlier \(P_T\)-rough indices (coprime to all primes <=T). The finite prime ell indexing the composite-block address and the changing sieve parameter T are independent axes.

The proved goal in this note is
\[
\boxed{\forall T\ge0,\quad H_B(T)\le\tfrac9{25}T.}\tag{B}
\]
The unresolved RH-strength requested goal is
\[
\boxed{\forall\delta>0\;\exists C_\delta\ge0\;\forall j\in\mathbb N,\quad
H_C(j\log2)\le C_\delta\,2^{\delta j}.}\tag{C}
\]
The two must not be called the same \`uniform_energy\` declaration. Equation (C) implies the existing arithmetic theorem P through the unchanged original H, full signed cross, diagonal, quarter-unit endpoint correction, dyadic coverage and the older conditional analytic return. Conversely classical RH-strength Mertens estimates imply (C).

## 2. Sharpen the factorial-block energy using actual Möbius zeros

The first three prime-length blocks and original Möbius coefficients are
\[
\begin{array}{c|c|c}
\ell&I_\ell&(\mu(n))_{n\in I_\ell}\\
2&8,9&(0,0)\\
3&26,27,28&(1,0,0)\\
5&722,723,724,725,726&(0,1,0,0,0).
\end{array}
\]
Here 723=3*241, where 241 is prime, so mu(723)=+1. All other zeros follow from an explicit square factor: \(8=2^3\), \(9=3^2\), \(27=3^3\), \(28=4\cdot7\), \(722=2\cdot19^2\), \(724=4\cdot181\), \(725=5^2\cdot29\), \(726=2\cdot3\cdot11^2\).

For k>=7 put \(t_k=k/\sqrt{(k+1)!}\). Then
\[
\frac{t_{k+1}}{t_k}
=\frac{k+1}{k\sqrt{k+2}}\le\frac8{21}<\frac25.
\]
Therefore
\[
\sum_{\substack{\ell\ {\rm prime}\\\ell\ge7}}
\frac{\ell}{\sqrt{(\ell+1)!}}
\le\sum_{k\ge7}t_k
\le \frac53\,t_7=\frac{35}{3\sqrt{40320}}
<\frac7{120},
\tag{1}
\]
because \(\sqrt{40320}>200\).

Since \(0\le r_n(u)\le2/\sqrt n\), every u>=0 satisfies
\[
\begin{aligned}
|F_B(u)|
&\le2\left(\frac1{\sqrt{26}}+\frac1{\sqrt{723}}+\frac7{120}\right)\\
&<2\left(\frac15+\frac1{26}+\frac7{120}\right)<\frac35.
\end{aligned}\tag{2}
\]
The resulting **uniform and unconditionally proved** estimate is
\[
\boxed{H_B(T)\le\frac9{25}T\quad (T\ge0).}\tag{3}
\]
No classwise RH estimate, automorphic representation, sign independence, or unpriced source change is used.

The linear growth exponent is sharp for THIS source. The series
\(S_B=\sum_{n\in B}\mu(n)n^{-1/2}\) converges absolutely by (1) and the finite exceptional cases. Dominated convergence of the literal causal wave gives
\[
\lim_{u\to\infty}F_B(u)=c_B:=2S_B.
\]
All uncalculated blocks start at ell>=7, so
\[
c_B\ge2\left(\frac1{\sqrt{26}}+\frac1{\sqrt{723}}-\frac7{120}\right)
>2\left(\frac16+\frac1{27}-\frac7{120}\right)
=\frac{157}{540}>\frac14.
\tag{4}
\]
Equation (2) gives \(c_B<3/5\). Cesàro averaging then proves
\[
\boxed{\lim_{T\to\infty}\frac{H_B(T)}T=c_B^2,\qquad
\frac1{16}<c_B^2<\frac9{25}.}\tag{5}
\]
In particular \(H_B(T)\ge T/16\) for all sufficiently large T. Hence an \(O(1)\) uniform-in-time bound for the sparse block energy is FALSE even for the actual original Möbius source. The all-positive-rate bound (3) is true and optimal at polynomial *degree one*.

## 3. Exact dense energy return and strongest classical unconditional estimate

The full original physical-time source is \(F_\mu=F_C+F_B\), so no mixed term is silently dropped:
\[
H=H_C+2\int_0^T F_CF_B+H_B.
\]
Minkowski and its reverse give
\[
\boxed{|\sqrt{H(T)}-\sqrt{H_C(T)}|\le\tfrac35\sqrt T,}\tag{6}
\]
and hence
\[
\boxed{H(T)\le2H_C(T)+\tfrac{18}{25}T,\qquad
H_C(T)\le2H(T)+\tfrac{18}{25}T.}\tag{7}
\]
At the scope of the previously written, separately NOT_RUN original source comparison \(E(T)\le H(T)+1/4\) (where \(E\) is the complete original signed endpoint quadrature), this also yields
\[
\boxed{E(T)\le2H_C(T)+\tfrac{18}{25}T+\tfrac14.}\tag{8}
\]
Both directions of (7) give a complete proof that the *every-positive-rate* property (C) is **equivalent** to that property for H along the dyadic grid. It is the same RH-strength problem, not solved by the sparse reflected blocks.

There nevertheless is an unconditional **weaker** global dense bound. Write
\[
\Phi(T)=T^{3/5}(\log(e+T))^{-1/5}.
\]
The classical Vinogradov--Korobov/Mertens estimate
\(|M(x)|\ll x\exp[-a\Phi(\log x)]\)
implies, via the exact birth-zero Abel identity
\[
F_\mu(u)=\int_0^u e^{-v/2}M(e^v)\,dv,
\]
that \(|F_\mu(u)|\ll \exp[u/2-a'\Phi(u)]\) for all large u. Split the integral at u/2: the early portion is \(O(e^{u/4})\); the remaining portion uses \(\Phi(v)\gg\Phi(u)\). Then split \(\int_0^T F_\mu(u)^2du\) at T/2 to get
\(H(T)\ll\exp[T-a''\Phi(T)]\). Equation (7) absorbs the polynomial cost and yields
\[
\boxed{
\exists A,a,T_0>0\;\forall T\ge T_0,\quad
H_C(T)\le A\exp[T-a\Phi(T)].
}\tag{9}
\]
This is a **uniform-in-T, unconditional signed aggregate estimate** using a known zero-free region, NOT an all-positive-rate \(e^{\delta T}\) theorem. External reference: Nicol Leong, "Explicit Mertens estimates", Fields Institute talk 2024 (https://www.fieldsinstitute.ca/talks/Explicit-Mertens-estimates); the zero-free region is classical. The original proof is not claimed novel.

## 4. A hostile all-space counterexample: ports alone cannot supply (C)

Replace the original arithmetic coefficients on C by the legitimate bounded **control sequence** \(a_n=1\) for n in C and 0 on B. Keep the EXACT causal kernels and identical reflected lattice coordinate maps. Write \(F_C^+(u)=\sum_{n\in C}r_n(u)\).

For \(x=e^u\), \(N=\lfloor x\rfloor\), integral comparison gives
\[
\sum_{n=1}^N n^{-1/2}\ge2(\sqrt{N+1}-1)\ge2(\sqrt x-1),
\quad N/\sqrt x\le\sqrt x.
\]
Therefore the all-positive full source satisfies
\[
2\sum_{n\le x}(n^{-1/2}-x^{-1/2})\ge2\sqrt x-4.
\]
The positive B-block piece is at most 8 using the original coefficient-free factorial-series bound. Thus
\[
F_C^+(u)\ge2e^{u/2}-12\ge e^{u/2}
\qquad (u\ge\log144).
\]
Consequently
\[
\boxed{
\int_0^T(F_C^+(u))^2du\ge e^T-144
\quad(T\ge\log144).
}\tag{10}
\]
This has exponential rate one and **violates any all-positive-rate claim uniform across arbitrary coefficient words**, while possessing exactly the same prime-length finite-field frames, reflections, source supports, weights and global Hilbert coordinate bijections. It is NOT a counterexample to the actual Möbius target (C). It proves that source-specific signed arithmetic is indispensable; no sign-blind "all spaces" proof is valid.

## 5. A checkable reflected-matching sufficient condition (arithmetic OPEN)

For each dyadic \(T_j=j\log2\), define the complete active dense source inventory \(C_j=C\cap[1,\lfloor e^{T_j}\rfloor]\). Suppose a source-bound frame supplies a partition of C_j into disjoint unordered pairs \(\mathcal P_j\) (oriented m<n) and singletons \(\mathcal S_j\), without deleting squareful zero labels, roots, nonunits, or boundary births.

For each pair, the original signed causal response has the exact identity
\[
\mu(m)r_m(u)+\mu(n)r_n(u)
=\mu(m)(r_m(u)-r_n(u))
+(\mu(m)+\mu(n))r_n(u).
\]
The Lipschitz property of \(t\mapsto(t-e^{-u/2})_+\) gives
\[
|r_m(u)-r_n(u)|\le2(m^{-1/2}-n^{-1/2})
\le(n-m)m^{-3/2}.
\]
For an index m alone, \(|\mu(m)r_m(u)|\le2|\mu(m)|m^{-1/2}\).
Define the finite, nonnegative, source-dependent matching defect
\[
\begin{aligned}
\mathfrak A_j={}&
\sum_{(m,n)\in\mathcal P_j}
\left[\frac{n-m}{m^{3/2}}+
\frac{2|\mu(m)+\mu(n)|}{\sqrt n}\right]\\
&+\sum_{m\in\mathcal S_j}\frac{2|\mu(m)|}{\sqrt m}.
\end{aligned}\tag{11}
\]
Each active original index occurs EXACTLY once, both paired responses retain their numerical birth times, and for all 0<=u<=T_j,
\[
\boxed{|F_C(u)|\le\mathfrak A_j,\qquad
H_C(T_j)\le T_j\mathfrak A_j^2.}\tag{12}
\]

**Conditional criterion (complete mathematical proof):** If an independently constructed family of signed arithmetic matchings satisfies
\[
\forall\varepsilon>0\ \exists A_\varepsilon\ge0\
\forall j\in\mathbb N,\quad
\mathfrak A_j\le A_\varepsilon e^{\varepsilon T_j},
\tag{13}
\]
then (C) follows. Proof: given delta>0 take epsilon=delta/4; then
\[
H_C(T_j)\le T_j A_{\delta/4}^2 e^{\delta T_j/2}
\le\frac{2A_{\delta/4}^2}{\delta}e^{\delta T_j},
\]
using \(T\le(2/\delta)e^{\delta T/2}\) for T>=0.

The proof preserves original signs and never bounds all ordered pair rows separately. But **(13) is an explicit unsupplied RH-strength arithmetic matching premise**, not a theorem inferred from the finite field, a reflection bijection, Dirichlet characters, or the established Vinogradov--Korobov estimate. One must construct actual matchings and bound all fixed points, sign defects and numerical separations at every dyadic height. Reflection of the *sparse* factorial blocks cannot serve as the missing matching on C.

## 6. Source comparison, verification and next mathematical step

Previously published grwtsk/math notes: reflected-prime-length-fiber-global-lattice-signed-energy.md, blob 73480204be3aa2bcbe99928bd12e89ad8ddfb90c; growing-prime-free-vinogradov-korobov-signed-count.md, blob 6ca7dd92de09bff6b72fdc462d6ffbfde23bf0fa; prime-free-energy-zero-abscissa-and-liouville-residue.md, blob 7527d6fc20366c0fa7ca16f42d70fefe5e9e3b2f. Existing source-fidelity and trust owners: #334, #1406, #1527, #1528, #1530, #1540 and #1541. The active local root uses Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, subject to confirmation at exact future verification.

The arithmetic evaluations of mu(8), mu(9), mu(26), mu(27), mu(28), mu(722..726) were independently checked with integer factorization; no finite enumeration establishes the all-height sum, which is proved by the factorial ratio bound. These are analytically justified mathematical deductions at their stated scope; no Lean source scripts, expected types, kernel checking, axiom audit, native tasks, background scheduler or CI were run here. Preserve **COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN**. Do NOT claim that either the all-positive-rate dense estimate (C), the canonical Problem P, or RH is proved.

A future formalized \`uniform_energy_B\` should state (3) with the actual Möbius values and causal response. A separate \`uniform_energy_C\` must stay an OPEN arithmetic target. The matching lemma (12)-(13) is a valid proof-relevant alternative supplier provided every original integer and error is accounted for.
