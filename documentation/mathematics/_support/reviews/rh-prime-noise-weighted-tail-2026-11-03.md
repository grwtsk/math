# Source-exact prime insertion and horizon-uniform weighted noise tails

Local mathematical attribution: **grwtsk contributors**.  
Date: November 3, 2026.  
Disposition: **ANALYTICAL SOURCE-RESTRICTED COMPARISON; PUBLICATION EDITION; NO NEW ARITHMETIC CANCELLATION RATE; LEAN CHECKS NOT_RUN.**

The argument and diagnostic implementation were assistant-generated. No independent human review or worldwide theorem-priority claim is made. This authored mathematical review is the publication edition of the preceding local handoff, not a Lean declaration or a verification receipt.

## 1. Task, current source, and the actual change

The original research-source pin was `grwtsk/math@f61109b6d67bd0496181dc54503fb1dd6ab1897d`, complete tree `7fac6961869a6ec9d26cabb4950910639128cd52`. The preceding local handoff was not published. This edition responds to the user's explicit request to publish that completed work on the existing `main` branch.

The publication-base read returned `e99f483a076464130dac53476768d70c7c8979ea`, complete tree `4b4ad5061222c4eaf095ade748c7a0f2d84cf9de`. The complete comparison from the research pin contains two commits and one added path: `MoebiusLFunctionDivisorPrimeRecurrence.lean`, blob `be2d18713afbba61471bd3786ddd324ebb7759d3`. The five earlier mathematical source files listed in Section 8 are unchanged. The new module was read before publication and is preserved, not replaced.

That concurrent module already contains candidate coefficient, termwise response, finite sum and image-sum recurrences, together with the generic `norm_recurrence_two_sided` theorem. Its prose also proves unweighted two-sided divisor-energy bounds. Its endpoint-inventory reconciliation and interval-L2 translation remain analytical rather than Lean declarations. Equation (3) below is therefore shared source mathematics, not a newly claimed recurrence discovery. The distinct increment here is the weighted prime-insertion estimate and horizon-uniform omitted-prime bound at the same positive damping.

The earlier polynomial comparison is recorded in [math#1656, comment 6612849533](https://github.com/grwtsk/math/issues/1656#issuecomment-6612849533), dated November 3, 2026. It already proves analytically, for the original character-twisted causal source and fixed positive bias,

\[
 E_\chi(T)\le Q_{\chi,\rho}(T)
 \le e^{B\alpha}(1+T)^{e\alpha}E_\chi(T),
 \qquad \alpha=\rho^{-2}-1,\quad B=\frac4{(1-1/\sqrt2)^2}.
\]

That polynomial comparison and its smooth-divisor convolution are **inherited**, not new results of this publication. The existing source also already supplies the exact positive divisor-energy expansion. Neither is an independent upper bound on the arithmetic energy.

The selected obligation here is more precise: control the effect of inserting additional normalized prime coordinates, and bound the entire omitted-prime tail **uniformly in physical horizon at the same positive Laplace damping**. The decisive step is an exact prime-excision recurrence for the original divisor-restricted waveform. This yields an explicit relative tail of size \(O_{\alpha,\lambda}(Y^{-\lambda})\), with no loss of damping. The earlier polynomial bound alone does not give a horizon-independent comparison at an individual fixed damping without additional reasoning.

This is a quantitative source comparison, not an improvement of the independent exponential cancellation rate.

## 2. Original objects and quantifiers

Fix any positive modulus \(q\), any genuine Dirichlet character \(\chi\) modulo \(q\), and

\[
 c(n)=\mu(n)\chi(n),\qquad n\ge1.
\]

Principal and imprimitive characters are included. Nonunit character values and squareful Möbius zeros are retained. For \(q=1\), this is the untwisted Möbius channel.

Use the maintained birth-gated response, not a replacement kernel:

\[
 r_n(u)=
 \begin{cases}
  2(n^{-1/2}-e^{-u/2}),&u\ge\log n,\\
  0,&u<\log n.
 \end{cases}
\]

It is continuous and vanishes for \(u\le0\). For each positive integer \(d\), put

\[
 W_d(u)=\sum_{\substack{n\ge1\\d\mid n}}c(n)r_n(u),
 \qquad W=W_1.
\]

These sums are locally finite. On \([0,T]\), every term with \(n>\lfloor e^T\rfloor\) vanishes, so these are exactly the maintained finite responses on their original endpoint inventory. We do **not** identify them silently with a separately defined integrated-prefix energy.

For \(\lambda>0\) and \(T\ge0\), define

\[
 \|f\|_{\lambda,T}^2=\int_0^T e^{-\lambda u}|f(u)|^2\,du,
 \qquad E_{d,\lambda}(T)=\|W_d\|_{\lambda,T}^2,
 \qquad E_\lambda(T)=E_{1,\lambda}(T).
\]

Take \(0<\rho\le1\), and write \(\alpha=\rho^{-2}-1\ge0\). For a finite prime set \(P\), use independent signs \(\epsilon_p\) of mean \(\rho\), with actual finite probability mass

\[
 \Pr(\epsilon)=\prod_{p\in P}\frac{1+\rho\epsilon_p}{2}.
\]

Every mass is nonnegative, and summing coordinate by coordinate gives total mass one. Define

\[
 Z_{P,n}=\prod_{\substack{p\mid n\\p\in P}}\epsilon_p/\rho,
\qquad
 Q_{P,\lambda}(T)=\mathbb E\left[
  \int_0^T e^{-\lambda u}\left|\sum_{n\ge1}c(n)Z_{P,n}r_n(u)\right|^2du\right].
\]

Only a finite source and a finite probability space occur at each horizon. No infinite random-process construction or almost-sure assertion is needed.

A prime in exactly one of \(m,n\) contributes expectation one; a shared prime contributes \(\rho^{-2}=1+\alpha\). Therefore

\[
 \mathbb E[Z_{P,m}Z_{P,n}]
  =\prod_{\substack{p\in P\\p\mid m,\ p\mid n}}(1+\alpha).
\]

Expand this product in the complete ordered Hermitian square and exchange finite sums and the integral. This gives

\[
 \boxed{
 Q_{P,\lambda}(T)=\sum_{D\subseteq P}\alpha^{|D|}
                  E_{\prod_{p\in D}p,\lambda}(T).
 }\tag{1}
\]

All phases, both ordered orientations, and all source zeros remain. The empty subset contributes \(E_\lambda(T)\) with coefficient one. At \(\alpha=0\), the empty-product convention gives \(Q_{P,\lambda}=E_\lambda\).

Equation (1) is the weighted version of the existing `familyPrimeNoiseGram_eq_divisorEnergy`, not a claimed new unweighted covariance theorem.

For finite \(P\), let \(G_P(T)\) denote the repository's `familyPrimeNoiseGram` with prime weight \(x_p=\alpha\mathbf1_{p\in P}\). Birth-gate consistency makes \(G_P(T)\) an integral of one locally continuous nonnegative power function. Integration by parts gives the exact source map

\[
 Q_{P,\lambda}(T)=e^{-\lambda T}G_P(T)
                  +\lambda\int_0^T e^{-\lambda u}G_P(u)\,du.\tag{2}
\]

The analogous formula holds between \(E_\lambda\) and `familyFiniteResponseEnergy`. Thus the new weighted quantities have an explicit return to existing source definitions.

## 3. Decisive source recurrence

Let \(p\) be prime and require **\(p\nmid d\)**. Define the causal delay operator

\[
 (D_pf)(u)=\frac{\chi(p)}{\sqrt p}f(u-\log p).
\]

The actual Möbius coefficients satisfy

\[
 c(pk)=-\chi(p)c(k)\mathbf1_{p\nmid k}.
\]

When \(p\mid k\), the left side is zero because \(pk\) is squareful. Otherwise the equality is ordinary coprime Möbius multiplicativity and genuine character multiplicativity. Because \(p\nmid d\), the condition \(d\mid pk\) is equivalent to \(d\mid k\).

Use the existing exact causal identity \(r_{pk}(u)=p^{-1/2}r_k(u-\log p)\), and reindex the locally finite sum. The result is

\[
 \boxed{W_{dp}=-D_p(W_d-W_{dp}).}\tag{3}
\]

Consequently, for every integer \(J\ge1\),

\[
 W_{dp}=-\sum_{j=1}^{J}D_p^jW_d+D_p^JW_{dp}.
\]

For \(J\log p\ge T\), the last term is identically zero on \([0,T]\). This is a **finite causal identity**, not an unjustified infinite resolvent expansion.

Set \(\sigma=(1+\lambda)/2\) and \(r_p=|\chi(p)|p^{-\sigma}<1\). The negative-time part of a translated waveform is zero, so direct substitution gives

\[
 \|D_pf\|_{\lambda,T}^2
 =|\chi(p)|^2p^{-1-\lambda}
     \|f\|_{\lambda,(T-\log p)_+}^2
 \le r_p^2\|f\|_{\lambda,T}^2.
\]

Apply the finite \(L^2\) triangle inequality to (3), then sum the geometric majorant. We obtain the new source-restricted estimate

\[
 \boxed{
 E_{dp,\lambda}(T)\le b_{p,\lambda,\chi}E_{d,\lambda}(T),
 \qquad
 b_{p,\lambda,\chi}=
 \frac{|\chi(p)|^2p^{-1-\lambda}}
 {(1-|\chi(p)|p^{-(1+\lambda)/2})^2}.
 }\tag{4}
\]

This proof does not use RH, GRH, an all-rate energy bound, or a generic-amplitude covariance assumption. The divisor estimate also makes sense at \(\lambda=0\); the all-prime summation below requires \(\lambda>0\).

## 4. Prime insertion and the complete omitted-prime bound

For \(p\notin P\), split the subsets of \(P\cup\{p\}\) in (1) according to whether they contain \(p\). Every divisor formed from \(P\) is coprime to \(p\), so (4) applies to every new term. Nonnegativity supplies the lower bound:

\[
 Q_{P,\lambda}(T)\le Q_{P\cup\{p\},\lambda}(T)
 \le (1+\alpha b_{p,\lambda,\chi})Q_{P,\lambda}(T).\tag{5}
\]

Iterating for arbitrary finite prime sets \(P\subseteq R\) gives

\[
 \boxed{
 Q_{P,\lambda}(T)\le Q_{R,\lambda}(T)
 \le\prod_{p\in R\setminus P}(1+\alpha b_{p,\lambda,\chi})
       Q_{P,\lambda}(T).
 }\tag{6}
\]

This compares **complete quadratic energies through positive divisor energies**, not signed Gram entries term by term.

Let \(Q_{\mathrm{all},\lambda}(T)\) use all primes in the original source inventory, equivalently all primes at most \(\lfloor e^T\rfloor\). Let \(Q_{\le Y,\lambda}(T)\) use only primes at most an integer \(Y\ge2\). Primes outside the actual source have no effect.

Use \(|\chi(p)|\le1\), \(\log(1+x)\le x\), and

\[
 \sum_{p>Y}p^{-1-\lambda}
 \le\sum_{n>Y}n^{-1-\lambda}
 \le\int_Y^\infty t^{-1-\lambda}\,dt=Y^{-\lambda}/\lambda.
\]

The entire omitted-prime cost is therefore

\[
 \boxed{
 Q_{\le Y,\lambda}(T)\le Q_{\mathrm{all},\lambda}(T)
 \le \exp\!\left(
 \frac{\alpha Y^{-\lambda}}
 {\lambda(1-2^{-(1+\lambda)/2})^2}
 \right)Q_{\le Y,\lambda}(T).
 }\tag{7}
\]

Quantifier order: for every \(\alpha\ge0\), every \(\lambda>0\), and every integer \(Y\ge2\), (7) holds for every \(q\ge1\), every genuine \(\chi\) modulo \(q\), and every \(T\ge0\). The displayed constant is independent of \(q,\chi,T\).

For a specified \(\delta>0\), choose an integer

\[
 Y\ge\max\left\{2,
 \left[\frac{\alpha}
 {\lambda(1-2^{-(1+\lambda)/2})^2\log(1+\delta)}\right]^{1/\lambda}
 \right\}.
\]

Then \(0\le Q_{\mathrm{all},\lambda}(T)-Q_{\le Y,\lambda}(T)
\le\delta Q_{\le Y,\lambda}(T)\) simultaneously for all horizons and character channels. This is a relative truncation estimate; it does not bound the retained arithmetic energy independently.

## 5. Same-damping comparison and convergence boundaries

Iteration from the empty prime set gives

\[
 E_\lambda(T)\le Q_{\mathrm{all},\lambda}(T)
 \le K_{\alpha,\lambda,q}E_\lambda(T),\tag{8}
\]

where

\[
 K_{\alpha,\lambda,q}
 =\prod_{p\nmid q}
 \left(1+\frac{\alpha p^{-1-\lambda}}
 {(1-p^{-(1+\lambda)/2})^2}\right)<\infty.
\]

For genuine characters modulo \(q\), \(|\chi(p)|\) is one off the modulus and zero at its prime divisors. Thus this constant is common to all characters at that fixed modulus. A universal upper bound also exists. Indeed, for \(\sigma=(1+\lambda)/2\),

\[
 \frac{p^{-2\sigma}}{(1-p^{-\sigma})^2}-p^{-2\sigma}
 \le\frac{2p^{-3\sigma}}{(1-1/\sqrt2)^2}.
\]

The sum of the right side over primes is at most
\(4/(1-1/\sqrt2)^2=B\), using \(3\sigma>3/2\) and
\(\sum_{n\ge2}n^{-3/2}\le2\). In the absolutely convergent domain \(1+\lambda>1\),
\(\sum_p p^{-1-\lambda}\le\log\zeta(1+\lambda)\) and
\(\zeta(1+\lambda)\le1+1/\lambda\). Hence

\[
 \boxed{
 K_{\alpha,\lambda,q}\le e^{B\alpha}\zeta(1+\lambda)^\alpha
 \le e^{B\alpha}(1+1/\lambda)^\alpha.
 }\tag{9}
\]

No continuation of zeta into a zero-sensitive domain is used here.

The nonnegative integrals increase with \(T\). The finite-source definitions agree on overlapping horizons by the birth gates; equivalently the nonnegative divisor expansion is consistent. Taking increasing limits in (8), with extended nonnegative values allowed, proves for **each fixed** \(\lambda>0\):

\[
 E_\lambda(\infty)<\infty
 \quad\Longleftrightarrow\quad
 Q_{\mathrm{all},\lambda}(\infty)<\infty.
\]

Neither side is asserted finite by this equivalence. No limit \(\lambda\downarrow0\) is justified. At zero damping, the prime majorant used here is not summable, and (7) supplies no uniform tail statement. At \(\rho=0\), normalization is undefined and the theorem does not apply.

Summing (7)–(9) over **all** characters at fixed \(q\) preserves the same constants. By the existing complete-character Parseval identity, the sum of \(E_{\chi,\lambda}\) is exactly the weighted lift of `fullPositiveResidueEnergy q`. Principal and imprimitive channels are not projected away. The return from finite-response energy to prefix energy, reciprocal-L continuation, functional equations, and zero exclusion remains a separate source-specific obligation.

## 6. Arithmetic attempt and its exact failure

An independent absolute-majorant attempt gives

\[
 |W(u)|\le2\sum_{n\le e^u}n^{-1/2}\le4e^{u/2}.
\]

Consequently this particular argument proves

\[
 E_\lambda(\infty)\le\frac{16}{\lambda-1},\qquad \lambda>1,
\]

and (8) transfers it to normalized prime noise. This is a basic absolute bound, not a claim about the strongest estimate elsewhere in the repository or literature. The same majorant does not establish finiteness for \(0<\lambda\le1\); it does not prove actual divergence there either.

A tempting next inference is that truncating the random coordinates at \(Y\) makes the missing arithmetic estimate finite or elementary. That is false: (1) retains

\[
 E_\lambda(T)\le Q_{\le Y,\lambda}(T)
\]

with coefficient one, and the integer source inventory still grows with \(T\). Only the number of random prime coordinates is finite. Treating \(Q_{\le Y,\lambda}(\infty)\) as already bounded would assume the very arithmetic input the route needs. The new tail estimate pays the omitted-prime cost, but does not pay the retained complete signed source.

No all-positive-rate primitive-slope balance, Hodge energy bound, RH theorem, or Dirichlet-GRH theorem is obtained. The missing mathematical supplier remains an independent all-positive-damping estimate for the original source, together with the actual analytic return where not already available.

## 7. Hostile checks and reproducible finite evidence

The coprimality guard in (3) is essential. With \(q=1,d=p=2\), the coefficient of the response indexed by 4 on the left is \(\mu(4)=0\), whereas the proposed right side without the guard has coefficient \(-\mu(2)=1\). Thus dropping \(p\nmid d\) is refuted at the exact original coefficient level.

Other retained boundaries are \(T=0\), empty prime sets, \(d=1\), \(\rho=1\), squareful divisors, nonunit characters, shared primes, and nonreal phases. When \(d\) is squareful or nonunit, its restricted waveform is zero. Normalization at \(\rho=0\) is never tested as a valid case.

The archived diagnostic report from the preceding research run records **128,557 passing assertions**: **95,745 exact integer/Gaussian-integer checks** and **32,812 numerical assertions** at 70 decimal digits. The maximum observed absolute identity residual was

`7.24454326306136989400729543271e-71`.

The floating acceptance tolerance was `1e-58 * max(1, |a|, |b|)`. These are not interval certificates, a proved Python/Lean refinement, or asymptotic certification.

Exact coefficient scope: eight genuine character channels; \(d=1,\ldots,24\); \(p\in\{2,3,5,7,11,13\}\) with \(p\nmid d\); and \(n=1,\ldots,96\). Character multiplicativity was also checked on \(a,b=1,\ldots,32\). The channels are the ordinary source, the nonprincipal real character modulo 3, principal/nonprincipal channels modulo 4, principal/quartic channels modulo 5, and principal/real channels modulo 8.

Numerical scope: horizons \(\log x\) for \(x\in\{1,2,2.4,5.5,12.3,24.7\}\), dampings \(\{0.1,0.5,1,2\}\), variances \(\{0,1/3,1,3\}\), and prime cutoffs \(\{2,3,5,7,13,29\}\). The implementation uses the actual causal response and a closed-form weighted Gram, independently compares the ordered Hermitian sum with the divisor expansion, and tests (3)–(9). It does not use a generic affine surrogate.

The original conversation bundle contains `prime_noise_weighted_tail_check.py` and `prime_noise_weighted_tail_results.json`. Its checksums were rechecked when preparing this publication; the numerical run was not repeated. The diagnostic source and report are retained in the associated #1656 publication handoff, not installed as an executable verification runner in this mathematical repository. Run the standalone diagnostic with Python 3 and `mpmath`:

```sh
python prime_noise_weighted_tail_check.py
```

Script SHA-256: `4c2b66b0f9c929edca755bb789a28e9ab4d8018b743962fd33ddaf502e3a9505`.

Archived report SHA-256: `53f512f93bd8efc56a6f3f4db2422e7cb7cf9f3be1f1de51fcb2c9fb370d7e7c`. Original local proof SHA-256 before publication edits: `f9c43a956d9483ef59c734de88efc7fc11e5652e12fc4460cede00a86392177c`. Those historical hashes do not identify this edited publication edition.

## 8. Source and external comparison

All directly inspected mathematical files below are under
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/` at the original research pin `f61109b6d67bd0496181dc54503fb1dd6ab1897d`; their bytes are unchanged at the publication-base pin.

| Source | Git blob | Inspected role |
|---|---|---|
| `MoebiusLFunctionPrimeNoiseDivisorEnergy.lean` | `d7859432699375191902728340c1762b4d6d59ba` | Actual covariance definition, positive divisor expansion, original-energy term, monotonicity |
| `MoebiusCausalGcdTimeShift.lean` | `db0052901eca3050ed0ce812d3e0e7675c8fab05` | Actual birth-gated amplitude and Gram time-shift proofs |
| `MoebiusLFunctionHermitianPickup.lean` | `0643134718a73f65f1ca01f2db0804b4883676b4` | Finite-response and prefix-energy definitions and their distinct interfaces |
| `MoebiusLFunctionFamilyInverse.lean` | `2b9c2b556de587db611478b7724c9205db90fd3b` | Genuine coefficient identity `dirichletCharacter_mobius_apply` |
| `MoebiusFixedConductorHodgeAllRateEquivalence.lean` | `c6edc741d6b81cb09e68932fde8743a461cec2ba` | Complete-character positive residue identity and all-rate consumer |

Root instructions and the proof-comparison disposition were inspected during the research; current root and documentation instructions were read for publication. The source and documentation layouts are unchanged by this review. The historical toolchain file says `leanprover/lean4:v4.34.1`; the historical manifest pins Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`. These are source pins, not evidence of an executed build. No full transitive dependency audit is claimed.

External theorem-level comparison: Marco Aymone, *Random multiplicative functions: The Selberg–Delange class*, [arXiv:2009.09240v1](https://arxiv.org/html/2009.09240v1), September 19, 2020, Theorem 1.2 and its proof in section 3.5. Under \(\epsilon_p=-f_\beta(p)\) and \(\rho=2\beta-1\), the paper's normalized squarefree coefficients match the untwisted noisy Möbius source. Its almost-sure cancellation assertion is RH-equivalent in its stated bias range, not an unconditional supplier. Its higher-order Euler correction motivates checking summability. Here the proof instead derives a causal \(L^2\) prime-insertion bound and finite expected-energy tail; no almost-sure theorem is imported.

During the preceding research turn, head checks of `openai/math` and `anthropics/formal-math` returned, respectively, `4eaee87548250b2682affda7d05d947c05554bae` and `16a5ce41304fcdaea4e0be7c132e1c361dc26da5`. Those were historical **METADATA_ONLY** refreshes, not reviews of their mathematical corpora. Code/issue discovery was scoped to the selected neighborhood; an empty code-search result was not treated as proof of repository-wide absence.

## 9. Consumer, verification status, and one next formal target

The immediate existing consumer is
`LFunctionPrimeNoiseDivisorEnergy.familyPrimeNoiseGram_eq_divisorEnergy`.
Equations (4)–(7) give a source-specific quantitative bound for its nonempty divisor packet. The complete-character consumer is
`FixedConductorHodgeAllRateEquivalence.fullPositiveResidueEnergy_eq_character_sum`, followed by its existing all-rate equivalence. Neither consumer receives a newly proved independent all-rate arithmetic premise.

The next formal target is the **actual-source prime insertion inequality (4)**: for every positive modulus, genuine character, positive integer \(d\), prime \(p\nmid d\), nonnegative horizon, and positive damping, prove the displayed bound for the weighted lift of `familyDivisorRestrictedEnergy`. Reuse the now-published `LFunctionDivisorPrimeRecurrence.dirichlet_prime_dilation_image_sum` and `pickupResponse_mul_timeShift`; reconcile the actual endpoint inventory, prove the translated weighted norm, and substitute into the existing divisor expansion. Do not create a record that simply assumes (4), and do not repeat the already-published unweighted covariance calculation.

Analytical argument: complete at the stated comparison scope; not independently reviewed.  
New Lean formalization: **not authored**.  
Lean compilation, expected types, fresh kernel replay, transitive axiom audit: **NOT_RUN**.  
Native proof jobs, workflow dispatches, schedulers, cross-chat messages: **none**.  
Publication evidence: the source-bound update in [math#1656](https://github.com/grwtsk/math/issues/1656) records the actual publication commit, complete tree, Git blob, readback, and affected-consumer synchronization. This review does not substitute for that branch-reachability evidence.  
Arithmetic exponential rate: **unchanged**.  
RH and Dirichlet GRH: **not proved by this increment**.
