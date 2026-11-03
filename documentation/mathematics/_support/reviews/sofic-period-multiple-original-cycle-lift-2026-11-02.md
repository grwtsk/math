# Bounded period-multiple lifts into original labeled-walk data

Local mathematical attribution: grwtsk contributors.
Status: SOURCE_PROOF_CANDIDATE; no native Lean compilation, fresh kernel replay,
expected-type replay or transitive axiom audit claimed.

## Exact theorem and original objects

For any finite original labeled graph `G : LabeledGraph State Alphabet`,
a language `language : List Alphabet → Prop` satisfying
`hExact : ∀ w, language w ↔ GraphLanguage G w`, any positive
`n`, and any actual `PeriodicLabelPoint language n hn`, there is
an integer `m` with `1 ≤ m ≤ Fintype.card State` and an original
`c : BasedCycleData G (m*n)` whose complete emitted labels obey

```lean
basedCycleWord G (m * n) c = Fin.repeat m p.val
```

Consequently the original snoc-inductive `LabeledWalkData` contains
every source edge, intermediate state, complete ordered alphabet labels and
a genuine closed base state. The bound includes the genuinely empty-state
case (which admits no periodic points). The label point need only have
period DIVIDING n; its graph-state period may be a multiple of n.

Primary new module: [SoficPeriodicMultipleLift.lean](https://github.com/grwtsk/math/blob/5abae2c65acf186a7826cd0dd620394a99051248/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMultipleLift.lean).
Source commit `5abae2c65acf186a7826cd0dd620394a99051248`,
blob `ece978c7389cca95c1645fbe10b66cfaa5d75cea`.
The source is placed in the existing dynamical-systems subject tree.
The graph, source language, actual based-cycle type, original matrix,
periodic shift point type, and existing predicate definitions are unchanged.

## Primary mathematical proof

Fix the original period-n block `w = List.ofFn p.val` and let
`q = Fintype.card State`. Because p is a genuine periodic label point,
its first `qn` letters are `q` consecutive copies of w and belong
to the complete source language. Exact-language equality gives an
ACTUAL `WordPath G s (finiteCopies w q) t`.

The published
`SoficMacroBoundaryPigeonhole.finiteStateBlockBoundaryPigeonhole_proof`
splits that same actual path into q edges of a macro graph, where
a macro edge is literally `WordPath G s w t`. Its q+1 source state
boundaries force a repetition, `v_i=v_j` with `0≤i<j≤q`.
The intervening original subpath is closed and spells `finiteCopies w m`
for `m=j-i`, so `1≤m≤q`.

The existing
`SoficWordPowerClosedPath.wordPowerClosedPathBridge_proof`
connects such a source closed path with a positive power trace of the
EXACT original word-lift matrix. Together they are consumed by the
already-published
`SoficBoundedWordMatrixCriterion.boundedPeriodicWordMatrixCriterion_proof`.
The new theorem `periodic_label_point_has_multiple_closed_lift`
uses that full source theorem to obtain the positive bounded multiplier
and the actual closed `WordPath`; it does not introduce a second
pigeonhole assumption or an independently chosen lift.

`actual_walk_of_wordPath` then re-encodes the original WordPath as
`∃ data : LabeledWalkData G word.length s s,
 walkDataLabels G data = word`. It prepends one original edge by
recursion on the SOURCE snoc-inductive walk and inducts on the
original WordPath only into an existential PROP. This explicitly
avoids eliminating a proof in Prop into arbitrary Type data.
The source lemma `finiteCopies_length` changes its length to
`m*n` with the precise equality, not a truncation or inferred bound.

Finally, `original_cycle_word_list` relates the existing
`basedCycleWord` to its original complete emitted list.
`finiteCopies_ofFn_repeat` identifies literal `m` copies with
`List.ofFn (Fin.repeat m p.val)`. Injectivity of `List.ofFn`
therefore proves pointwise equality of the *original* length-`mn`
source cycle label tuple, as stated by
`periodic_label_point_has_exact_repeated_cycleWord`.

The proof gives a closed original lift at SOME positive multiple and
not an unproved lift of length n. It does not imply that all source
cycles are faithful, nor that the original adjacency trace equals
the number of distinct period-n shift points.

## Concrete hostile period-one fixture

For `alternatingUnitGraph`, the unique constant-Unit label point
has period one but no original closed one-edge graph path
(existing `alternating_no_one_step_cycle`).
The new `alternating_two_step_original_lift` constructs an actual
`LabeledWalkData alternatingUnitGraph 2 false false` emitting
`[(), ()]`: its states alternate false, true, false.
This demonstrates why the multiplier cannot be universally fixed to one.

## Source-bound compilation and trust boundary

A narrow supporting repair was published in
[SoficMacroBoundaryPigeonhole.lean](https://github.com/grwtsk/math/blob/b3106cdcc2dc27be7464d2b6dd54b942ad085f66/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficMacroBoundaryPigeonhole.lean),
commit `b3106cdcc2dc27be7464d2b6dd54b942ad085f66`,
blob `fde86d048d89bdb71cd52bb1de96ecaff27068dc`.
The original `macroWalk_of_finiteCopies` tried to return a
`LabeledWalkData` (Type) from a `WordPath` (Prop) in a theorem.
The repaired `macroWalk_nonempty_of_finiteCopies` returns
`Nonempty LabeledWalkData` (Prop); its caller extracts that witness
only while proving a proposition. The data-valued
`segmentOfIndexed` is now a `private def`, rather than a theorem
with a Type-valued conclusion. Original mathematical graph predicates,
cycle lengths, and both source/target endpoints are preserved.
This is a static source-level type-discipline repair, NOT evidence
that any of the modules now successfully compile.

The imported dependency boundary includes:
`SoficBoundedWordMatrixCriterion.lean` (blob
`3be4fc0e7b953c22e14749b8ad933b0ab851de1b`),
`SoficWordPowerClosedPath.lean` (blob
`fc3842103f18ecd42aa1587d8bc9556d6144a3c2`),
`SoficMacroBoundaryPigeonhole.lean` (patched blob above),
`SoficPeriodicWordMatrix.lean` (blob
`d8f0423d8b872e5045c779544bd39eb1bad7adfe`),
`SoficCycleRepeatBridge.lean` (blob
`a05e7d4527b6e37d59a48288f1e58e1a3867ca56`),
and their original labeled graph, walk and matrix dependencies.
Selected root environment: Lean `v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
No root-import promotion, toolchain migration, new research axiom,
`sorry`, Noe runtime job, scheduler or host activation was performed.

## Independent finite reference evidence

An independently constructed finite subset/phase automaton evaluated
ALL graph edge subsets for 1- and 2-state graphs on two symbols,
plus 60 seeded 3-state samples, against every length-1-through-4
Boolean periodic block. There were 9,600 graph-word cases,
6,985 truly admissible periodic blocks, and all 6,985 had a
closed original edge path with the same repeated n-word at a
multiplier `m ≤ #State`. In 109 cases the minimum m exceeded one;
the largest observed m was three. No finite counterexample arose.
The reference script SHA-256 is
`63489079dc447ea9ddd924b0b481f17e7e4c30e602d3ca556c436091cb11d304`.
This checks only finite cases using independent edge enumeration.
It is not Lean compilation, a kernel check, a transitive axiom audit,
or proof of all finite graphs.

## Verification status and next acceptance action

- Original mathematical argument: complete finite pigeonhole proof.
- New Lean source and narrow supporting patch: published to existing
  main by non-force expected-head commits; diffs inspected and exact
  source blobs fetched back.
- Native Lean compilation: NOT_RUN.
- Expected-type/importing-module check: NOT_RUN.
- Fresh kernel replay with source-bound dependency closure: NOT_RUN.
- Transitive axiom audit: NOT_RUN.
- Independent source/novelty review: PENDING; no originality claim.
- RH, zeta, Fredholm, arithmetic-energy or determinant return: NOT_CLAIMED.

The nearest next action is exact-source Lean 4.34.1 compilation and
fresh dependency/axiom checking for the patched macro pigeonhole,
the prior bounded word-matrix criterion and this new original-walk
bridge. Publication or finite reference checks must not be
misreported as kernel-verified mathematical admission.
