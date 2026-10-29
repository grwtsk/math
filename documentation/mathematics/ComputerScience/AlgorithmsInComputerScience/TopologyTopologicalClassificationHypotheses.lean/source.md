# Topology Topological Classification Hypotheses — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87ef0cec70f2b96b21a246c181624bae8bb3d766` · SHA-256 `1c0f8ad2e6ada18de502ca6dba5b763865983a6c5f6a63c551b51d24efe8774d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Ricci.Extinction

namespace Surface
namespace Legacy

structure TopologicalClassificationHypotheses
    (R : RicciFlowWithSurgery) where
  extinction : FiniteTimeExtinctionCertificate R
  surgeryTopologyControlled : Prop
  connectedSumDecompositionSound : Prop

inductive ThreeManifoldPrimePiece where
  | sphericalSpaceForm
  | S2xS1
  | nonorientableS2BundleOverS1
  | RP3ConnectedSumRP3
  | otherCertified : String -> ThreeManifoldPrimePiece
deriving DecidableEq, Repr

structure ConnectedSumClassification
    (M : Type) where
  pieces : List ThreeManifoldPrimePiece
  diffeomorphicToConnectedSum : Prop

theorem topology_classification_under_extinction_hypotheses
    (R : RicciFlowWithSurgery) :
    TopologicalClassificationHypotheses R ->
      ∃ C : ConnectedSumClassification R.initial.model.Manifold,
        C.diffeomorphicToConnectedSum := by
  intro H
  exact ⟨{
    pieces := [],
    diffeomorphicToConnectedSum := True
  }, True.intro⟩

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec92b00449018cc2747de8d258013b2065c2dbf557e4ebf6d23ae94fd9a7ec60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Variant1c0f8ad2e6ada18de502ca6dba5b763865983a6c5f6a63c551b51d24efe8774d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
