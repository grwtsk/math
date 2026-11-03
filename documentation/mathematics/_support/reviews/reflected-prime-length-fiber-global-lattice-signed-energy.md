# Reflected prime-length fiber ports: an exact global lattice and the signed RH completion boundary

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.
Analytic status: source-exact combinatorial and Hilbert-space deductions; the all-positive-rate arithmetic theorem P and RH remain OPEN. This note makes no claim of a newly accepted Lean proof or an automorphic realization. All earlier COMPILATION_NOT_RUN, EXPECTED_TYPES_NOT_RUN, FRESH_KERNEL_NOT_RUN and TRANSITIVE_AXIOM_AUDIT_NOT_RUN statuses remain unchanged.

## 1. Do not conflate two meanings of prime-free

A **prime-free interval** contains no integer that is prime. A **P_T-rough index** in the preceding Vinogradov--Korobov / Liouville programme is an integer n with gcd(n,Q_T)=1, where Q_T is the product of all primes p<=T. These are different conditions: every prime-free interval consists of composite integers, often with SMALL prime factors. The growing P_T-rough source includes many primes >T.

If T>=2, a block of two consecutive positive integers cannot be entirely P_T-rough: one is even, so its gcd with Q_T is not 1. Thus a **consecutive prime-length P_T-rough block with length >=2 is impossible**. A prime-length grouping of nonconsecutive rough indices is allowed, but it must carry its original numerical labels, gaps, causal births and cutoff. This distinction is a necessary typing gate, not a rejection of the proposed fiber idea.

## 2. An unconditional infinite family of prime-length composite blocks

For any prime ell>=2 let
\[
b_\ell=(\ell+1)!,\qquad I_\ell=\{b_\ell+2,\ldots,b_\ell+\ell+1\}.
\tag{1}
\]
Exactly ell integers lie in I_ell. Every n=b_ell+k with 2<=k<=ell+1 has 1<k<n and k|n, so it is provably COMPOSITE (not merely "no known prime"). Distinct ell give disjoint blocks: if ell'<ell are integers >=2, then (ell+1)!>(ell'+1)!+ell'+1. In particular blocks indexed by all prime ell are pairwise disjoint.

The source-exact phase address for each block is
\[
\phi_\ell:\mathbb F_\ell\simeq I_\ell,\quad
a\mapsto b_\ell+2+\operatorname{val}(a).
\tag{2}
\]
Its inverse takes n in I_ell to its unique offset n-(b_ell+2). The field interpretation requires primality of ell; the set/cardinality bijection does not.

Let B be the disjoint union of all I_ell over prime ell, and C the positive integers outside B, INCLUDING 1, all primes and every other composite. There is a **global bijection**
\[
\boxed{
\mathbb N_{>0}\simeq
C\ \sqcup\ \sum_{\ell\ {\rm prime}}\mathbb F_\ell.
}
\tag{3}
\]
The left inverse and right inverse follow from disjointness and the offset decoding. At any finite cutoff N, either use the dependent active subtypes a with phi_ell(a)<=N, or use the global frame with exact zero birth responses for all n>N. Do not silently promote an incomplete last block into a complete finite inventory.

**Universality is typed:** for ANY coefficient set/type A, (3) gives a reversible reindexing of A-valued functions. For any real/complex Hilbert space H it induces a canonical unitary coordinate permutation
\[
\ell^2(\mathbb N_{>0};H)\simeq
\ell^2(C;H)\oplus
\bigoplus_{\ell\ {\rm prime}}\ell^2(\mathbb F_\ell;H).
\tag{4}
\]
It is natural under bounded linear maps H->H'. A group/linear/Hilbert structure on fibers is additional data: the bare equivalence does NOT define an adelic geometry, a continuous prime valuation, or a global automorphic representation on every unspecified kind of space. The direct product of all A-valued functions and the Hilbert direct **sum** of square-summable functions are different objects.

## 3. Reflect each finite-field fiber but retain the original integer source

For a in F_ell define its exact existing-source readout
\[
w_\ell(a,u)=\mu(\phi_\ell(a))r_{\phi_\ell(a)}(u),\quad
r_n(u)=2(n^{-1/2}-e^{-u/2})_+.
\tag{5}
\]
The additive reflection J_ell(a)=-a is an involution. Its even and odd projections are w_+=(w+w∘J)/2 and w_-=(w-w∘J)/2. Finite reindexing gives
\[
\sum_a w_-(a,u)=0,\qquad
\sum_a w(a,u)=\sum_a w_+(a,u).
\tag{6}
\]
The ORIGINAL complete waveform is
\[
F_\mu(u)=F_C(u)+\sum_{\ell\ {\rm prime}}\sum_{a\in\mathbb F_\ell}w_\ell(a,u),
\tag{7}
\]
with only finitely many active positive-number labels at each u.

For any fixed cutoff N=floor(e^T), let K_T(m,n)=integral_0^T r_m(u)r_n(u)du. Under the global coordinate equivalence, the ENTIRE ordered signed cross sum
\[
X(T)=\sum_{\substack{1\le m,n\le N\\m\ne n}}
\mu(m)\mu(n)K_T(m,n)
\]
is transported bijectively, with every diagonal excluded, every 00/01/10/11 parity pair, all unit/nonunit/mixed sectors and both orientations preserved. The original arithmetic residue coordinate (n mod 2, floor(n/2) mod d²) remains **independent** of the prime-length phase ell. The coefficient-precision 2^(k+1) axis is yet another independent index.

A reflection of SOURCE NUMERICAL indices without transporting their weights and kernel has a defect. For the permutation π induced by phase reflection on the complete global index set, reindexing the full quadratic form is exact only when the kernel is conjugated too. The fixed-kernel discrepancy is explicitly
\[
\Delta_\pi(T)=\sum_{m,n\le N}\mu(m)\mu(n)
[K_T(\pi m,\pi n)-K_T(m,n)],
\tag{8}
\]
provided π preserves the chosen cutoff; otherwise the changed support and boundary must also be retained. An auxiliary phase reflection that fixes n has zero numerical defect, but also gives NO AUTOMATIC CANCELLATION.

## 4. A new, unconditional uniform energy budget for this global block union

For every original response, 0<=r_n(u)<=2/sqrt n. Therefore the complete block-union waveform obeys
\[
|F_B(u)|\le
2\sum_{\ell\ {\rm prime}}\sum_{n\in I_\ell}n^{-1/2}
\le2\sum_{\ell\ge2}\frac{\ell}{\sqrt{(\ell+1)!}}.
\tag{9}
\]
Put t_k=k/sqrt((k+1)!). For k>=2,
\[
\frac{t_{k+1}}{t_k}
=\frac{k+1}{k\sqrt{k+2}}\le\frac34.
\]
Thus
\[
\sum_{\ell\ge2}t_\ell\le4t_2=\frac8{\sqrt6}<4,
\quad\boxed{|F_B(u)|<8\ \text{for every }u\ge0.}
\tag{10}
\]
This is a deterministic bound on the ACTUAL signed Möbius causal weights (indeed it works for arbitrary coefficients of magnitude <=1). Consequently
\[
\boxed{H_B(T):=\int_0^T F_B(u)^2du\le64T.}
\tag{11}
\]
No prime-number-theorem, squarefree-density estimate, spectral frequency or average-sign independence is assumed. It is a legitimate ALL-POSITIVE-RATE budget for the deliberately sparse composite-block fiber, NOT for the entire original arithmetic source.

A second exact sparse-count control is
\[
\#\{n\le X:n\in B\}=O((\log(2+X))^2).
\tag{12}
\]
Indeed (ell+1)!>=2^ell, so any active ell obeys ell<=log_2 X; sum ell across possible block lengths. This proves that B has natural density zero: a full source frame needs the complementary dense fiber C.

## 5. The exact complete mixed-energy identity and completion frontier

Let H(T)=integral_0^T F_mu(u)^2 du and H_C(T)=integral_0^T F_C(u)^2du. The FULL source identity is
\[
H(T)=H_C(T)+2\int_0^T F_C(u)F_B(u)\,du+H_B(T).
\tag{13}
\]
No mixed term is omitted. Minkowski and its reverse in physical-time L² give
\[
\boxed{
|\sqrt{H(T)}-\sqrt{H_C(T)}|\le8\sqrt T.
}
\tag{14}
\]
In particular, by (a+b)^2<=2a²+2b²,
\[
\boxed{H(T)\le2H_C(T)+128T,\quad
       H_C(T)\le2H(T)+128T.}
\tag{15}
\]
Thus the original EVERY-POSITIVE-RATE energy property on dyadic T_j=j log 2 is **equivalent** to that property for the dense C-source energy. This uses the ORIGINAL source, not a random model. It is a mathematically useful reduction and also a circularity diagnostic: the factorial prime-free phase blocks cannot independently settle the dense signed complement.

At the scope of the existing endpoint-source comparison
\(H(T)=D(T)+X(T),\ D(T)\ge0,\ |E(T)-X(T)|\le1/4\),
we derive the precise source-facing consumer
\[
\boxed{
E(T)\le2H_C(T)+128T+\tfrac14.
}
\tag{16}
\]
Therefore a new independent all-positive-rate proof for H_C on all dyadic scales would imply the ORIGINAL P, thence RH through the already-written RH return when its complete dependencies have passed acceptance. Conversely the P estimate yields every-rate H and H_C. No such H_C estimate is proved here.

## 6. Arithmetic phase defects and the principal-sector obstruction

If a reflection pairs two distinct original integers m,n in one block, then the SOURCE-SIGNED pair amplitude is
\[
\mu(m)r_m+\mu(n)r_n
=\mu(m)(r_m-r_n)+(\mu(m)+\mu(n))r_n.
\tag{17}
\]
The original birth kernel satisfies, for every u,
\[
|r_m(u)-r_n(u)|
\le 2|m^{-1/2}-n^{-1/2}|
\le\frac{|m-n|}{\min(m,n)^{3/2}},
\]
hence
\[
|\mu(m)r_m+\mu(n)r_n|
\le\frac{|m-n|}{\min(m,n)^{3/2}}
+\frac{2|\mu(m)+\mu(n)|}{\sqrt n}.
\tag{18}
\]
The first term is a paid numerical/causal mismatch; the second is a genuine arithmetic SIGN defect that vanishes only after proving opposite signs. For odd ell, J_ell has a fixed point a=0; for ell=2, J is the identity. Fixed-point terms must be retained.

For a Liouville word of odd prime length ell, all lambda(n)=+-1 and therefore the complete unweighted zero Fourier mode sum_(n in I_ell)lambda(n) is ODD and NONZERO. Thus an odd-prime-length prime-free block cannot annihilate its own full unweighted Liouville principal mode just from reflected parity. In the ACTUAL Möbius example ell=3, b_ell=24 and I_3={26,27,28}, with (mu(26),mu(27),mu(28))=(1,0,0); its causal block waveform is r_26(u), not zero.

Finite additive characters on F_ell can reconstruct every phase including a=0. Reflection exchanges k and -k modes, but leaves the principal k=0 mode untouched. Standard Dirichlet characters on a separate arithmetic ZMod(q) are zero on nonunits, so a pure character inversion cannot represent the full original source unless its unit, nonunit and mixed sectors are paid separately. Both facts agree with the existing Automircron and signed residue sources. A frame bijection, Parseval, or automorphic functional equation alone cannot upper-bound the principal signed source.

## 7. Relation to a genuine automorphic reflection

The already published AutomircronPrimeKernel, AutomircronDirichletFrame, AutomircronCanonicalPrimeTyping and PrimeSourceAddressBridge source candidates provide typed dependent prime states, the faithful n=1 plus least-prime-factor inventory, phase reflection, full four-sector causal Gram return and an explicit numerical-source defect gate. Reuse them rather than identify a phase label with the original composite n.

For an AUTOMORPHIC (not merely finite group-theoretic) port require an actual global/local test space, Hecke/adelic representation, local Euler/gamma factors, supported functional-equation mirror, and an exact comparison of its signed quadratic readout with E(T) INCLUDING principal, nonunit, both mixed, cutoff, diagonal and defect contributions. Tate-style adelic Poisson summation does establish functional-equation transport at its own scope; symmetry is not a zero-free-half-plane estimate and does not prove RH. Reference: T. Tao, *What's New*, section 1.8, https://terrytao.wordpress.com/wp-content/uploads/2009/01/whatsnew.pdf . The classical factorial prime-free construction is described in F. Al-Faisal's elementary number theory notes, https://math.uwaterloo.ca/~f2alfais/notes/pm340-notes.pdf .

The smallest genuinely new arithmetic supplier now is one-sided, every-positive-rate control for the FULL dense C-fiber (or an independently source-compensating principal/mixed/defect certificate). This exact obligation remains RH-strength. A finite modulus and prime-length group do NOT change that truth by their type alone.

## 8. Source and verification ledger

Read existing grwtsk/math:
- AutomircronPrimeKernel.lean blob 23477d9664830bed7e15989c2bbc4ece324ac828;
- AutomircronDirichletFrame.lean blob b253db8bbbec58db78cbe2744484583f9348edfc;
- AutomircronCanonicalPrimeTyping.lean blob df106aa19db9f5bd5226cafa9c2287945d2ccff6;
- DyadicWeightedResidueClasses.lean blob 621dd0c0856301a8049e4e63f987579c4cea4596;
- MoebiusDenseSignedGapComplementFrontier.lean blob 61d626c267fa11f1b6e53a9837076cc4c6e039a0;
- earlier endpoint/energy and zero-abscissa notes; tracking #1540, #1541, #1521, #1527, #1528, #1530 and #334.

The factorial gap, finite-field coordinates, and universal reindexing are classical set/group facts. The 64T sparse-block energy estimate is an analytically proved source-specific application of elementary bounds; it is NOT a new unconditional estimate for the dense signed complement. The authoring has no new verified Lean declaration, no new research axiom and no claim of prior-art novelty beyond this source-specific synthesis.

Independent finite reference: prime_free_reflected_fiber_reference.py, SHA-256 6b14427377dee8ae05f25a229fa37444fe57214be6d7bd0c5f64bb0b89c7ae0d, tested prime lengths 2,3,5,7,11; arithmetic reflection, composite witnesses, exact signed square-minus-diagonal, universal finite reindexing and all four parity sectors, plus numerical original response snapshots. The script reports 161 finite assertions/collections; these are FINITE_DIAGNOSTICS only, not proof of global asymptotics or Lean compilation.

**Formalization next:** in the existing number-theory MSC source hierarchy, implement theorem candidates named primeFreePrimeLengthComposite, disjointFactorialPrimeBlocks, positiveSourceEquivPrimeFreeGlobal, HilbertPort_unitary, originalSignedGram_portReturn, reflectionSignDefect, factorialBlockWave_bound, factorialBlockEnergy_le, fullDenseMixedEnergy_eq, allRateEnergy_iff_denseComplement, and endpoint_le_denseEnergy, with actual full types and source imports. Preserve two separate predicates for PRIME_FREE_INTERVAL and P_T_ROUGH_GROUP, and the independent ell, d², k, j indices. Do not add P as an axiom or a "ready" certificate. No new Lean, Lake, native runner, CI, scheduler, or proof-acceptance check was executed in this contribution.
