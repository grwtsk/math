# Exact finite certified-path optimization and the unbounded error infimum

Local mathematical attribution: **grwtsk contributors**. Date: 2026-11-02.
Mathematical construction and source formalization: grwtsk contributors; formalization assistance: ChatGPT.

**Status:** analytical finite-catalogue comparison with a Lean **SOURCE_PROOF_CANDIDATE**. Compilation, fresh kernel replay, expected-type check, transitive axiom audit, runtime refinement: **NOT_RUN**. An independent non-Lean reference calculation has passed; it is not a Lean proof receipt.

## Goal and actual inputs

`CertifiedSoficOptimalBudget.lean` defines `CertifiedAllowanceSet M source target`, the REAL allowances of **all original certified lower-relation words** from a fixed source to target, and `optimalCertifiedBudget` as the conditional infimum when at least one such path exists. Its source blob in the inspected tree was `9f782e53cdc13b1a1c8ef2f6cf2c85c1b63854fa`. The quantitative base is `DefectEnrichedSoficLanguage.lean`, blob `f0436ae18dd786e312a4966b27b2edc51e3d7fa1`, with `CertifiedTrace.exact_and_bounded`, `CertifiedTrace.append` and `SourceAnchored.path_return`. The source family `CheckedApplicationSoficBridge.lean`, blob `7cf8b5905fae6cd828b3dc65145529635cc605e2`, binds genuine theorem applications to certified words; this new optimizer does **not** manufacture those proof applications.

An arbitrary finite-state graph has infinitely many finite walks when there are cycles. Finiteness of vertices/labels alone therefore does not justify replacing the complete certified infimum with the minimum of a finite sample. Also, the existing allowances are REAL values; an executable exact comparison of arbitrary real numbers cannot simply be asserted. The new finite optimizer avoids both shortcuts.

## Primary mathematical argument

1. `RationalCertifiedRoute M source target` retains one **actual certified trace**, its complete ordered word, signed real defect `d`, real allowance `b`, exact rational price `q`, and the **proof** `((q : ℝ) = b)`. A bare numerical route or candidate edge does not inhabit this structure.
2. `chooseCheaper` compares the rational prices and returns **one of its actual input records**. `minimumFrom first rest` recursively selects a least-price record; `optimizeFinite? [] = none` prevents treating no route as cost zero. Source proofs `minimumFrom_le_first`, `minimumFrom_le_member` and `minimumFrom_origin` make the selection and exact custody explicit.
3. `FiniteStateCoverage M source target` requires finite vertex and label types, a length cutoff no greater than `Fintype.card Vertex`, a nonempty list (`first :: rest`) of rational certified routes **each with word length at most the cutoff**, and TWO nontrivial separate hypotheses:
   - **Bounded reduction:** for *every* original certified trace of arbitrary length and allowance `b`, there is another certified trace with length at most `cutoff` and allowance `b' ≤ b`.
   - **Bounded catalogue coverage:** every certified trace of length at most `cutoff` has a representative in `first :: rest` with real allowance no greater than its own allowance.
   A finite vertex/alphabet alone DOES NOT produce either proof field. No unverified graph index, guessed edge, or positive diffusion mass supplies it.
4. These two hypotheses compose to prove `FiniteStateCoverage.covers_all`: every original certified trace is dominated by an original entry in the finite rational catalogue.
5. Put `q*` for the rational price selected by `minimumFrom`. Every original budget `b` admits a catalogue record `r` with `q* ≤ r.q`, `r.q = r.b`, and `r.b ≤ b`. Therefore `q* ≤ inf CertifiedAllowanceSet` using the **complete original set**, not a truncated replacement. In the reverse direction, `minimumFrom_origin` (and, independently, the returned route type) preserves the actual certified witness, so `inf CertifiedAllowanceSet ≤ q*`. This gives the exact equality:

   `((C.optimizedCost : ℚ) : ℝ) = optimalCertifiedBudget M (certifiedAllowanceSet_nonempty M C.first.trace)`.

6. `SourceAnchored.finite_optimized_source_return` consumes the equality and retains the immutable original source's **independent initial signed readout defect**: `|original(x) - readout(target)| ≤ initialAllowance(x) + (optimizedCost : ℝ)`. No term is set to zero by the graph optimizer.

`no_finite_coverage_of_no_route` blocks a claimed nonempty catalogue when no original certified path exists. The constructor `optimizeFinite?` returns `none` for the empty list rather than inventing a zero-budget path.

## Concrete nonvacuous finite source

`CertifiedSoficFiniteOptimizerExample.lean` defines a three-state graph, with `Vertex=Fin 3` and one exact label, a lower relation admitting only monotone transitions, and a separately broader candidate/upper relation. The real readout is the underlying state number. The signed edge defect is its exact endpoint difference; the nonnegative allowance is its absolute value **plus one for a stationary loop**. Thus 0→2 directly has signed defect -2 and allowance 2, while 0→0→2 has the same signed defect -2 but allowance 3. Their original trace witnesses are retained as distinct catalogue entries, deliberately listing the expensive route first. The finite optimizer must choose the cheaper route.

Every other certified path 0→2 has allowance at least `|readout(0)-readout(2)|=2` by the existing source's exact-and-bounded theorem, so a direct route of length one dominates them. That proves **both** coverage obligations for this concrete source; the example does not merely assume a shortest-path oracle.

## Comparison and hostile boundaries

- **Path cycles:** a finite graph can have infinitely many walks. The explicit length-reduction obligation is essential; simply setting `cutoff = card states` without proving reduction is invalid.
- **Irrational weights:** the optimiser compares exact rationals; a real certified route with irrational allowance is *not* automatically representable in the catalogue. Its coverage remains a named obligation.
- **No certified route:** an upper/candidate search link cannot be given an optimal allowance. An empty catalogue returns `none`; global infimum is not presented as an observed zero-cost route.
- **Alternative routes and ties:** the cheaper rule selects an actual source record. Equal costs retain a listed record, not a synthetic mixture of paths or of source sign sectors.
- **Original source initial defect:** minimizing the path allowance cannot erase the source-minus-readout error or any mixed signed term.
- **Unverified index/Lean extractor:** no source-index retrieval, `Lean.Expr` observation, or finite test becomes a certified application by itself.
- **Analytical novelty:** the finite minimum-versus-infimum argument is elementary. The mathematical contribution is its exact, appropriately conditional compositional interface to the repo's original certified path and immutable source-return APIs, not a claimed new graph-theoretic shortest-path theorem.

## Independent finite reference

`reference/finite_optimizer_reference.py` (outside the maintained math source tree) uses exact `fractions.Fraction` arithmetic and independently compares Floyd–Warshall against original certified simple-path enumeration and cyclic walks. It passed **1,253,357 assertions**, including all 4,096 three-vertex directed off-diagonal graphs with four edge statuses, 320 seeded four-vertex graph fixtures, explicit zero-cost edges, expensive cycles, unreachable paths, signed-defect telescoping, preserved initial source defect, and candidate-shortcut refusal. These are **non-Lean** reference tests; there is no Python-to-Lean refinement theorem and no kernel receipt. The standalone fixture does not constitute a proof of the general finite-state coverage fields.

## Evidence and precise next obligations

- Source publication: record the final complete commit/tree and readback blobs in the passive issue after a guarded, non-force update; do not describe a detached tree as published.
- Lean: `lake env lean -DwarningAsError=true GRWTSK/Combinatorics/GraphTheory/CertifiedSoficFiniteOptimizer.lean`; `lake env lean -DwarningAsError=true GRWTSK/Combinatorics/GraphTheory/CertifiedSoficFiniteOptimizerExample.lean`; fresh kernel, expected types, exact dependency closure, transitive axioms and unsafe-trust audit. **NOT_RUN** unless actual complete source-bound receipts arrive.
- Refinement: independently check the computational finite catalogue against any future Noe runtime implementation, with rational cost/tie/empty behavior and original route identities. **NOT_PROVED**.
- Mathematical completion beyond the explicit coverage interface: formalize cycle-erasure for arbitrary certified traces with nonnegative allowances, then construct bounded catalogue enumeration from a finite decidable certified adjacency relation with exact rational prices; prove it satisfies `FiniteStateCoverage.reduced` and `.enumerated` rather than assuming them.

## Parallel scoped extractor #1621

[Issue #1621](https://github.com/grwtsk/math/issues/1621) binds `ScopedNatLeTransDependentClosure.lean` at `grwtsk/math@c8808d5c5c2b92e67f79ad37305ca2284dae312c`, source blob `2e826d985cce81efa611cddd37304e68b0d6caae`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The observed issue remains OPEN with no verification comments, GitHub combined status entries or commit workflow runs. It requires the actual five-variable `MetaM` checks, structural beta return, independent native kernel verification of the emitted proof term, expected types, transitive axiom audit, and provenance binding. **No native run or proof admission is claimed here.** The new finite graph optimization is logically independent of this outstanding extractor acceptance: use already checked lower-relation witnesses, not a prospective extractor.
