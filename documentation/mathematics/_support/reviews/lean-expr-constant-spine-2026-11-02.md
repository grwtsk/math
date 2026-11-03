# Lean expression application spines: exact syntax before semantic reification

Local attribution: grwtsk contributors. Source-level mathematical review.
Baseline inspected: `grwtsk/math@2bdfc59443e1185467cfab0730aee88d3f630aff`.
Related continuation: [source-connection audit #1609](https://github.com/grwtsk/math/issues/1609),
[proof-bearing application audit #1606](https://github.com/grwtsk/math/issues/1606),
and [Noeaaeue structural programme #406](https://github.com/grwtsk/noeaaeue/issues/406).

## Problem and exact objects

The repository's [proof-carrying finite application model](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/InstantiatedRuleCertificates.lean)
requires a `Rule α` and an actual Lean proof that **all** interpreted
premises imply the interpreted conclusion. The subsequently published
[finite Horn comparison](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteHornSemantics.lean)
and [source-connection atlas](finite-proof-source-connections-2026-11-02.md)
work with these *already supplied* rules. They do not extract rules from
arbitrary elaborated Lean expressions.

This increment implements the first, strictly syntactic part of that
bridge in [LeanExprConstantSpine.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprConstantSpine.lean).
The source is an actual `Lean.Expr`, **not** a textual theorem name,
JSON object, source index link, or metaprogrammer's guess.

The accepted grammar is limited to expressions

```
Expr.const declaration universeLevels
Expr.app (... (Expr.app (Expr.const declaration universeLevels) arg₁) ...) argₙ
```

with explicit arguments in their original order, a constant head found in an
explicit caller allowlist, closed universe levels (no level parameters or
metavariables), and arguments built solely from sorts, named constants,
literals and applications of those. Free variables, bound variables,
metavariables, lambdas, foralls, let-bindings, projections, metadata wrappers
and unsupported level forms are rejected in this restricted version.
This is deliberately narrower than arbitrary legal Lean elaborations.

## Mathematical construction and proof

`NamedConstantSpine source` is an *indexed* witness: the `head`
constructor names the actual `Expr.const`, and each `apply` constructor
adds an actual `Expr.app` whose function is the preceding indexed source.
The functions `headName`, `universes` and `arguments` read those exact
constructors. `rebuildConstantSpine` performs left-associated application.

The source-level theorem candidate

```lean
NamedConstantSpine.rebuild (spine : NamedConstantSpine source) :
  rebuildConstantSpine spine.headName spine.universes spine.arguments = source
```

proceeds by induction on this witness. The head case is definitional
equality. The application case uses preservation of the original argument
order under `List.foldl_append`; there is no comparison to an external
string identity. `parseNamedConstantSpine` either constructs such an
indexed witness from the actual constructors or returns `none`.
`RecognizedClosedSpine` adds proof fields for the allowlist, universe
and argument guards; the `recognizedClosedSpine_exact` theorem reuses
the indexed reconstruction proof.

`observeMetaTypedClosedSpine` is a separately labeled `MetaM`
operation: after the structural checks, it calls `Lean.Meta.isTypeCorrect`,
and only for a successful check records a type from `Lean.Meta.inferType`.
This order matters because Lean's own documentation warns that
`inferType` can succeed on **ill-typed** applications; `Meta.check`
is an elaborator-level check, not a kernel acceptance receipt. See
[Lean.Meta.Check](https://lean-lang.org/doc/api/Lean/Meta/Check.html)
and [Lean.Expr](https://lean-lang.org/doc/api/Lean/Expr.html).

This observer is *environment-dependent*. Its return value is not an
authenticated declaration-to-Git mapping, nor does it create a new theorem
in the kernel. An allowlist is an input policy, not a source authority.

## Adversarial and finite boundaries

A raw `Nat.zero Nat.zero` application has a named constant head and can
be reconstructed syntactically, but is not a well-typed Lean application.
`malformed_has_constant_spine` illustrates why recognition alone does not
give semantic typing. Separate source-level declarations reject a bare
free-variable head, metavariable head, and lambda head.

A local, ephemeral, *non-Lean* structural reference check covered 336
expression trees from seven elementary node classes and bounded applications;
226 recognized constant-headed spines reconstructed exactly and 90 met the
simplified closed/allowlist guard. This is an independent **toy reference
enumeration**, not an execution of `LeanExprConstantSpine.lean` or a
source-to-reference refinement certificate. It did not evaluate `MetaM`.
No time or proof-success improvement is claimed.

The true scoped theorem-example from
`InstantiatedRuleCertificates.ScopedOrderExample` uses
`Nat.le_trans` with a specific `a,b,c`. The new restricted parser
does **not** yet turn its elaborated theorem application with local
hypotheses into a certificate; such free-variable/binder contexts are
intentionally outside the accepted grammar. Neither the syntactic witness
nor the observed `Expr` type can silently supply those premises.

## Source and evidence boundaries

The source is `SOURCE_PROOF_CANDIDATE`. The exact publication commit
and source Git blob are recorded in its linked verification issue after
publication. The existing imported theorem families retain their own
source and evidence pins. This increment does not edit their statements,
toolchain, imports at the repository root, or historical receipts.

| Question | Recorded outcome |
| --- | --- |
| Does the source name a finite supported `Expr` shape? | Source candidate with reconstruction proof; native check **NOT_RUN** |
| Does the raw argument syntax contain unresolved variables/binders? | Restricted Boolean guard; native check **NOT_RUN** |
| Does a Meta check validate the expression in an actual environment? | Observer source exists; **NOT_EXECUTED** |
| Does the parser recover a `Rule α` with all exact elaborated hypotheses? | **NO — bridge still open** |
| Are source declaration, universes, local context and kernel term authenticated at pinned Git bytes? | **NOT_ESTABLISHED** |
| Are Lean compilation, fresh kernel replay and transitive axiom audit complete? | **NOT_RUN** |

No Lean binary or Lake binary was available in the authoring container; a
GitHub release download probe also failed at DNS resolution. Consequently
the actual Lean syntax, elaboration and kernel behavior cannot be asserted as
observed by this increment.

## Next consumer-backed mathematical obligation

Extend the grammar **only with exact context and binder checks** for one
concrete theorem-application family. After a native Meta check on the
elaborated expression, expose the full constant declaration, universes,
explicit/implicit arguments, binder instantiations, locally scoped premises,
and the corresponding proof term. Prove a typed equality/definitional
correspondence from those elaborated objects to the
`InstantiatedApplication α Meaning` interpretation; reject every unsupported
case. A source-to-Git/declaration identity must be checked separately
against a pinned environment, and a fresh kernel check/axiom audit must
cover the actual generated proof term.

This will be a real semantic extraction/refinement result rather than an
additional name/graph similarity, and it is the next legitimate consumer of
the current syntactic custody theorem. Execution, operational receipts and
generated views belong in [Noeaaeue](https://github.com/grwtsk/noeaaeue).
