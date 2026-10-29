# Anchor Index — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `754fb29e10ddd85c2b8822ebacbc68ebaaaa829d` · SHA-256 `43286fc64420fcf85022e747537bb818634edb097f11f3c67ec2e6724ec01eac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.ClassicalAnchor

/-!
# Folder.Rebuild.Exposition.AnchorIndex

Paper-facing index of classical anchors for the rebuild branch. These anchors
are metadata only; their roles keep them out of proof dependency use.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def euclidAnchor : ClassicalAnchor where
  shortName := "Euclid infinitude"
  paperOrBook := "Euclid, Elements, Book IX"
  theoremLabel := "infinitely many primes"
  mathematicalContent :=
    "Every finite list of primes misses another prime."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl

def eulerProductAnchor : ClassicalAnchor where
  shortName := "Euler product"
  paperOrBook := "Euler product references for zeta series"
  theoremLabel := "finite Euler product scaffold"
  mathematicalContent :=
    "The rebuild branch proves finite product identities and treats infinite analytic upgrades as targets."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

def dirichletSeriesAnchor : ClassicalAnchor where
  shortName := "Dirichlet series"
  paperOrBook := "Classical Dirichlet-series references"
  theoremLabel := "finite Dirichlet polynomial scaffold"
  mathematicalContent :=
    "Finite Dirichlet sums and algebraic convolution are checked locally; analytic continuation is outside this branch."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl

def pntAnchor : ClassicalAnchor where
  shortName := "Hadamard-de la Vallee Poussin"
  paperOrBook := "Classical prime-counting theorem literature"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The classical prime-counting asymptotic is indexed as a theorem target, not imported as a proof."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

def prismaticTorsionAnchor : ClassicalAnchor where
  shortName := "Bhatt-Scholze prismatic torsion"
  paperOrBook := "Bhatt-Scholze, prismatic cohomology references"
  theoremLabel := "p-adic torsion comparison anchor"
  mathematicalContent :=
    "The p-adic Tate twists Zp(n), discreteness, and p-torsionfree properties are exposition anchors for later torsion-flow work."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl

def ricciFlowSurgeryAnchor : ClassicalAnchor where
  shortName := "Hamilton-Perelman-Morgan-Tian surgery analogy"
  paperOrBook := "Morgan-Tian exposition of geometric flow with surgery"
  theoremLabel := "finite torsion-flow analogy anchor"
  mathematicalContent :=
    "Canonical neighborhoods, pinching, non-collapsing, and inductive extension by surgery are used only as structural inspiration."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl

def allAnchors : List ClassicalAnchor :=
  [ euclidAnchor
  , eulerProductAnchor
  , dirichletSeriesAnchor
  , pntAnchor
  , prismaticTorsionAnchor
  , ricciFlowSurgeryAnchor
  ]

end Exposition
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88fb8db2396b301f85c68d1ae578a47fef33bbaaf72c8f51e1ee35354656f16b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnchorIndex/Variant43286fc64420fcf85022e747537bb818634edb097f11f3c67ec2e6724ec01eac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
