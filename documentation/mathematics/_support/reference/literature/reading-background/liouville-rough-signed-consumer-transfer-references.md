# Literature ledger shard: tuned rough cancellation at signed consumers

## RH-TUNED-ROUGH-SIGNED-CONSUMER-01 (2026-10-31)

- **Local title/byline:** *Tuned rough cancellation at the signed endpoint and
  double-Abel consumers*, grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Source base:** `grwtsk/math@f747503640d944f7ae2afac9c8bda23bc35fa766`,
  tree `8c35a65ac47a15cf177f07cf78c03d952e0f969b`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleRoughSignedConsumerTransfer.lean`.
- **Imported local sources:** `LiouvilleRoughUpperCancellation.lean` blob
  `b247d36a60b69681737725a0cb709dd2f93e11c4`;
  `LiouvilleDoubleAbelCausalKernel.lean` blob
  `b102b4af07b0a1001424b084101c2cc16077181a`;
  `PickupEndpointQuadrature.lean`, current source at the pinned base.
- **New analytical estimate:** on a `Y`-rough support,
  `|R_mu(Y,N)-R_lambda(Y,N)| <= N/Y` and
  `|F_mu,Y(u)-F_lambda,Y(u)| <= 4 exp(u/2)/Y`; hence
  `E_mu,Y(T) <= 2 E_lambda,Y(T)+32(exp(T)-1)/Y^2`.
  At the tuned cutoff this transfers the published rough-Liouville upper
  estimate to the actual rough Möbius source.
- **Consumer result:** exact signed decompositions of the Möbius endpoint cross
  sum and Liouville double-Abel positive-gap aggregate into a rough--rough
  sector plus the complete complementary sector. The proved pointwise transfer
  requires cancellation of the complementary sector against the rough sector
  before positive allowances are added.
- **Method obstruction:** the tuned allowance
  `exp(T)*(log T)^8/(T^4*(log log T)^6)` is not all-positive-rate
  subexponential. The generic Lean no-go proves that a positive allowance of
  this size cannot be added to an independently subexponential remainder to
  close the consumer.
- **Jizhou Guo,** *Quantitative Logarithmic Chowla Correlations Uniformly over
  Growing Shifts* (2026), arXiv:2608.23500. Exact use: comparison with the
  uniform logarithmically weighted range
  `1 <= h <= (log x)^kappa`, `kappa < 1/700`. At `x=exp(T)` this is
  polylogarithmic in physical height and is asymptotically below the tuned
  cutoff. The theorem is not imported as a local Lean dependency and is not
  claimed to prove the signed endpoint remainder.
- **Scott D. Hughes,** *Effective logarithmic two-point Chowla bounds in every
  window* (2026), arXiv:2609.28526. Exact use: comparison with the
  iterated-logarithmic uniform-shift range and logarithmic window weight. No
  ordinary all-family endpoint or double-Abel transfer is inferred.
- **OpenAI,** *Ordinary two-point correlations of multiplicative functions*
  (2026), repository revision
  `openai/math@4eaee87548250b2682affda7d05d947c05554bae`. Exact use: fixed
  nonproportional affine forms with a power-of-logarithm saving and
  form-dependent constants. No growing-family uniformity is silently added.
- **Montgomery--Vaughan / Ford--Maynard boundary:** the tuned rough estimate
  retains the prior source and status recorded in
  `liouville-rough-upper-cancellation-references.md`; this increment does not
  reclassify those external inputs as locally replayed theorems.
- **Formal proved scope:** scalar square transfer; exact endpoint and
  double-Abel sector splits; pointwise signed-remainder transfers; generic
  positive-allowance no-go.
- **Open source propositions:** squarefree Möbius/Liouville defect, waveform and
  energy transfer, rough Gram split, tuned rough Möbius upper bound,
  non-subexponential tuned allowance, and polylogarithmic shift-range
  separation.
- **Verification:** `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
  EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NATIVE_EXECUTION_NOT_RUN /
  EXTERNAL_THEOREM_REPLAY_NOT_RUN`.
- **Open arithmetic:** derive the exact small-prime least-factor expansion of
  the complementary endpoint or double-Abel sector and prove a signed
  cross-sector estimate before applying absolute values. The complete endpoint
  estimate, uniform causal energy and RH remain unproved.
- **Canonical ledger:** this exact source-bound shard is stored in the canonical
  reading-background directory. The monolithic
  `paper-to-formalization-references.md` is not replaced from a partial
  connector response; integration requires a source-complete guarded edit.
