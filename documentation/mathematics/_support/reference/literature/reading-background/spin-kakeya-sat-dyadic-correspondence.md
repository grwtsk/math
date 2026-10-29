# Spin / Kakeya / exact-SAT correspondence for the dyadic pickup

Local mathematical attribution: grwtsk contributors.
All source pins below refer to openai/math commit
7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a. Native/comparator replay: NOT_RUN.
The two local Lean modules and their exact publication blobs are enumerated in
`docs/verification/NumberTheory/Moebius/PickupSpinCutComparison/verification.toml`.
The central `paper-to-formalization-references.md` was not overwritten or
truncated. Its cross-reference to this additive supplement remains pending.

## QAOA / spin-glass optimization

Title: *QAOA attains the SK ground-state energy in the thermodynamic-first limit*.
Byline/attribution: OpenAI, as recorded by the existing repository literature
entry. Version: September 25, 2026. Stable source:
https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/QAOA-attains-the-SK-ground-state-energy-in-the-thermodynamic-first-limit-September-25-2026/build/sections/01-introduction.tex
Introduction blob: 453caa0efc98c73518eb85f3c05bf03743b22e8b.
Scope note: lean/docs/281.md, blob 485fb111fff726999fa12dc47c2ce4431f9d2299.
Actual solution: lean/OAI/Probability/SKValue/Main.lean,
blob 0fcd7ca01b0f99b90f579f69a7bed99074bcdd99,
`OAI.SKValue.value_consequences`.
Comparator selection: lean/ComparatorChallenges/SKValue.json,
blob e290607e35b114e0c4cda5f1bf1a12f2cb315957.

Exact distinctions: iid standard Gaussian couplings, covariance t^2/2,
n^(-1/2) unordered-pair Hamiltonian, per-spin limiting optimum, deterministic
finite words before the thermodynamic limit. Selected Lean value statements
require IsMinimizer and, where used, IsDiffusion. The selected theorem does not
state circuit-energy convergence or minimizer existence.

Local application: reuse existing SpinCutEnergy.spin/cutIndicator and actual
causal Gram nonnegativity. New fully qualified declarations include
GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison.cross_eq_absolute_sub_twice_sourceCut,
.source_return_exact, .averaged_source_return, .better_cut_gives_lower_energy,
.signedUpper_slack_eq_cut_credit and .dyadicBirthBound_iff_source_half_cut
(all abbreviated suffixes refer to that full namespace).
No SK distribution theorem is imported. Missing transport: actual weighted
arithmetic source versus Gaussian/tree model, phase/sign/normalization costs,
source assignment versus optimized/circuit-sampled assignment, and quantitative
uniformity sufficient for the combined signed return.

## Kakeya / local smoothing

Title: *Local smoothing for the Euclidean wave equation*. Repository: OpenAI;
version October 25, 2026. Individual manuscript byline not separately inspected;
no individual authorship is invented. Stable manuscript location:
https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/Local-smoothing-for-the-Euclidean-wave-equation-October-25-2026/paper.pdf
Scope note lean/docs/079.md: e6ea535832d6dfef60c539a2e0537b560c1b7108.
Inspected actual solution lean/OAI/Analysis/Fourier/LocalSmoothing/Comparator.lean:
6def181857b8148d9dbaed288876a225ca9ddbfb.
Selected theorem:
OAI.Analysis.Fourier.LocalSmoothing.Comparator.kakeya_maximal,
proved there by OAI.MeasureTheory.Kakeya.kakeya_maximal.
Comparator JSON: 88c1e1c3368f66f9d64206a2b166a89bc87b4f9b.

Exact hypotheses: fixed dimension d>=2, every eta>0, 0<rho<=1, MemLp f d;
the conclusion is an L^d sphere-norm estimate with rho^(-eta) loss and the
input L^d norm. It is not pointwise directional control or a uniform-in-d
estimate. The formal source is inspected, not independently accepted here.
Local application: GRWTSK.NumberTheory.Moebius.PickupScaleTransport.radius_loss,
.dyadicBirthBound_of_radius_allowance and .dyadicBirthBound_of_depth_radius_rates.
These are elementary scale transfers, not a local import of the analytic
Kakeya theorem. Missing bridge: an actual source-derived geometric readout with
all input, discrete sampling, multiplicity, support and return costs paid.
The existing GRWTSK FiniteStraightTubeProjectiveVolumeCorollary retains a
separate physical off-diagonal overlap premise; its volume lower bound alone
is not the required signed arithmetic upper bound.

## Exact bounded-width SAT counting / ETH

Title: *The Exponential Time Hypothesis is False*. Repository: OpenAI;
version October 25, 2026. Individual manuscript byline not separately inspected.
Stable manuscript location:
https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/The-Exponential-Time-Hypothesis-is-False-October-25-2026/paper.pdf
Scope note lean/docs/378.md: 223bbe187394bffca8a2c7ba1656538bfba26e3b.
Main import module lean/OAI/Algorithms/SubexponentialSAT/Main.lean:
607d4b32d307a43046405499822c83d293043cfd.
Actual theorem source lean/OAI/Algorithms/SubexponentialSAT/SqrtLogSpace/Final.lean:
a69635a2492e06a26f2e33d4251edd1e21ba3332.
Selected theorem: OAI.Algorithms.SubexponentialSAT.SqrtLogSpace.exact_count_and_sat.
Comparator JSON: d4cc9e7074e900c1aa6371151cfd234c121a0b82.

Exact hypotheses: fixed k>=2, canonical CNF on Fin n of width at most k; running
time retains formulaBitLength and n; the output is the exact count and decision,
with a bound on visited tape cells at every execution prefix. The formal
scope's square-root-log bound is not replaced by the sharper manuscript bound.
Local declarations: GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison.cutCNF,
.cutIndicator_eq_cnf, .weightedCNFCut_eq and .cross_eq_weightedCNF.
Missing bridges: source-label/weight-certified encoding, complete bit/variable
cost, certified real-weight evaluation, and a mathematical all-scale estimate.
Exact counting or fast optimization is not a bound on the count or on X.
The existing BooleanClauseCounting/ClauseIndexedDyadicThreshold results remain
finite counting/equality transports, not a complexity-to-zeta theorem.

## Classification and acceptance

Imported mathematics: existing GRWTSK and Mathlib finite arithmetic source,
Boolean spin algebra, quadrature and dyadic consumers. No OAI theorem is an
active local import. New kernel-verified bridges: NONE claimed. New source proof
candidates: all declarations in the two modules listed in the manifest.
Conditional interfaces: the displayed radius/depth growth suppliers remain
explicit. Finite evidence: separately labeled exact fixtures, 80-digit actual
pickup diagnostics and lexical checks; no asymptotic evidence or interval
certificate. Analogy only: deterministic pickup as an SK disorder realization.
Unresolved arithmetic: SourceCutHalfBound / DyadicBirthBound. All complete local
and upstream native/comparator commands are NOT_RUN, exits unavailable, durable
receipts unavailable. Historical acceptance stays bound to its original bytes.

Required external upstream checks at the pinned checkout (not dispatched):
`lake env comparator ComparatorChallenges/SKValue.json`,
`lake env comparator ComparatorChallenges/LocalSmoothing.json`,
`lake env comparator ComparatorChallenges/SubexponentialSAT.json`.
Use each checkout's exact pinned toolchain; do not migrate grwtsk/math to run
these. Never import admitted ComparatorChallenges statements as proof suppliers.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c0f095efec931b4fcda3798f83cb9c7b4c75a0a3412c3a3931c857ec8310e0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
