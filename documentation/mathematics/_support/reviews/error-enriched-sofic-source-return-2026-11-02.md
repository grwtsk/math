# Certified sofic words carrying complete signed source defects

Local attribution: **grwtsk contributors**. Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Date: 2026-11-02.

**Status:** finite ordinary-mathematical argument, three authored pinned-Lean SOURCE_PROOF_CANDIDATES; compilation, expected types, independent kernel replay, transitive axiom audit NOT_RUN; no native runner or Noe diffusion job dispatched. Finite preflight is not Lean evidence. No global sofic language-completeness, nonlinear Möbius Navier–Stokes PDE covariance, RH, or arithmetic cancellation theorem is claimed.

## Exact sources and the consumer

Initial inspected `grwtsk/math/main`: `e85112107f5f56b1f9ecbf5e1a892c6e186fab2b`. Existing subject files with their observed Git blobs at this snapshot:

- `GRWTSK/Combinatorics/GraphTheory/SearchSoficLanguage.lean`, `0408948886533c87debacc0e537c3234469ae702`. The actual `LabeledSandwich` gives nested certified/candidate/admissible labeled transitions. `WordPath` and `AcceptsFrom` preserve the **complete finite word** and state path; `CandidateLanguageCompleteUpTo` is relative to a finite depth and does not infer that the true mathematical language is finite-state.
- `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicSourceIntegration.lean`, `21c602ba8f6b8f1611e2c90d45d9aed3e70f7454`. The actual periodic trace ledger retains **both** unlifted-label and surplus-lift counts; unverified graph-to-matrix equality is not assumed from common terminology.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhysicalMoebiusBitGramReturn.lean`, `67cbc92ee2dec824d0a5c2930f0f45671dad61a9`. `pickupCross_eq_observed_add_defect` is an exact identity for **every** indexed stream. Actual `observedPacket_transfer` and `signedReadoutDefect_transfer` are separate signed and source-preserving Gödel-chart transfer theorems.
- `GRWTSK/PartialDifferentialEquations/PeriodicNavierStokesPortCovariance.lean`, `335b3913575cca11fd0292cc24075324f2859ca9`, and `PeriodicNavierStokesSolutionTranslation.lean`, `3eeee9fa13baa5ac2c1b3c6cd1f263a061f76282`. Real spatial translations preserve the complete velocity-pressure-forcing residual, divergence, smoothness and forcing jet-decay requirements. The sphere is an immutable sample-port source and does not replace the torus fluid domain.

The downstream research consumer is **source-bound search with a quantitative, independently inspectable certified path**. This extends the old existence-of-word result with a dependent signed defect and its actual allowance, without replacing any source graph. It can be fed to future Noe extraction and verification; current search diffusion remains an **exploratory, not proof-certifying** procedure.

## Main finite theorem and primary argument

Take `M : DefectSoficSystem Vertex Label`, with true certified edge predicate `M.sandwich.lower`, observation `O : Vertex → ℝ`, edge defect `d : Vertex → Label → Vertex → ℝ`, and allowance `b : Vertex → Label → Vertex → ℝ`. The substantive hypotheses are, **for every certified edge** `x -[l]-> y`, the *actual* equation `O(x)=O(y)+d(x,l,y)`, `b(x,l,y)≥0`, and `|d(x,l,y)|≤b(x,l,y)`. The candidate/admissible edges have no such premise.

The new indexed `CertifiedTrace M x word y D B` retains the entire ordered word, all intermediate certified transitions and exact accumulated values `D=Σ d_i` and `B=Σ b_i`. Its constructors are zero-length identity and edge cons. `CertifiedTrace.exact_and_bounded` is proved by induction on this trace:

    O(x)=O(y)+D,       0≤B,       |D|≤B.

The induction step uses `O(x)=O(mid)+d₀`, its tail return, and the real triangle inequality. `certifiedErrorLanguage_iff_lowerAccepted` proves exact equality of the new certificate language with the original certified lower word-language (NOT candidate or upper language). `CertifiedTrace.append` gives exact concatenation with `D=D₁+D₂`, `B=B₁+B₂`; `CertifiedTrace.allowance_le_length` establishes `B≤length(word)*ε` when every **certified** edge allowance is at most ε. All states and labels remain typed, including repeated labels and cycles; no sum of the absolute signs is used to replace the signed source.

`SourceAnchored` adds the fixed original observation `S(x)`, representation `encode(x)`, and **preexisting paid** defect `e(x)` satisfying `S(x)=O(encode(x))+e(x)`, `|e(x)|≤initialAllowance(x)`. For any certified word starting at this encoding, `SourceAnchored.path_return` proves

    S(x) = O(y) + (e(x)+D)
    |S(x)-O(y)| ≤ initialAllowance(x)+B.

Only when **both allowances are proved zero** does `SourceAnchored.exact_of_zero_budget` return the original observation exactly. An arbitrary `e(x)` is never declared zero.

## Concrete arithmetic and PDE instances

**Möbius**: `MoebiusSoficDefectLanguage.lean` uses vertices `(chart : ℝ, original-index PhysicalStream)` and real shift labels `s`; its certified edge is *literally* `target.chart=source.chart+s` and `target.stream=transferStream s source.stream`. The source is the original `pickupCross T`; the initial residual is the previously defined `signedReadoutDefect p 0 T stream`; the observed packet is `observedPacket`. The imported source theorem proves the initial equation, and `observedPacket_transfer` proves zero cost of each true chart shift. The canonical two-bit `encodedStream` has zero **initial** defect by the old source theorem; hence any certified chart word recovers the whole signed ordered pickupCross. Missing or wrong-index records remain an observable nonzero **initial** defect, not incorrectly identified with arithmetic μ=0. No new cancellation bound is supplied.

**Periodic Navier–Stokes**: `PeriodicNavierStokesSoficPort.lean` uses vertices `(PDEData, GeometricPort)` and real 3-vector translation labels. A certified transition translates *both* full fields and source-indexed port anchor. All eleven scalar probes (three velocity, pressure, three force, three PDE residual, divergence) are drawn from the existing `FluidReadout`. `observation_translation` proves simultaneous full packet invariance; consequently the exact certified trace has zero transport budget. `certified_word_preserves_every_probe` uses the **same certified WordPath** for each probe, preserving source index and geometry. The existing `SmoothPeriodicSolution` theorem yields zero residual/divergence for actual smooth solutions at nonnegative port times; it is not a global existence proof.

## Hostile cases and semantic boundaries

1. A *candidate-only* edge cannot be given a zero-cost certified witness. In a two-vertex illustrative graph with `O(0)=5`, `O(1)=0`, a candidate edge `0→1` and no certified edge, a fabricated cost `0` contradicts the readout difference `5`. The strict lower/middle/upper distinction is necessary.
2. A real-valued translation alphabet is **not finite** and therefore these instances do not establish a finite-alphabet sofic presentation. `CertifiedTrace` asserts only finite-word validity. A genuine complete sofic language additionally needs an explicit finite alphabet/graph, exact language equality, and a coverage theorem for all relevant source trajectories. Noe's current finite repository search graph is an index-relative navigation presentation; its `certified` relation initially has no checked semantic source.
3. Unlifted and surplus periodic-word counts in `SoficPeriodicSourceIntegration` do not automatically equal real observation defects. Any cross-comparison needs an actual source-index map, sign/units and a proved ledger conversion.
4. The zero-cost Möbius *chart* shift is an observer-bits invariance result, not Möbius-number cancellation; the original squarefree zeros and both ordered cross orientations remain.
5. The fluid certified translation is a flat-torus Euclidean isometry. A nonlinear Möbius map of physical coordinates would change geometric differential operators and requires its own Jacobian and metric/connection covariance. The displayed `S⁴→T³` torus projection is neither an isomorphism nor a general fluid solution operator.
6. The CHSH classical bound checks a limited collection of deterministic binary probes, not the continuous PDE residual, semantic theorem equivalence, or a proof certificate. The separate OpenAI forced-breakdown theorem is not imported or transported.
7. Finite path bound `B≤length(word)*ε` cannot be used for unbounded path families without uniform control on word length or independent cancellations. Exact source reconstruction does not imply RH or globally controlled Navier–Stokes energy.
8. The Yoneda comparison is conceptual: the full Yoneda embedding involves **all** representable hom functors and is faithful; an incomplete finite probe set or arbitrary source-indexed feature map is not thereby a fully faithful Yoneda embedding.

## Verification, distinct evidence and next proof

The independent finite Python fixture enumerates 34 certified paths and additional concatenations in a small exact-rational graph, checks the signed telescoping/source-anchor/allowance equations, refutes a candidate-only fake zero-cost edge, checks finite original Möbius source-vs-observed Gram defects and periodic ABC simultaneous spatial shift at selected points. These finite assertions and source scans do not compile Lean or verify full-periodic PDE equations.

To certify, reconstruct the actual import closure using current `leanprover/lean4:v4.34.1` and Mathlib pinned by the chosen math commit. Compile all three added modules with warning-as-error and `--trust=0`, inspect elaborated theorem types, run a fresh independent kernel replay, and audit *every* transitive axiom/sorry/unsafe dependency. Bind receipts to **published** commit and module Git blobs; do not inherit receipt acceptance from old sources. No native verification run is requested or claimed here.

**Next substantive supplier:** construct a finite, source-complete graph of *checked instantiated proof applications* and prove a semantics-preserving extraction (including original hypotheses and numeric defect tags) from actual Lean declarations to the certified relation. Then compare the generated certificate language with the original mathematical source language under an explicitly named finite scope. Until those suppliers exist, the new theorem is a bounded, source-faithful composition rule, not corpus-wide certified soficity or analytic completion.
