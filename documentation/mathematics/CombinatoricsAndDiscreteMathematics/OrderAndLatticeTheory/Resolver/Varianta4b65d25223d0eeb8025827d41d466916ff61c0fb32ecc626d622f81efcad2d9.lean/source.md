# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Resolver.Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4e6fcb1e4760a84b203682f92930500904d407f` · SHA-256 `a4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Validation
import Mathematics.Resolution.Continuation

/-!
# Total conservative resolver

The resolver branches only over two decidable finite questions: validity of
the committed cut and emptiness of its accepted-proof complement.  Scheduling
constructs the first packet and authenticated continuation but has no path to
the solved constructor.
-/

namespace Mathematics.Resolution

universe u v w x

structure ResolverProfile
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    (validator :
      ClassifiedCutValidator Obligation Proof Event)
    (checker : TrustedChecker Obligation Proof) where
  Solution : Type x
  Packet : Type x
  Token : Type x
  authenticator : ContinuationAuthenticator Token
  buildSolution :
    ∀ cut : InvocationCut Obligation Proof Event,
      FixedCertificate
        cut.obligations checker cut.proofRegistry →
      Solution
  firstPacket :
    ∀ cut : InvocationCut Obligation Proof Event,
      (unresolved
        cut.obligations checker cut.proofRegistry).Nonempty →
      Packet
  continuation :
    ∀ cut : InvocationCut Obligation Proof Event,
      (nonempty :
        (unresolved
          cut.obligations checker cut.proofRegistry).Nonempty) →
      Continuation (AuthenticatedToken authenticator)

inductive CertifiedResolution
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {validator :
      ClassifiedCutValidator Obligation Proof Event}
    {checker : TrustedChecker Obligation Proof}
    (profile :
      ResolverProfile Obligation Proof Event validator checker)
    (cut : InvocationCut Obligation Proof Event)
  | solved
      (valid : validator.Valid cut)
      (solution : profile.Solution)
      (certificate :
        FixedCertificate
          cut.obligations checker cut.proofRegistry)
  | unknown
      (valid : validator.Valid cut)
      (packet : profile.Packet)
      (next :
        Continuation
          (AuthenticatedToken profile.authenticator))
      (certificate :
        FrontierCertificate
          (unresolved
            cut.obligations checker cut.proofRegistry))
  | rejected
      (failure : CutFailure)
      (invalid : ¬ validator.Valid cut)

def CertifiedResolution.IsRejected
    {Obligation : Type u}
    {Proof : Type v}
    {Event : Type w}
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {validator :
      ClassifiedCutValidator Obligation Proof Event}
    {checker : TrustedChecker Obligation Proof}
    {profile :
      ResolverProfile Obligation Proof Event validator checker}
    {cut : InvocationCut Obligation Proof Event} :
    CertifiedResolution profile cut → Prop
  | .solved _ _ _ => False
  | .unknown _ _ _ _ => False
  | .rejected _ _ => True

def cfor
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {validator :
      ClassifiedCutValidator Obligation Proof Event}
    {checker : TrustedChecker Obligation Proof}
    (profile :
      ResolverProfile Obligation Proof Event validator checker)
    (cut : InvocationCut Obligation Proof Event) :
    CertifiedResolution profile cut :=
  match validateCut validator cut with
  | .invalid failure invalid =>
      .rejected failure invalid
  | .valid valid =>
      if closed :
          unresolved
            cut.obligations checker cut.proofRegistry = ∅ then
        let certificate :=
          fixedCertificateOfUnresolvedEmpty
            cut.obligations checker cut.proofRegistry closed
        .solved valid
          (profile.buildSolution cut certificate)
          certificate
      else
        let nonempty :=
          Finset.nonempty_iff_ne_empty.mpr closed
        let certificate :
            FrontierCertificate
              (unresolved
                cut.obligations checker cut.proofRegistry) :=
          {
            nonempty
            schedulingOnly := True
            schedulingOnly_proved := True.intro
          }
        .unknown valid
          (profile.firstPacket cut nonempty)
          (profile.continuation cut nonempty)
          certificate

theorem cfor_rejected_exactly_when_cut_invalid
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {validator :
      ClassifiedCutValidator Obligation Proof Event}
    {checker : TrustedChecker Obligation Proof}
    (profile :
      ResolverProfile Obligation Proof Event validator checker)
    (cut : InvocationCut Obligation Proof Event) :
    (cfor profile cut).IsRejected ↔
      ¬ validator.Valid cut := by
  by_cases valid : validator.Valid cut
  · by_cases closed :
      unresolved
        cut.obligations checker cut.proofRegistry = ∅
    · simp [cfor, validateCut, valid, closed,
        CertifiedResolution.IsRejected]
    · simp [cfor, validateCut, valid, closed,
        CertifiedResolution.IsRejected]
  · simp [cfor, validateCut, valid,
      CertifiedResolution.IsRejected]

theorem cfor_total
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {validator :
      ClassifiedCutValidator Obligation Proof Event}
    {checker : TrustedChecker Obligation Proof}
    (profile :
      ResolverProfile Obligation Proof Event validator checker)
    (cut : InvocationCut Obligation Proof Event) :
    ∃ result, result = cfor profile cut :=
  ⟨cfor profile cut, rfl⟩

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a283eecf0937844cb62bb8ba943b900bca93bf72c0946c032cf5a1673a90debc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Varianta4b65d25223d0eeb8025827d41d466916ff61c0fb32ecc626d622f81efcad2d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
