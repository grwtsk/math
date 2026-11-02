# Certified sofic error transport: the global infimum of genuinely paid path budgets

Local mathematical attribution: **grwtsk contributors**. Formalization assistance: OpenAI ChatGPT. Date: 2026-11-02.

**Disposition:** an analytically justified source-level Lean proof candidate with independent finite reference tests. Native Lean compilation, expected-type checking, fresh kernel replay, and transitive axiom audit are **NOT_RUN**. This is not a certification receipt, a Noe native run, an optimal-path implementation, or a general Lean-expression extractor.

## Original sources, provenance, and consumer

Inspected `grwtsk/math` at `a4f5bf1380f89929611f177bd5a163f8850f5c00`. Existing immutable source modules:

- `GRWTSK/Combinatorics/GraphTheory/DefectEnrichedSoficLanguage.lean`, blob `f0436ae18dd786e312a4966b27b2edc51e3d7fa1`: a certified **lower** labeled relation, `CertifiedTrace`, its exact signed endpoint equation and additive nonnegative allowance, plus `SourceAnchored`'s independent initial defect. The source's compilation/axiom status is not inherited as accepted.
- `GRWTSK/Combinatorics/GraphTheory/CheckedApplicationSoficBridge.lean`, blob `7cf8b5905fae6cd828b3dc65145529635cc605e2`: only a proof-bearing application with all premises yields an `AppliedWord` on the lower relation; it already has a **two-route** `min` error bound and path-independent signed defects.
- Exact original syntax/observer branch: `ScopedNatLeTransDependentClosure.lean`, blob `2e826d985cce81efa611cddd37304e68b0d6caae` at `c8808d5`; native verification issue [#1621](https://github.com/grwtsk/math/issues/1621) remains open. No compiler/Meta/kernel/Axiom receipt is attached to that issue or to the checked source commit. This new infimum result does not pretend to discharge the expression-reflection gate.
- Source toolchain: `leanprover/lean4:v4.34.1`; Mathlib locked at `d13f23b723b8a846827a245b89c10fc7d3f11612` in the inspected `lake-manifest.json` (recorded blob `c8044c56be77c58e6f41cca024b25237c59e8c79`). The `csInf_le` and `le_csInf` operations are supplied by pinned `Mathlib/Order/ConditionallyCompleteLattice/Basic.lean`, blob `c1d0a08e804bfaa5c10a3f9d8561ecf285c40318`.

**Consumer:** a certification-aware Noe diffuser may have many different source-preserving certified paths between the same endpoints. Previous code compared only two route allowances. The new theorem constructs the *mathematically tightest available upper envelope*, across every certified path, without selecting candidate-only paths or replacing the original signed readout with its absolute value.

## Objects and exact theorem

Let `M : DefectSoficSystem Vertex Label`; for `source,target`, set

\[
\mathcal B_M(s,t)=\{b\in\mathbb R:\exists\,w,d,\ \operatorname{CertifiedTrace}(M,s,w,t,d,b)\}.
\]

Every member has an original lower/certified word. From `CertifiedTrace.exact_and_bounded`, each element satisfies

\[
  O(s)=O(t)+d,\qquad 0\le b,\qquad |d|\le b.
\]

The exact signed defect therefore equals `O(s)-O(t)` independently of the path. In particular,

\[
\boxed{\quad 0\le |O(s)-O(t)|\le\inf \mathcal B_M(s,t)\le b
\qquad\forall b\in\mathcal B_M(s,t),\quad\mathcal B_M(s,t)\ne\varnothing.\quad}
\]

The **nonemptiness witness is explicit in the Lean definition** `optimalCertifiedBudget M route`, not a free assumption secretly manufactured from a candidate rank. The `BddBelow` proof takes zero as a lower bound because every certified edge allowance is nonnegative. The lower inequality uses `le_csInf` and the exact common discrepancy; the upper inequality uses `csInf_le` with the explicit certified element. Neither direction assumes an attained minimum.

For the full original source, `SourceAnchored.optimal_source_return` proves

\[
\boxed{\quad
 |S(x)-O(t)|\le B_0(x)+\inf\mathcal B_M(E(x),t),
 \quad\mathcal B_M(E(x),t)\ne\varnothing.\quad}
\]

Here `S(x)=O(E(x))+d_0(x)` is the **preexisting exact source-return equation** and `|d_0(x)|≤B_0(x)` its independently supplied initial allowance. This is a triangle-inequality consequence; no signed initial defect has been set to zero, and the numerical best-envelope does not prove a missing arithmetic cancellation or PDE regularity result.

`checkedApplicationWord_hasOptimalReturn` constructs the nonemptiness witness from an original `AppliedWord`, using its `toWordPath` and the existing certified-trace constructor. This is the exact typed proof-consumer. No other graph tier is considered.

## Analytical argument and comparison

The proof first reuses the *full telescoping equation* rather than erasing signed terms. It then regards all legitimate route budgets as a subset of the real line. This set has a universal lower bound `|O(s)-O(t)|`; since the set is nonempty, conditional completeness of `ℝ` produces the infimum, which is at least that lower bound and no greater than any member. Separately the original source's independent initial defect is added by the triangle inequality. This explains why the strongest bound need not belong to any single selected path, without relying on a probabilistic diffuser.

Relative to `certified_two_route_min_bound`, this compares an **entire potentially infinite family** of alternative exact certified paths, not a particular pair. This is a real generalization of the earlier numerical consumer; it is not a new proof of the core path telescoping identity or a claimed independent derivation of an arithmetic theorem.

## Hostile checks and limitations

1. **Candidate shortcut:** `NatTransitivityExample` allows every candidate edge, including `3 --[2]--> 1`. Its certified edge is impossible because it would require `3≤2` and `2≤1`. The new `nat_certified_word_monotone` proves any *finite* lower/certified word is order-preserving. Consequently `no_certified_nat_route_three_to_one` proves that **no certified path of any length exists** from `3` to `1`, and therefore no valid nonempty budget witness can be formed.
2. **No inferred zero:** An empty lower-path set is *not* assigned an accepted zero bound. The nonempty witness must come from an actual certified path. This prevents confusion with Lean's representation of a set infimum outside its conditional-completeness hypotheses.
3. **No minimizer claimed:** For an abstract certified graph with infinitely many labels, route allowances could be `1 + 1/(n+1)` for `n≥0`; the infimum is `1` but no route pays exactly `1`. The envelope is a theorem about lower bounds, not a finite shortest-path algorithm.
4. **Zero-signed closed paths:** Existing zero-holonomy does not imply each edge allowance or arbitrary cyclic route cost vanishes. The new envelope does not delete positive costs; it admits the trivial zero-length path where its source and target coincide.
5. **Not an arithmetic/PDE estimate:** No Moebius/RH cancellation supplier, Navier–Stokes comparison theorem, elliptic trace rate or unconstrained spectral theorem is imported or implied by infimum formation. Those consumers need separately proved bounds and exact mapping of their original observations.
6. **No extractor success:** A source theorem-application `Lean.Expr`, a `SourceClaim` string, or a graph rank supplies no `AppliedWord` until the existing *typed* premises and trusted source relations are established. Issue #1621's Meta/kernel/evidence frontier remains open.

## Independent bounded reference checks

The standalone `reference/finite_optimal_budget_reference.py` evaluates the concrete Nat lower graph for vertices 0..6, labels 0..6, source/target pairs, every certified word of length ≤3, additive signed defects and allowances, and source-anchored initial discrepancies. It checks that all paid paths between monotone endpoints telescope to the original signed difference, the observed finite optimum equals `target-source`, and nonmonotone candidate-only pairs have no certified path. The test is a **separate Python reference**, not a Lean compilation, Meta observation, or a Lean/Python refinement proof. Its exact output is retained in the downloadable artifact, outside the pure math repository.

## Native acceptance and next source-bound frontier

This formalization is **SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / META_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN**. Publish with routine non-force expected-head lease, inspect the complete diff and verify the final blob identities; do not infer native verification from those Git checks. A native acceptance target must compile the exact final source and imported closure, confirm expected types, replay fresh, and audit the transitive axioms. `Lean.Expr` acceptance is a distinct obligation; do not reuse a receipt for a different source/toolchain/check binding.

The single downstream mathematical obligation is a **computable certified-graph search that refines this infimum envelope under a stated finite input model**, with exact edge provenance and coverage. Until the finite-state/language-completeness and proof-term extractor bridges are checked, Noe diffusion can discover candidates but not certify them.
