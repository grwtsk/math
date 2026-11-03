# Exact based-cycle cardinality and periodic-label lift-fiber accounting

Date: 2026-11-02 (America/Los_Angeles). Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Mathematical reasoning and finite integer diagnostics are distinct from native Lean acceptance.

## Existing source and retained boundary

New additive source proof candidates, without replacing any source relation:
- GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBasedCycleCard.lean
- GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicFiberLedger.lean

Both import the unchanged GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMatrixTrace.lean, original Git blob 7aa717801ded4b67b6228e852ed76323cdefaa70. The actual graph and language are sourced from:
- canonical CertifiedTransversal.lean: df720cbb72c616938635c20477430f5f0ded4021;
- full sofic-language consumer SoficLanguageTransversal.lean: 238da905b6595c944cac40f39ae2f54870032132;
- ExactSoficLanguageCover.lean (LabeledGraph, WordPath, GraphLanguage, ExactLanguagePresentation): f50489eaf6c7277993a08925a58b7765f9e10ec9.

Selected Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The original finite-state and finite-alphabet hypotheses are preserved. No universal finite-alphabet property is inferred from ExactLanguagePresentation: the new matrix counting source retains an explicit [Fintype Alphabet].

## The mathematical proof of the formerly open ExactBasedCycleCard

The ORIGINAL source declares:

  inductive LabeledWalkData G : Nat -> State -> State -> Type
     | nil (s) : LabeledWalkData G 0 s s
     | snoc (prefix : LabeledWalkData G n s middle)
         (letter : Alphabet) (edge : G.edge middle letter t) :
         LabeledWalkData G (n+1) s t.

It also declares BasedCycleData G n = Sigma s, LabeledWalkData G n s s. Proof-valued edge witnesses are subsingletons and are not counted as distinct mathematical edges.

For arbitrary states s,t, the zero-step witness type is equivalent to PLift(s=t). In particular it has one element if s=t and zero otherwise.

For all n >= 0, there is an explicit, finite equivalence

  LabeledWalkData G (n+1) s t
    ≃ Sigma middle : State,
         LabeledWalkData G n s middle
         × {letter : Alphabet // G.edge middle letter t}.

Its forward map splits the ACTUAL final snoc step and retains intermediate state, emitted letter and edge proof. Its inverse reconstructs the exact snoc step. These mutually inverse maps do not quotient labels, states or lengths.

Because State and Alphabet are finite, this recursion supplies a Fintype for every indexed LabeledWalkData type. Taking cardinalities and using the original edgeMultiplicity gives

  card(LabeledWalkData G 0 s t) = if s=t then 1 else 0;
  card(LabeledWalkData G (n+1) s t)
    = sum_middle card(LabeledWalkData G n s middle)
                 * edgeMultiplicity G middle t.

The right side is EXACTLY the PREEXISTING independent labeledWalkCount recurrence. Induction therefore gives for all n,s,t

  card(LabeledWalkData G n s t) = labeledWalkCount G n s t.

Summing the diagonal of the Sigma yields, for all n>=0,

  card(BasedCycleData G n) = basedClosedWalkCount G n,

which is precisely the previously open proposition ExactBasedCycleCard G n. Combining it with the published source candidate trace_pow_eq_basedClosedWalkCount gives

  Matrix.trace (labeledAdjacency G ^ n) = card(BasedCycleData G n).

The first new Lean module contains complete SOURCE proof candidates for the zero/snoc equivalences, recursively supplied Fintype instances, cardinal induction, exactBasedCycleCard, and this trace consequence. This is NOT a kernel-accepted Lean proof, and its elaboration has not been run.

## Exact lift multiplicity / missing-label compensation

Fix a positive n and the actual PeriodicLabelPoint language n hn type from the prior source. A source-bound cycle-to-label map f must send each ORIGINAL BasedCycleData G n witness to a periodic label point and preserve the literal basedCycleWord G n c.

The second Lean module explicitly names HasLabelPreservingCycleMap as an UNPROVED Lean proposition. Its ordinary mathematical construction is possible under full exact-language presentation: a based closed graph walk repeats around the same state to form an infinite graph path; every finite block of its repeated labels is a graph-path word, hence belongs to the FULL language by P.exactLanguage. The complete list rotation and arbitrary-offset proof has not been ported to Lean. Merely specifying f without proof would not authorize a statement that the source automatically provides it.

Given ANY chosen actual-label-preserving f, define for each periodic label point p:

  L_f(p) = card { based graph n-cycles c : f(c)=p }.

The finite partition equivalence

  (Sigma p : PeriodicLabelPoint, {c : BasedCycleData // f(c)=p})
       ≃ BasedCycleData

gives the exact fiber-count theorem:

  trace(A^n) = sum_p L_f(p).

Define missing_f = sum_p 1_[L_f(p)=0] and surplus_f = sum_p (L_f(p)-1), with Nat truncated subtraction. The pointwise identity

  L + 1_[L=0] = 1 + (L-1)

therefore yields the correct compensation law in NATURAL numbers:

  trace(A^n) + missing_f
       = card(PeriodicLabelPoint language n hn) + surplus_f.

This removes both errors made by an unconditional graph-to-label equality: duplicate labeled lifts and missing period-preserving lifts. If f is separately proved bijective and actual-label-preserving, missing and surplus both vanish, recovering the previous conditional trace=point-count theorem. This is not automatic for sofic presentations.

The new Lean source includes the Sigma-fiber equivalence, trace-sum theorem, missing/surplus declarations, balance theorem, and a conditional bijective-label theorem as source-proof candidates. It does NOT claim an unconditional label-point equality or a dynamical zeta determinant formula.

## Hostile boundary cases at all positive lengths

Both original finite exact-language presentations have State=Bool, Alphabet=Unit, and language=ALL finite Unit words. The exact one-sided label shift has one periodic label point at every positive n.

- Duplicate loop graph: A = [[1,0],[0,1]]. For all n>=1, trace(A^n)=2, missing_f=0, surplus_f=1. Two distinct based cycles emit the same label point.
- Alternating graph: A = [[0,1],[1,0]]. At odd n, trace(A^n)=0, missing_f=1, surplus_f=0; at even n, trace(A^n)=2, missing_f=0, surplus_f=1. The label point exists even when its period does not lift to a closed graph cycle with the same n.

The correction identity holds for both examples at every n and is strictly stronger than merely showing their n=1 trace mismatch.

## Independent EXACT finite integer diagnostics, not Lean

Executed a separate, genuinely explicit enumeration of actual state/label walk witnesses, rather than only reusing the prior matrix-power recurrence diagnostic:

- 72 deterministic random finite labeled directed graphs, state counts 1..3, label counts 1..2, walk lengths n=0..4.
- 7,215 exact integer witness-cardinality, matrix-power and periodic-label fiber assertions; maximum explicitly enumerated based-cycle cardinality 458.
- Periodic label membership is decided without a finite word-length guess: for each cyclic label phase, the finite reachable-state-subset automaton is iterated until a pair (phase, subset) repeats or becomes empty. All graph words are tested against the actual original edge triples.
- Duplicate loop and alternating examples explicitly enumerated at n=1..6; observed trace, missing label count, one true periodic label point and surplus lift count match the formulas above.
- The initial unbounded diagnostic execution was terminated after exceeding its time limit. The completed diagnostic used smaller bounds and memoization; this does not turn the finite test into Lean acceptance.

Script: /mnt/data/sofic_based_cycle_fiber_preflight.py
SHA-256: 0d7146b0dd5ca8f3cd3ff510d0689b01c6c9a34d46f308e3556c6391fbba8f5a.
Result: /mnt/data/sofic_based_cycle_fiber_preflight.json
SHA-256: ecf6b7b394ed62ccc3b0f8111236de3c10aef0c470a78cecbee03c8cf474e204.

These artifacts were executed in the conversation's scratch environment and are not a native Lean compiler receipt or independent proof certificate.

## Acceptance and remaining mathematical bridge

The source proofs remain compilation NOT_RUN, expected-types NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN. No local lean/lake/elan or verified Noe/math checkout was found. No native host, managed replay, CI, controller, scheduler or system policy bypass was attempted. Mathematical proof on paper is not native acceptance.

The next exact tasks, in order:

1. Compile the ORIGINAL canonical CertifiedTransversal, ExactSoficLanguageCover, SoficLanguageTransversal, and SoficPeriodicMatrixTrace at one exact pinned source/toolchain/closure using the approved Noe native owner. Check exact theorem types/universes, fresh trust=0 kernel replay and complete transitive axiom footprints. No source or finite diagnostic can substitute.
2. Compile the new SoficBasedCycleCard and SoficPeriodicFiberLedger modules in the same fresh closure; repair exact elaboration failures, preserving all original graph/source definitions and the distinction between cycle cardinality and label cardinality.
3. Prove the genuine source-bound HasLabelPreservingCycleMap under the original ExactLanguagePresentation by cyclic repetition and all finite factors, with arbitrary offsets; currently open in Lean.
4. Characterize when every true period-n label point has exactly one based graph n-cycle lift, or explicitly retain the general missing/surplus fiber balance. Do NOT assert unconditional trace=periodic label points or a generic dynamical zeta determinant formula.

No general sofic pseudofunctor, RH result, periodic zeta determinant identity, or native acceptance is claimed.
