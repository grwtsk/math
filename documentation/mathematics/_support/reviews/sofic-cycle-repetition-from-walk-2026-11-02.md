# Original closed walks yield periodic labeled graph runs

Local mathematical attribution: grwtsk contributors.

## Source identity and theorem

The new mathematical source is
[SoficCycleRepetitionFromWalk.lean](https://github.com/grwtsk/math/blob/f1ad3ea089811fdd7cce2c036d8caa42ecbc70bf/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCycleRepetitionFromWalk.lean).
It was published on grwtsk/math main at commit f1ad3ea089811fdd7cce2c036d8caa42ecbc70bf,
blob 00263005b2f46020c8f3a5434d8c6207eaa32622.
Its original immediate source dependency is SoficPeriodicRunFullShift.lean,
blob 265aa4180f4135e76cb0000166d253be4d96b9dc.
The original LabeledWalkData, BasedCycleData, walkDataLabels, basedCycleWord,
repeatBlock, RunsOnGraph, CycleRepetitionsRun, GraphLanguage and
labeledAdjacency remain unchanged.

The source has the selected Lean 4.34.1 toolchain and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
No root import change, dependency migration or native runner was introduced.

The new declaration cycleRepetitionsRun_of_original_closedWalk proves the
mathematical proposition CycleRepetitionsRun G n hn for EVERY source based n-cycle
of an arbitrary original labeled graph G and for every positive n, without any
independently supplied run or periodic-state-map hypothesis.

## Primary mathematical argument and exact source transport

Given an original closed walk c of length n, the inductive nil/snoc data carry
the successive states s_0 through s_n, original labels a_0 through a_(n-1),
every source edge proposition E(s_i,a_i,s_(i+1)), and closure s_n=s_0.

IndexedSourceWalk and indexActualWalk use Fin.snoc to construct the two indexed
arrays of states and labels directly from each original snoc edge. Their exact
label-list equality is

\[
 \operatorname{List.ofFn}(\mathrm{letters})
 = \operatorname{walkDataLabels}(G,c.2).
\]

The original basedCycleWord is recovered from this list with
List.ofFn_congr, List.ofFn_get, and List.ofFn_injective.
This is the actual original label sequence, not a normalized substitute.

For positive n, define S_c(k)=s_(k mod n) and L_c(k)=a_(k mod n).
The source definitions basedCycleStateStream and basedCycleLabelStream implement
these exact functions. basedCycleStateStream_zero preserves the given base state;
basedCycleStateStream_period proves S_c(k+n)=S_c(k); and
basedCycleLabelStream_eq_repeatBlock proves for every natural k that

\[
 L_c(k)=\operatorname{repeatBlock}
 (hn,\operatorname{basedCycleWord}(G,n,c))(k).
\]

The modular-edge lemma cyclic_edge_of_indexed separates the interior step
(r+1<n) from the wraparound step (r+1=n), where r=k mod n.
The first is the actual indexed source edge. The second has successor residue 0
and therefore uses the independently recorded closure equality s_n=s_0.
Thus every infinite step E(S_c(k),L_c(k),S_c(k+1)) comes from one original edge,
including exactly the seam. basedCycleStateStream_edge and
cycleRepetitionsRun_of_original_closedWalk assemble this into RunsOnGraph.

## The two downstream consumers and hostile controls

cycleWordsAdmissible_of_exact_original_graph combines this actual run with the
existing graphLanguage_of_run_block theorem: if the specified language agrees
with the complete original graph finite-word language, every finite factor
of every repeated original based cycle belongs to that language.

periodic_point_card_eq_trace_of_exact_faithful_complete proves the true
period-dividing-n label-point cardinality equals the trace of the original
labeled adjacency matrix power, assuming only the still independent
FaithfulCycleWords and CompleteCycleLifts conditions, in addition to exact
language equality and n>0.

An unqualified bijection for all exact finite-word-language graphs is FALSE.
The existing double-loop graph has 2 based period-one cycles and 1 label point;
the alternating-state graph has 0 based period-one cycles and 1 label point.
Both present the same complete one-symbol finite-word language. These are
hostile examples for unique and same-period lifts, not for the actual
construction of runs from those based cycles which exist.

A separate finite Python reference enumeration sampled 60 directed labeled
graphs with one to three states and a two-symbol alphabet, at lengths 1..4:
3948 closed walks, 39780 repeated edges and 9396 closing-seam transitions
were checked. All matched the actual chosen graph-edge relation.
This is bounded reference evidence, not a Lean proof or fresh replay.

## Publication and verification boundaries

Source publication, exact diff and Git blob readback: CONFIRMED.
Lean compilation: NOT_RUN. Expected-interface check: NOT_RUN.
Fresh kernel replay: NOT_RUN. Transitive axiom audit: NOT_RUN.
Independent external proof review: PENDING.
The source proof candidate declares no sorry or new research axioms, but
that static observation does not establish a transitive trust audit.
No runtime receipt, Noe scheduler, native host activation or execution job
was started for this change.

The new theorem removes the former generic cyclic-run hypothesis.
It does NOT supply faithful cycle labels or same-period lift completeness for
an arbitrary graph, a determinant or zeta identity, or an arithmetic-energy
estimate.

Next verification obligation: check the exact new import closure with
Lean 4.34.1 and pinned Mathlib, perform fresh kernel and axiom audits, and
retain the exact receipts separately from this mathematical source.
