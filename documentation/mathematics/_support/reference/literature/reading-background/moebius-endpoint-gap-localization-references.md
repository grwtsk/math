# Literature ledger shard: additive-gap localization of the Möbius endpoint

## RH-MOEBIUS-ENDPOINT-GAP-LOCALIZATION-01 (2026-10-31)

- **Local title/byline:** *Additive-gap localization of the Möbius endpoint
  consumer*, grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Analytical base:** `grwtsk/math@8425bebeb3e693ea3efcbcd4569074425fcdc5c1`,
  tree `9cc22c4f1c181f9f40d507df323f31d4c748d587`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointGapLocalization.lean`.
- **Original consumer:** the unchanged Möbius `pickupCross`, literal
  `pickupResponseGram`, and `PickupEndpointQuadrature.endpointSum`.
- **Unconditional source estimate:** for the complete ordered additive-gap
  sector `|m-n|<=H`,
  `|X_small(H,T)| <= 8*H*T*(1+T)`.  It follows only from
  `|mu|<=1`, `r_n(u)<=2/sqrt(n)`, the harmonic sum, and both ordered
  orientations.
- **All-rate consequence:** every `H(T)=exp(o(T))` is harmless.  In particular,
  the rate-dependent cutoff `floor(exp(epsilon*T/4))` and the tuned
  Selberg--Dickman cutoff give an all-positive-rate small-gap sector.
- **Exact remaining supplier:** a one-sided all-positive-rate bound for the
  signed complementary packet with additive gaps larger than the selected
  cutoff.  The endpoint error remains the previously proved `1/4`.
- **Jizhou Guo comparison:** Jizhou Guo, *Logarithmic Chowla Correlations Across
  All Shift Scales*, arXiv:2608.23500v4 (2026).  The theorem is
  logarithmically weighted and pointwise outside a shift set sparse in every
  initial segment.  Summing per-shift absolute envelopes over `exp(T)` shifts
  retains physical-time rate one.
- **Scott D. Hughes comparison:** Scott D. Hughes, *Effective logarithmic
  two-point Chowla bounds in every window*, arXiv:2609.28526 (2026).  It covers
  Liouville or Möbius logarithmic correlations in affine windows; no complete
  signed large-gap endpoint aggregation is imported.
- **OpenAI comparison:** *Ordinary two-point correlations of multiplicative
  functions*, OpenAI math commit
  `4eaee87548250b2682affda7d05d947c05554bae`, fixed affine forms and a
  form-dependent constant.  A fixed power-of-log saving is not an
  all-positive-rate error after summing the full shift family.
- **Novelty boundary:** the harmonic kernel estimate is elementary.  The local
  contribution is its exact placement in the prescribed causal endpoint
  consumer, the rate-dependent gap localization, and the resulting large-gap
  arithmetic target.  No broad new correlation theorem is claimed.
- **Verification:** `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
  EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NATIVE_EXECUTION_NOT_RUN /
  EXTERNAL_THEOREM_REPLAY_NOT_RUN`.
- **Canonical ledger:** this complete shard is additive.  The monolithic
  `paper-to-formalization-references.md` is not replaced from a truncated
  connector response; integration requires a source-complete append-capable
  edit.
