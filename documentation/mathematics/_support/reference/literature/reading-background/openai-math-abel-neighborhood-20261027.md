# OpenAI ordinary-correlation and fourth-moment neighborhood: provenance supplement

Local attribution: grwtsk contributors.

This is a complete provenance supplement for the five historical source leaves below. Its paper/source mapping is now reconciled in the [canonical paper ledger](paper-to-formalization-references.md#openai-adapter-reconciliation). Existing entries, historical source pins and their verification statuses are preserved; documentation reconciliation is not fresh replay. Operational execution and accepted receipts belong in grwtsk/noeaaeue, not this mathematical repository.

## Bibliography and immutable upstream identity

**Title:** Ordinary two-point correlations of multiplicative functions.
**Byline:** OpenAI.
**Version/date:** September 24, 2026 preprint; source snapshot inspected October 27, 2026.
**Stable paper URL:** https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/final.pdf
**Bibliographical metadata:** same directory `README.md`, blob `965a26b87458fb541e5a0a36d40804ab86cadad7`.
**Repository/version:** openai/math commit `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`.

The present review used the repository's scope notes and actual Lean declarations. It did not independently inspect the complete manuscript or replay its complete Lean proof closure. No DOI or arXiv identifier is invented. Upstream uses Apache-2.0 (`LICENSE` blob `261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64`); its bylines and licenses remain unchanged. Local elementary proofs are independently rederived, not copied upstream source. No assertion of historical influence or novelty of standard finite fourth-moment algebra is made.

### Exact source records

All paths in this subsection are at the upstream commit above.

| Path | Blob | Role |
| --- | --- | --- |
| `lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean` | `2bd48811e73bbdc80c1f738fa889a14189186408` | Analytic theorem exports, source-inspected only. |
| `lean/ComparatorChallenges/OrdinaryTwoPointCorrelations.json` | `96dbfcd015da7bb0d32f30e17a3b8a6743bf1fe5` | Exact comparator-to-solution declaration mapping; not an execution receipt. |
| `lean/OAI/NumberTheory/TwoPoint/Fourier/MinorArcFourthExpansion.lean` | `43fb7f542683c5b68fa0b419d547d4cde8ca8566` | Finite fourth-moment identities motivating an independently rederived real specialization and weighted extension. |
| `lean/OAI/NumberTheory/TwoPoint/Fourier/MinorArcBilinearWindow.lean` | `fbeb3a7f02363014c6efec1b4c4209464c4ae90e` | Exact finite bilinear short-window source, not yet identified with the Abel source. |
| `lean/OAI/NumberTheory/TwoPoint/Fourier/MinorArcBilinearSieve.lean` | `2ae35df295ecd1707b098fbcd8d3349df5b0f4f6` | Prospective analytic estimate; NOT locally admitted. |

### Analytic statement hypotheses, preserved rather than imported

`OAI.OrdinaryTwoPointCorrelations.liouville_log_saving` exports an absolute exponent c>0 and, for each FIXED natural affine quadruple with positive slopes and nonzero determinant, a constant C>0 controlling the ordinary Liouville affine sum by C*X/(log X)^c for X>=3. The constant depends on the forms. This is not a Mobius theorem obtained by renaming Liouville, and is not uniform in a growing family of affine data.

`OAI.OrdinaryTwoPointCorrelations.binary_corrected_elliott` and `OAI.OrdinaryTwoPointCorrelations.affine_corrected_elliott` require complex-valued positive multiplicativity, one-boundedness, and uniform nonpretentiousness of at least one of the two functions. Binary shifts are distinct; affine slopes are positive and the determinant is nonzero. The conclusion is convergence to zero of the ordinary correlation divided by N, for FIXED shifts/forms. The definitions involve character twists and the specified frequency ranges; no local proof of those nonpretentiousness premises is supplied.

`ComparatorChallenges/OrdinaryTwoPointCorrelations.lean` contains statement-template `sorry` bodies by design. The implementation export above calls `OAI.NumberTheory.TwoPoint.Main`. The comparator's permitted-axiom list and `enable_nanoda=false` are configuration, not proof acceptance, a failure receipt, or a mathematical counterexample.

`OAI.TwoPointCorrelations.minor_arc_bilinear_sieve` states: some C>0 works for all sufficiently large real R; P is a finite set of primes p!=2 with R<=p<=N and N<=2R; d>0; a(m),c(p) are one-bounded on their finite source supports; 1<=W<=R<=H/W; 2<=q with W<=q<=H/W; IsCoprime(q,r); and |alpha-r/q|<=1/q^2. For the LITERAL upstream minorArcBilinearWindow it bounds the fourth power of the sum over k<X of the norms by

    C*M^3*[X*(3H+1)^3]*H*R^3*(1+log(2H))/(W*(log R)^4).

The finite factors and full rational-approximation conditions are part of the result. No local source identity with that operator, major-arc complement, or exponent improvement is supplied here.

### Finite method actually used

`OAI.TwoPointCorrelations.minor_arc_fourth_sum` and `OAI.TwoPointCorrelations.minor_arc_fourth_moment_expansion` expand a finite complex fourth norm through ordered quartets with the required conjugates. The new local statements are explicitly REAL. They independently prove the full quartet identity and apply finite Cauchy twice to retain the absolute coefficient measure and its cubic total-mass factor. They do not claim a complex theorem without conjugates or import the analytic fourth-moment estimate.

## Local immutable source identities

All five leaves coexist at math commit `2317d89167091e1acc6b7567ff4b0014c58dbf01`.

| Local module | Introduction commit | Source blob |
| --- | --- | --- |
| `GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation` | `9f1288bf6da730e74ab46b6e6fc994048a3cdc87` | `6c03671c4088a09aa80d31c08b47f488c397b6d7` |
| `GRWTSK.Analysis.FiniteSums.WeightedFourthMoment` | `eb7f1c321c50ee16561928447bac8c335043868f` | `f2db9a1eac06edc182f90c52e3fbd8d52fa8f41a` |
| `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFixedShiftTransfer` | `1315711248862312a20bf05f9847408f25c716b8` | `527fac817dc472977aa9bd4c419a0c49422039e6` |
| `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment` | `ef0158780b62d8c3296e1d5bb2b4433bb7cdf174` | `d17981530dbbbbc9087412d66c6f21d60430ed2c` |
| `GRWTSK.NumberTheory.Moebius.PrimeQuotientAffineWindow` | `2317d89167091e1acc6b7567ff4b0014c58dbf01` | `c877dc36d1fb948b7a40f72c6e89da8250fb0ba0` |

Source paths are the module names with dots replaced by slashes and `.lean` appended. The passive manifest at `documentation/mathematics/_verification/specifications/NumberTheory/Moebius/MertensSignedAbelFourthMoment/openai-neighborhood-v0.1.toml` records every path, source SHA-256, direct import and all 46 fully qualified public declaration names (8 definitions, 38 theorem scripts).

### Corresponding fully qualified principal declarations

- `GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation.common_cutoff`
- `GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation.fixed_family_envelope`
- `GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation.movingFamily_eventually_zero`
- `GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation.movingFamily_block_average`
- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFixedShiftTransfer.ordinaryCorrelation_moebius`
- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFixedShiftTransfer.full_packet_eq_regular_add_fixed`
- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFixedShiftTransfer.abs_fixedShiftPacket_le`
- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFixedShiftTransfer.fixed_family_packet_bound`
- `GRWTSK.NumberTheory.Moebius.PrimeQuotientAffineWindow.quotientWindow_eq_affine_tail`
- `GRWTSK.NumberTheory.Moebius.PrimeQuotientAffineWindow.translated_forms_nonproportional`
- `GRWTSK.NumberTheory.Moebius.PrimeQuotientAffineWindow.excludePrime_multiplicative`
- `GRWTSK.NumberTheory.Moebius.PrimeQuotientAffineWindow.bandMoment_zero_eq_affine_tails`
- `GRWTSK.Analysis.FiniteSums.WeightedFourthMoment.fourth_sum_expansion`
- `GRWTSK.Analysis.FiniteSums.WeightedFourthMoment.weighted_fourth_le`
- `GRWTSK.Analysis.FiniteSums.WeightedFourthMoment.fourth_threshold`
- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment.signedResponse_fourth_expansion`
- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment.signedResponse_fourth_le`
- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment.full_packet_input_fourth_comparison`
- `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment.rowFourthAllowance_le_threshold`

Exact local hypotheses are visible in the pinned source. In particular: the finite-family bound requires A,eta>=0 and an envelope for the SAME ordinary correlations for all required N; the affine reindexing requires d>0 and splits empty/nonempty windows, retaining the first term; nonproportionality needs h>0; the fourth-moment return requires epsilon>=0 and the actual row-weighted error fourth moment. It keeps the entire old head and the two-unit boundary allowance.

## Mathematical and verification classification

**Imported mathematics:** existing local source definitions and conditional comparisons; pinned Mathlib finite sums, natural division, Mobius multiplicativity, casts, ordered real arithmetic and finite Cauchy. No OAI analytic theorem is a Lean import of the new leaves.

**Kernel-verified bridges:** NONE CLAIMED for this increment. Source readback and numerical diagnostics are not elaboration or kernel evidence.

**Source proof candidates:** fixed finite-family envelope transfer; exact ordinary-sum alignment; signed packet/complement identity; the bound 4*card(S)*(A/(2^j+1)+eta); empty-window/first-term positive-affine reindexing; multiplicative prime-exclusion mask; all ordered real quartet identities; coefficient-aware fourth-moment and threshold inequalities; their composition with the actual arithmetic row and original packet.

**Conditional interfaces:** admitted ordinary cancellation would supply individual eventual envelopes; a fixed finite family then has a common cutoff. A source-matched small input fourth moment supplies the existing packet-error consumer. Neither the ordinary cancellation premise nor a small input fourth moment is established by the elementary local proofs.

**Finite evidence:** deterministic exact rational/integer tests were executed locally, with command and hashes in the verification issue. They include actual finite Mobius prefixes and literal Abel kernels for fixed-family inequalities, and arbitrary signed real-rational row fixtures for the fourth-moment algebra. They do not execute Lean, admit an analytic theorem, establish an all-scale estimate, or furnish a canonical Noe receipt.

**Analogies/context only:** family 003 nonvanishing and family 130 Fourier circuit complexity were inspected as neighboring source programmes. No local 7/8 admission, RH improvement, Fourier circuit port, conditioning theorem, or coefficient-smallness result follows from this increment.

**Unresolved premises:** exact local elaboration; complete imported proof/axiom closure; upstream analytic closure and declaration-admission check under compatible environments; uniform nonpretentiousness for the intended actual functions; control as shifts, primes, affine offsets and masks grow; aggregate first-term and cutoff costs; a literal minor-arc polynomial comparison and major-arc complement; retention of full powers and logarithmic losses; a useful independent approximation g and a small source-matched fourth moment; the unchanged signed head/joint-error estimate. Fixed-shift cancellation does not supply growing-family cancellation.

## Actual verification status and commands

Local Lean: `leanprover/lean4:v4.33.0`; Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Upstream Lean: `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No version migration was performed.

For each of the five fully qualified local modules above, both `lake build <module>` and `lake env lean --trust=0 -DwarningAsError=true <source path>` are **NOT_RUN**, exits **UNAVAILABLE**. Fresh independent kernel replay, exact-type printing and complete transitive `#print axioms` are **NOT_RUN**; receipt **NONE**. The passive manifest lists the actual commands and expected checks. Commands on an isolated upstream checkout, including `lake build OAI.NumberTheory.TwoPointCorrelations.FinalMain`, are also **NOT_RUN** here. Comparator source inspection is not substitute evidence.

Any repair requires new commit/blob identities and fresh verification. Preserve concurrent main work, all exact hypotheses, source identities and genuine upstream bylines/licenses. This supplement neither dispatches verification nor changes the standing remote-execution constraints.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1764867d90b5440e7864ec8a17b42dcaef969f37e5e5b2826d0183f6681af3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
