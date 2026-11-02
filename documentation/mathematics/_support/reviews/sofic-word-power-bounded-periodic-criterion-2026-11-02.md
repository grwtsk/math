# Exact word-matrix powers and bounded periodic-label criterion

Review date: 2026-11-02. Mathematical attribution: grwtsk contributors; source formalization and independent finite verification assistance: OpenAI ChatGPT.

**Verification classification: ordinary mathematical proofs and full Lean source-proof candidates; not native Lean proof acceptance.**

## 1. Source and immutable mathematical boundary

The established source definitions are preserved, not replaced:

- Canonical certified transversal \`CertifiedTransversal.lean\`, source Git blob \`df720cbb72c616938635c20477430f5f0ded4021\`.
- Exact *whole finite-word* graph language \`ExactSoficLanguageCover.lean\`, blob \`f50489eaf6c7277993a08925a58b7765f9e10ec9\`, with the genuine \`WordPath\` inductive proposition and \`wordPath_append\` / \`wordPath_split_append\` lemmas.
- Whole-language consumer \`SoficLanguageTransversal.lean\`, blob \`238da905b6595c944cac40f39ae2f54870032132\`.
- Original \`LabeledWalkData\`, \`walkDataLabels\`, \`basedCycleWord\`, \`PeriodicLabelPoint\`, \`labeledAdjacency\` and \`repeatBlock\` in \`SoficPeriodicMatrixTrace.lean\`, blob \`70e416083e8fd1238ffdd8896f984e0a5382c139\`.
- Original finite-inductive-path \`Fintype\` and trace/cardinality bridges in \`SoficBasedCycleCard.lean\`, blob \`d7fd2f5aad643d4350e4b5bfd7128dd979717a74\`.
- Original repeated-source path, finite factor extraction and \`finiteCopies\` in \`SoficCycleRepeatBridge.lean\`, blob \`a05e7d4527b6e37d59a48288f1e58e1a3867ca56\`.
- Original exact word-lift matrix \`wordLiftMatrix\` and three open named propositions in \`SoficPeriodicWordMatrix.lean\`, blob \`d8f0423d8b872e5045c779544bd39eb1bad7adfe\`.
- Existing sharp q-state macro-boundary pigeonhole source candidate in \`SoficMacroBoundaryPigeonhole.lean\`, blob \`3cefc809745c95b490b3dce20880da7bd82ff9a4\`.
- Existing genuine closed-cycle/full-language repetition candidates, including \`SoficFiniteRepeatClosure.lean\`, blob \`e8d8dcc01f4e9f067cb9041ad5e54f7dd79d0962\`, and exact lift-fiber ledger \`SoficPeriodicFiberLedger.lean\`, blob \`becfa9cfddb8479c36a007c17d8be4d0d7defe05\`.

The new, additive source proof candidates are:

1. \`GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordPowerClosedPath.lean\`, Git blob \`fc3842103f18ecd42aa1587d8bc9556d6144a3c2\`.
2. \`GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBoundedWordMatrixCriterion.lean\`, Git blob \`3be4fc0e7b953c22e14749b8ad933b0ab851de1b\`.

Pinned toolchain: \`leanprover/lean4:v4.34.1\`, Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`, toolchain blob \`ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5\` and lake-manifest blob \`c8044c56be77c58e6f41cca024b25237c59e8c79\`. The extra finite alphabet premise is kept explicit; the original exact sofic presentation guarantees only finite graph states.

## 2. Exact cardinality, preserving nondeterministic path multiplicity

For each finite original label word w and vertices s,t, let

\[
E_w(s,t)=\{p:\operatorname{LabeledWalkData}_G(|w|,s,t)\mid
   \operatorname{walkDataLabels}_G(p)=w\},
\qquad B_w(s,t)=\#E_w(s,t).
\]

The existing \`wordLiftMatrix G w\` is EXACTLY \`B_w\`, with no label-indexed edge or source-path substitute.

A \`WordBlockChain G w k s t\` is an inductive type:
- zero blocks consist of one witness only when s=t;
- a nonzero chain is uniquely a previous k-block chain ending at some genuine intermediate state u, plus one original witness in \`E_w(u,t)\`.

The source proves finite equivalences between those type constructors and, respectively, \`PLift(s=t)\` and the dependent sum \`Σ u, WordBlockChain k s u × E_w(u,t)\`. A recursive \`Fintype\` counts ALL such witnesses. Their exact cardinalities satisfy

\[
C_0(s,t)=\mathbf1_{s=t},\qquad
C_{k+1}(s,t)=\sum_u C_k(s,u) B_w(u,t),
\]

so by induction

\[
\boxed{C_k(s,t)=(B_w^k)(s,t)\quad\text{for all }k,s,t.}
\]

The number on the left counts every actual source path choice inside every word block, and every intermediate state, not merely the existence of a macro graph edge. Therefore this statement retains all nondeterministic path multiplicities. It includes k=0, empty words and an empty state carrier. The source theorem is \`wordBlockChain_card_eq_matrixPow\`, with a separate based diagonal identity \`trace_wordLiftMatrix_pow_eq_basedBlockChain_card\`.

## 3. Actual WordPath versus block-chain positivity

The original \`LabeledWalkData\` is built by *snoc*, whereas the original \`WordPath\` is built by *cons*. The source therefore has a private \`prependLabeledWalkData\` recursion that prepends an actual original edge while retaining each subsequent snoc witness. Its separate \`prependLabeledWalkData_labels\` lemma proves preservation of the COMPLETE emitted word.

Induction on the source \`WordPath\` yields an original \`LabeledWalkData\` witness for precisely the same word and endpoints. This existence proof remains in \`Prop\` (\`Nonempty\`) and does not illegally eliminate a proof-valued WordPath into a \`Type\`.

Conversely, \`wordPath_of_wordBlockChain\` composes each block's real original labeled path by \`wordPath_append\`. The reverse implication \`wordBlockChain_nonempty_of_wordPath\` recursively splits a genuine WordPath emitting k copies into a previous repeated prefix and one entire final original word, using the original \`wordPath_split_append\`. Each resulting exact-word segment becomes a true source \`LabeledWalkData\` witness.

Consequently, for every k including zero:

\[
0<(B_w^k)(s,t)
\;\Longleftrightarrow\;
\operatorname{WordPath}_G(s,\operatorname{finiteCopies}(w,k),t).
\]

Taking the diagonal and using the exact finite cardinality of \`Σ s,WordBlockChain G w k s s\` proves

\[
\boxed{\operatorname{tr}(B_w^k)>0
\iff
\exists s,\operatorname{WordPath}_G(s,\operatorname{finiteCopies}(w,k),s).}
\]

The theorem \`wordPowerClosedPathBridge_proof : WordPowerClosedPathBridge G w\` is a no-sorry, no-extra-arithmetic-hypothesis full Lean BY-PROOF SOURCE CANDIDATE. It has not been compiled or elaborated with the pinned toolchain.

## 4. Closing the exact bounded periodic-word criterion at source level

Let n>0, let \`letters : Fin n → Alphabet\`, write w=\`List.ofFn letters\`, and let q=\`Fintype.card State\`. The previous \`SoficMacroBoundaryPigeonhole.finiteStateBlockBoundaryPigeonhole_proof\` is a source candidate for the optimal finite-state statement:

\[
\operatorname{GraphLanguage}_G(w^q)
\implies
\exists\,1\le k\le q,\,s,\quad \operatorname{WordPath}_G(s,w^k,s).
\]

The new source separately supplies \`finiteCopies_is_periodicBlock\`, proving that the actual w^q is a finite block of the infinite \`repeatBlock\` sequence at offset zero. The exact original equality \`language word ↔ GraphLanguage G word\` therefore converts admission of every periodic finite factor into an actual graph path across q whole word blocks. The pigeonhole theorem gives a closed k-fold word path, and the just-proved word-matrix bridge gives the required positive trace of \`B_w^k\`.

For the converse, a positive matrix trace gives a genuine original closed path labeled by k copies. The new \`finiteCopies_add\` and \`finiteCopies_mul\` retain the ORIGINAL list concatenation and establish \`(w^k)^r=w^{kr}\`. For an arbitrary finite block at arbitrary offset o with block length L, choose r=o+L+1 and total=k*r. Since k>=1 and n>=1, \`o+L≤total*n\`; the pinned \`List.infix_iff_getElem?\` plus the actual original \`List.ofFn_fin_repeat\`/modulo identities place the block as an exact contiguous factor of w^total. Repeating the genuine original closed w^k path r times realizes that whole word in the original graph; two actual \`wordPath_split_append\` uses return the block to \`GraphLanguage G\`, hence to the chosen exact language.

This proves the ordinary mathematical theorem:

\[
\boxed{\forall w\in\Sigma^n,\quad
\bigl[\text{every finite block of }w^\infty\in\mathcal L(G)\bigr]
\iff
\exists\,1\le k\le q:\operatorname{tr}(B_w^k)>0.}
\]

The source theorem \`boundedPeriodicWordMatrixCriterion_proof :
BoundedPeriodicWordMatrixCriterion G language n hn\` takes NO \`WordPowerClosedPathBridge\`, \`FiniteStateBlockBoundaryPigeonhole\`, or extra periodic factor premise. They are supplied by the corresponding independent source proof scripts.

The final source theorem
\`periodicLabelPoint_card_eq_boundedWordCount_proof\` gives a source-level count of DISTINCT period-dividing-n label points:

\[
\#P_n(\mathcal L(G))=
\sum_{w\in\Sigma^n}
  \mathbf1\bigl[\exists\,1\le k\le q:\operatorname{tr}(B_w^k)>0\bigr].
\]

This is NOT the generally false assertion \`#P_n=trace(A^n)\`. Original \`FaithfulCycleWords\` and \`CompleteCycleLifts\` remain independent requirements for that *different* equality. The double-loop and alternating-state counterexamples are retained.

## 5. Independent exact finite diagnostics

The new scratch reference \`sofic_word_power_chain_reference.py\` does not import any previous sofic test file. It enumerates ORIGINAL graph-state paths as literal vertex tuples for a given emitted word and compares exact complete witness sets from concatenated word-block paths to the ORIGINAL true paths for the concatenated word. It independently calculates arbitrary-precision integer matrix powers of \`B_w\`.

Result: 358 finite directed labeled graphs (all edge-subset graphs on 0–2 states with 0–2 symbols, plus 75 seeded 3-state graphs); 2,272 graph/word combinations; 50,855 exact endpoint witness-set and matrix-power checks; 50,855 positivity checks; 10,975 exact trace checks; 89,872 enumerated actual witness occurrences. Maximum endpoint witness cardinality 144. The one-symbol q-cycle sharpness check passed at all q=1..7 (28 power comparisons). **All finite checks passed.**

Script SHA-256 \`e013ca797a55cbf28856e7e9a3636f1bd798fac94818143cfb22aa84655bbc48\`.
Result JSON SHA-256 \`fe87cc525646b78920e08deaf84150bc51ccf314038ae290f9e9be4a88e1e44d\`.

The previous independent finite sharp-period script \`sofic_word_periodic_matrix_bound.py\` was rerun without source changes and reproduced result JSON SHA-256 \`54a9a37f3c79304ef712cb71a6da353c9c15a4bca27e83a07d64294cb5a7850b\`. It checks 1,060 finite graphs, 48,812 periodic-word cases and 523,733 finite matrix-entry expansions, including examples where no one-period lift exists. Neither test constitutes a Lean compiler receipt or infinite theorem proof.

## 6. Evidence, known limitations and next acceptance

The pinned Mathlib interfaces include \`Fintype.card_sigma\`, \`Fintype.card_prod\`, \`Fintype.card_pos_iff\`, \`Matrix.mul_apply\`, \`List.ofFn_fin_repeat\`, and Lean 4.34.1 \`List.infix_iff_getElem?\`. Their use is consistent with the actual source and theorem declarations, but **Lean elaboration has NOT been run**. In particular, the zero/snoc equivalences, dependent \`Fintype\` recursion, original edge-prepend recursion, reverse-path existence proof, \`Fin\` casts and finite-repeat modulo rewrites can require corrections during native compilation. A no-sorry static source scan is not a compiler or transitive axiom audit.

No local \`lean\`, \`lake\`, \`elan\` or verified Noe/math checkout is available in this container; no approved Noe managed native replay/host owner was invoked. The current \`noe-proof-automation\` skill at Noe main revision \`eeaed88c12d7d77ad76dbc1a021f8a6da68a44bc\`, canonical skill blob \`5292446e4ef1398ba928d8ad339b662415166f19\`, requires source-bound native registry-v3 execution with managed resource admission. No runner, scheduler, queue or host lock was bypassed.

Required acceptance checks, explicitly NOT_RUN:
1. Native compilation against one immutable math commit, full actual \`GRWTSK\` and pinned Mathlib import closure.
2. Fresh trust=0 kernel replay and expected theorem types/universes for named declarations.
3. Complete transitive axiom auditing of imported, generated, opaque and private declarations, with exact receipts.
4. Noe owner resource-state restoration and receipt binding.

Until those checks pass, \`WordPowerClosedPathBridge\` and \`BoundedPeriodicWordMatrixCriterion\` have complete source-proof candidates and ordinary mathematical proofs, **not kernel-verified Lean closure**. Issue #1576 must remain open. No generic sofic trace=periodic-point equality, dynamical zeta determinant identity, RH or unrelated arithmetic theorem is asserted.
