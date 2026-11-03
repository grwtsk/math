# Centered CERN-compatible waypoints, finer smooth boundaries, complete signed residue return

Local mathematical attribution: **grwtsk contributors**. Formalization assistance: OpenAI. Source proof candidate; Lean compilation, expected types, fresh kernel replay, and transitive axioms **NOT_RUN**.

## Original sources and what is actually available

- Original unchanged arithmetic declarations: `GRWTSK.RiemannHypothesis.CCC.{moebiusReal,pickupResponse,wholePickup,pickupEnergy}` in `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`; reviewed original blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`.
- Literal complete finite parity and additive residue source: `GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.{classWave,completeWave,completeWave_eq_originalFixedWave,wholePickup_eq_completeWave,completeResidueEnergy_eq_pickupEnergy}`, original blob `07dfdae4a60b05f5da55cc20882411c85444fa82`. The full inventory is `n=1,...,2^j` and class coordinate `(n % 2, floor(n/2) mod d²)`; nonunits, zeros and both parity sectors remain.
- Prior source-coupled generator research branch: `grwtsk/math@f5966fb4c0e800464b5d0c3434396c76d24eaf66`, plus predecessor `CMActualPickupBirthDerivative.lean` (not currently on the inspected `main`). This increment uses the canonical original mathematical sources, without importing or changing that branch-only source. There is no claim that branch-only generator proofs have been compiled.
- Mathlib pinned to `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean `v4.34.1`; the current imported smooth-bump and smooth-transition APIs are `Mathlib.Analysis.Calculus.BumpFunction.InnerProduct`, `Mathlib.Analysis.Calculus.BumpFunction.Basic`, and `Mathlib.Analysis.SpecialFunctions.SmoothTransition`.
- External CM comparator remains `openai/math@4eaee87548250b2682affda7d05d947c05554bae`. This standalone windowed source leaf does not assume an actual CM-to-detector transfer or a canonical Hodge polarization.

CERN candidate record 401: LHCb Collaboration (2014), *LHCb event file for real measurement*, CERN Open Data Portal, DOI **10.7483/OPENDATA.LHCb.E7EJ.JUWR**, https://opendata.cern.ch/record/401. CERN documents **53,948** preselected `D0 -> K pi` candidate events in one **1.2 MiB** file; release **CC0**. Masterclass documentation describes the `D0 TAU` decay-time observable, invariant-mass background discrimination, and educational lifetime inference: https://opendata.cern.ch/docs/lhcb-masterclass. The official 2026 LHCb Ntupling Service provides requested research-level Run 1/Run 2 ntuples: https://opendata.cern.ch/docs/lhcb-getting-started. These are **dataset metadata and protocol sources**; the actual CERN event-level rows, uncertainties, and physics likelihood have **not** been downloaded, fitted, or fabricated. A downloaded CSV or ROOT-derived table must be supplied with an explicit schema before any points can be called experimental waypoints. No false reinterpretation of CMS event sequence as a proper-time trajectory occurs.

## Two mathematically different smooth windows

### A. Measurement-centered windows

Each original record has a retained stable key, proper-time coordinate `tau_i`, and optional observed scalar value `y_i`. A dimensionless time center is only defined after an explicitly chosen positive scale `tau0`: `c_i=tau_i/tau0`. The physically meaningful units and observable map are external obligations; time conversion by itself is not a measurement law.

At level `k` put `eps_k=1/(k+2)`, inner radius `eps_k/2`, outer radius `eps_k`. Mathlib's `ContDiffBump c_i` supplies an actual C-infinity bump `b_ki` with `0<=b_ki<=1`, `b_ki=1` on the inner closed ball, and `b_ki=0` beyond its outer boundary. Centers `c_i` and measured values `y_i` do not change with `k`. Width shrinks strictly and tends to zero. These are **localizing functions**, not smoothing convolutions of an irregular original waveform.

For a finite ordered, source-preserved list of N records, choose the priority partition

```
w_ki(t)  = b_ki(t) product_{h<i} (1-b_kh(t))
beta_k(t)= product_{i<N} (1-b_ki(t)).
```

A telescoping induction proves the exact equality `sum_i w_ki(t)+beta_k(t)=1` with nonnegative weights. At **every** original center `c_i` the uncovered boundary `beta_k(c_i)=0`; if several timestamps coincide, the stable input order resolves scalar overlaps. To avoid discarding any duplicated records, the separate per-record diagnostic `b_ki(t) * (S(t)-y_i)` is also retained, and it equals `S(c_i)-y_i` at its own center, even when the priority scalar anchor gives precedence to an earlier record. No record is merged or silently erased.

For arbitrary source `S` define

```
anchor_k(t) = sum_i w_ki(t) y_i
paid_k(t) = sum_i w_ki(t) (S(t)-y_i) + beta_k(t) S(t).
```

Then **exactly** `anchor_k(t)+paid_k(t)=S(t)`, without an assumed physical match. The boundary term is **not** guaranteed small on the entire real line: away from every recorded waypoint all `b_ki=0`, so `beta_k=1` and the source remains entirely in the boundary residual. Thus shrinking windows do not imply global convergence of `anchor_k` to the source or to any physical prediction.

### B. Source-birth smoothing

The original `pickupResponse n t` has a derivative jump at `b_n=log n`; multiplying that raw response by a smooth measurement window does **not** remove the kink. To smooth the **actual response**, use Mathlib's C-infinity flat transition `chi=Real.smoothTransition` and define

```
R_(n,k)(t) = chi((t-log n)/eps_k) * 2*(1/sqrt(n) - exp(-t/2)).
```

This response is C-infinity for each fixed `k`, agrees with zero for `t<=log n`, and agrees **exactly** with the original `pickupResponse n t` for `t>=log n+eps_k`. In the thin transition interval it changes the original waveform. Hence define an exact **signed** error in every class, not a claim of source equality:

```
E_(j,r,a,k)(t) = classWave(j,d,r,a,t)-regularizedClassWave(k,j,d,r,a,t).
```

The complete original waveform is the sum of all regularized class signals and all signed error class signals, including both parities, nonunit residue classes and every squareful zero. The source identity requires no cancellation estimate.

**Quantitative source boundary estimate (analytic, not yet a kernel-checked declaration):** for `n>=1`, `t>=0`, the original response is nonnegative with derivative `0<=R'_n(t)<=1` on the active cell. Thus, inside the transition window, `|R_n(t)-R_(n,k)(t)| <= eps_k`; outside the window the difference is zero. For fixed inventory `j`, the absolute coherent signed error therefore obeys

```
|S_j(t)-S_(j,k)(t)| <= eps_k *
 # { n : 1<=n<=2^j, log n < t < log n+eps_k } <= 2^j eps_k.
```

The bound is uniform in physical source time for each FIXED finite `j` and tends to zero as `k->infty` at fixed `j`. It is **not** uniform in `j`, and has no implication for the open all-positive-rate Möbius energy estimate. Classwise smoothness follows from the smooth transition multiplied by the smooth active amplitude and a finite signed sum. The original source retains its original birth derivative jumps; they are carried by the exact error when comparing with the smoothed source.

## Combined centered-waypoint and all-residue return

Let `S_j(t)=completeWave(j,d,t)` and `S_(j,k)(t)=regularizedCompleteWave(k,j,d,t)`. Set

```
A_k(t) = sum_i w_ki(t) y_i
R_k(t) = sum_i w_ki(t) (S_(j,k)(t)-y_i)
       + beta_k(t) S_(j,k)(t)
       + [S_j(t)-S_(j,k)(t)].
```

Then `S_j(t)=A_k(t)+R_k(t)` exactly. The bracket is the full birth smoothing defect, not an unsigned upper bound. Before summing the source, one can do this in every original `(parity, ZMod(d*d))` channel: `(sum_i w_ki S_(j,r,a,k)) + beta_k S_(j,r,a,k) + E_(j,r,a,k)=classWave(j,d,r,a)`. The unchanged original source energy on its source clock is therefore

```
pickupEnergy(dyadicTime j)
 = integral_0^(dyadicTime j) (A_k(t)+R_k(t))^2 dt
 = integral_0^T [A_k(t)^2 + 2*A_k(t)*R_k(t) + R_k(t)^2] dt.
```

The middle term may be negative; it cannot be removed by positive Hilbert energy. The decomposition is source-exact and unconditionally finite-inventory algebra. A predicted detector measurement is NOT obtained merely by naming `A_k` a CERN signal; dataset-specific proper-time resolution, efficiency, acceptance, background, error covariance, likelihood and the CM–particle state map are separate work.

## Hostile checks, evidence and admitted limits

- Actual mathlib `ContDiffBump` provides genuine `C∞` waypoint support; birth C∞ requires smoothing the response itself rather than only multiplying by the waypoint bump.
- Duplicated centers and disjoint windows were tested. Priority weights never drop rows from the input; an independent per-row gate/deviation returns every original value at its center. Scalar overlap precedence is explicitly order-dependent.
- At fixed `k` an uncovered region has boundary weight one; no false zero residual or global interpolation theorem is asserted.
- Tests with negative and positive mock measurements include all signed Möbius integer coefficients, both parities, every `ZMod(d²)` class for `d=1,2,3`, zero and repeated labels, and true squareful zeros.
- Independent reference `/mnt/data/cern_centered_residue_waypoints.py` passed **6,888 assertions**, including **1,700 exact-rational partition/source-return assertions** and floating-point tests at `j=0,...,6`, `k=0,1,3,7,15,31`. All numerical waypoint values in these tests are explicitly **SYNTHETIC**, not CERN records. The reference is not a proof of arbitrary real limits or physical calibration and is not a native Lean runner.
- A `--csv` input accepts user-supplied experimental rows with explicitly named fields and a positive `--tau0-ps`; no event schema is guessed for the CERN record. The test CSV header template is a new interface, NOT an assertion of the original CERN file columns.
- No fixed-metric CM unitary propagator, physical interaction strength, boundary-free physical measurement operator, Schwartz-to-periodic `L^p` transference, or RH/GRH implication follows from this windowing construction.

## Source and acceptance gates

Proposed additive Lean leaves on existing `main` (no root import or toolchain edits):

1. `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMCenteredWaypointPartition.lean` — actual C-infinity compact support, shrinking radii, priority partition, exact data/model boundary return, independent duplicate-center diagnostic.
2. `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMWindowedBirthResidueRegularization.lean` — smooth source birth activation, C-infinity finite residue channels, unchanged original source plus signed correction, full cross term.
3. `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMCenteredResidueWaypointDeployment.lean` — complete classwise and dataset-centered signed return and original `pickupEnergy` integral on the unchanged dyadic window.

Pending: Lean elaboration of each source leaf on pinned toolchain, expected type and complete import-closure checks, fresh kernel replay, axiom/native helper audit, possible Lean formalization of the quantitative `2^j eps_k` error bound and `eps_k -> 0`, ingestion and validation of actual CERN event rows, a physics-calibrated clock/measurement map, and full experimental likelihood. All are **NOT_RUN or OPEN** as appropriate. A successful finite numerical check does not grant any of these conditions.

Nearest analytical antecedents are classical C-infinity bump partitions, smooth transitions, finite telescoping products, and source-preserving error decomposition; no theorem-level priority claim is made.
