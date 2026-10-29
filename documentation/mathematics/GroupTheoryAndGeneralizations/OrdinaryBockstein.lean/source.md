# Ordinary Bockstein — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7707641d6cc6fa7a9e090465d51ecb3631064278` · SHA-256 `0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.BocksteinExtension

/-!
# Ordinary real-circle coefficient phase

In degree `r`, the Bockstein target is `Tor H^(r+1)(K; ℤ)`.  This phase
torsion is deliberately distinct from `Tor H^r(K; ℤ)`.
-/

namespace Mathematics.Homology

universe u v w

/-- Certified ordinary coefficient sequence in one cohomological degree. -/
structure OrdinaryBocksteinPhase
    (ContinuousTorus : Type u)
    (CircleCohomology : Type v)
    (NextIntegralTorsion : Type w)
    [AddCommGroup ContinuousTorus]
    [AddCommGroup CircleCohomology]
    [AddCommGroup NextIntegralTorsion] where
  degree : Nat
  extension :
    BocksteinExtension
      ContinuousTorus CircleCohomology NextIntegralTorsion
  continuousQuotientDigest : Digest
  nextDegreeTorsionDigest : Digest
  nextDegree_is_succ : Nat
  nextDegree_eq : nextDegree_is_succ = Nat.succ degree
  longExactSequenceCertificate : ObjectAddress

end Mathematics.Homology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18e2fd48443720e4e9bebc051c4c9a3045caf4752e949f76eb2140662da0aecc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/OrdinaryBockstein/Variant0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
