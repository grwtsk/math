# Result — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea3f264755b94f77936a6a4a90ee1152e3a8fbe0` · SHA-256 `e6217b1234ebe6256d92eac8e4a612f78f32cad0848eb6e0621b0418ab9057c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Frontier

/-!
# Conservative resolver result boundary
-/

namespace Mathematics.Resolution

universe u v

structure FixedCertificate
    [DecidableEq Obligation]
    [DecidableEq Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof) where
  chosen :
    ∀ obligation, obligation ∈ obligations → Proof
  accepted :
    ∀ (obligation) (required : obligation ∈ obligations),
      chosen obligation required ∈
        accepted checker registry obligation

def fixedCertificateOfUnresolvedEmpty
    [DecidableEq Obligation]
    [LinearOrder Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof)
    (closed :
      unresolved obligations checker registry = ∅) :
    FixedCertificate obligations checker registry := by
  have available :
      ∀ obligation ∈ obligations,
        (accepted checker registry obligation).Nonempty := by
    intro obligation required
    apply Finset.nonempty_iff_ne_empty.mpr
    intro missing
    have member :
        obligation ∈
          unresolved obligations checker registry :=
      mem_unresolved.mpr ⟨required, missing⟩
    rw [closed] at member
    simp at member
  exact {
    chosen := fun obligation required ↦
      (accepted checker registry obligation).min'
        (available obligation required)
    accepted := by
      intro obligation required
      exact Finset.min'_mem _
        (available obligation required)
  }

structure FrontierCertificate
    [DecidableEq Obligation]
    (unresolvedSet : Finset Obligation) where
  nonempty : unresolvedSet.Nonempty
  schedulingOnly : Prop
  schedulingOnly_proved : schedulingOnly

structure RejectionCertificate where
  failure : CutFailure
  cutDigest : String
  deriving Repr

inductive Continuation (Token : Type u)
  | token (value : Token)
  | frontierExhausted
  deriving DecidableEq, Repr

inductive ResolutionResult
    (Solution : Type u)
    (Packet : Type v)
    (Token : Type u)
  | solved (solution : Solution)
  | unknown (packet : Packet) (next : Continuation Token)
  | rejected (certificate : RejectionCertificate)

inductive AuthorityDecision
    (Solution : Type u)
    (Obligation : Type v)
  | solved (solution : Solution)
  | unresolved (obligations : Finset Obligation)
  | rejected (failure : CutFailure)

structure ScheduleView (Packet : Type u) where
  packets : List Packet

def present
    (authority : AuthorityDecision Solution Obligation)
    (schedule : ScheduleView Packet) :
    AuthorityDecision Solution Obligation × ScheduleView Packet :=
  (authority, schedule)

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c668a150311a131f75f50519032cc0d8006d7a8e76b644b5c44b3d4c64959d4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Result/Variante6217b1234ebe6256d92eac8e4a612f78f32cad0848eb6e0621b0418ab9057c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
