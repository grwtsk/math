# RH: independent Mertens–Abel arithmetic route and square-budget criterion

Local attribution: grwtsk contributors.

**Independent track:** arithmetic analysis of the actual Möbius pickup source. No Fourier Navier–Stokes, Leray, Hodge, fluid-mechanics or gauge symmetry is used as a premise.

**Source-inspected inputs:** \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean\`, blob \`5506b20363b885d49107bc13f36c871cf92e853b\` at inspection baseline \`61a6bd039e770b16356832832017dcf1681e2ab1\`. The relevant declarations are \`sampleResidue_one\`, \`sampleResidue_succ_sub\`, \`wholePickup_log_eq_sampleResidue\` and the actual \`mertensPrefix\`. The new source candidate \`PickupMertensAbel.lean\` proves the finite Abel reconstruction and makes the precise arithmetic supplier visible. The good-scale analytic return is separately provided by the existing \`GoodScaleEnergyCriterion.lean\`; its full source chain still needs verification.

## Exact finite Abel identity

Let \(\mu\) be the original Möbius coefficients and
\[
M_k=\sum_{n=1}^k\mu(n),\qquad w_k=k^{-1/2},\qquad
Q_N=\sum_{n=1}^N \mu(n)w_n-M_Nw_N.
\]
The existing source \`sampleResidue N\` is exactly \(Q_N\), including its endpoint subtraction. The source's proved increment is
\[
Q_{k+1}-Q_k=M_k(w_k-w_{k+1}),\quad Q_1=0.
\]
Summing these *signed* increments gives, for every \(N\ge1\),
\[
\boxed{
Q_{N+1}=\sum_{k=1}^N M_k\left(\frac1{\sqrt k}-\frac1{\sqrt{k+1}}\right).
}
\tag{A}
\]
\`PickupMertensAbel.sampleResidue_abel\` (in the original logarithmic sampling namespace) records this identity. Its proof is finite induction from the existing actual-source step. The signs and every Mertens prefix remain intact; no pointwise Mertens bound is assumed.

**Independent analytical derivation:** Discrete summation by parts on \(\sum_{n=1}^N\mu(n)n^{-1/2}\) gives
\[
\sum_{n=1}^N\mu(n)w_n
=M_Nw_N+\sum_{k=1}^{N-1}M_k(w_k-w_{k+1}).
\]
Subtracting the original terminal \(M_Nw_N\) gives \(Q_N\). This derivation starts with the weighted source sum, whereas (A) starts with its consecutive signed increments. Both share the same arithmetic source; neither assumes new cancellation. They are two checks of the identity, **not** two independent proofs of RH.

## A new average-square Mertens sufficient criterion

Define the nonnegative, explicit arithmetic square budget
\[
B_N=\sum_{k=1}^{N}\frac{M_k^2}{k^2},
\qquad H_N=\sum_{k=1}^{N}\frac1k.
\]
For each \(k\ge1\), the positive reciprocal-root difference satisfies
\[
0\le \Delta_k=\frac1{\sqrt{k}}-\frac1{\sqrt{k+1}}
 =\frac{1}{\sqrt{k}\sqrt{k+1}(\sqrt{k}+\sqrt{k+1})}
 \le\frac1{2k^{3/2}}.
\]
Consequently \(k^2\Delta_k^2\le(4k)^{-1}\). Apply finite Cauchy–Schwarz to (A), pairing \(M_k/k\) with \(k\Delta_k\), to obtain
\[
\boxed{
Q_{N+1}^{\,2}\le\frac{H_N}{4}\,B_N.
}
\tag{B}
\]
This is an *unconditional finite arithmetic inequality*. It does not claim that \(B_N\) is subpolynomial. It is a positive, weighted average of the squared actual Mertens prefixes; the use of Cauchy–Schwarz is a lossy bound on the signed sum, and any stronger cancellation can still improve it.

Consider the clearly stated **open supplier hypothesis**
\[
\tag{C}
\forall\delta>0\ \exists C_\delta\ge0\ \forall N\ge1:
\qquad B_N\le C_\delta N^\delta .
\]
This is not inserted as an axiom or claimed proved. Under (C), (B) gives \(Q_{N+1}^2\le(C_\delta/4)H_NN^\delta\), with \(H_N\le1+\log N\).

For \(u\in[\log N,\log(N+1)]\), the original causal pickup is
\[
F(u)=2\left(Q_N+M_N\bigl(N^{-1/2}-e^{-u/2}\bigr)\right).
\]
The trivial original coefficient bound \(|M_N|\le N\) and the same reciprocal-root width give
\[
\left|2M_N(N^{-1/2}-e^{-u/2})\right|\le N^{-1/2}.
\]
Therefore
\[
F(u)^2
\le8Q_N^2+\frac2N
\le 2H_{N-1}B_{N-1}+\frac2N
\tag{D}
\]
for \(N\ge2\) (and the \(N=1\) cell is handled directly by \(Q_1=0\)). With (C), for any target \(\varepsilon>0\), choose \(\delta\in(0,\varepsilon)\); then
\[
F(u)^2=O_\delta\bigl((1+u)e^{\delta u}\bigr)
\quad(u\ge0),
\]
where the constant depends on the assumed family \(C_\delta\). Integrating gives subexponential cumulative pickup energy:
\[
\forall\varepsilon>0,\quad
\mathcal H(T)=\int_0^TF(u)^2du=O_\varepsilon(e^{\varepsilon T}).
\]
The actual existing energy-abscissa/good-scale chain would then return canonical RH after its final source and kernel audit. This is a **sufficient arithmetic criterion** (conditional on (C)), not an unconditional proof of RH.

The square budget (C) is a more averaged object than the familiar pointwise hypothesis \(|M_N|\ll_\delta N^{1/2+\delta}\). The latter would imply (C) with adjusted exponents, but the implication's usefulness must not be confused with evidence that (C) holds. No novel unconditional Möbius cancellation has been derived from (A) or (B).

## Hostile cases and theoretical standard

1. **Wrong scale:** A bound \(B_N=O(N^{1/2})\) would give only \(Q_N=O(N^{1/4}\sqrt{\log N})\), not subpolynomial control. The all-positive-exponent condition in (C) matters.
2. **No coefficient-to-energy return:** Knowing only that finite endpoint samples are small does not control the continuous pickup energy without paying the exact terminal birth correction.
3. **Unsigned overestimate:** \(\sum |M_k|\Delta_k\) discards arithmetic cancellation; (B) also loses sign through Cauchy–Schwarz. They are legitimate majorants but not the sought signed breakthrough.
4. **Failure of arbitrary uniformity:** Bounded values of \(B_N\) for finitely many \(N\) cannot establish its asymptotic all-positive-rate bound.
5. **No independent conjecture certificate:** Recording (C) as a binder produces a conditional theorem, not a mathematical witness; neither a typechecked interface nor an observed data table proves it.
6. **Distinct from NS:** The Fourier Navier–Stokes source has no logical role in (A)–(D); an analogy with energy flow is not an arithmetic inequality.

## Precise next arithmetic obligation

Prove (C) for the actual Mertens sequence by a new source-derived arithmetic argument, or bypass the nonnegative Cauchy–Schwarz budget to prove direct signed cancellation of (A) sufficient to make \(Q_N=N^{o(1)}\), with the exact birth correction and source energy retained. A candidate route could involve genuinely controlled averaged Möbius correlations, but no such bound is asserted here.

The finite Abel identity is a Lean **SOURCE_PROOF_CANDIDATE**; (B)–(D) are analytical derivations in this review, **not newly compiled Lean declarations**. Compilation, fresh kernel replay and transitive axiom audit of the relevant source chain remain NOT_RUN. The conditionality and actual-source scope must survive any later formalization.
