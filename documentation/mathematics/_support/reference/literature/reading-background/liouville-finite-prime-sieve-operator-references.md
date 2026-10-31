# Literature ledger shard: finite-prime Liouville sieve operator

## RH-LIOUVILLE-FINITE-PRIME-SIEVE-OPERATOR-01 (2026-10-31)

- **Local title/byline:** *Exact finite-prime sieve operator and the
  conditioning barrier*, grwtsk contributors.
- **Prepared against:** `grwtsk/math@51adcda8ec057fafdf13e2664f3f8def3d0b5a6c`.
- **Primary repository sources:** actual Liouville causal waveform in
  `LiouvilleCausalEnergyTarget.lean`, blob
  `a00aaa07c067b4c88203372870b5d5d151de0de4`; exact one-band identity in
  `LiouvilleGrowingPrimeBandIdentity.lean`, blob
  `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`; finite-band norm no-go in
  `LiouvillePrimeBandNormEquivalence.lean`, blob
  `caf6277e63c4b9139b42b07cffc8b8f925ea799d`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleFinitePrimeSieveOperator.lean`.
- **Exact source identity:** for a finite prime set \(P\),
  \[
  \prod_{p\in P}(I+p^{-1/2}D_{\log p})F
  =
  \sum_{S\subseteq P}d_S^{-1/2}F(\,\cdot-\log d_S)
  =
  \sum_{(n,\prod P)=1}\lambda(n)r_n.
  \]
  The equality is finite inclusion-exclusion for the actual source; repeated
  prime powers and causal births are retained exactly.
- **Norm comparison:** with
  \(L_\pm(P)=\prod_{p\in P}(1\pm p^{-1/2})\),
  \[
  L_-(P)^2H(T)\le E_P^{\rm sift}(T)\le L_+(P)^2H(T).
  \]
  The exact inverse cost is \(\kappa(P)=L_-(P)^{-2}\).
- **Initial-band cost:** for \(P(Y)=\{p\le Y\}\),
  \[
  \kappa(P(Y))
  \le\exp((8+4\sqrt2)\sqrt Y).
  \]
  Hence cutoffs with \(\sqrt{Y(T)}=o(T)\) preserve the
  all-positive-rate growth class in both directions.
- **Support obstruction:** if a prime \(q\) is omitted, every \(q^j\) survives.
  To force all survivors below \(e^T\) to have total prime-factor multiplicity
  at most \(k\), every prime \(q\le e^{T/(k+1)}\) must be selected.
- **Classical analytic background:** the prime number theorem with partial
  summation gives
  \(\sum_{p\le Y}p^{-1/2}\sim2\sqrt Y/\log Y\), and therefore the necessary
  fixed-degree band has inverse cost faster than every \(e^{\varepsilon T}\).
  This PNT comparison is review background only; it is not imported as a Lean
  dependency in this increment.
- **Programme consequence:** positive finite-prime norm inversion cannot turn
  the actual source into a bounded-\(\Omega\) waveform at all-positive-rate
  cost. A viable use of the sieve must either prove cancellation for a
  subexponentially conditioned rough-number source or retain signed subset
  cancellation before norms.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. Only prime-membership projections and the
  initial-band construction proof are written as Lean theorems.
- **Open arithmetic:** estimate the exact rough-number waveform together with
  the paid conditioning loss, or derive a complete signed subset-delay
  estimate inside the existing double-Abel or endpoint consumer.
- **Canonical monolith:** this exact entry is published as a source-bound shard
  in the canonical reading-background directory. The monolithic
  `paper-to-formalization-references.md` remains unchanged without a
  source-complete patch-capable update path.
