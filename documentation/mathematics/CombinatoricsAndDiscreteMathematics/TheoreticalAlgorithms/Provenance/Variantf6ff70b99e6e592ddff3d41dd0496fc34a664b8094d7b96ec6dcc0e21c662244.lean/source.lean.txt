import Mathematics.SemanticTokenization.Evidence

/-! # Finite source-local provenance paths -/

namespace Mathematics.SemanticTokenization

structure ProvenanceHop where
  fromId : StableId
  toId : StableId

inductive ProvenanceTerminal (text : TextCarrier)
  | sourceSpan (span : Span text)
  | acceptedExternalResource
      (resourceId : StableId)
      (resourceId_valid : resourceId.Valid)

structure ProvenancePath (text : TextCarrier) where
  assertionId : StableId
  evidenceId : StableId
  hops : List ProvenanceHop
  terminal : ProvenanceTerminal text

def ProvenancePath.IsSourceLocal
    {text : TextCarrier}
    (path : ProvenancePath text) : Prop :=
  match path.terminal with
  | .sourceSpan _ => True
  | .acceptedExternalResource resourceId _ =>
      resourceId.Valid

/-!
An admitted provenance path must identify the same evidence item and terminate
at the item's declared anchor.  Span anchors are compared by their half-open
coordinates; external-resource anchors are compared by stable identity.
-/

def ProvenancePath.SupportsEvidence
    {text : TextCarrier}
    (path : ProvenancePath text)
    (evidence : EvidenceRef text) : Prop :=
  path.evidenceId = evidence.evidenceId ∧
    path.IsSourceLocal ∧
    match evidence.anchor, path.terminal with
    | .sourceSpan expected, .sourceSpan observed =>
        expected.start = observed.start ∧
          expected.stop = observed.stop
    | .externalResource expected,
        .acceptedExternalResource observed _ =>
        expected = observed
    | _, _ =>
        False

theorem ProvenancePath.source_local
    {text : TextCarrier}
    (path : ProvenancePath text) :
    path.IsSourceLocal := by
  unfold ProvenancePath.IsSourceLocal
  cases path.terminal with
  | sourceSpan =>
      trivial
  | acceptedExternalResource _ valid =>
      exact valid

theorem ProvenancePath.supportsEvidence_source_local
    {text : TextCarrier}
    {path : ProvenancePath text}
    {evidence : EvidenceRef text}
    (supports : path.SupportsEvidence evidence) :
    path.IsSourceLocal :=
  supports.2.1

end Mathematics.SemanticTokenization
