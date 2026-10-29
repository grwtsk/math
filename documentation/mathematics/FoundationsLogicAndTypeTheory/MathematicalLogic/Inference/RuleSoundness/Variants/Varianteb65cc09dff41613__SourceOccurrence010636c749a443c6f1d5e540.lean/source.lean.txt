/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems

/-!
# Sound interpreted rules and certificate checkers

This module separates an operational result from the proposition interpreted by
that result.  A rule is sound only when its premises and side condition imply
its conclusion.  A certificate checker is sound only when its `accept` result
implies the meaning of the certificate's exact conclusion; `reject` and
`unknown` prove no conclusion.

`CheckedByteInterface` additionally binds parsing and byte-level execution to a
formal checker.  It is a mathematical interface.  A repository program still
needs evidence that its concrete parser and execution mode implement the
functions supplied here.
-/

namespace GRWTSK.Logic.Inference

open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x

/-- Informative acceptance is distinct from rejection and lack of a result. -/
inductive DecisionResult where
  | accept
  | reject
  | unknown
  deriving DecidableEq, Repr

/-- A rule's syntax: finite premises, a side condition, and one conclusion. -/
structure InterpretedRule (Snapshot : Type u) (Judgment : Type v) where
  premises : Finset Judgment
  sideCondition : Snapshot → Prop
  conclusion : Judgment

/-- The semantic obligation for one interpreted rule. -/
def RuleSound {Snapshot : Type u} {Judgment : Type v}
    (Meaning : Snapshot → Judgment → Prop)
    (rule : InterpretedRule Snapshot Judgment) : Prop :=
  ∀ snapshot, rule.sideCondition snapshot →
    (∀ premise ∈ rule.premises, Meaning snapshot premise) →
      Meaning snapshot rule.conclusion

/-- A checked rule packages the exact semantic implication it claims. -/
structure SoundRule (Snapshot : Type u) (Judgment : Type v)
    (Meaning : Snapshot → Judgment → Prop) where
  rule : InterpretedRule Snapshot Judgment
  sound : RuleSound Meaning rule

/-- Forget interpretation while retaining the finite dependency route. -/
def SoundRule.route {Snapshot : Type u} {Judgment : Type v}
    {Meaning : Snapshot → Judgment → Prop}
    (rule : SoundRule Snapshot Judgment Meaning) : ProofRoute Judgment where
  conclusion := rule.rule.conclusion
  premises := rule.rule.premises

/-- Grounded finite support by sound rules has the claimed snapshot meaning. -/
theorem grounded_rules_meaning {Snapshot : Type u} {Judgment : Type v}
    {RuleId : Type w} (Meaning : Snapshot → Judgment → Prop)
    (rules : RuleId → SoundRule Snapshot Judgment Meaning)
    (eligible : Finset RuleId) (snapshot : Snapshot)
    (sideConditions : ∀ ruleId ∈ eligible,
      (rules ruleId).rule.sideCondition snapshot)
    {judgment : Judgment}
    (supported : GroundedSupport (fun ruleId ↦ (rules ruleId).route)
      eligible judgment) : Meaning snapshot judgment := by
  apply grounded_target (fun ruleId ↦ (rules ruleId).route) eligible
    (Meaning snapshot)
  · intro ruleId admitted premises
    exact (rules ruleId).sound snapshot (sideConditions ruleId admitted) premises
  · exact supported

/-- A formal certificate checker and the theorem attached to `accept`. -/
structure CertificateChecker (Snapshot : Type u) (Certificate : Type v)
    (Judgment : Type w) (Meaning : Snapshot → Judgment → Prop) where
  check : Snapshot → Certificate → DecisionResult
  conclusion : Certificate → Judgment
  accept_sound : ∀ snapshot certificate,
    check snapshot certificate = .accept →
      Meaning snapshot (conclusion certificate)

/-- A certificate is informative for an exact judgment only when the checker
accepts it and its declared conclusion is that judgment. -/
def CertificateChecker.Accepts
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment) : Prop :=
  checker.check snapshot certificate = .accept ∧
    checker.conclusion certificate = judgment

/-- Sound acceptance establishes the meaning of the exact accepted judgment. -/
theorem CertificateChecker.meaning_of_accepts
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment)
    (accepted : checker.Accepts snapshot certificate judgment) :
    Meaning snapshot judgment := by
  rw [← accepted.2]
  exact checker.accept_sound snapshot certificate accepted.1

/-- Complete coverage is separate from soundness: every case in the explicit
finite domain has an accepted certificate for its declared target judgment.
This predicate concerns the formal checker only; it does not assert that an
external process ran successfully or that repository discovery is complete. -/
def CertificateChecker.Covers
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    {Case : Type x} [DecidableEq Case]
    (snapshot : Snapshot) (domain : Finset Case) (target : Case → Judgment) : Prop :=
  ∀ case ∈ domain, ∃ certificate, checker.Accepts snapshot certificate (target case)

/-- Sound informative results plus complete finite coverage establish the
declared meaning for every case in the covered domain. -/
theorem CertificateChecker.meaning_of_complete_coverage
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    {Case : Type x} [DecidableEq Case]
    (snapshot : Snapshot) (domain : Finset Case) (target : Case → Judgment)
    (covered : checker.Covers snapshot domain target) :
    ∀ case ∈ domain, Meaning snapshot (target case) := by
  intro case member
  obtain ⟨certificate, accepted⟩ := covered case member
  exact checker.meaning_of_accepts snapshot certificate (target case) accepted

/-- `unknown` cannot witness informative acceptance.  No mathematical
conclusion, positive or negative, is derived from this fact. -/
theorem CertificateChecker.unknown_not_accepts
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {Meaning : Snapshot → Judgment → Prop}
    (checker : CertificateChecker Snapshot Certificate Judgment Meaning)
    (snapshot : Snapshot) (certificate : Certificate) (judgment : Judgment)
    (unknown : checker.check snapshot certificate = .unknown) :
    ¬ checker.Accepts snapshot certificate judgment := by
  intro accepted
  have impossible : DecisionResult.unknown = .accept := unknown.symm.trans accepted.1
  cases impossible

/-- Parsing and execution are explicitly related to a formal checker. -/
structure CheckedByteInterface (Snapshot : Type u) (Certificate : Type v)
    (Judgment : Type w) (ParserError : Type x)
    (Meaning : Snapshot → Judgment → Prop) where
  formalChecker : CertificateChecker Snapshot Certificate Judgment Meaning
  parse : ByteArray → Except ParserError Certificate
  execute : Snapshot → ByteArray → DecisionResult
  execution_spec : ∀ snapshot input,
    execute snapshot input =
      match parse input with
      | .ok certificate => formalChecker.check snapshot certificate
      | .error _ => .reject

/-- Accepted bytes parse to a certificate whose exact conclusion is meaningful. -/
theorem CheckedByteInterface.accepted_meaning
    {Snapshot : Type u} {Certificate : Type v} {Judgment : Type w}
    {ParserError : Type x} {Meaning : Snapshot → Judgment → Prop}
    (interface : CheckedByteInterface Snapshot Certificate Judgment ParserError Meaning)
    (snapshot : Snapshot) (input : ByteArray)
    (accepted : interface.execute snapshot input = .accept) :
    ∃ certificate, interface.parse input = .ok certificate ∧
      Meaning snapshot (interface.formalChecker.conclusion certificate) := by
  cases parsed : interface.parse input with
  | error error =>
      rw [interface.execution_spec, parsed] at accepted
      contradiction
  | ok certificate =>
      refine ⟨certificate, rfl, ?_⟩
      apply interface.formalChecker.accept_sound snapshot certificate
      rw [interface.execution_spec, parsed] at accepted
      exact accepted

/-- An unknown result cannot be reinterpreted as formal acceptance. -/
theorem unknown_ne_accept : DecisionResult.unknown ≠ .accept := by
  decide

/-- Rejection likewise carries no acceptance result. -/
theorem reject_ne_accept : DecisionResult.reject ≠ .accept := by
  decide

end GRWTSK.Logic.Inference
