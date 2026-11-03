# From locally scoped `Nat.le_trans` proof arguments to a closed proof expression

Local attribution: **grwtsk contributors**. Date: 2026-11-02.  Formalization assistance: ChatGPT.

Disposition: **mathematical proof candidate plus MetaM-observer source; not compiled, executed, kernel checked or independently audited.** The result is a scoped extractor contract, not a repository-wide verified extractor or a new theorem of number theory.

## Consumer and exact source

This is the immediate successor to [the restricted Nat application formalization](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprNatLeTransReification.lean) and [the proof-bearing quantitative sofic connection](../../../../GRWTSK/Combinatorics/GraphTheory/CheckedApplicationSoficBridge.lean). The inspected immutable baseline was `grwtsk/math@b43c7d444c29bbc358defbd01da2064e23a502b4`. At that baseline:

- `LeanExprNatLeTransReification.lean`: Git blob `76f4c23f368a7cb0cdddaf7333f09c159750106f` (exact raw expression with literal Nat parameters and two original proof arguments; Meta observer but no proof-term closure).
- `LeanExprConstantSpine.lean`: blob `1f30c4f428a110f4d574abdfc6ee463e3f35cf75` (closed constant application syntax, not a general binder extractor).
- `InstantiatedRuleCertificates.lean`: blob `8a947b13ef0f4fdca9127620d11a99870d4b121a` (genuine two-premise `Nat.le_trans` rule in a fixed interpretation).
- `CheckedApplicationSoficBridge.lean`: blob `7cf8b5905fae6cd828b3dc65145529635cc605e2` (certified lower edge has both interpreted premise proofs and independent signed numerical return).

The new local source is `GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprScopedNatLeTransClosure.lean`, in the existing namespace `GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite`. The final commit and new blob must be read back after publication; the baseline SHA above is not a verification receipt. Toolchain: Lean `v4.34.1`; pinned Mathlib at this baseline `d13f23b723b8a846827a245b89c10fc7d3f11612` (verify at final commit).

## Principal construction: preserve real local proof identity

Restrict to the *exact* elaborated expression

```
Nat.le_trans (a : Nat literal) (b : Nat literal) (c : Nat literal)
  (Expr.fvar leftId) (Expr.fvar rightId)
```

with its original de Bruijn-free `Lean.FVarId` identities. `parseScopedNatLeTrans` starts from the already source-indexed literal parser and only accepts direct `.fvar` proof arguments. It returns `ScopedNatLeTrans source` with a proof of equality to the original expression. The real constant head, three literal parameters, two proof positions and two identities are preserved. An unrelated declaration, constructed proof expression rather than direct fvar, wrong shape, metadata wrapper, missing argument or extra application is *not in the accepted grammar*.

The separate `MetaM` observer `observeAndAbstractScopedNatLeTrans` additionally enforces: two distinct fvars; no expression/universe metavariables in the source; both IDs present in the *current actual* Lean local context; their declared types free of fvars and metavars; `left : a ≤ b` and `right : b ≤ c` by definitional equality; full source `isTypeCorrect` before `inferType`; and actual conclusion `a ≤ c`.

It then calls `Lean.Meta.mkLambdaFVars #[left,right] source`, which binds precisely the original two local hypotheses. Before emitting an observation, it checks that the resulting `closedProof` contains no free variables, metavariables or universe parameters, is Meta-type-correct, and has type definitionally equal to

```
(a ≤ b) → (b ≤ c) → (a ≤ c).
```

Finally it applies this resulting lambda to the *original same* two fvar expressions and checks definitional equality to the original source expression. The emitted record retains the original indexed parser witness, full closed proof expression, and inferred type. These are the actual `Lean.Expr` objects, not labels or string normalizations.

**Argument:** dependent source indexing proves literal reconstruction. In the supported case every possible free variable occurrence of the original term is one of the two explicitly named proof fvars, since the head and all numeric parameters are closed literal constructors. Lambda abstraction binds those occurrences and preserves their original order. Applying the two arguments β-reduces to the same original application. The Meta observer tests that fact and the exact proof types in its ambient environment, but this argument has **not** yet been formalized as a standalone kernel theorem about the implementation of the Meta interpreter. Noe must still obtain its own source/environment-bound checker receipt.

## Consumer-facing result and trust boundary

`ScopedNatLeTrans.toLiteral` hands the exact syntactic witness to the original `LiteralNatLeTrans` carrier, whose `toApplication` uses the genuine kernel-level theorem `Nat.le_trans` as its *semantic* consequence, retaining BOTH premises `[(a,b),(b,c)]` and conclusion `(a,c)`. `ScopedNatLeTrans.certifiedWord_of_typed_premises` explicitly requires separate Lean terms `hab : a≤b` and `hbc : b≤c`; `certified_signed_return` reuses the existing lower/certified sofic path and its exact signed allowance. A `MetaM` success **is not** converted to those Prop witnesses by an axiom or unchecked cast.

A downstream checker can now consume an emitted **closed, exact proof Expr** at the expected two-implication type and ask the Lean kernel to validate *that exact emitted term*, then bind the resulting trustworthy theorem to the existing typed application. This is a concrete interface for Noe proof automation. It is **not yet** implemented/accepted as an end-to-end native workflow.

## Hostile counterchecks and limits

1. Missing or out-of-context fvar IDs: `getDecl` fails; the observer returns `none`, not an inferred proof.
2. Swapped local assumptions with distinguishable types: at least one declared type mismatches; no accepted observation.
3. A duplicate fvar ID in both slots: rejected deliberately, even when both propositions coincide. This is a **restricted-coverage refusal**, not a claim that such a valid use is impossible.
4. Wrong types, free-variable-dependent types, metas, different theorem heads, extra argument, wrong binder count: rejected rather than reinterpreted.
5. `inferType` alone is never an acceptance gate. The observer also calls `isTypeCorrect`, checks a closed two-premise type, and checks the β-reapplication return. These are still Meta observations, not kernel certification.
6. The source is not self-applying to a real elaborated term in this environment. The `observeScopedReference` fixture is a **definition** and is NOT_RUN; a Lean build/Meta invocation must exercise it.
7. A metadata field identifying a Git repository/commit is not authenticated by elaboration. Noe must bind the exact local Lean environment, declaration, source bytes, resource profile and independent kernel result.
8. A candidate/admissible sofic edge has no such proof. A certified edge still needs complete typed proof premises and the independent observation-defect bound.
9. The restriction to literal Nat parameters and direct fvars excludes general local Nat expressions, typeclass/binder-context transports, metavariable unification and arbitrary dependent theorem applications. Retain these as omitted coverage, never as negative proofs.

The mathematical statement remains elementary `Nat.le_trans`; novelty and independent analytic research claims are not made. The prior source-only proof of the two-premise rule is reused, not independently reproved. The original source-to-target signed defect remains supplied by `CheckedApplicationSoficBridge`, not invented here. The Noe search index and its finite sofic support are discovery mechanisms, never proof admission by path rank.

## Evidence and next obligation

- New pure Lean mathematical/Meta source: **AUTHORING COMPLETE; COMPILATION NOT_RUN; META EXECUTION NOT_RUN; FRESH KERNEL NOT_RUN; TRANSITIVE AXIOM AUDIT NOT_RUN**.
- Independent finite reference checks on a small simulated `Expr` grammar/context: see the separately generated diagnostic, with domain and true count in its local report; **no proof of Python-to-Lean refinement**.
- No toolchain, root import, taxonomy files, original declaration statements or historic receipts modified.
- Exact source-commit verification target is adjacent under `documentation/mathematics/_verification/targets/`.

**Next nontrivial gate:** independently compile the new module with the selected pinned Lean/Mathlib closure; execute `observeScopedReference` and failures in an actual `MetaM` context; kernel-check the exact emitted closed proof expression and its type through the reviewed Noe managed contract route; then establish a checked, context-preserving correspondence between this accepted term and the `InstantiatedApplication`/sofic `Meaning` proposition, without assuming Meta success automatically grants proof authority. First expand only to direct distinct fvars, not unrestricted elaborated expressions.
