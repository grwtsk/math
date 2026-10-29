# Context Context — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `579986cfb33eadc52b73f5fbb7a3b4a7ecf63829` · SHA-256 `3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Evidence

/-!
# Context coordinates, sufficiency, and certified transport
-/

namespace Mathematics.SemanticTokenization

structure Context where
  id : ContextId
  text : Option TextId
  sentence : Option Nat
  discourse : Option Nat
  task : Option TaskId
  domain : Option String
  speaker : Option String
  time : Option String
  register : Option String
  snapshot : SnapshotId
deriving Repr

structure ContextDependency where
  required : Finset ContextField
deriving Repr

def ContextRefines (specific general : Context) : Prop :=
  specific.snapshot = general.snapshot ∧
  (∀ value, general.text = some value → specific.text = some value) ∧
  (∀ value, general.sentence = some value → specific.sentence = some value) ∧
  (∀ value, general.discourse = some value → specific.discourse = some value) ∧
  (∀ value, general.task = some value → specific.task = some value) ∧
  (∀ value, general.domain = some value → specific.domain = some value) ∧
  (∀ value, general.speaker = some value → specific.speaker = some value) ∧
  (∀ value, general.time = some value → specific.time = some value) ∧
  (∀ value, general.register = some value → specific.register = some value)

structure ContextTransportCertificate where
  source : ContextId
  target : ContextId
  transportedFields : Finset ContextField
  relationKinds : Finset RelationId
  snapshot : SnapshotId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
deriving Repr

structure ContextSufficiencyCertificate
    (context : Context)
    (dependency : ContextDependency) where
  snapshot : SnapshotId
  available :
    ∀ field ∈ dependency.required,
      match field with
      | .text => context.text.isSome
      | .sentence => context.sentence.isSome
      | .discourse => context.discourse.isSome
      | .task => context.task.isSome
      | .domain => context.domain.isSome
      | .speaker => context.speaker.isSome
      | .time => context.time.isSome
      | .register => context.register.isSome

/--
Persistable, cut-local form of a context-sufficiency certificate.  The
context record itself remains in the cut registry and is addressed by ID.
-/
structure ContextSufficiencyRecord where
  context : ContextId
  dependency : ContextDependency
  snapshot : SnapshotId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  requiredFieldsAvailable : Prop

theorem contextRefines_refl (context : Context) :
    ContextRefines context context := by
  refine ⟨rfl, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    intro value equality <;> exact equality

theorem contextRefines_trans {specific middle general : Context}
    (first : ContextRefines specific middle)
    (second : ContextRefines middle general) :
    ContextRefines specific general := by
  rcases first with
    ⟨snapshot₁, text₁, sentence₁, discourse₁, task₁,
      domain₁, speaker₁, time₁, register₁⟩
  rcases second with
    ⟨snapshot₂, text₂, sentence₂, discourse₂, task₂,
      domain₂, speaker₂, time₂, register₂⟩
  refine
    ⟨snapshot₁.trans snapshot₂,
      ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro value equality
    exact text₁ value (text₂ value equality)
  · intro value equality
    exact sentence₁ value (sentence₂ value equality)
  · intro value equality
    exact discourse₁ value (discourse₂ value equality)
  · intro value equality
    exact task₁ value (task₂ value equality)
  · intro value equality
    exact domain₁ value (domain₂ value equality)
  · intro value equality
    exact speaker₁ value (speaker₂ value equality)
  · intro value equality
    exact time₁ value (time₂ value equality)
  · intro value equality
    exact register₁ value (register₂ value equality)

def ContextTransportAuthorizes
    (certificate : ContextTransportCertificate)
    (relation : RelationId)
    (source target : ContextId) : Prop :=
  certificate.source = source ∧
  certificate.target = target ∧
  relation ∈ certificate.relationKinds

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14fe2a590c8f0412e3dc4fc4e91a73bb69b84b920c39fbd8a5c3b3191792aca0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
