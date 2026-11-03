# Signed prime-divisor Möbius blocks: source-exact Kakeya wave frame and polynomial internal defect

2026-11-02. Mathematical development by grwtsk contributors with OpenAI formalization assistance.

**Status:** New unconditional *ordinary mathematical* finite Euler-block identities, all-scale diagonal/defect bound, and a numerical WAV-phase preflight. **NOT** an unconditional all-positive-rate bound, RH proof, Lean-kernel verification, or a verified OpenAI-to-GRWTSK theorem application. The new Lean candidate supplies generic finite algebra only; the source-specific arithmetic reindexing and integral return still need an accepted Lean implementation.

## 1. Exact arithmetic source, with all original labels and zeros

Keep exactly the old causal source
\[
r_n(u)=2(n^{-1/2}-e^{-u/2})\mathbf1_{\{u\ge\log n\}},\quad
F(u)=\sum_{n\le e^u}\mu(n)r_n(u).
\]
Set \(H(T)=\int_0^TF(u)^2\,du\), \(D(T)=\sum_{n\le\lfloor e^T\rfloor}\mu(n)^2\int_0^T r_n(u)^2\,du\) and \(X(T)=H(T)-D(T)\), with **both** ordered orientations in the offdiagonal. The pinned source proves \(0\le D(T)\le 2T^2\) and \(|E(T)-X(T)|\le1/4\).

Fix any positive **squarefree** integer \(Q\). For each positive integer \(m\) coprime to \(Q\), define a signed prime-divisor block
\[
 B_{Q,m}(u):=\sum_{d\mid Q}\mu(d)r_{dm}(u).
\]
Each of its divisor labels is a literal original integer \(n=dm\), never a changed modulus, synthetic Möbius coefficient or unreturned elliptic trace. Its support and zero-at-birth are inherited unchanged from every \(r_{dm}\). Original squareful indices with \(\mu(n)=0\) remain exact zero terms.

**Exact source identity (all \(u\ge0\))**
\[
\boxed{F(u)=\sum_{\substack{m\ge1\\(m,Q)=1}}\mu(m)B_{Q,m}(u).}
\]
The sum is finite since \(B_{Q,m}(u)=0\) for \(m>e^u\).

**Proof.** If \(\mu(n)\ne0\), \(n\) is squarefree. Put \(d=\gcd(n,Q)\), \(m=n/d\). Then \(d\mid Q\), \((m,Q)=1\), \((m,d)=1\), and \(\mu(n)=\mu(d)\mu(m)\). Conversely, \(n=dm\) with \(d\mid Q\) and \((m,Q)=1\) is uniquely represented. If \(n\) is squareful along a prime of \(Q\), it is not represented, but its original coefficient is exactly zero. If \(m\) is squareful, its represented contribution is zero because \(\mu(m)=0\). Thus the reindexed finite sum equals the complete original sum term by term, including the zero coefficients. QED.

For nontrivial \(Q\), once **all** internal divisors have been born (\(u\ge\log(Qm)\)),
\[
\boxed{B_{Q,m}(u)
 =\frac2{\sqrt m}\prod_{p\mid Q}(1-p^{-1/2}).}
\]
Indeed \(\sum_{d\mid Q}\mu(d)=0\) and \(\sum_{d\mid Q}\mu(d)d^{-1/2}=\prod_{p\mid Q}(1-p^{-1/2})\). The originally time-dependent \(e^{-u/2}\) contribution cancels completely **inside** the mature block. This is genuine finite-prime arithmetic sign cancellation, before any geometrical modulus is taken.

## 2. Exact complete Gram partition and a bound for ALL intrablock interactions

Define
\[
D_Q(T)=\sum_{\substack{m\le e^T\\(m,Q)=1}}\mu(m)^2\int_0^T B_{Q,m}(u)^2\,du,\qquad
X_Q(T)=\sum_{\substack{m\ne k\le e^T\\(m,Q)=(k,Q)=1}}
 \mu(m)\mu(k)\int_0^T B_{Q,m}(u)B_{Q,k}(u)\,du.
\]
Keep the **ordered** \(m,k\) pair sum. Expanding the exact source identity before taking the square gives
\(H(T)=D_Q(T)+X_Q(T)\). Hence
\[
\boxed{X(T)=X_Q(T)+\Delta_Q(T),\qquad \Delta_Q(T):=D_Q(T)-D(T).}
\]
In literal old indices, the internal correction is
\[
\boxed{\Delta_Q(T)=
\sum_{\substack{m\le e^T\\(m,Q)=1}}\mu(m)^2
 \sum_{\substack{d,e\mid Q\\d\ne e}}\mu(d)\mu(e)
 \int_0^T r_{dm}(u)r_{em}(u)\,du.}
\]
Every old ordered pair appears exactly once in either \(X_Q\) (distinct rough indices) or \(\Delta_Q\) (same rough index, distinct divisor labels). The original diagonal is still subtracted **only once**; the correction is neither an independent free residual nor a claim of its sign.

Write \(\tau(Q)=\#\{d:d\mid Q\}\). At each u, finite Cauchy-Schwarz yields
\(B_{Q,m}(u)^2\le\tau(Q)\sum_{d\mid Q}\mu(d)^2r_{dm}(u)^2\).
After integration, disjoint reindexing of the original diagonal proves
\[
\boxed{0\le D_Q(T)\le \tau(Q)D(T)\le2\tau(Q)T^2.}
\]
For any nontrivial Q, using \(0\le D_Q\le\tau(Q)D\), we obtain the unconditional **two-sided** internal-defect bounds
\[
\boxed{-D(T)\le \Delta_Q(T)\le(\tau(Q)-1)D(T),\qquad
|\Delta_Q(T)|\le2(\tau(Q)-1)T^2.}
\]
For Q=1, \(D_Q=D\), \(\Delta_Q=0\). This pays the entire family of matched internal signed cross terms, not only the nearest-neighbor ones.

**Special prime-two identity.** When Q=2, the exact block is \(B_{2,m}=r_m-r_{2m}\) on odd m. Since \(0\le r_{2m}(u)\le r_m(u)\) for every u, the internal defect has the stronger sign
\[
\boxed{\Delta_2(T)=-2\sum_{\substack{m\le e^T\\m\ \mathrm{odd}}}
 \mu(m)^2\int_0^T r_m(u)r_{2m}(u)\,du\le0.}
\]
Thus \(X(T)\le X_2(T)\) unconditionally. This does **not** control the other odd-odd block interactions.

## 3. A growing fixed-before-rate all-scale prime bank with POLYNOMIAL cost

Fix the scale set \(G=\{j\log2:j\in\mathbb N\}\) before choosing any loss exponent. Set
\[
k_j=\lfloor\log_2(j+1)\rfloor,\qquad
Q_j=\prod_{r=1}^{k_j}p_r,\quad Q_0=1
\]
(first \(k_j\) primes). This is a genuinely growing prime bank, fixed without referencing any \(\varepsilon\), and \(\tau(Q_j)=2^{k_j}\le j+1\).

Let \(T_j=j\log2\). Then, for **every** j, including the zero horizon,
\[
\boxed{D_{Q_j}(T_j)\le 2(j+1)(j\log2)^2,}
\quad
\boxed{|\Delta_{Q_j}(T_j)|\le2j(j\log2)^2.}
\]

The actual original endpoint sum satisfies
\[
 E(T_j)=X_{Q_j}(T_j)+\Delta_{Q_j}(T_j)+q_j,\qquad |q_j|\le1/4.
\]
Hence, with independent rate constants, the unproved all-positive-rate target
\[
 \forall\varepsilon>0\,\exists C_\varepsilon\ge0\,\forall j:
 E(T_j)\le C_\varepsilon 2^{\varepsilon j}
\]
is **equivalent** to
\[
\boxed{\forall\varepsilon>0\,\exists C'_\varepsilon\ge0\,\forall j:
 X_{Q_j}(T_j)\le C'_\varepsilon 2^{\varepsilon j}.}
\]
Fixed polynomials in j are bounded by a rate-dependent constant times \(2^{\varepsilon j}\) at each positive \(\varepsilon\). This is a source-preserving reduction, NOT an unconditional proof of the new interblock estimate.

## 4. Incorporating the uploaded WAV as a reversible, now partly sign-sensitive Kakeya frame

For each scale, enumerate \(C_j=\{m\le2^j:(m,Q_j)=1\}\), with \(M_j=\#C_j\). Let \(\phi_{j,m}\) be normalized indicators of disjoint equal-length subintervals of [0,1] indexed by \(m\in C_j\). Use the user's finite recorded WAV only to supply measurable phases \(\gamma_{j,m}(u)\in U(1)\), e.g. \((1+i w)/(1-i w)\) from downmixed PCM samples. Define
\[
 f_j(x,u)=\mathbf1_{[0,T_j]}(u)
   \sum_{m\in C_j}\mu(m)B_{Q_j,m}(u)\gamma_{j,m}(u)\phi_{j,m}(x).
\]
Compensated readout gives \(R_jf_j=F\) exactly, with no loss of source or prime-divisor ledger, while orthonormality gives
\[
\boxed{\|f_j\|_{L^2(\mathbb R^2)}^2=D_{Q_j}(T_j)
\le2(j+1)(j\log2)^2.}
\]
The **ordinary** absolute-value Kakeya maximal operator can NOW see the genuine finite-prime interference inside \(B_{Q_j,m}\), because that sum was taken before the modulus. It remains blind to the external rough-index sign \(\mu(m)\); an all-positive-rate bound for the original \(X_{Q_j}\) does not follow from the upstream Kakeya theorem alone. In particular the compensated readout still has a generic operator norm \(\sqrt{M_j}\). Do not claim a new frame orthogonality saving without proving one.

**Required new comparison**, with all losses paid: show for the exact f_j above fixed A,B,k independent of j (or another all-positive-rate majorant),
\[
 X_{Q_j}(T_j)\le A\|\mathcal K_{2^{-j}}f_j\|_2^2+B(1+j)^k.
\]
Only then, together with the proven input norm, is the original E(T_j) subexponential. The usual Kakeya maximal theorem does not establish this sign-specific inequality.

## 5. Independent finite WAV and arithmetic preflight, NOT verification

Run a finite diagnostic implementing the literal original \(r_n\), exact analytic cell integrals for H and E, and finite signed source Gram for D and D_Q. We used the full uploaded stereo 24-bit/44.1kHz WAV only to extract 12,224 real phase-seed samples, one first-frame mono average per 1024 PCM frames, covering all 12,517,024 frames. The raw audio was **not** published or uploaded to the repository.

Representative results:

| j | prime Q_j | original D | grouped D_Q | exact internal Δ_Q | original X | interblock X_Q |
|---:|---:|---:|---:|---:|---:|---:|
| 4 | 6 | 3.999822 | 0.476647 | -3.523175 | -3.618107 | -0.094932 |
| 8 | 30 | 23.622845 | 0.668375 | -22.954470 | -21.209344 | 1.745126 |
| 10 | 30 | 40.339736 | 0.826737 | -39.512999 | -35.964807 | 3.548193 |
| 12 | 30 | 61.721129 | 0.994688 | -60.726441 | -55.078343 | 5.648098 |

Recomputed \(|E-X|<1/4\) on all tested dyadic scales. All finite source regrouping and compensated WAV-phase reconstruction checks were at floating-point error about 1e-15 or less. The numbers are **finite diagnostics only**. For a reproducible local script and machine-readable result, see the conversation attachments signed_prime_block_wave_probe.py and signed_prime_block_wave_results.json. They are not part of this GitHub publication.

## 6. A rigorous random-sign benchmark (NOT the original Möbius source)

As an independent comparison, retain exactly the same response Gram \(K_{mn}(T)=\int r_mr_n\) and squarefree mask \(a_n=\mu(n)^2\), but give every active n an independent symmetric Rademacher sign \(\epsilon_n\). Define
\(X_\epsilon(T)=\sum_{m\ne n}a_ma_n\epsilon_m\epsilon_n K_{mn}(T)\).

Finite independence gives
\[
\mathbb EX_\epsilon(T)=0,\quad
\mathbb E X_\epsilon(T)^2
=2\sum_{m\ne n}a_ma_nK_{mn}(T)^2
\le 2D(T)^2\le8T^4.
\]
The middle inequality is Cauchy-Schwarz for the **same** Gram, \(K_{mn}^2\le K_{mm}K_{nn}\). At \(T_j=j\log2\), Markov and Borel-Cantelli imply that **almost every random sign sequence** satisfies \(|X_\epsilon(T_j)|=O_\delta(2^{\delta j})\) for every \(\delta>0\). That does not say anything about the deterministic original \(\mu\), and is not a proof of the classical RH. It quantifies which arithmetic decorrelation must be proved for that particular sign sequence.

## 7. Source pins and exact verification boundary

Current grwtsk/math source head inspected before publication: 649b290e1a42f727cedafcd8158b52cae17afcca (2026-11-02), with unchanged source modules:

- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean — original E, X and 1/4 error (blob 2606536c56bdcb33d120aeddfbcbeef793e31ba1).
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupDyadicEndpoint.lean — fixed dyadic times and explicit original arithmetic problem (blob bf1d3ccbbe7a49033fdff0ab11176d589a1a7f31).
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean — original signed residue class reconstruction (blob 07dfdae4a60b05f5da55cc20882411c85444fa82).
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticFiberKernelComparison.lean — unchanged elliptic source split with full signed residual (blob df9ded979964790b92f3053efc3aedeb6e2dfa78).
- documentation/mathematics/_support/reviews/audio-phase-mobius-kakeya-polynomial-frame-sign-blind-barrier-2026-11-02.md — previous sign-blind WAV frame obstruction (blob be3c871fb10a9023d8fe04e9a5d33bba58da5a24).

Pinned openai/math 4eaee87548250b2682affda7d05d947c05554bae, lean/OAI/MeasureTheory/Kakeya/{Definitions,Main}.lean. That is a source reference, not evidence of an imported upstream Lean dependency in grwtsk/math.

Current local toolchain pins: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Pinned Mathlib source Mathlib/Algebra/Order/Chebyshev.lean contains sq_sum_le_card_mul_sum_sq and confirms the finite Cauchy algebra entry point. Neither new nor old source has been compiled in the present conversation; Lean/Lake are unavailable. Fresh kernel and full transitive-axiom acceptance: NOT_RUN. The original all-positive-rate interblock bound and RH remain OPEN.


## 8. Stronger fixed-before-rate reduction: an ALL-POSITIVE-RATE nearby rough-pair packet

Keep the prime-bank sequence \(Q_j\) and its polynomial diagonal \(D_{Q_j}(T_j)\) fixed in Section 3. Choose the **exponent-independent** integer gap width
\[
H_j:=\lfloor 2^{\sqrt j}\rfloor,\qquad j\in\mathbb N,
\]
before choosing any \(\varepsilon\). Partition the exact ordered block pair sum according to \(0<|m-k|\le H_j\) ("near") or \(|m-k|>H_j\) ("far"):
\[
X_{Q_j}(T_j)=X^{\mathrm{near}}_j+X^{\mathrm{far}}_j.
\]
These two pieces retain the original signed coefficient \(\mu(m)\mu(k)\), entire responses \(B_{Q_j,m}\), both ordered orientations and all block sources; neither term is declared nonnegative.

**Unconditional near-gap theorem (ordinary proof).** If \(A_m(u)=\mu(m)B_{Q_j,m}(u)\), then for any pair,
\[
2\left|\int_0^{T_j}A_m(u)A_k(u)\,du\right|
\le\int_0^{T_j}(A_m(u)^2+A_k(u)^2)\,du
\]
by the elementary inequality \(2|ab|\le a^2+b^2\) and the triangle inequality for the integral. At any fixed m there are at most \(2H_j\) other integer labels k with \(0<|m-k|\le H_j\), even after the coprimality restriction. Summing over **both ordered orientations** therefore yields
\[
\boxed{|X^{\mathrm{near}}_j|\le2H_jD_{Q_j}(T_j)
\le 4H_j(j+1)(j\log2)^2.}
\]
This is a genuine signed original-kernel packet bound. No positive-definiteness of a masked Gram matrix and no source-independent spectral cancellation is assumed.

Since \(\log H_j=O(\sqrt j)\), for EVERY fixed \(\varepsilon>0\) this proven allowance satisfies
\[
|X^{\mathrm{near}}_j|=O_\varepsilon(2^{\varepsilon j}).
\]
Combining the earlier polynomial intrablock defect and quarter-unit source endpoint comparison gives the FULL exact one-sided transfer, with fixed \(Q_j,H_j\):
\[
\boxed{
\left|E(T_j)-X^{\mathrm{far}}_j\right|
\le\frac14+4H_j(j+1)(j\log2)^2+2j(j\log2)^2.
}
\]
The right-hand side is \(O_\varepsilon(2^{\varepsilon j})\) at every positive \(\varepsilon\), with constants allowed to depend on \(\varepsilon\) but not j. Therefore the **original unchanged** all-positive-rate endpoint statement (P) is equivalent to the one-sided all-positive-rate statement for the **far rough-block interactions alone**:
\[
\boxed{\forall\varepsilon>0\ \exists C_\varepsilon\ge0\ \forall j\in\mathbb N:
X^{\mathrm{far}}_j\le C_\varepsilon 2^{\varepsilon j}.}
\]

This improves the quantitative reduction from Section 3 by paying a superpolynomially widening **finite rough-index gap sector** at every positive rate with a **single fixed width schedule**, rather than selecting the schedule separately after \(\varepsilon\). It is an application of the same signed Young/neighbor-counting principle already present in the original-source Putnam-gap repository modules, now to the genuine prime-block response. It does **not** bound the far rough-index interactions, and therefore does not establish (P) or RH. No new signed-gain assertion about the upstream Kakeya maximal operator is made.
