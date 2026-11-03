# Audio-phase Möbius packet: an exact polynomial-input Kakeya lift and a sign-blindness barrier

Date: 2026-11-02
Status: unconditional mathematical algebra and an obstruction to a sign-uniform Kakeya comparison; the original all-positive-rate bound (P), canonical RH, and new Lean acceptance remain OPEN.

## 1. Source, all-scale and wave inputs

Use the original causal response \(r_n(u)=2(n^{-1/2}-e^{-u/2})\mathbf1_{\{u\ge\log n\}}\), with its **original** signed Möbius coefficient \(\mu(n)\). Let \(T_j=j\log2\), \(N_j=2^j\). Define \(F(u)=\sum_{n\le e^u}\mu(n)r_n(u)\), \(H(T)=\int_0^T F(u)^2\,du\), \(D(T)=\sum_{n\le\lfloor e^T\rfloor}\mu(n)^2\int_0^T r_n(u)^2du\), \(X(T)=H(T)-D(T)\). Keep every ordered off-diagonal pair, including both orientations; \(0\le D(T)\le2T^2\).

Let \(w_0,\ldots,w_{L-1}\) be any fixed FINITE real sequence, e.g. PCM audio mono samples obtained by averaging two channels. For every \(j\ge1\), \(n=1,\ldots,N_j\) and \(0\le u\le T_j\), set
\[
k_j(n,u)=\left\lfloor L\,\operatorname{frac}\left(\frac{u}{T_j}+\frac{n-1}{N_j}\right)\right\rfloor
\quad(0\le k_j<L),\qquad
\gamma_{j,n}(u)=\frac{1+i\,w_{k_j(n,u)}}{1-i\,w_{k_j(n,u)}}.
\]
For any real \(w\), the denominator never vanishes and \(|\gamma|=1\). This is a concrete measurable time- and source-indexed U(1) gauge at **every** j. A finite source wave is reused periodically, not mistaken for infinitely many independent arithmetic observations. At j=0 the horizon is zero and the packet is defined to be zero.

## 2. Exact source-faithful orthogonal lift with polynomial norm

Partition the unit interval into \(I_{j,n}=[(n-1)/N_j,n/N_j)\), and let \(\phi_{j,n}(x)=\sqrt{N_j}\mathbf1_{I_{j,n}}(x)\). These functions are orthonormal in \(L^2([0,1])\).

Define the measurable compact-support source packet on \(\mathbb R^2\):
\[
f_j(x,u)=\mathbf1_{[0,T_j]}(u)\sum_{n=1}^{N_j}
\mu(n)\,r_n(u)\,\gamma_{j,n}(u)\,\phi_{j,n}(x).
\tag{F}
\]
Each coefficient retains its original n, sign, \(\mu=0\) symbol, birth support and response. The wave changes only the reversible phase.

By orthogonality and \(|\gamma|=1\),
\[
\boxed{\ \|f_j\|_{L^2(\mathbb R^2)}^2
=\sum_{n=1}^{N_j}\mu(n)^2\int_0^{T_j}r_n(u)^2\,du
=D(T_j)\le2(\log2)^2j^2.\ }
\tag{N}
\]
This solves the **polynomial-input-norm** half of the proposed Kakeya bridge without any RH premise.

Define the compensated linear detector on the finite packet support:
\[
R_j f(u)=\sqrt{N_j}\sum_{n=1}^{N_j}
\overline{\gamma_{j,n}(u)}\int_{I_{j,n}}f(x,u)\,dx.
\]
Then, pointwise for \(0\le u\le T_j\),
\[
\boxed{\ R_j f_j(u)=F(u),\qquad
\|R_j f_j\|_{L^2_u}^2=H(T_j),\qquad
X(T_j)=\|R_j f_j\|_2^2-\|f_j\|_2^2.\ }
\tag{S}
\]
The formula is EXACT, not a fit or approximate observation. All \(m,n\) signed cross terms are recovered by forming the sum BEFORE taking the detector energy square.

## 3. Sharp generic detector loss

For any \(f\in L^2([0,1]\times[0,T_j])\), Cauchy–Schwarz gives
\[
\|R_jf\|_{L^2_u}\le\sqrt{N_j}\,\|f\|_{L^2_{x,u}}.
\]
The constant is sharp: choose \(f(x,u)=\gamma_{j,n}(u)a(u)\) for \(x\in I_{j,n}\) and nonzero \(a\in L^2([0,T_j])\). Then \(\|f\|_2=\|a\|_2\) and \(R_jf=\sqrt{N_j}\,a\). Hence \(\|R_j\|=\sqrt{N_j}=2^{j/2}\). This is the precise exponential summation/amplification loss which mere orthogonal lifting cannot remove.

## 4. Exact sign-blindness of the ordinary Kakeya maximal operator

The upstream **actual** maximal operator in openai/math is defined by the (nonnegative) integral of \(\|f(y)\|_e\) over a tube divided by its volume, then a supremum over centers. Therefore \(K_hf\) depends ONLY on pointwise \(|f|\).

Replace the original signed coefficient \(\mu(n)\) in (F) by \(\mu(n)^2\) to obtain \(f_j^{\rm sqf}\). As \(r_n(u)\ge0\) on its causal support and \(|\mu|=\mu^2\),
\[
\boxed{|f_j(x,u)|=|f_j^{\rm sqf}(x,u)|\quad\text{everywhere},
\quad K_h f_j=K_h f_j^{\rm sqf}\quad\text{for every }h>0.}
\tag{B}
\]
The recorded audio phase is likewise invisible to \(K_h\). Both packets have the same polynomial input norm \(D(T_j)\), but their coherent detectors recover DIFFERENT scalar waveforms: the signed \(F\) and the positive squarefree \(F_{\rm sqf}=\sum \mu(n)^2r_n\).

The exact unsigned source obstruction, already published in the project review, is
\[
X_{\rm sqf}(T)\ge
c(e^T-e^3)-2T^2\qquad(T\ge3),
\quad c=(e-1)^2/(16e^4)>0.
\tag{U}
\]
This follows from \(S(N)=\sum_{n\le N}\mu(n)^2\ge N/4\), the causal birth amplitudes, and \(D(T)\le2T^2\).

The pinned all-positive-loss Kakeya estimate in dimension 2 gives for each \(\eta>0\)
\[
\|K_{2^{-j}}f_j\|_{L^2(S^1)}^2
\le C_\eta^2\,2^{2\eta j}\,D(T_j)
\le 2C_\eta^2(j\log2)^2\,2^{2\eta j}.
\tag{K}
\]
For \(\eta=1/4\) the last expression is \(O(j^2 2^{j/2})\), whereas (U) gives \(X_{\rm sqf}(T_j)=\Omega(2^j)\). Thus there DO NOT exist fixed \(A,B,k\ge0\) for which the proposed comparison
\[
X_c(T_j)\le A\|K_{2^{-j}} f_{j,c}\|_2^2+B(1+j)^k
\tag{C}
\]
holds for **every** sign pattern \(c_n\) with \(|c_n|=\mu(n)^2\) (including \(c_n=\mu(n)^2\)). The source-independent, purely positive Kakeya comparison is mathematically ruled out.

This does NOT prove (C) false for the *specific actual Möbius signs*. Any comparison for those signs must use an additional, quantitatively proved source-specific arithmetic cancellation, signed oscillatory directional functional, or exact extra compensation. The new mathematical input, not the audio wave or a U(1) gauge isometry, must defeat the sharp \(2^{j/2}\) detector loss.

## 5. Exact remaining mathematical criterion

The wave-phased packet supplies the demanded input bound with \(B=2(\log2)^2,\ k=2\), but not the demanded upper estimate of \(X(T_j)\). A sufficient source-specific new theorem would show fixed constants \(A,B,k\) and all j:
\[
\|R_j f_j\|_2^2-\|f_j\|_2^2
\le A\,\|K_{2^{-j}}f_j\|_2^2+B(1+j)^k.
\tag{C-mu}
\]
Because (N) holds unconditionally, (K) then implies the original all-positive-rate endpoint bound (P), hence the existing conditional analytic return to canonical RH. (C-mu) is NOT established here; its proof cannot be a sign-blind operator inequality alone.

The original elliptic decomposition remains independent and exact:
\[
X(T_j)=\mathrm{matchedEllipticPacket}(T_j)+\mathrm{fullSignedResidual}(T_j).
\]
No waveform reparameterization, gauge phase or positive Kakeya operator can delete the unmatched/mixed/matched signed residual.

## 6. Repository source pin and acceptance

Inspected grwtsk/math at main commit \`d0a79ab50984c2752f960b3406e8f34bf53d63be\`. Relevant source modules:

- \`GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQGaugedResidueAnchor.lean\` — phase-isometric sector gauge with a contragredient detector.
- \`GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQGaugeFullReturn.lean\` — exact original signed source energy after gauge compensation; no new arithmetic rate.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean\` — exact original integer-labeled complete waveform, residue and parity classes.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupDyadicEndpoint.lean\` — exact explicit dyadic P and fixed-scale RH consumer.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticFiberKernelComparison.lean\` — elliptic packet plus complete signed source residual.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStereographicTubeResidual.lean\` and \`MoebiusPutnamKakeyaSignedResidual.lean\` — signed/unsigned incidence accounting and dense budget.

Upstream pinned to openai/math \`4eaee87548250b2682affda7d05d947c05554bae\`:
\`lean/OAI/MeasureTheory/Kakeya/Definitions.lean\` (absolute-value maximal definition), and \`lean/OAI/MeasureTheory/Kakeya/Main.lean\` (maximal all-positive-loss theorem statement).

**Verification:** The assertions above are direct mathematical arguments. No new Lean compilation, fresh kernel replay or transitive axiom audit was performed. Uploaded audio content is not published or embedded in this note. This is an obstruction and an exact source-preserving packet, NOT a proof of (P) or RH.
