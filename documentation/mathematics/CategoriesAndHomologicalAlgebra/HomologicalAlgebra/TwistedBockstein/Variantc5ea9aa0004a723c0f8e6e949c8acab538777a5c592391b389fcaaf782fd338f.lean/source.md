# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TwistedBockstein.Variantc5ea9aa0004a723c0f8e6e949c8acab538777a5c592391b389fcaaf782fd338f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2a254713d9f7a8d391a28a0778859269a7742ab` · SHA-256 `c5ea9aa0004a723c0f8e6e949c8acab538777a5c592391b389fcaaf782fd338f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.BocksteinExtension
import Mathematics.Homology.LocalSystem

/-!
# Twisted Bockstein phase

For a local system `L`, the coefficient sequence is
`0 → L → Lℝ → Lℝ/L → 0`.  Its finite obstruction target is the kernel of
the next-degree map to real twisted cohomology, not the ordinary integral
torsion group unless a trivialization proves that specialization.
-/

namespace Mathematics.Homology

universe u v w

/-- Certified local-system coefficient extension in one degree. -/
structure TwistedBocksteinPhase
    (ContinuousTwistedTorus : Type u)
    (TwistedPhase : Type v)
    (NextRealizationKernel : Type w)
    [AddCommGroup ContinuousTwistedTorus]
    [AddCommGroup TwistedPhase]
    [AddCommGroup NextRealizationKernel] where
  degree : Nat
  localSystemDigest : Digest
  extension :
    BocksteinExtension
      ContinuousTwistedTorus TwistedPhase NextRealizationKernel
  integralToRealKernelDigest : Digest
  coefficientSequenceCertificate : ObjectAddress
  trivialRankOneSpecialization :
    Option ObjectAddress

end Mathematics.Homology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57b3d7d21e3ffda42179a3e3270fb4e025b7bc343aa6be790816c63192acca61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TwistedBockstein/Variantc5ea9aa0004a723c0f8e6e949c8acab538777a5c592391b389fcaaf782fd338f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
