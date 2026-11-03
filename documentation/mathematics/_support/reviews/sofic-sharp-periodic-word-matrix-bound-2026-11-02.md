# Sharp finite-state periodic-label lift bound and exact word-resolved matrix trace

Mathematical review date 2026-11-02, America/Los_Angeles. Local attribution: grwtsk contributors; mathematical/source assistance: OpenAI ChatGPT.

**Trust classification:** ordinary mathematical proof, source-bound Lean proof CANDIDATES, independently executed finite exact-integer diagnostics. Neither native Lean compilation nor kernel/axiom acceptance has run.

## Original source and theorem domain

The new additive source candidate is
GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicWordMatrix.lean.
It imports the original SoficFiniteRepeatClosure, SoficBasedCycleCard, and pinned Mathlib. No original definition is modified.

At research inspection, the actual math sources had the following Git blobs:
- CertifiedTransversal.lean df720cbb72c616938635c20477430f5f0ded4021;
- ExactSoficLanguageCover.lean f50489eaf6c7277993a08925a58b7765f9e10ec9;
- SoficLanguageTransversal.lean 238da905b6595c944cac40f39ae2f54870032132;
- SoficPeriodicMatrixTrace.lean 70e416083e8fd1238ffdd8896f984e0a5382c139;
- SoficBasedCycleCard.lean d7fd2f5aad643d4350e4b5bfd7128dd979717a74;
- SoficPeriodicFiberLedger.lean becfa9cfddb8479c36a007c17d8be4d0d7defe05;
- SoficCycleRepeatBridge.lean a05e7d4527b6e37d59a48288f1e58e1a3867ca56;
- SoficFiniteRepeatClosure.lean e8d8dcc01f4e9f067cb9041ad5e54f7dd79d0962;
- SoficCycleLabelBijection.lean bd1ba53939ed6f5a4e00d76be9d6d433d09f3d0b.

Pinned Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. This is the ORIGINAL directed, label-indexed graph with edge(s,a,t): Prop and actual LabeledWalkData paths; different intermediate state sequences and labels are retained. The alphabet and state types are both explicitly finite for the matrix/counting theorems. The original ExactLanguagePresentation by itself only supplies finite states.

## 1. Exact decomposition of the original graph matrix trace by emitted words

For each finite word w define B_w(s,t) to be the exact number of ORIGINAL inductive paths from state s to state t whose complete emitted label list is w:

  B_w(s,t) := card {p : LabeledWalkData G | p begins at s, ends at t,
                                      length(p)=length(w),
                                      walkDataLabels(p)=w}.

The original adjacency A(s,t) counts all allowed individual letters. For n>=0, the previously published original inductive cycle/cardinality theorem states

  trace(A^n) = card(BasedCycleData G n).

Partition the complete based graph n-cycle type by its actual n-letter tuple v : Fin n -> Alphabet:

  BasedCycleData G n
    ~= Sigma v : Fin n -> Alphabet,
         {c : BasedCycleData G n | basedCycleWord(c)=v}.

The Sigma and subtype equivalence is lossless: each cycle retains its beginning state and all intermediate vertices and actual emitted labels. There is no quotient by periodic word, cyclic rotation or graph-state equivalence. Taking finite cardinalities gives

  trace(A^n) =
    sum_(v : Fin n -> Alphabet)
      card {c : BasedCycleData G n | basedCycleWord(c)=v}.

The source's actual length theorem identifies List.ofFn(basedCycleWord(c)) with walkDataLabels(c). Splitting the dependent Sigma by the original base state gives

  card {c | basedCycleWord(c)=v}
    = trace(B_(List.ofFn(v))).

Therefore the exact word-resolved identity is

  **trace(A^n) = sum_(v : Fin n -> Alphabet) trace(B_v).**

This includes n=0: its one empty tuple contributes trace(I)=#State. The identity is different from the FALSE equality of total adjacency trace and distinct periodic label points. It is a genuine finite combinatorial source decomposition.

The Lean source includes full by-proof candidates for trace_pow_eq_sum_based_word_lifts, trace_wordLiftMatrix_eq_basedWordLiftCount, trace_pow_eq_sum_word_matrix_traces and conditional periodicLabelPoint_card_eq_boundedWordCount. All require actual Lean elaboration; no SOURCE proof script is kernel acceptance.

## 2. Sharp q-state criterion for genuine period-n label membership

Let q = card(State), n>0, w : Fin n -> Alphabet, and w^∞ the infinite repetition under the exact source repeatBlock. Let L(G) be the entire original graph finite-word language. Define P_n(w) to mean EVERY finite block of w^∞ lies in L(G), exactly the existing PeriodicLabelPoint predicate for language=L(G).

The new mathematical theorem is:

  **P_n(w) iff there exist 1 <= k <= q and s : State
       with WordPath G s (w repeated k times) s.**

This bound is SHARP, not an unspecified eventual period. Proof:

Forward: the finite prefix w^q of w^∞ is an admitted finite word (including the empty word when q=0). Exact language equality gives one genuine WordPath through that entire finite prefix. Split this one path at q word-block boundaries, yielding q+1 boundary states s_0,..,s_q. For q=0 no start state exists, hence P_n(w) is false, and the conclusion is also false. For q>=1, pigeonhole gives 0<=i<j<=q with s_i=s_j. The actual subpath from boundary i to j is closed and has emitted word w^(j-i). Thus 1<=j-i<=q. This makes explicit the finite-state source of the period multiplier.

Reverse: repeat a genuine closed path on w^k indefinitely. The emitted infinite word is exactly w^∞ (the k-fold block has the same period w). Every finite factor, at every offset and length, is a contiguous subword of a sufficiently long finite repetition of that ACTUAL closed path. The preceding SoficFiniteRepeatClosure supplies this finite-list argument as a separate source candidate. Every factor therefore belongs to L(G), with no deterministic, irreducible, right-resolving or synchronizing presentation assumed.

For ANY finite word w (including empty w as a separate harmless counting case), B_w^k(s,s) counts genuine k-block closed path lift sequences, by finite matrix multiplication and the exact WordPath/LabeledWalkData correspondence. All coefficients are natural numbers, so trace(B_w^k)>0 iff such an s and k-block closed path exist.

Consequently, for positive n:

  **P_n(w) iff there exists 1 <= k <= q with trace(B_w^k)>0.**

For a selected exact finite-word language language, the number of DISTINCT period-dividing-n label points is therefore an explicit finite integer sum

  **P_n = sum_(w : Fin n -> Alphabet)
       1_[exists 1<=k<=q : trace(B_w^k)>0].**

The total graph trace, by contrast, is sum_w trace(B_w), and may overcount or miss individual periodic label points. The q-state bound is optimal: with q states arranged in a single directed q-cycle, each edge labeled by the only symbol a, the word w=[a] has its first closed based lift at exactly k=q, for every q>=1.

The gap k>1 is the exact mechanism behind the alternating-state example. Multiple diagonal lifts at k=1 explain duplicate-loop overcounting. This is a finite graph theorem, not a proof that arbitrary sofic presentations are bijective on periods.

## 3. Exact Lean target partition and no-circularity controls

The new source explicitly defines THREE genuinely unproved Lean propositions:

- WordPowerClosedPathBridge: source-exact positive trace of (B_w)^k iff some ORIGINAL WordPath labeled by k actual copies of w is closed.
- FiniteStateBlockBoundaryPigeonhole: any admitted w^q path has a closed actual subpath w^k, 1<=k<=q.
- BoundedPeriodicWordMatrixCriterion: given equality with the WHOLE graph language, the original period-n label-point predicate is exactly some 1<=k<=q positive word-matrix trace.

These are *Prop targets*, NOT axioms or author-accepted theorems. The four source by-proof candidates for word-resolved trace and conditional cardinality are also uncompiled. The currently unproved target is not moved into a hidden parameter of an asserted unconditional theorem.

The ordinary mathematical proof above uses no RH input, no spectral zeta identification and no source-coefficient substitution. The original faithful and complete period-n lift conditions remain necessary if the goal is an unconditional identity between P_n and trace(A^n) for a CHOSEN presentation. They are false for general exact-language presentations.

## 4. Independently executed exact finite diagnostics

Independent Python script sofic_word_periodic_matrix_bound.py created and executed in this conversation, without importing prior sofic test scripts. Exact output is sofic_word_periodic_matrix_bound.json, both retained in conversation scratch space, NOT in grwtsk/math or Noe native receipt store.

- 1,060 finite directed labeled graphs, including ALL graphs with 0..2 states and 0..2 symbols, ALL 3-state one-symbol graphs, and seeded 3-/4-state graphs with 2 or 3 symbols.
- 48,812 positive-period label-word cases (periods n=1..5); independent reachable-state-subset/phase algorithm agreed with existence of positive trace(B_w^k) at SOME 1<=k<=q in every case.
- 42,202 admitted period-word cases, including 458 with NO first-power based lift (but a lift at higher k).
- 523,733 exact matrix-entry expansion checks for all lengths n=0..5: A^n equals the sum of all word transition matrices B_w of length n; matrix traces agree.
- Sharpness checked for directed q-cycles, word w=[a], at EVERY q=1..7. First positive trace occurs at k=q, no smaller.
- 284 tested admitted fixtures had minimum lift exponent exactly the number of graph states (some q=1 trivially).
- All checks PASS in Python arbitrary-precision integers. For infinite periodic-word membership, the independent phase/reachable-subset automaton iterates until a pair (phase, state subset) repeats or reaches empty; it does not merely sample an arbitrary short prefix.

Script SHA-256 25349a454c1ef420f553da12d3d69346118532be6155ce0d2cab7bc20fc857d9; JSON SHA-256 54a9a37f3c79304ef712cb71a6da353c9c15a4bca27e83a07d64294cb5a7850b. These are finite exact diagnostics, not evidence of universal Lean proof or kernel verification.

## 5. Acceptance status and next action

The canonical Noe source-bound skill noe-proof-automation at main revision 750ce416070f51dca6cdb819e277d2593dccb5ba was consulted, blob 5292446e4ef1398ba928d8ad339b662415166f19. No verified local Noe/math checkout, lean, lake or elan executable exists in the current environment. No runtime owner, native activation, worker, CI or scheduler was dispatched. The native managed registry-v3 source reconstruction path is governed by separate authorization and resource holds; do not substitute a standalone compiler or present a static proof candidate as passed.

Native compilation: NOT_RUN; fresh trust=0 kernel replay: NOT_RUN; expected types/universes: NOT_RUN; complete imported closure: NOT_RUN; transitive axiom audit: NOT_RUN; host owner restoration: NOT_CHECKED; mathematical admission: PENDING.

The next specifically scoped formal work is to close FiniteStateBlockBoundaryPigeonhole and WordPowerClosedPathBridge using the pinned WordPath splitting and finite Fintype pigeonhole, then complete BoundedPeriodicWordMatrixCriterion and replay the entire source/import closure. The word-resolved trace proof candidates should be compiled first because they have no new mathematical premises.

This result is **NOT** a dynamical zeta determinant theorem, RH result, general sofic pseudofunctor, or unqualified count equality. Issue grwtsk/math#1576 remains OPEN.
