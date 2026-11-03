# Original sofic-word block exponentiation: source review and optimization

**grwtsk contributors · 2026-11-02 · SOURCE_PROOF_CANDIDATE · Lean NOT_RUN**

## Exact mathematical objects and result

For the original finite labeled graph `G` and finite word `w`, let
`M_G(w) = wordLiftMatrix G w` over `Matrix State State ℕ`. Each entry
counts original `LabeledWalkData` paths, with all intermediate-state and
edge multiplicities retained. This is **not** a Boolean label-language
matrix or a count of distinct periodic points of an observed factor.

The new source-candidate theorems state, for arbitrary words `u,v` and
`k : ℕ`, with the original `finiteCopies` definition:

\[
M_G(u ++ v)=M_G(u)M_G(v),\qquad
M_G(\operatorname{finiteCopies}(w,k))=M_G(w)^k.
\]

They hold also for the empty word, empty state set, and `k=0`.
`wordLiftMatrix_append` rewrites the original witness-cardinality matrix,
not an abstract replacement. `wordLiftMatrix_finiteCopies_eq_blockPower`
then replaces repeated letterwise folds by one block matrix power.

## Proof and actual downstream consumer

Induct on the second word using `List.reverseRecOn`. The base case is
the original `wordLiftMatrix_nil`. For the last-letter step, use
`wordMatrixProduct_snoc` and associative Nat matrix multiplication;
rewrite to `wordLiftMatrix` through the prior exact
`wordLiftMatrix_eq_wordMatrixProduct`. Then induct on `k`, using
`finiteCopies w (k+1) = finiteCopies w k ++ w` and `pow_succ`.
Neither proof assumes deterministic edges or discards source lifts.

`SoficWordBlockScanTransport.repeated_original_word_matrix_eq_scan`
returns this exact *literal repeated-source-word matrix* from the first
projection of the preexisting `matrixPowerTraceScan`. The trace corollary
is a genuine consequence of matrix equality, not a quotient shortcut.
The existing scan's second component still accumulates *all* positive
powers, so its linear scan is not claimed to become logarithmic.

The earlier `SoficWordPowerClosedPath` already counted exact composable
word-block chains via matrix powers. The additional source-word identity
makes matrix powering a certified-*candidate* route to the original
entire repeated label sequence. This is a reusable representation bridge,
not a historically new matrix identity or an RH result.

## Bounded reference check and cost interpretation

A local independent Python reference enumerated actual finite labeled
paths and compared their count matrices with per-letter products,
concatenation, and binary powers. **43,065 exact cases passed** over all
labeled edge subsets on 0, 1, or 2 states with two labels, words of
length at most 3, repeat counts 0..3, and suffixes of length at most 2.
The cases include empty source, empty word, zero repetitions, and
noninjective labels. These are finite diagnostics, not Lean checking.

For `k` repetitions of a block with `L` letters, repeated letterwise
folding uses `kL` dense matrix multiplications; computing the block
once and using a separate binary-power implementation requires
`L + O(log k)` multiplications. At `L=5`, `k=128`, this is 640
versus an upper bound of 21. One fixed-seed five-state **Python** case
measured ~0.0134 s versus ~0.00024 s; these are neither Lean runtime
measurements nor promises about the existing trace scan or bit costs.

## Source and evidence boundary

New maintained subject sources:

- `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordBlockExponentiation.lean`
  (`wordMatrixProduct_append`, `wordLiftMatrix_append`,
  `wordLiftMatrix_finiteCopies`, `wordLiftMatrix_finiteCopies_eq_blockPower`).
- `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordBlockScanTransport.lean`
  (`repeated_original_word_matrix_eq_scan`,
  `repeated_original_word_trace_eq_scan`).

Inspected prerequisite blob identities: `SoficWordMatrixDynamicProgram.lean`
`b2073a018d157f16ede91be900be94d2fecd6788`, `SoficCycleRepeatBridge.lean`
`a05e7d4527b6e37d59a48288f1e58e1a3867ca56`,
`SoficWordPowerClosureScan.lean` `b1abfe560eed36ddeee1717d8fb4d8094bb7fc5e`,
`SoficWordPowerClosedPath.lean` `fc3842103f18ecd42aa1587d8bc9556d6144a3c2`.
Selected root Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Source inspection, exact finite reference tests and text checks: **performed**.
Lean compilation, expected types, fresh kernel replay, transitive axiom
check, independent source-fidelity review: **NOT_RUN / PENDING**.
The next action in a capable pinned environment is to build the two new
modules individually (`lake build --wfail`), inspect all six declaration
types, then run fresh trust-zero replay and `#print axioms` against the
exact published dependency closure. No run or acceptance is implied here.
No root imports, toolchain or preexisting mathematical declarations change.
Operational receipts belong in Noeaaeue, with exact source and blob pins.

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage](https://github.com/grwtsk/math/issues/1429).
<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordBlockExponentiation.lean","GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordBlockScanTransport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
