# Literature ledger shard: reciprocal-prime-mass obstruction

## RH-LIOUVILLE-RECIPROCAL-PRIME-MASS-01 (2026-10-31)

- **Local title/byline:** *Reciprocal-prime-mass obstruction and the
  dense-band covariance frontier*, grwtsk contributors.
- **Predecessor source:** `grwtsk/math@b60a766283b8b8b507274691e31ce88763d033d9`,
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeDelayObstruction.lean`,
  blob `0f4b1fa7f5fa69b3d8fa8b2ab2bef4abeec7c574`; companion method comparison
  `documentation/mathematics/_support/reviews/liouville-method-comparison-and-prime-delay-obstructions.md`,
  blob `0add9dd09cc9a6588e010179079498cec4393196`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleReciprocalPrimeMassObstruction.lean`.
  It defines reciprocal-sparse prime sets, positive linear mean, the unchanged
  all-positive-rate causal-energy target, the reciprocal-sparse delay
  countermodel interface, and exact finite weighted-coverage propositions.
  The analytical obstruction and weighted coverage bounds remain propositions,
  not theorems or axioms.
- **Exact mathematical result:** for an infinite prime set \(S\) with
  \(\sum_{p\in S}1/p<\infty\), the completely multiplicative sign equal to
  \(-1\) on \(S\) and \(+1\) off \(S\) satisfies every selected exact negative
  prime delay.  With \(g=f*\mu\),
  \[
  \sum_d |g(d)|/d=\prod_{p\in S}(p+1)/(p-1)<\infty
  \]
  and
  \[
  c_S=\sum_d g(d)/d=\prod_{p\in S}(p-1)/(p+1)>0.
  \]
  The elementary convolution argument gives
  \(\sum_{n\le N}f(n)/N\to c_S\), and the original causal Abel identity gives
  \(H_f(T)\ge(c_S^2/16)(e^T-e^{T_0})\) for all \(T\ge T_0\).
  Therefore exact delay identities on a reciprocal-summable unbounded prime
  set cannot force the RH-facing all-positive-rate energy upper bound.
- **Finite-band result:** for nonnegative weights,
  \[
  N^{-1}\sum_{n\le N}U(n)
  \ge\sum_{p\in P}w_p(1-1/p),
  \quad
  N^{-1}\sum_{n\le N}U(n)^2
  \ge\left(\sum_{p\in P}w_p(1-1/p)\right)^2.
  \]
  At \(w_p=1/p\), the floor is
  \((\sum 1/p-\sum1/p^2)^2\).  This is an obstruction to a norm-only
  uncovered-diagonal bootstrap, not a lower bound for the actual Liouville
  waveform.
- **Primary literature and exact use boundaries:** Hubert Delange,
  *Sur les fonctions arithmétiques multiplicatives*, Annales scientifiques de
  l'École Normale Supérieure 78 (1961), 273--304,
  DOI `10.24033/asens.1103`; classical Wintner convolution mean criterion;
  Gábor Halász, *Über die Mittelwerte multiplikativer zahlentheoretischer
  Funktionen*, Acta Mathematica Academiae Scientiarum Hungaricae 19 (1968),
  365--403, DOI `10.1007/BF01894515`.  These are mean-value context.  No
  external theorem is imported as a Lean dependency, and no broad novelty
  claim is made.
- **Programme-specific novelty boundary:** the contribution is the explicit
  reciprocal-mass threshold in the unchanged GRWTSK causal energy and the
  harmonic finite-band diagonal floor.  Divergence of selected reciprocal
  prime mass is shown necessary for a universal delay-set-only mechanism, not
  sufficient.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN`.  No runtime script, mutable receipt,
  controller, queue, or external execution state is committed to math.
- **Missing bridge:** derive actual Liouville growing-prime-band signed
  covariance with quantitatively divergent reciprocal mass, preserving
  omitted-prime, repeated-prime, unsifted, zero-birth-collar and exceptional
  costs; carry any gain through the complete signed
  \(\Omega_T\)-weighted rectangle consumer.
- **Canonical monolith:** the current
  `paper-to-formalization-references.md` remains byte-preserved.  This
  environment has whole-file replacement but no append/patch operation, and
  its complete current bytes cannot be materialized safely.  This source-bound
  shard is the exact pending ledger entry until a patch-capable source-complete
  route merges it.
