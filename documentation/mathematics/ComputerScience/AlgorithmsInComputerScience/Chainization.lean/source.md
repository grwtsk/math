# Chainization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4c0eafea6ce3146abe6f16d1404f211634cffc9` · SHA-256 `5f7c348c7760728ef22e947ef8172367f6a0df855a0010c9c52b0b3975fba1cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.State

/-!
# Lossless semantic graph chainization

The tensor site order is navigation and contraction data.  It does not replace
the permanent node and edge identities of the semantic graph.
-/

namespace Mathematics.TensorNetwork

universe u v w x

/-- One typed directed semantic graph with permanent node and edge carriers. -/
structure SemanticGraphSkeleton
    (Node : Type u)
    (Edge : Type v)
    (RelationKind : Type w) where
  source : Edge → Node
  target : Edge → Node
  relation : Edge → RelationKind
  nodeIdentity : Node → String
  edgeIdentity : Edge → String
  provenance : Edge → List String

/--
Lossless encoding of a graph into an ordered site carrier plus explicit edge
and side-edge data.  The decoder equality is the authority-bearing claim.
-/
structure GraphChainizationCertificate
    {Node : Type u}
    {Edge : Type v}
    {RelationKind : Type w}
    (graph : SemanticGraphSkeleton Node Edge RelationKind)
    (Code : Type x) where
  sites : Nat
  site : Fin sites ≃ Node
  edgeCode : Edge → String
  sideEdges : List Edge
  encoded : Code
  decode : Code → SemanticGraphSkeleton Node Edge RelationKind
  decodeEncode : decode encoded = graph
  everyEdgeEncoded :
    Function.Injective edgeCode

/-- Lossless chainization reconstructs the exact source graph. -/
theorem GraphChainizationCertificate.recovers
    {graph : SemanticGraphSkeleton Node Edge RelationKind}
    (certificate : GraphChainizationCertificate graph Code) :
    certificate.decode certificate.encoded = graph :=
  certificate.decodeEncode

/-- Approximate graph orderings carry an explicit behavioral error only. -/
structure ApproximateGraphChainizationCertificate
    (Graph Code : Type*)
    where
  encode : Graph → Code
  decode : Code → Graph
  behavioralDistance : Graph → Graph → ℝ
  errorBound : ℝ
  errorBound_nonnegative : 0 ≤ errorBound
  bounded :
    ∀ graph,
      behavioralDistance graph (decode (encode graph)) ≤ errorBound

end Mathematics.TensorNetwork
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=210bea99b7f93691b0d63ec59e1d0baa939b19b3a054afdb7e333ad42b5a2694 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variant5f7c348c7760728ef22e947ef8172367f6a0df855a0010c9c52b0b3975fba1cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
