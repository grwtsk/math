# OpenAI (2026): Ramare and bilinear-window neighborhood of the signed Abel path

Local contribution: grwtsk. Preserve upstream authorship and licenses. This is a source-informed mathematical specialization, not a claim of historical influence from a coincident idea.

## Paper and immutable upstream source

- Title: *Ordinary two-point correlations of multiplicative functions*.
- Byline: OpenAI, as specified by the upstream manuscript README.
- Version: September 24, 2026; repository snapshot inspected October 27, 2026.
- Stable paper: https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/final.pdf
- Byline/citation README: https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/README.md ; blob `965a26b87458fb541e5a0a36d40804ab86cadad7`.
- Upstream repository license: Apache-2.0, LICENSE blob `261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64`. Referenced upstream material retains that license and byline; locally authored source identifies grwtsk. No complete upstream analytic proof subtree is copied or imported.

All source paths below are relative to `openai/math` at commit `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`.

| Source | Blob | Exact method used or inspected |
| --- | --- | --- |
| `lean/OAI/NumberTheory/TwoPoint/Fourier/MinorArcRamareWindow.lean` | `7299ac5358a188eb261cbcc1110492b1ebe831aa` | `OAI.TwoPointCorrelations.minorArcRamareCofactor`, `minor_arc_ramare_cofactor_bound`, `minor_arc_ramare_short_eq_bounded`: quotient-only B(m)/(k_P(m)+1), zero convention and sufficient exclusive cofactor cutoff. |
| `lean/OAI/NumberTheory/TwoPoint/Fourier/MinorArcRamareError.lean` | `daee421a8036cddcef4dbc2e36195fff63435a32` | `minor_arc_ramare_pointwise`: separate denominator and product errors, both supported on selected prime squares. Its general factor-three estimate is not asserted as the local exact Mobius correction. |
| `lean/OAI/NumberTheory/TwoPoint/Fourier/MinorArcWindowInterval.lean` | `e527000f63ffd589177e50303fc7ecea0d38b473` | `minorArcWindowInterval`, `mem_minorArcWindowInterval`: interval `[k/A+1,min(M,(k+H)/A+1))`, with A>0 for equivalence to m<M and k<Am<=k+H. |
| `lean/OAI/NumberTheory/TwoPoint/Fourier/MinorArcBilinearWindow.lean` | `fbeb3a7f02363014c6efec1b4c4209464c4ae90e` | `minorArcBilinearWindow`: outer m in range M, inner selected prime, original window indicator, phases e(alpha*p*m). Exact finite source convention; its fourth-moment proof closure is not locally admitted. |
| `lean/OAI/NumberTheory/TwoPoint/Fourier/MinorArcBilinearSieve.lean` | `2ae35df295ecd1707b098fbcd8d3349df5b0f4f6` | `minor_arc_bilinear_sieve`: prospective analytic supplier only, with every hypothesis below retained. |

Stable source URLs are obtained without ambiguity as `https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/` followed by the exact source path.

## Upstream analytic hypotheses NOT discharged by the local finite bridge

The sieve declaration has one positive absolute constant and an eventual real prime-band threshold R. It quantifies finite primes P and natural N,X,M,H,d, with d>0, primes p!=2 in R<=p<=N, N<=2R, and one-bounded complex coefficients on the required m and p sets. It also requires 1<=W<=R, R<=H/W, a reduced rational r/q with q>=2, W<=q<=H/W, and |alpha-r/q|<=1/q^2. Its fourth-power bound for the sum over X origins includes M^3, X(3H+1)^3, H, R^3, and (1+log(2H))/(W log(R)^4).

The new local source supplies a quotient-only one-bounded arithmetic coefficient, a unit prime coefficient, the exact window/source equality, a sufficient common M, and the odd-prime/dyadic-band facts for j>=2. It does NOT supply the eventual threshold specialization, any rational approximation, minor/major frequency partition, aggregate origin/frequency losses, or a small residual. Source-shape equivalence to an unfolded expression is not a compiled equality referencing an imported OAI declaration.

## Local sources and declarations

All final mathematical leaves coexist at `grwtsk/math@7b863b2ea52083f4c21f454ac527c2608736a888`. Base reviewed: `cae3dcde150c64eed320b211db40b9201cb70389`.

1. `GRWTSK/NumberTheory/Moebius/MertensSignedAbelRamareCofactor.lean`, introduction `868ee32c3c5c0640de55be804a6eca0185115a65`, blob `64bf00052344c8c93ab85160bff2bc35f94bbedf`. Namespace `GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor`. Principal fully qualified declarations:
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor.coprimePrefix_eq_ramare`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor.abs_ramareRepeatedPrefix_le`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor.abs_ramareRepeated_bulk_le`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor.bulk_eq_ramare`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor.abs_full_packet_sub_ramare_raw_le`.
2. `GRWTSK/Analysis/FiniteSums/BilinearWindowSynthesis.lean`, introduction `284e97f0656422b8c26f1d08ba9896ee68d42671`, explicit pi-import revision `7b863b2ea52083f4c21f454ac527c2608736a888`, final blob `842fcfb27f865736577d3796232bdc8837ea0ab1`. Principal declarations:
   - `GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis.windowInterval_eq_filtered`
   - `GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis.bilinearWindow_upstream_order`
   - `GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis.shiftedWindow_phase`
   - `GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis.shiftedWindow_synthesis`
   - `GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis.norm_synthesis_le`
   - `GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis.norm_shiftedWindow_le_mass`.
3. `GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinearSynthesis.lean`, introduction `d442102ceeba41e8db6eda94089b7d703e2c6ef5`, blob `9d8b2f9d8c150240a5774b12d34953e69cb3d843`. Principal declarations:
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis.quotient_lt_cofactorCutoff`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis.primeBand_sieve_range`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis.ramarePrefix_re_eq_shiftedWindow`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis.raw_minus_phase_eq_residual`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis.full_packet_bilinear_comparison`
   - `GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis.full_packet_phase_input_comparison`.

The passive TOML under `docs/verification/NumberTheory/Moebius/MertensSignedAbelBilinearSynthesis/ramare-bilinear-v0.1.toml` contains all 53 fully qualified public declarations: 13 definitions and 40 theorem scripts. These are lexical counts, not elaborated declaration acceptance.

## Classification and verification

- Imported mathematics: pinned Mathlib finite sums, natural division, complex exponentials, real norms and arithmetic; existing GRWTSK actual Mobius count, extraction, kernel and boundary results. Their inherited proof closure is still subject to replay.
- Kernel-verified bridges: NONE claimed for this increment.
- Source proof candidates: exact quotient-only normalization; half-size repeated correction; common exclusive cutoff; complex/real window correspondence; phase origin/dilation equality; source-exact synthesis and full-packet transfer.
- Conditional interfaces: the arithmetic phase approximation, per-frequency bounds, eventual-threshold specialization, and source-weighted aggregate estimates. None is replaced by an axiom or an assumed RH theorem.
- Finite evidence: separate exact rational/Gaussian-rational diagnostics, reported with the actual command and hash in the associated verification issue. No asymptotic or transcendental-API acceptance follows. No canonical operational receipt exists here.
- Analogies: use of the same bilinear framework suggests where to apply the external sieve theorem. No transport of its analytic conclusion has yet been proved in a shared environment.
- Unresolved premises: elaboration and full local dependency closure; source-matched independent kernel and transitive axiom checks; upstream admission and cross-version compatibility; all major-arc and minor-arc losses; actual small reconstruction error and synthesis mass; signed unsifted/repeated-prime control; final all-positive-exponent growth bound.

Local environment: Lean `v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Upstream environment: Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No migration or analytic import was made.

Requested commands, all NOT_RUN with exit UNAVAILABLE and receipt NONE:

```
lake build GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor
lake build GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis
lake build GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis
lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/Moebius/MertensSignedAbelRamareCofactor.lean
lake env lean --trust=0 -DwarningAsError=true GRWTSK/Analysis/FiniteSums/BilinearWindowSynthesis.lean
lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinearSynthesis.lean
```

Fresh external checker replay and printing all theorem axiom closures are separately NOT_RUN; the source elaboration commands above are not a substitute. Effectful runners and immutable receipts belong in grwtsk/noeaaeue, outside math, bound to the final source commit. No new remote execution authorization or dispatch is implied.

Documentation integration limit: this complete provenance entry is a supplement. Insertion of its link and the preceding ordinary-correlation supplement into the existing central `paper-to-formalization-references.md` is still PENDING; that file was not replaced or truncated. This is not claimed as completed central-index maintenance.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89600abe1430cc1069230f254145777714701f10674e2a9519c544d77900bf21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FiniteSums/BilinearWindowSynthesis.lean","GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinearSynthesis.lean","GRWTSK/NumberTheory/Moebius/MertensSignedAbelRamareCofactor.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
