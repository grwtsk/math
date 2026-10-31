# Literature ledger shard: Liouville prime-band norm equivalence

## RH-LIOUVILLE-PRIME-BAND-NORM-EQUIVALENCE-01 (2026-10-31)

- **Local title/byline:** *Uniform norm equivalence for nonnegative Liouville
  prime bands*, grwtsk contributors.
- **Prepared against:** `grwtsk/math@1b38a559e7970426502368cefb0f287539047aa9`.
- **Primary repository sources:** actual Liouville coefficient and causal
  energy in
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalEnergyTarget.lean`,
  blob `a00aaa07c067b4c88203372870b5d5d151de0de4`; exact finite-band waveform,
  covariance, and uncovered residual in
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleGrowingPrimeBandIdentity.lean`,
  blob `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeBandNormEquivalence.lean`.
- **Exact mathematical result:** for every finite prime band with nonnegative
  weights and positive mass \(W\), let
  \(\rho=\sum_p(w_p/W)p^{-1/2}\). The normalized uncovered energy satisfies
  \[
  (1-\rho)^2H(T)\le E_{P,w}(T)/W^2\le(1+\rho)^2H(T).
  \]
  Since every selected prime is at least two,
  \[
  (3/2-\sqrt2)H(T)\le E_{P,w}(T)/W^2
  \le(3/2+\sqrt2)H(T).
  \]
- **Programme consequence:** even when the finite band and weights depend on
  \(T\), an all-positive-rate normalized residual-energy bound is equivalent,
  up to absolute constants, to the original Liouville causal-energy target.
  Varying-band norm optimization is therefore not an independent cancellation
  mechanism.
- **Negative-covariance boundary:** if \(c\) is the normalized delayed
  covariance and \(Q\) the delayed-average energy, then
  \[
  E/W^2+2(-c)_+=H+Q+2c_+\ge H.
  \]
  Paying the full negative covariance restores the original energy plus
  nonnegative terms.
- **Inherited sharpness context:** the predecessor method-comparison review
  gives the long oscillatory packet showing sharpness of the one-delay
  norm-inverse factor. No external theorem is imported into Lean and no broad
  novelty claim about shift operators is made.
- **Novelty boundary:** the contribution is the source-exact extension from
  one damped delay to arbitrary finite nonnegative physical-time prime bands,
  including bands selected separately at every height, and the resulting
  no-go statement for the transferred residual-energy phase.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. Only elementary structure projections are
  written as Lean theorems; the analytic comparison remains a named
  proposition pending proof and replay.
- **Open arithmetic:** obtain a signed bilinear estimate for the actual
  Liouville delayed family that is consumed before norm inequalities erase its
  sign, or transport such a gain through the complete signed double-Abel or
  endpoint consumer.
- **Canonical monolith:** this shard is placed in the canonical
  reading-background directory. The monolithic
  `paper-to-formalization-references.md` is not replaced without a
  source-complete patch-capable path.
