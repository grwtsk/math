# Non Mathlib Adapter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bac2d5aedb2fb6d8f820d49402d10686e94e0fa2` · SHA-256 `ca2d365525b807642c921ac6f315fac09e5db4be1fd8456593d23c262ccac7f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Non-Mathlib mathematics adapters

An adapter can carry the identity and exact-statement boundary of mathematics
that is not directly available in Mathlib.  It does not own theorem authority:
strict use requires either proof authority or an explicit unavailable-authority
marker.
-/

namespace AnalyticNumber
namespace NonMathlibAdapter

structure NonMathlibConceptDescriptor where
  conceptHash : Nat
  label : String
  sourceHash : Nat

structure AdapterDescriptor where
  adapterKindHash : Nat
  adapterSourceHash : Nat
  statementHash : Nat

structure NonMathlibAdapterCertificate where
  concept : NonMathlibConceptDescriptor
  adapter : AdapterDescriptor
  exactStatementRecorded : Prop
  exactStatementProof : exactStatementRecorded
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved
  unavailableMarkedWhenUnproved : Prop
  unavailableProof : unavailableMarkedWhenUnproved
  adapterDoesNotOwnTheorem : Prop
  noAuthorityProof : adapterDoesNotOwnTheorem

theorem non_mathlib_mathematics_adapter_sound
    (A : NonMathlibAdapterCertificate) :
    A.exactStatementRecorded ∧
    A.authorityBoundaryPreserved ∧
    A.unavailableMarkedWhenUnproved ∧
    A.adapterDoesNotOwnTheorem :=
  by
    exact
      ⟨A.exactStatementProof,
       A.authorityBoundaryProof,
       A.unavailableProof,
       A.noAuthorityProof⟩

def AdapterOwnsTheoremAuthority (_A : AdapterDescriptor) : Prop :=
  False

theorem adapter_descriptor_not_theorem_authority
    (A : AdapterDescriptor) :
    ¬ AdapterOwnsTheoremAuthority A := by
  intro h
  exact h

end NonMathlibAdapter
end AnalyticNumber
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f52f8036627ab530f3736541b89599b742a798dcffd10802f31f4d9cfee43a2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonMathlibAdapter/Variantca2d365525b807642c921ac6f315fac09e5db4be1fd8456593d23c262ccac7f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
