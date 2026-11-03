# CM–Möbius generator across every response birth; CERN data-source audit

Local mathematical attribution: **grwtsk contributors**; formalization assistance: OpenAI. This is a source-specific mathematical comparison and **Lean proof candidate**, NOT a claim of kernel acceptance, experimentally fitted coupling, or a physical identification of CM Betti classes with particle flavour states.

## Pinned mathematics and actual source objects

- Previous isolated research branch `research/residue-circle-wave-hilbert-20261101-350ff25d` at `grwtsk/math@7f8c3c75bcb34676c215bdf95ebca5fd1c8438df` before this increment. Branch files are not necessarily on `main`; no implication of default-build acceptance. Toolchain `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, OpenAI comparator `openai/math@4eaee87548250b2682affda7d05d947c05554bae`.
- Unchanged original arithmetic source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, `GRWTSK.RiemannHypothesis.CCC.pickupResponse`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa` at the predecessor pin. Its observed response for each positive integer is `if log n <= t then 2*((sqrt n)^(-1)-exp(-t/2)) else 0`.
- The finite full inventory `n=1,...,2^j` and unchanged Mobius latent coefficient are from `FiniteLabelledPickupCocycle.lean`. `actualPickupDiagonal j t` has diagonal entries `pickupResponse (i+1) t`, and `actualLabelTwoTime j s t` retains the latent source and observed response, including terminal births.
- The chosen source-specific positive Hilbert space is `ActualJoint d j=CommonHilbert d ⊕₂ LabelledState j`; the actual degree-zero CM full cycle supplies a nonzero rational Betti image under *finite-dimensional rational Betti* and *analytic path-connectedness* premises. This selected metric is basis-dependent.
- `CMActualUnitaryCausalInteraction.lean` defined the bounded two-time operator `U_j,κ(s,t)=Φ_j(t) exp(-iκ(t-s)K_j) Φ_j(s)^(-1)` with normalized genuine CM/Mobius sources and previously supplied norm bound 25 for `s,t>=0`. `CMSourceUnitaryGenerator.lean` already proves the complex-parameter Banach-algebra exponential derivative as a source proof candidate. The new work does not rewrite any of these source objects.

## Primary real-time derivation (mathematical argument independent of Lean execution)

Write `N=2^j`, `c_n=mu(n)`, `R_n(t)` for the old response, and `D_j(t)=diag(R_n(t))` on finite labelled `ℓ²`. The augmented joint state has three sectors `(geometric, latent, observed)`. For each `n>=1`, the precise birth time is `b_n=log n>=0`; the source term is zero at birth by `exp(-log(n)/2)=1/sqrt(n)`. The derivative is, for `t≠b_n`,

```
 r'_n(t) = 0           (t<b_n),
         = exp(-t/2)   (t>b_n).
```

At a birth, left slope 0 and right slope `1/sqrt n`. No global classical derivative exists there (for nonzero event coordinate). Because `R_n(b_n)=0` and the two branches meet continuously, the **distributional first derivative** has no Dirac mass. Its second distributional derivative does contain a point contribution at `b_n`, with coefficient `1/sqrt n` (before the smooth active second-derivative term).

The finite diagonal `D_j(t)` is continuous, locally absolutely continuous and piecewise continuously differentiable. In fact, each `R_n` is globally 1-Lipschitz on real time because it is constant until its nonnegative birth and, after activation, has derivative in `[0,1]`. Thus

```
 ‖D_j(t)-D_j(s)‖ <= |t-s|  (all s,t in ℝ),
 ‖D_j(t)‖ <= 2             (t>=0),
 ‖D'_j(t)‖ <= 1            (nonbirth t>=0).
```

These are **finite-labelled operator** estimates, uniform in finite `j`; they do not control the coherent signed sum over all labels. The original causal frame and its inverse have exact block matrices:

```
 Φ_j(t)     = [ I  0  0 ; 0  I  0 ; 0  D_j(t)  I ],
 Φ_j(t)^(-1)= [ I  0  0 ; 0  I  0 ; 0 -D_j(t)  I ].
```

Take the source-defined *time-independent* normalized rank-two coupling `K_j=|w_j><v|+|v><w_j|`, where `v` is the selected nonzero full-cycle Betti vector and `w_j` is the actual normalized `originalLabelledState j 0=(c,0)` with latent `mu(1)=1`. Put `L_j=-i κ K_j` and `R_j(s,t)=exp((t-s)L_j)`. From the Banach-algebra exponential derivative and the noncommutative product rule,

```
 ∂_t U_j,κ(s,t) = G_j,κ(t) U_j,κ(s,t),
 G_j,κ(t) = N_j(t) + Φ_j(t) L_j Φ_j(t)^(-1),
 N_j(t) = [0 0 0 ; 0 0 0 ; 0 D'_j(t) 0].
```

This is classical **on the complement of the finite set** `{log n : 1<=n<=2^j}`. At births, the operator is continuous, the left and right generators differ by a single latent-to-observed rank-one kick of operator norm `n^(-1/2)`, and the equation extends as an absolutely-continuous integral equation. There is **no delta-function force** in `G` itself. Exactly at a birth, choosing the zero branch for `D'_j` is only a representative of an a.e. derivative, not the unique two-sided derivative.

Writing `A:geometry→latent` for `|w_lat><v|` and `B:latent→geometry` for its adjoint, the source-specific block formula is

```
 G_j,κ(t) = [ 0    -iκ B    0 ;
             -iκ A    0      0 ;
             -iκ D_j(t) A   D'_j(t)  0 ].
```

Hence the **genuine coupling** and the **original response birth** are both present, with the correct operator order. There is no unpriced omission of `D_j(t)A`. The selected normalized `K_j` has norm 1 on its two-dimensional source span. The conservative uniform nonbirth bound follows directly: `‖Φ‖,‖Φ⁻¹‖<=3`, `‖N‖<=1`, so `‖G‖<=1+9|κ|` for `t>=0` away from births. One may use `1+18|κ|` if relying only on the existing less sharp source theorem `‖K‖<=2`; neither is an estimate of Mobius energy.

## Positive metric, signed measurement, and physical interpretation

At *every* time, including exact births, the earlier complete two-time law and the unitary interaction give the exact **moving metric** invariant:

```
 ‖Φ_j(t)^(-1) U_j,κ(s,t) z‖ = ‖Φ_j(s)^(-1) z‖.
```

This is not unitarity in the original fixed `L²` metric; response births already prevent that. In particular, the original observed signed scalar is `ℓ_j(D_j(t)c_j)=wholePickup(t)` on the specified dyadic window. The **coupled** observed readout remains `wholePickup(t)+δ_j(t)`, with squared real observation

```
 wholePickup(t)^2 + 2 wholePickup(t) Re δ_j(t) + (Re δ_j(t))^2.
```

Do not substitute a positive packet norm for the coherent source square. Neither a POVM nor a calibrated physical source-to-detector map has been derived.

## Independently sourced CERN measurement and data inventory

1. **Best existing physical two-state frequency benchmark:** LHCb Collaboration, *Precise determination of the B_s^0–anti-B_s^0 oscillation frequency*, CERN-EP-2021-047 / LHCb-PAPER-2021-005, Nature Physics 18 (2022), DOI `10.1038/s41567-021-01394-x`, CERN original at `https://cds.cern.ch/record/2764338`. It reports `Δm_s=17.7683 ±0.0051 (stat) ±0.0032 (syst) ps^-1`; combined earlier LHCb `17.7656 ±0.0057 ps^-1`. Source gives tagged mixed/unmixed proper-decay-time rates with a `cos(Δm_s τ)` term, plus exponential decay, width difference, tag dilution, time resolution and selection/acceptance effects. It is a **real empirical physical Hamiltonian/measurement comparison**, not a CM/Mobius identification. HEPData record `https://www.hepdata.net/record/105881`, Figure 3 input/combinations DOI `10.17182/hepdata.105881.v1/t1`; page returned HTTP 403 from this session, so raw points and complete covariances were NOT downloaded.
2. **CERN Open Data LHCb proper-time instructional sample:** `https://opendata.cern.ch/record/401`, DOI `10.7483/OPENDATA.LHCb.E7EJ.JUWR`; 53,948 selected D0→Kπ candidates (2014 publication). CERN masterclass guide `https://opendata.cern.ch/docs/lhcb-masterclass` explains decay-time `D0 TAU`, mass fits, background subtraction and lifetime estimation. This is an educational/preselected sample; **not** research-grade evidence of CM coupling or the full B_s mixing law.
3. **Research-level CERN CMS observation interface:** `https://opendata.cern.ch/record/31123`, Run2012B_DoubleMuParked NanoAOD-like ROOT ntuples (2024 publication); approximately 26,084,708 reconstructed event entries, 57 files. It supports testing event selection and reconstruction/measurement pipelines. Its event order/run timestamp is **not** the proper-time history of one evolving state.
4. **CERN calibration provenance:** CMS 2012 detailed luminosity record `https://opendata.cern.ch/record/cms-1054`, DOI `10.7483/OPENDATA.CMS.SJ1E.7GFW`, with pixel/hfoc luminosity and 2.6% stated uncertainty; validated-run JSON record `https://opendata.cern.ch/record/cms-1002`, DOI `10.7483/OPENDATA.CMS.C00V.SE32`. Useful for a future CMS event-count likelihood; irrelevant to identification of CM and Möbius source vectors without additional mapping.
5. **LHCb research-level access:** `https://opendata.cern.ch/docs/lhcb-getting-started` describes LHCb Run-1 DSTs and the 2026 Ntupling Service, including Run-2 data. Access to a relevant decay channel would still require specifying process, proper-time and flavour-tagging variables, selection, reconstruction, and background calibration.

### Dimensional and measurement contract, explicitly conditional

The arithmetic variable `t=log n` is **dimensionless**. A physical hypothesis must supply a nonzero time scale `τ₀` (in ps) and a source-to-physical-state map. If `τ=τ₀ t` and the `rankTwo K_j` is **independently** identified with the correctly normalized two-flavour mixing Hamiltonian `σ_x`, then the idealized, decay- and acceptance-free two-state transition law is

```
 P_mix(τ)=sin²(κ τ/τ₀)=½(1-cos(Δm_s τ)),
 κ = τ₀ Δm_s /2.
```

Choosing `τ₀=1 ps` **only for a numerical illustration** gives `κ=8.88415 ±0.00255(stat) ±0.00160(syst)`. That is **not a fitted or measured κ of this CM–Möbius model**: there is no physically identified state/measurement map, no detector POVM/transfer matrix, no proper-time/resolution likelihood, and no evidence of arithmetic birth events in the meson sample. A real physical derivation must also justify why the geometric cycle and Möbius label sector describe particle flavour dynamics, why the clock is `τ₀ log n`, and how detector effects and decay width enter the measurement law. A single meson oscillation measurement cannot establish those correspondences.

## Independent hostile checks and assurance

- The independent source-level reference `cm_birth_generator_reference.py` evaluates exact original finite label μ and response values, the block frame and its inverse, the conjugated source generator, unitary two-state coupling and composition. For scales `j=0,...,5`, times inside active cells and every birth `n=1,...,32`, **718 finite numerical assertions passed**. Central derivative comparisons deliberately exclude births and check both one-sided slopes separately. These are diagnostics, **not Lean verification**, a physical data fit, or proof of all-time claims.
- Negative controls: κ=0 recovers the old causal birth generator; the CM cycle cannot be replaced by a zero class to obtain nonzero interaction; a birth has two distinct one-sided derivatives; a two-time unitary interaction does not imply fixed-metric unitarity of the full source shear; the CERN physical clock cannot silently be equated with the dimensionless log-integer clock. No RH / GRH implication or Schwartz-to-periodic smoothing follows.
- New Lean source candidates are `CMActualPickupBirthDerivative.lean` (two smooth scalar cells plus finite source slope operator), `CMRealTimeGeneratorAlgebra.lean` (generic noncommutative derivative and inverse-frame return under explicitly supplied real-time differentiability inputs), and `CMActualRealTimeGenerator.lean` (complete source-specific generator, moving-metric conservation, and conditional HasDerivAt return).
- **Critical open formalization gates:** clean Lean elaboration; theorem-type and import audit; fresh kernel checking and transitive axioms; formal strong-operator differentiability of the finite labelled diagonal away from all births (from the scalar coordinate lemmas); the real restriction of the existing complex exponential derivative to the concrete operator family; one-sided birth derivative and absolutely continuous/global integral equation. These are **NOT_RUN / NOT_YET_DISCHARGED**, and no axiom or `sorry` is to be introduced as a substitute. The physical calibration and measurement-law identification are separate research premises and have NOT been established by any CERN record reviewed here.

Nearest prior analytic ingredients are elementary causal switch-on response derivatives, Banach-algebra product rules, and interaction-picture conjugation. No theorem-level originality beyond the particular source comparison has been assessed. Publishing a source candidate is separate from mathematical acceptance and CERN experimental validation.
