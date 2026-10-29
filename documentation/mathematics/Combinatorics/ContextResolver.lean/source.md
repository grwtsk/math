# Context Resolver — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab89f27567d1935753fdb23d5a9585a81757d8b` · SHA-256 `e487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3528b38e6ebe27aa27fb59851cf74df1507d15d12399629d47e4e4b470a877e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
