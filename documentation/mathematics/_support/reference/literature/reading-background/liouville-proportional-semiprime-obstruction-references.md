# Literature ledger shard: proportional semiprime Liouville obstruction

## RH-LIOUVILLE-PROPORTIONAL-SEMIPRIME-01 (2026-10-31)

- **Local title/byline:** *Uniform proportional semiprime-cutoff obstruction*,
  grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Source base:** `grwtsk/math@6553619cce25f4b529f7e57b73cb21b38fde4c52`,
  tree `4e394b2ca1bf914f952b7a8c7212446e787c785b`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleProportionalSemiprimeObstruction.lean`.
- **Exact result:** for every fixed
  \(\theta\in(1/3,1/2)\), with
  \(Y_T=\lfloor e^{\theta T}\rfloor\), the terminal rough Liouville prefix has
  the unit/prime/semiprime decomposition
  \[
  1-(\pi(x)-\pi(Y_T))
   +\sum_{Y_T<p\le\sqrt x}(\pi(x/p)-\pi(p)+1).
  \]
  On a uniform terminal range its main coefficient is
  \[
  -1+\log((1-\alpha)/\alpha)<0.
  \]
  The original causal Abel transform gives
  \(E_\theta(T)\gg_\theta e^T/T^2\), and the signed Gram sandwich gives
  \(\max(-\mathcal C_{Y_T}(T),0)\gg_\theta e^T/T^2\).
- **Lean proved scope:** parameter geometry; rough-energy lower bound plus
  exponential dominance implies eventual unit negligibility; exact
  factor-four transfer from rough energy to negative complete covariance.
- **Open Lean scope:** the uniform PNT semiprime asymptotic, causal Abel
  transport for the full exponent family, positivity of the explicit
  logarithmic gap, and the final proportional-certificate contradictions.
- **Primary background:** Buchstab and de Bruijn, least-prime-factor and rough
  number theory; Steve Fan, *Numerically explicit estimates for the
  distribution of rough numbers*, Journal of Number Theory 260 (2024),
  120--150, DOI `10.1016/j.jnt.2024.01.008`, arXiv `2306.03347`;
  Kevin Ford and James Maynard, *On the theory of prime producing sieves*
  (2024), arXiv `2407.14368`.
- **Use boundary:** the external sources provide unsigned rough-number or
  Type-I/Type-II context. They are not asserted to prove the signed
  physical-time lower bound or the missing upper cancellation estimate.
- **Programme-specific contribution:** elimination of the complete
  proportional two-factor regime \(\theta\in(1/3,1/2)\), extending the earlier
  single cutoff \(2/5\), with every repeated prime, rough survivor, causal
  birth collar and complete covariance retained.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NATIVE_EXECUTION_NOT_RUN`.
- **Open arithmetic:** move to subexponentially conditioned growing-degree
  cutoffs, such as \(Y(T)=T^A\), or derive and analyze the full signed Buchstab
  profile beyond the two-factor branch. No fixed proportional exponent in the
  formalized semiprime range can supply the all-positive-rate consumer.
- **Canonical ledger:** this source-bound shard is published in the canonical
  reading-background directory. The monolithic
  `paper-to-formalization-references.md` remains byte-preserved unless a
  source-complete append path is available.
