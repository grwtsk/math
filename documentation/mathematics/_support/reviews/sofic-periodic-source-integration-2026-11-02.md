# Connecting the exact sofic periodic-point source graph

Local attribution: grwtsk contributors. Review date: 2026-11-02.
Classification: mathematical SOURCE PROOF CANDIDATE and inspectable source comparison; not native Lean acceptance.

## Abstract

For a finite original label-indexed graph with exact equality of its WHOLE
finite-word language to a specified shift language, positive-period label
blocks are admitted exactly when an actual original closed based walk emits a
bounded positive number of complete copies. The required multiple is at most
the number of original graph states; no one-period lift is assumed. Counting
distinct admitted blocks by either these ORIGINAL cycle witnesses or the
positive trace of exact source word-transition matrices gives the same
natural number. The original all-label adjacency trace instead counts based
graph cycles with multiplicity. A source-determined canonical map and its
two defect counts provide the correct reconciliation, including any
source-certified graph-to-matrix target. This connects the finite symbolic
dynamics chain but supplies NO independent arithmetic cancellation, analytic
zeta divisor identification, or Fredholm limit theorem.

## 1. Statement and source identity

This composition is pinned to source commit
[6cf755943e01ee7e9438cbb9eb058832262bd503](https://github.com/grwtsk/math/commit/6cf755943e01ee7e9438cbb9eb058832262bd503):
new module [SoficPeriodicSourceIntegration.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicSourceIntegration.lean),
exact blob 21c602ba8f6b8f1611e2c90d45d9aed3e70f7454.
The module imports the real prior proofs in
SoficPeriodicMultipleLift, SoficExactPeriodicTraceLedger and
SoficMatrixCertifiedTransversal. No graph, language, edge predicate,
original LabeledWalkData, period definition, word matrix, or defect
ledger was redefined. For any original G, alphabet and vertex sets
are explicitly finite; language word iff GraphLanguage G word is
required for EVERY finite word; and n is positive. A one-sided
periodic block has period DIVIDING n, not necessarily minimal n.

The selected root environment is Lean 4.34.1 (lean-toolchain blob
ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5) and pinned Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612
(lake-manifest blob c8044c56be77c58e6f41cca024b25237c59e8c79).

## 2. Directly connected Lean mathematical sources

The following are direct imports, transitive imports or exact source
comparisons consumed by the new integration. The blob identities were
read from the pinned original main snapshot and the immutable new source.

| Source | Blob prefix | Exact role |
|---|---|---|
| [ExactSoficLanguageCover.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean) | f50489eaf6c7 | Original labeled edge relation, WordPath, GraphLanguage, exact full-language presentation, and suffix capacity |
| [SoficLanguageTransversal.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficLanguageTransversal.lean) | 238da905b659 | Certified source/target coverage of all finite words with actual endpoints |
| [SoficPeriodicMatrixTrace.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMatrixTrace.lean) | 70e416083e8f | Original LabeledWalkData, basedCycleWord, repeatBlock, PeriodicLabelPoint, adjacency and recurrence |
| [SoficBasedCycleCard.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBasedCycleCard.lean) | d7fd2f5aad64 | Actual nil/snoc path finiteness, exactBasedCycleCard, and trace equals based-cycle count |
| [SoficPeriodicFiberLedger.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicFiberLedger.lean) | becfa9cfddb8 | Actual lift-fiber count, unlifted label count, surplus graph lift count, and signed compensation |
| [SoficCycleLabelBijection.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCycleLabelBijection.lean) | bd1ba53939ed | Canonical label-map criteria: admissibility AND faithful word labels AND same-period coverage |
| [SoficPeriodicRunFullShift.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicRunFullShift.lean) | 265aa4180f41 | Run-to-block soundness and nonvacuous one-state full-shift bijection for all positive periods |
| [SoficCycleRepetitionFromWalk.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCycleRepetitionFromWalk.lean) | 00263005b2f4 | Repeat the original cycle states/labels with exact modular seam and period |
| [SoficExactPeriodicTraceLedger.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficExactPeriodicTraceLedger.lean) | b3f5b7ce5e0b | Source-determined canonical cycle map; exact trace plus missing equals points plus surplus |
| [SoficCycleRepeatBridge.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCycleRepeatBridge.lean) | a05e7d4527b6 | Original WordPath from snoc data; literal finiteCopies, closed-path repetition and factor accounting |
| [SoficFiniteRepeatClosure.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficFiniteRepeatClosure.lean) | e8d8dcc01f4e | Finite-list arbitrary-offset cyclic factor bridge and exact-language cycle map |
| [SoficPeriodicWordMatrix.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicWordMatrix.lean) | d8f0423d8b87 | Exact wordLiftMatrix, word-resolved graph trace, bounded periodic criterion interface |
| [SoficMacroBoundaryPigeonhole.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficMacroBoundaryPigeonhole.lean) | fde86d048d89 | Original q+1 block boundaries, duplicate state, and closed subpath with 1 <= m <= q |
| [SoficWordPowerClosedPath.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordPowerClosedPath.lean) | fc3842103f18 | Original word-labeled block chains and matrix-power positivity iff original closed WordPath |
| [SoficBoundedWordMatrixCriterion.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBoundedWordMatrixCriterion.lean) | 3be4fc0e7b95 | Full periodic factor condition iff bounded positive exact word-matrix trace |
| [SoficPeriodicMultipleLift.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMultipleLift.lean) | ece978c7389c | Return a bounded closed word^m path to original BasedCycleData length m*n and exact Fin.repeat label word |
| [SoficMatrixCertifiedTransversal.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficMatrixCertifiedTransversal.lean) | 6fe56e27333b | Certified graph-to-matrix relation preserving the based-walk trace, not a periodic-label bijection |
| [SoficPeriodicSourceIntegration.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicSourceIntegration.lean) | 21c602ba8f6b | New source-exact iff, distinct original closed-word count, corrected word-matrix and certified-matrix returns |

The upstream source [CertifiedTransversal.lean](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean)
(blob df720cbb72c616938635c20477430f5f0ded4021) supplies the
single source/target relation discipline used by the whole-language and
graph-to-matrix transversals.

The two principal branches are:

1. Original graph to source-based counting:
   ExactSoficLanguageCover -> SoficLanguageTransversal ->
   SoficPeriodicMatrixTrace -> SoficBasedCycleCard ->
   SoficPeriodicFiberLedger -> SoficCycleLabelBijection ->
   SoficPeriodicRunFullShift -> SoficCycleRepetitionFromWalk ->
   SoficExactPeriodicTraceLedger.
2. Original graph to bounded word witnesses:
   SoficCycleRepeatBridge -> SoficFiniteRepeatClosure ->
   SoficPeriodicWordMatrix -> SoficMacroBoundaryPigeonhole plus
   SoficWordPowerClosedPath -> SoficBoundedWordMatrixCriterion ->
   SoficPeriodicMultipleLift.

SoficMatrixCertifiedTransversal separately fixes the only permitted
graph-to-matrix relation: the original finite based-walk trace. The
new SoficPeriodicSourceIntegration is a consumer joining all three
branches. Import edges are not themselves claims of new equivalence;
the theorem declarations and their hypotheses establish the links.

## 3. Proof of the new bounded original-cycle iff

Fix a genuine period-n block a : Fin n -> Alphabet, n>0. Its complete
periodic-factor condition is that EVERY observed finite factor of
repeatBlock hn a belongs to language. The existing sharp bounded
word-matrix criterion gives a positive power trace for the exact
wordLiftMatrix G (List.ofFn a), at some 1 <= m <= card State.
The original word-power closed-path bridge reconstructs a closed
WordPath with m literal copies of the original word. The already
published period-multiple lifting theorem returns this to the
ORIGINAL BasedCycleData G (m*n), preserving every intermediate state
and label, with exact basedCycleWord equality Fin.repeat m a.

Conversely, suppose such a based cycle exists. The original
wordPath_of_labeledWalkData converts its ORIGINAL inductive path to
an original WordPath. The original full word list is exactly the
List.ofFn of its basedCycleWord; after the supplied word equality,
the resulting closed path spells precisely finiteCopies (List.ofFn a) m.
The word-power theorem therefore gives positive exact word-matrix
power trace. The already proved reverse direction of the bounded
word-matrix criterion returns EVERY finite factor of repeatBlock hn a
to the specified source language. Neither direction changes a
letter, invents a state, forgets multiplicity, or assumes m=1.

The published theorem declaration is
SoficPeriodicSourceIntegration.periodic_block_iff_bounded_original_cycle.

## 4. Count comparison and exact defect return

Define B_n as the sum over DISTINCT Fin n label words, assigning one
exactly when the word has at least one original closed cycle at
some multiplier 1 <= m <= card State. This is
boundedOriginalCycleWordCount G n, not the total number of graph
cycle witnesses. Using the iff above in Fintype.card_subtype,
the new periodic_label_card_eq_bounded_original_cycle_count gives

    B_n = card (PeriodicLabelPoint language n hn).

The previously published
periodicLabelPoint_card_eq_boundedWordCount_proof already identifies
this genuine label-point number with boundedPeriodicWordCount G n,
computed from positive powers of actual exact word matrices.
Therefore original_cycle_count_eq_bounded_word_matrix_count gives
B_n = boundedPeriodicWordCount G n.

By contrast, the actual all-label adjacency A_G satisfies
trace(A_G^n) = card (BasedCycleData G n): it counts EVERY based
closed path, even if multiple paths emit the same word. The
canonicalCycleMap sends each such path to its true period-n label
point without needing the map to be bijective. With U_n the
number of unlifted label points and S_n the number of surplus
graph lifts, the original finite lift-fiber ledger gives exactly

    trace(A_G^n) + U_n = B_n + S_n
                         = boundedPeriodicWordCount G n + S_n.

The new adjacency_trace_with_defects_eq_original_cycle_word_count
and adjacency_trace_with_defects_eq_word_matrix_count are the
source-exact composed declarations. Their equality criterion is
precisely U_n=S_n, not one-to-one cycle labeling. The new
certified_graph_matrix_periodic_ledger extends the same corrected
identity to every M satisfying the original GraphMatrixRelation G M.
No arbitrary matrix similarity or inverse graph decoder is assumed.

## 5. Hostile controls and the irreducible boundary

The original duplicate-loop graph has two length-one based lifts
for its single period-one label point. The alternating-state graph
has a period-one label point but zero length-one closed lifts;
a length-two original closed lift exists and emits the same repeated
Unit letter. Both graphs present the identical complete one-letter
finite-word language. Thus full language equality does NOT imply
same-period bijection, equal graph traces, or equal graph zeta data.

A further two-state, two-symbol graph with 0-loop labels preserving
states and 1-label edges toggling states has period-one graph-cycle
trace 2 and exactly two periodic labels, yet one periodic label has
zero same-period lifts and the other has two. Therefore U_1=S_1=1:
numerical equality alone does not imply bijection.

Independent finite reference check: all graphs on 0, 1 or 2 states
with two labels (261 graphs), positive periods 1..4 (1,044
graph-period cases and 7,830 candidate periodic words). A
subset-and-phase finite automaton checked ALL factors of each
infinite periodically repeated word; exact source edge enumeration
and original word-matrix path counts were separately compared.
There were 5,312 admissible words, including 96 whose least
closed-lift multiplier was 2; 66 graph-period cases had missing
same-period lifts and 630 had surplus lifts; 14 cases balanced
nonzero defects and had equal numeric counts despite nonbijectivity.
All bounded original-cycle iff and defect compensation tests passed.
The independent scratch script is not a Lean certificate.
Script SHA-256:
4b6506afea2f6ec81d7dfe7a920896804b661903c8d9da0e62f1020ff97b1a9f.

## 6. Sources with related terminology but no proved transport

These sources were discovered in the current repository inventory.
They are related background or neighboring research, NOT prerequisites
sufficient to carry the new finite theorem into a different domain.

| Adjacent source | Blob prefix | Why this is not yet an implication |
|---|---|---|
| [CertifiedTransversal](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean) | df720cbb72c6 | Nonvacuous source-target bridge and independently proved coverage directions; upstream of the exact sofic transversal |
| [PeriodicPts](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/PeriodicPts.lean) | 6c765b5f701a | General Function.IsPeriodicPt and minimal period; not identified by a theorem with PeriodicLabelPoint |
| [SymbolicDynamicsBasicPublic](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicPublic.lean) | a5cecafff31a | General topological subshift and languageOn; no source-exact equality with this finite graph shift established |
| [SearchSoficLanguage](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/Combinatorics/GraphTheory/SearchSoficLanguage.lean) | 040894888653 | Labeled sandwich and graph-search language relation; not the actual exact graph of the present theorem |
| [DynamicSoficSpectralCover](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/NumberTheory/DynamicSoficSpectralCover.lean) | 8a145154af4c | Separate sofic spectral graph and partition factorization; no graph-to-original periodic-word bridge |
| [DynamicSoficExactLanguageBoundary](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/NumberTheory/DynamicSoficExactLanguageBoundary.lean) | 79680df7f55b | Rooted singleton-prefix language, not the full unrooted finite-factor language |
| [BombieriDynamicSoficCoverBoundary](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/BombieriDynamicSoficCoverBoundary.lean) | cd6b582fdef2 | Finite moment-only source-information-loss obstruction; not a periodic point count |
| [ChowlaSoficObservations](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ChowlaSoficObservations.lean) | c9c489187df8 | Finite arithmetic-labeled observation paths; no integer cancellation transfer from a finite sofic walk |
| [SoficDivisorPrimeCountingBridge](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SoficDivisorPrimeCountingBridge.lean) | a99da47ae907 | Indexed finite zero records with explicit multiplicities, not the complete analytic zero divisor |
| [SoficDivisorPartition/Transforms](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SoficDivisorTransforms.lean) | 839e1c51cf9e | Selected/rejected finite record transforms; missing analytic divisor and limit comparison |
| [PoeticSoficLanguage](https://github.com/grwtsk/math/blob/6cf755943e01ee7e9438cbb9eb058832262bd503/GRWTSK/DynamicalSystemsAndErgodicTheory/PoeticSoficLanguage.lean) | 7d4a57445115 | A typed validated example walk, not equality of its complete factor language or periodic cycles |

In particular, a rooted singleton-PREFIX language and a whole
finite-FACTOR language are not interchangeable. A dynamic spectral
partition, abstract sofic graph or arithmetic observation label
would need a separately proved edge/word/source map, fixed period
and multiplicity conventions, full-language coverage and its
observation comparison before it can consume the present theorem.

A finite graph trace is not a Fredholm determinant, an actual
zeta-zero divisor or a bound on an original signed Möbius
energy. The optional sofic local-to-global and operator-return
research contracts remain separately OPEN in
[math issue 121](https://github.com/grwtsk/math/issues/121)
and [math issue 108](https://github.com/grwtsk/math/issues/108).
Do not promote this graph combinatorics to RH, an Euler product,
contour zero-counting or quantitative arithmetic cancellation.

## 7. Verification, provenance and next obligations

The mathematical argument and the complete new source were inspected.
The source is published and exact immutable Git blob readback was
confirmed; a manual no-sorry/no-new-axiom scan was made on the new
module. The environment has no available Lean, Lake, or verified
authorized Noe project checkout. At the new source commit, GitHub
reports zero check runs and zero combined statuses. Therefore
compilation, full expected-type/universe checks, fresh trust=0
kernel replay and complete transitive axiom audit are NOT_RUN.
No worker dispatch, host activation, queue mutation, publication
to another repository or complete imported-closure certification
is claimed. Toolchain identity alone is not a replay receipt.

The newest source and all required direct dependencies are pinned in
the adjacent static verification target:
sofic-periodic-source-integration-2026-11-02.json.
No broad root import was added. The next formal acceptance step is
a managed exact-source Lean 4.34.1 compilation of the complete module
import closure, followed separately by expected interfaces, fresh
kernel replay, transitive allowed-axiom audit and recorded host
restoration. If a source proof fails elaboration, repair that exact
source and re-pin its dependents; do not represent the present
script as a kernel-verified result.

The independent next MATHEMATICAL questions are graph-specific
criteria for faithful same-period lifts, conjugacy to a standard
topological Subshift, and—where a separate analytic source is
specified—a source-preserving quantitative return. None is supplied
by the integration itself.


### Later concurrent source extension (not part of the pinned proof closure)

After source commit 6cf755943e01ee7e9438cbb9eb058832262bd503,
the separate main commit [6d04ccba](https://github.com/grwtsk/math/commit/6d04ccba82c761497e5a2f79577359d7377fea02)
added the theorem finiteSeedWalkCount_eq_matrixPowRowSum to the ORIGINAL
SoficPeriodicMatrixTrace.lean. Its revised blob is
044644b345b46c90d82dffde6c7485d617b4fbd9, versus
70e416083e8fd1238ffdd8896f984e0a5382c139 at the pinned
integration source revision. This is a genuine endpoint-wise
finite-seed walk-count/matrix row-sum consequence and relates to
occurrence-faithful source search, NOT to counting distinct periodic
label points. The added corollary does not modify the named graph,
word, period or matrix definitions used above. Verification of the
later modified module requires its OWN exact-source compilation,
replay and axiom receipt; the earlier pin cannot certify changed bytes.

## 8. Revision and record

Authoring: grwtsk contributors. Source revision:
6cf755943e01ee7e9438cbb9eb058832262bd503. Core source identifier:
SoficPeriodicSourceIntegration.lean, blob
21c602ba8f6b8f1611e2c90d45d9aed3e70f7454.
Earlier review notes remain historical snapshots and are not
retroactively reclassified as accepted. Tracking issue:
[math #1576](https://github.com/grwtsk/math/issues/1576).
