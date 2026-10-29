import Mathematics.Resolution.Context
import Mathematics.Resolution.Continuation

/-!
# Context-bound total conservative resolver

The context validator owns every top-level rejection.  Proof-object rejection
remains inside the finite proof registry and therefore produces unknownness.
-/

namespace Mathematics.Resolution

universe u v w x

structure ContextCutValidator
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  Valid : ContextBoundCut Obligation Proof Event → Prop
  decidableValid : ∀ cut, Decidable (Valid cut)
  classifyFailure :
    ContextBoundCut Obligation Proof Event → CutFailure

attribute [instance] ContextCutValidator.decidableValid

structure ContextResolverProfile
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    (checker : TrustedChecker Obligation Proof) where
  Solution : Type x
  Packet : Type x
  Token : Type x
  authenticator : ContinuationAuthenticator Token
  buildSolution :
    ∀ cut : ContextBoundCut Obligation Proof Event,
      FixedCertificate
        cut.core.obligations checker cut.core.proofRegistry →
      Solution
  firstPacket :
    ∀ cut : ContextBoundCut Obligation Proof Event,
      (unresolved
        cut.core.obligations checker
        cut.core.proofRegistry).Nonempty →
      Packet
  continuation :
    ∀ cut : ContextBoundCut Obligation Proof Event,
      (unresolved
        cut.core.obligations checker
        cut.core.proofRegistry).Nonempty →
      Continuation (AuthenticatedToken authenticator)

inductive ContextResolution
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event)
  | solved
      (valid : validator.Valid cut)
      (solution : profile.Solution)
      (certificate :
        FixedCertificate
          cut.core.obligations checker cut.core.proofRegistry)
  | unknown
      (valid : validator.Valid cut)
      (packet : profile.Packet)
      (next :
        Continuation
          (AuthenticatedToken profile.authenticator))
      (certificate :
        FrontierCertificate
          (unresolved cut.core.obligations checker
            cut.core.proofRegistry))
  | rejected
      (failure : CutFailure)
      (invalid : ¬ validator.Valid cut)

def ContextResolution.IsRejected
    {Obligation : Type u}
    {Proof : Type v}
    {Event : Type w}
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    {validator : ContextCutValidator Obligation Proof Event}
    {profile :
      ContextResolverProfile Obligation Proof Event checker}
    {cut : ContextBoundCut Obligation Proof Event} :
    ContextResolution validator profile cut → Prop
  | .solved _ _ _ => False
  | .unknown _ _ _ _ => False
  | .rejected _ _ => True

def resolveCut
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event) :
    ContextResolution validator profile cut :=
  if valid : validator.Valid cut then
    if closed :
        unresolved cut.core.obligations checker
          cut.core.proofRegistry = ∅ then
      let certificate :=
        fixedCertificateOfUnresolvedEmpty
          cut.core.obligations checker
          cut.core.proofRegistry closed
      .solved valid
        (profile.buildSolution cut certificate) certificate
    else
      let nonempty := Finset.nonempty_iff_ne_empty.mpr closed
      .unknown valid
        (profile.firstPacket cut nonempty)
        (profile.continuation cut nonempty)
        ⟨nonempty, True, True.intro⟩
  else
    .rejected (validator.classifyFailure cut) valid

end Mathematics.Resolution
