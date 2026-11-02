# Binder abstraction and joint-premise semantics for `Nat.le_trans`

Local attribution: grwtsk contributors. Authored mathematical review.
Source publication and logical acceptance are separate events.

## Abstract

A finite proof-search rule must not be reconstructed from a theorem name alone.
The existing [scoped `Nat.le_trans` recognizer](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/ScopedNatLeTransExpression.lean)
holds an exact five-argument Lean expression and an environment-dependent
type observation. This increment gives an explicit five-binder *closed* de Bruijn
lambda and dependent theorem type, compares abstractions of actual local variables
against those templates and the imported declaration in `MetaM`, and proves
at the object level that the corresponding proof-bearing inference rule requires
**both** of its genuine premises.

The source-level candidate advances context abstraction, not a general
`Lean.Expr`-to-`InstantiatedApplication` reflection theorem. No metaprogram
observation, type inference or matching source label is treated as a certificate
of kernel verification or Git provenance.

## Objects, hypotheses and exact quantifier order

The [new source](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/NatLeTransBinderAbstraction.lean)
imports the existing scoped expression implementation. It reads the actual
`Nat.le_trans` source theorem in Lean 4.34.1:

```lean
protected theorem Nat.le_trans {n m k : Nat} :
    n ≤ m → m ≤ k → n ≤ k
```

The three `Nat` indices are implicit. The proof premises are explicit,
conjunctive and ordered. In the lambda or forall body after binding
`a,b,c,hab,hbc`, the de Bruijn indices are respectively `4,3,2,1,0`.
The type for `hab` is constructed under the first three binders and
therefore refers to `a=2,b=1`. The type for `hbc` is constructed under
four binders and therefore refers to `b=2,c=1`. The conclusion after
all five binders refers to `a=4,c=2`.

These are **not** five unrelated proposition labels. Every occurrence is
bound in the same telescope. Reordering the argument list or replacing
a local hypothesis with evidence from a different context is not licensed.

## Mathematical argument and source declarations

`canonicalNatLeTransBody` constructs the exact expression

```text
Nat.le_trans (#4) (#3) (#2) (#1) (#0)
```

where `#i` denotes de Bruijn index `i`, not a natural-number literal.
`canonicalNatLeTransLambda` binds the five parameters and premises in order.
`canonicalNatLeTransForall` constructs the corresponding dependent
proposition with the genuine implicit/explicit binder distinction.

`closedBinderSyntaxAt` is a pure structural analysis of actual
`Lean.Expr` constructors, tracking binder depth. It rejects free variables,
metavariables, unsupported universe levels and unsupported expression forms.
The written candidate lemmas
`canonicalNatLeTransLambda_closed` and
`canonicalNatLeTransForall_closed` establish closedness at depth zero;
`canonicalNatLeTransBody_unbound` records that the raw five-argument body
is **not** closed before abstraction.

`inspectNatLeTransAbstraction` uses the already restricted
`inspectScopedNatLeTrans` witness and extracts the five actual local
expressions in their original order. At the *current elaboration environment*
it asks Lean to perform:

1. `mkLambdaFVars` on the actual source expression and all five locals.
2. `mkForallFVars` on the observed conclusion type and those same locals.
3. Rejection if either result retains free variables, metavariables,
   universe parameters or loose bound variables.
4. `isTypeCorrect` on the abstraction, followed by inferred-type
   and definitional-equality comparisons with the explicit lambda and
   forall templates and the actual `Nat.le_trans` declaration type.

The returned `ScopedNatLeTransAbstraction` records these observations.
`scopedNatLeTransAbstraction_source_exact` separately reuses the
original indexed expression equality. No native run of the observer
has been witnessed; its return type does not contain a Lean proof that
the metaprogram was executed or that the environment was authenticated.

The **mathematically useful result** is
`scopedNatLeTrans_premises_iff`, which states for all natural
`a,b,c`:

\[
\bigl(\forall p\in
  (\operatorname{orderTransitivity}(a,b,c)).\mathrm{premises},
  \ \operatorname{Meaning}(a,b,c,p)\bigr)
\iff (a\le b\ \land\ b\le c).
\]

The forward argument extracts exactly the two premise positions.
The reverse argument classifies each premise list membership as
either `premiseAB` or `premiseBC`, with no third case.
`scopedNatLeTrans_certificate_return` then applies the existing
proof-carrying `InstantiatedApplication` to recover `a≤c`.
It explicitly reuses `Nat.le_trans`; it is not a distinct proof route.
A concrete hostile lemma chooses `a=1,b=2,c=0` and rejects the
unsound rule `a≤b → a≤c` without `b≤c`.

## Actual source and API comparison

Existing Math source identities observed on maintained `main`:

- [`ScopedNatLeTransExpression.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/ScopedNatLeTransExpression.lean), Git blob `31cc997065f56f2a52eb4f47deb7f576face4aec`.
- [`InstantiatedRuleCertificates.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/InstantiatedRuleCertificates.lean), Git blob `8a947b13ef0f4fdca9127620d11a99870d4b121a`.
- [`LeanExprConstantSpine.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprConstantSpine.lean), Git blob `1f30c4f428a110f4d574abdfc6ee463e3f35cf75`.

Relevant Lean 4.34.1 upstream APIs were read directly:

- [`src/Init/Prelude.lean`](https://github.com/leanprover/lean4/blob/v4.34.1/src/Init/Prelude.lean), blob `66af67237683d3c7f8230bcf473c0871e67749a2`: actual `Nat.le_trans` declaration.
- [`src/Lean/Expr.lean`](https://github.com/leanprover/lean4/blob/v4.34.1/src/Lean/Expr.lean), blob `6aeb819ba60e92ed5f325b2f594f3ed610845e38`: constructors, `mkApp5`, `hasFVar`, `hasMVar`, `hasLevelParam`, `looseBVarRange`.
- [`src/Lean/Meta/Basic.lean`](https://github.com/leanprover/lean4/blob/v4.34.1/src/Lean/Meta/Basic.lean), blob `e207f8f137bda69488be8424896fd82bad6cca8`: `mkLambdaFVars`, `mkForallFVars`, `inferType`, `isDefEq`, `withLocalDeclD`.
- [`src/Lean/Meta/Check.lean`](https://github.com/leanprover/lean4/blob/v4.34.1/src/Lean/Meta/Check.lean), blob `3796de18422be472bddb3d8e6e7710ede519f4c7`: `isTypeCorrect`; `checkWithKernel` for an independently run native checker.

These upstream definitions support the *form* of the candidate. Reading
their source does not establish that the new file elaborates or that
the Meta observer returns `some` in the pinned build.

## Verification, counterexamples and unresolved bridge

- Source status: **SOURCE_PROOF_CANDIDATE**.
- Exact Git publication, blob readback and reviewed diff: recorded in
  its passive verification issue when published.
- Compilation/elaboration: **NOT_RUN**.
- `inspectFreshNatLeTransAbstraction` invocation and Meta type comparison:
  **NOT_RUN**.
- Fresh Lean kernel replay and transitive axiom audit: **NOT_RUN**.
- Source-to-`Lean.Expr` and object-level theorem proof correspondence:
  **PARTIAL** — the actual constant and typed mathematical counterpart
  are identified, but the full environment-bound refinement is not proven.
- Independent analytic proof, automatic general extraction, AI performance
  and SAT complexity: **NOT_CLAIMED / NOT_MEASURED**.

The main remaining obligation is **source-bound, native reification of
the closed expression**. In an authorized checker, compare the actual
abstracted term and type to the pinned declaration using the Lean kernel;
verify exact binder identity, source environment, local contexts, all
premise proof arguments and generated/private axiom dependencies.
Only then connect that checked term to the typed finite
`InstantiatedApplication` through a formally reviewed bridge.
A successful Meta `isDefEq` check is not an independent kernel receipt.

The work is tracked by [math #1618](https://github.com/grwtsk/math/issues/1618),
[math #1612](https://github.com/grwtsk/math/issues/1612), and
[Noeaaeue #406](https://github.com/grwtsk/noeaaeue/issues/406).
Operational execution, artifact receipts and source-matched proof checking
belong to Noeaaeue, not to executable processes committed in the Math tree.
