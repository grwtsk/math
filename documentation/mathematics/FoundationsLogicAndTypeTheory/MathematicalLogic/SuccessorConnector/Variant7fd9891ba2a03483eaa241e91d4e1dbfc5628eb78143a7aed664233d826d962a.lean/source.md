# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SuccessorConnector.Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c1ab5cd2dbfed535f53ade8c6e0accd23bbaad2` · SHA-256 `7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Successor-cut state connector

The retraction law makes the predecessor projection surjective.  Kernel,
metric, symmetry, bitfield, and trace compatibility remain separate
certificates.
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorStateConnector
    (Predecessor Successor : Type u) where
  embed : Predecessor → Successor
  project : Successor → Predecessor
  retract :
    ∀ state,
      project (embed state) = state
  predecessorDistance : Predecessor → Predecessor → Nat
  successorDistance : Successor → Successor → Nat
  metricNonexpansive :
    ∀ left right,
      predecessorDistance (project left) (project right) ≤
        successorDistance left right

theorem successor_projection_surjective
    {Predecessor Successor : Type u}
    (connector :
      SuccessorStateConnector Predecessor Successor) :
    Function.Surjective connector.project := by
  intro predecessor
  exact ⟨connector.embed predecessor, connector.retract predecessor⟩

structure SuccessorInvariantLawProjection
    (PredecessorLaw SuccessorLaw : Type u) where
  projectLaw : SuccessorLaw → PredecessorLaw
  predecessorLaw : PredecessorLaw
  successorLaw : SuccessorLaw
  kernelCompatibilityRef : String
  uniquenessRef : String
  projects :
    projectLaw successorLaw = predecessorLaw

theorem successor_invariant_law_projects
    {PredecessorLaw SuccessorLaw : Type u}
    (certificate :
      SuccessorInvariantLawProjection
        PredecessorLaw SuccessorLaw) :
    certificate.projectLaw certificate.successorLaw =
      certificate.predecessorLaw :=
  certificate.projects

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5932bd1ecb001ef84e9c54ebc3d39b71a39b79535b67d96752969bd38ec3ba8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
