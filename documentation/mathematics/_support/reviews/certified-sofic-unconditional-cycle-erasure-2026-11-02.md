# Original certified sofic cycle erasure and global finite optimization

Local mathematical attribution: **grwtsk contributors**. Date: 2026-11-02.
Source-level argument and hostile comparison, **not** a native Lean or source-to-runtime verification receipt.

## Exact source, intended consumer and existing work

Inspected `grwtsk/math` main at baseline `7fb92732c901f972b4285628f1eb3bee81bb5348` (re-pin after any concurrent publication). The directly reused established source candidates are:

| Role | Source | Inspected Git blob |
|---|---|---|
| Original signed, nonnegative certified lower paths | `GRWTSK/Combinatorics/GraphTheory/DefectEnrichedSoficLanguage.lean` | `f0436ae18dd786e312a4966b27b2edc51e3d7fa1` |
| Infimum over *all* original certified paths | `GRWTSK/Combinatorics/GraphTheory/CertifiedSoficOptimalBudget.lean` | `9f782e53cdc13b1a1c8ef2f6cf2c85c1b63854fa` |
| Exact rational finite route selection | `GRWTSK/Combinatorics/GraphTheory/CertifiedSoficFiniteOptimizer.lean` | `5cc2849c32890173e1b589aa731a25b00593def1` |
| Exhaustive bounded original lower-path catalogue | `GRWTSK/Combinatorics/GraphTheory/CertifiedSoficBoundedCatalogue.lean` | `263aab7ff760847d7256646e8a48c034a789ef7f` |
| All-premise checked application return | `GRWTSK/Combinatorics/GraphTheory/CertifiedSoficCheckedOptimization.lean` | `ea4969d4420b25aa716158fb7895d5cd9d647e89` |
| Concrete paid-loop example | `GRWTSK/Combinatorics/GraphTheory/CertifiedSoficBoundedCatalogueExample.lean` | `6ecfa9e9f34751810413e198a09e23a6f6114eb1` |

The formerly unresolved consumer premise was `FiniteRationalCertifiedGraph.CardinalityReduction`: every certified source-to-target path can be replaced by one of length at most the number of states, paying no larger allowance. The bounded catalogue source already proves exhaustive original path enumeration at any *specified* cutoff, and the optimizer proves equality with the global infimum if cardinality reduction is supplied. The present increment proves that reduction from the existing lower-edge nonnegativity law rather than adding it to a record or invoking a graph-ranking heuristic.

The target new files are `GRWTSK/Combinatorics/GraphTheory/CertifiedSoficCycleErasure.lean` and `CertifiedSoficCycleErasureExample.lean`. They import the nearest original certified and optimizer families, without changing them, the toolchain, or repository taxonomy.

## Mathematical statement: exact original path and signed defect

Fix **any** `DefectSoficSystem M` on a finite vertex type `Vertex`, with arbitrary label carrier. A certified edge is exclusively an actual proof of `M.sandwich.lower s label t`; its accumulated real allowance is nonnegative because `M.edgeAllowance_nonneg` is part of the existing system. The signed defect is exact: `M.readout s = M.readout t + edgeDefect`. For *every* original `CertifiedTrace M s word t defect allowance`, the new candidate theorem `certifiedTrace_cycle_erase` constructs:

```lean
∃ shortWord shortDefect shortAllowance,
  CertifiedTrace M s shortWord t shortDefect shortAllowance ∧
  shortWord.length < Fintype.card Vertex ∧
  shortAllowance ≤ allowance ∧ shortDefect = defect
```

The statement requires **only** `[Fintype Vertex]` in addition to the already defined `DefectSoficSystem`. There is no condition about acyclicity, positive (rather than nonnegative) costs, source/target inequality, reversibility, or rational edge costs. It does not claim `shortWord = word`, and it does not preserve the allowance of deleted cycles: it deliberately lowers the paid allowance. The retained signed defect is exactly the same source-to-target difference, not an unsigned reconstruction or a substitute observation.

### Complete primary argument

The existing `CertifiedTrace` is proposition-valued. To avoid unapproved extraction from proofs into executable data, `CertifiedWalk` is a Type-valued internal witness with an explicit `stop` constructor and a `push source middle target label edge tail` constructor. `walk_of_certified_trace` establishes **existence** of such a witness by induction *into Prop*, retaining the exact ordered source word, signed defect and allowance. `CertifiedWalk.toTrace` returns any constructed witness to the original proposition with unchanged edge proofs.

A walk's `vertices` includes both endpoints. `NoRepeat` is inductive/recursive: an empty walk is simple, and a leading `source -> middle` edge is simple precisely when `source` is absent from its tail's full vertex list and the tail is simple. By induction (`nodup_of_noRepeat`), a simple walk's vertex list is `List.Nodup`; `vertices_length` gives `|vertices| = |word| + 1`. The pinned Mathlib theorem `List.Nodup.length_le_card` yields the strict bound `|word| < Fintype.card Vertex`.

Loop erasure (`CertifiedWalk.simple_subwalk`) proceeds by structural induction on the actual original walk. Simplify the tail first. If the head source does not reappear in the simple tail, retain the actual original head edge. Otherwise, `suffix_of_mem` obtains the suffix of the already simple tail beginning at that same source and discards the initial closed cycle. Every removed edge pays a nonnegative real allowance, so deletion never increases total allowance. The retained edges are the actual original certified edges, with no artificial shortcut edge and no change to the surviving occurrence-label order. The induction proves existence of a simple subwalk with no greater allowance. Mapping it back through `toTrace` gives a genuine certified trace. The two original exact endpoint-return equalities then imply **signed defect equality**.

This is the standard finite-graph nonnegative cycle-erasure argument, formalized here for the *specific original signed and certified sofic path* interface. No prior-art novelty of elementary graph shortening is claimed. The nontrivial connection is the exact return to the repository's signed `CertifiedTrace` and its global infimum consumer. This is one argument expressed in compatible source types, not an independent second proof of the optimizer.

### Removal of the external reduction assumption

`FiniteRationalCertifiedGraph.cardinalityReduction` instantiates the old property **as a theorem**, for any finite-state finite-label graph having a decider for its actual lower relation and rational costs equal to the original real allowances. Then `FiniteRationalCertifiedGraph.optimized_eq_infimum_unconditional` applies the existing constructed catalogue and exact rational minimum with no user-supplied shortening witness:

```
(G.completeCoverage s t hroute (G.cardinalityReduction s t)).optimizedCost
  (cast from ℚ to ℝ)
    = optimalCertifiedBudget G.system hroute.
```

The route nonemptiness `hroute` remains explicit. So do finite original carriers, actual certified-edge decidability and rational edge-cost correctness; these are NOT derived from mere existence of a large infinite graph. `CheckedFiniteRationalGraph.optimized_proof_without_reduction_premise` adds every original application/premise from the exact lower edge, and `SourceAnchored.finite_optimized_return_without_reduction_premise` retains the independently paid initial source-readout defect.

## Worked example and hostile boundaries

`CertifiedSoficCycleErasureExample.lean` imports the existing `Fin 2` graph with a positive-cost closed loop. Without using the prior graph-specific `reduce_to_cardinality` theorem, it derives `finiteGraph.cardinalityReduction`, the global cost-1 optimum, and erasure of a one-edge positive-cost `0 -> 0` loop with **signed defect zero**. The source also rechecks the candidate-only reverse edge `1 -> 0` is not certified.

The boundary cases are essential:

1. **Zero-cost cycles** may be erased; no strictly positive edge allowance is assumed.
2. **Paid closed cycles** have zero *signed* endpoint defect but can have strictly positive allowance. Removing them does not justify setting a missing initial-source defect to zero.
3. **Negative cycles** would invalidate non-increasing-cost erasure and may make the global infimum unbounded below. The existing certified system prevents them through `edgeAllowance_nonneg`; the independent Python negative-cycle fixture exhibits the failure when that law is deliberately violated.
4. **Unreachable endpoints** still have no route witness; the optimizer cannot invent a zero-length path joining distinct states.
5. **Parallel original labels or repeated source occurrence references** are retained on surviving edges. A path can lose *whole closed subpaths* but cannot replace its original edge occurrence with a textual or adjacency-only alias. A separate source-owner/ordinal adapter would be needed to identify the `Label` type with original repository occurrence identities.
6. **Infinite source carriers** are outside `[Fintype Vertex]`. The full physical Möbius stream and flat Navier–Stokes field spaces do not become finite because their projections use finite chart or residue indices.
7. **Finite-state graph language** is still distinct from infinite sofic shift/factor-language completeness, matrix trace vs periodic word counts, and verified Lean expression extraction.
8. **Complexity** is not claimed polynomial: exhaustive enumeration to the number-of-states bound can be exponential in state and label multiplicities, even though the result is mathematically complete for its selected finite graph.

## Independent finite controls and source honesty

`reference/finite_cycle_erasure.py` enumerated all 512 one-label three-state directed graph topologies, plus 220 seeded four-state and 25 seeded five-state two-label instances. Every present test edge was assigned a nonnegative rational allowance at least its absolute signed potential difference. All 131,730 source walks checked through the fixture's finite depth were compared with structurally simplified walks. **1,185,408 finite reference assertions passed**: same endpoints, actual original surviving edge occurrences and order, simple state lists, strict state-cardinality length cutoff, no larger cost, exact signed telescope, bounded minimum equals longer-walk minimum in the tested domain, and hostile negative cycles/candidate-only shortcuts. The reference is a separate Python model. No Python→Lean refinement theorem exists and the finite tests are NOT a Lean compilation, kernel check, or source authentication receipt.

The source has no new axiom, `sorry`, or proof term supplied solely by a `SourceClaim`. The proof was examined as an ordinary mathematical argument, not independently run in the pinned compiler. The authoring environment has no accessible Lean/Lake executable. Do not infer expected-type, elaboration, replay, or transitive-axiom acceptance from its publication.

Native verification obligations at the final immutable commit: compile both modules with pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, check all selected declaration types, run independent fresh kernel replay and declaration-scoped transitive axiom/unsafe checks, and confirm every imported source/blob matches the source-bound manifest. Preserve full command/receipt/resource and host-restoration evidence in Noe, not under `grwtsk/math`.

## Related programmes and next obligation

- `grwtsk/math#1632`: prior bounded enumerator/optimizer remains a source candidate pending native acceptance; this publication supplies its previously missing generic reduction theorem, not the native receipt.
- `grwtsk/math#1621`: five-variable `Nat.le_trans` `Lean.Expr` proof extraction is still a Meta/kernel/axiom audit target. Nothing here promotes an unverified extracted edge to the certified lower language.
- `SourceOccurrenceSoficBridge.lean`, `SourceOccurrenceInfiniteTraceBridge.lean`, `SoficFiniteSupportAutomaton.lean`, `SoficPeriodicSourceIntegration.lean`: exact occurrence words, finite support, infinite prefix realization and periodic trace ledgers require their **own** soundness/coverage bridges. A shortest-cost theorem is not a periodic word-count theorem.
- `MoebiusSoficDefectLanguage.lean`, `PeriodicNavierStokesSoficPort.lean`: real source observations with infinite carrier types. Before reuse, prove an actual finite carrier projection plus a lift/coverage and cost-comparison theorem that preserves original source and all signed residuals. No RH cancellation or NS global regularity is inferred.

**Next priority after native checking:** derive a finite **source-occurrence-preserving** quotient/embedding into a `FiniteRationalCertifiedGraph`, with a proof that the quotient catalogue is exhaustive for the selected original certified path family, and with original signed errors transported exactly. Preserve source owner/ordinal multiplicity rather than deduplicating labels.
