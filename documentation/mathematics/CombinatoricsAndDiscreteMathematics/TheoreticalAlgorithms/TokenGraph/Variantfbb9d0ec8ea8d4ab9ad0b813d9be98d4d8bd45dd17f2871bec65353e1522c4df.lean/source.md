# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TokenGraph.Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32fa9d0ec6a906fc9d2268efe3918435eef86e55` · SHA-256 `fbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.ExternalInterpretation
import Mathematics.SemanticTokenization.Tokenization

/-! # Finite typed token graphs -/

namespace Mathematics.SemanticTokenization

inductive SemanticRelationType
  | adjacent
  | syntacticDependency
  | coreference
  | modifier
  | argument
  | sameConcept
  | figurativeSource
  | figurativeTarget
  | idiomMember
  | synonym
  | nearSynonym
  | contrast
  | evidenceFor
  | transportToContext
  deriving DecidableEq, Repr

structure SemanticEdge (text : TextCarrier) where
  edgeId : StableId
  relation : SemanticRelationType
  source : Span text
  target : Span text
  context : Context
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)

structure ConnectivityObligation (text : TextCarrier) where
  source : Span text
  target : Span text
  relation : SemanticRelationType

structure TokenGraph (text : TextCarrier) where
  tokenization : Tokenization text
  vertices : List (Span text)
  vertices_exact :
    vertices = tokenization.spans
  edges : List (SemanticEdge text)
  endpoints_registered :
    ∀ edge ∈ edges,
      edge.source ∈ vertices ∧
        edge.target ∈ vertices
  requiredConnections : List (ConnectivityObligation text)
  required_connected :
    ∀ obligation ∈ requiredConnections,
      ∃ edge ∈ edges,
        edge.source.SameCoordinates obligation.source ∧
        edge.target.SameCoordinates obligation.target ∧
        edge.relation = obligation.relation

theorem TokenGraph.vertices_are_tokens
    {text : TextCarrier}
    (graph : TokenGraph text) :
    graph.vertices = graph.tokenization.spans :=
  graph.vertices_exact

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bc0a3d9d2eff33150b1e1637a48852676c7ff251dae052327918a6c4749e11a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
