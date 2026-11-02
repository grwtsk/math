# Restricted, scoped Lean.Expr transitivity extraction into a certified sofic edge

Local attribution: **grwtsk contributors**. Date: 2026-11-02.
Source candidate and mathematical comparison; not a native Lean or source-authentication receipt.

## Consumer and existing source boundary

At inspected `grwtsk/math` baseline `5ebc2ed0e17cd2cc2c3dc028fc3fb736c3005e59`, the existing
`LeanExprConstantSpine.lean` recognized constant-headed closed Lean application spines and retained raw expression equality. Its source explicitly leaves binder/context-sensitive semantic reification open. `InstantiatedRuleCertificates.lean` already packages a genuine proof of a finite rule from **all** its interpreted premises. `CheckedApplicationSoficBridge.lean` attaches these proof-bearing applications to the *certified lower* sofic relation and separately requires signed observation identities and error allowances. This increment composes, rather than replaces, those definitions.

Relevant imported blobs at the inspected baseline:

- `GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/LeanExprConstantSpine.lean` — obtain and verify the exact blob at the selected committed baseline before replay.
- `GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/InstantiatedRuleCertificates.lean`, blob `8a947b13ef0f4fdca9127620d11a99870d4b121a`.
- `GRWTSK/Combinatorics/GraphTheory/CheckedApplicationSoficBridge.lean`, blob `7cf8b5905fae6cd828b3dc65145529635cc605e2`.
- `GRWTSK/Combinatorics/GraphTheory/DefectEnrichedSoficLanguage.lean`, historical blob `f0436ae18dd786e312a4966b27b2edc51e3d7fa1`; check at the exact replay commit.

The current source is placed in proof theory as `LeanExprNatLeTransReification.lean`; it imports the current MSC paths and does not modify root imports, external toolchains, repository taxonomy, or operational state.

## Exact restricted reification

Accept only the literal fully applied Lean expression

```
Expr.app (Expr.app (Expr.app (Expr.app (Expr.app
  (Expr.const `Nat.le_trans []) (Expr.lit (Literal.natVal a)))
  (Expr.lit (Literal.natVal b))) (Expr.lit (Literal.natVal c))) hab) hbc
```

where `a,b,c` are natural-number *literals*; `hab,hbc` are the original raw expression arguments. The parser checks equality against this exact constructor term, returning an indexed witness `LiteralNatLeTrans source`; wrong heads, unsupported universes, missing or extra arguments, a nonliteral Nat parameter, altered argument order or metadata wrappers are rejected. Recognition retains both proof arguments as original `Expr` objects instead of discarding them. It is not yet a general elaborated application parser.

The independent `observeTypedLiteralNatLeTrans` runs in `Lean.Meta.MetaM` with the **actual ambient local context**. It rejects unresolved expression metavariables, calls `Lean.Meta.isTypeCorrect` on the whole application, and then compares the inferred result type to literal `Nat.le a c` with `isDefEq`. These source lines are authored, but **have not been executed** in the pinned Lean runtime. The observer is not a kernel checker, a proof-term transport across local contexts, or authentication of the source declaration's Git identity. It is specifically *not* valid to treat a syntactic recognition result as `a ≤ b` or `b ≤ c` without their real Lean witnesses.

## Mathematical theorem and exact sofic consumer

`LiteralNatLeTrans.toApplication` produces the existing
`InstantiatedApplication (Nat × Nat) literalPairMeaning` with:

```
rule.premises = [(a,b), (b,c)]
rule.conclusion = (a,c)
Meaning (i,j) := i ≤ j
consequence := Nat.le_trans
```

The constructor proves its consequence using the two **separate** premise membership witnesses. `literal_rule_matches_certified_network` establishes definitional rule equality with the prior `NatTransitivityExample.network.expectedRule`. Only when two *typed propositions* `hab : a ≤ b` and `hbc : b ≤ c` are provided does `LiteralNatLeTrans.toCertifiedWord` produce an actual one-letter `AppliedWord` on the lower/certified sofic relation. `literal_certified_source_return` reuses the existing signed-defect path theorem, retaining the exact numerical return and nonnegative allowance. The endpoint observation is the real image of the integers, not a separate arithmetic model.

This is a **bounded semantic adapter** whose mathematical consequence is precisely the previously known `Nat.le_trans`; it is not a new transitivity proof or a general source-to-code soundness theorem. The expression-recognition witness and the separately typed implication use the same literal instance, but the two raw `Expr` proof subterms have not been converted into reusable checked `Prop` witnesses by a verified reflection mechanism. The `MetaM` result also does not establish that an imported upstream declaration came from authenticated repository bytes.

## Hostile cases and reference diagnostics

- A constant-headed ill-typed term can pass structural recognition. The Meta observer must reject it using `isTypeCorrect`, rather than relying on `inferType` alone. This matches the documented `Lean.Meta.Check` behavior.
- A local free-variable proof is meaningful only in its original local context. The literal Nat parameters are closed; local proof arguments are retained but cannot be transferred by guessing a new context.
- Dropping either premise prevents the typed consumer from constructing the certified edge. Merely labeling a candidate edge `Nat.le_trans` changes no proof status.
- Swapping the two proof arguments can alter well-typedness. Syntactic parsing preserves their positions; the separate type observation is responsible for detecting mismatches.
- A source word in the candidate/admissible supergraph does not supply an `AppliedWord` unless its **lower** relation has the full witnesses.
- A signed path allowance bound from the prior module is about that source's real observation; it does not prove the Riemann Hypothesis, Navier–Stokes regularity, or a new analytic cancellation theorem.

The independent Python reference `finite_reference.py` exhaustively checked all `a,b,c ∈ {0,1,2,3,4}` against a small symbolic application/context model: **1,790 assertions passed**, 125 recognized constructed spines, 1,249 hostile rejection controls. This is **not Lean.Meta execution, elaboration, a kernel proof, or a formal refinement between the Python model and Lean**. The reference script and result belong outside the pure math repository; neither is committed under `GRWTSK/`.

## Verification and exact next obligation

Status: `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / META_OBSERVER_NOT_EXECUTED / SOURCE_AUTHENTICATION_NOT_PROVED`.

Validate the target module at its final immutable math commit with Lean v4.34.1 / pinned Mathlib (historically `d13f23b723b8a846827a245b89c10fc7d3f11612`), inspect all elaborated types and generated auxiliaries, run fresh source-bound kernel replay and transitive axiom checks via authorized Noe infrastructure. Verify the actual Lean expression shape emitted by a correctly elaborated `Nat.le_trans` application with local proof variables; if it differs, retain that as an extraction-coverage failure rather than changing the theorem or inventing a match.

**Next theorem obligation:** construct a *context-preserving* interpretation of the observed original proof expressions into the precise Lean proposition witnesses (with binder substitutions and local contexts preserved), then prove that the generated `InstantiatedApplication` and certified sofic edge refer to the **same** accepted proof term. Separately authenticate selected declaration/source bytes and supply exact-source native receipts. This is the boundary between the currently proven-on-paper finite source rule and automatic trustworthy corpus extraction.
