# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocalRank.Variant4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80cd26dc215bab71254b01589e05398f2b3f35f7` · SHA-256 `4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite local ranks

The ordering source is explicit and rank injectivity is proof-bearing.
-/

namespace Mathematics.StratifiedBoundary

structure FiniteLocalRank (Frontier : Type u) where
  orderingSourceRef : String
  rank : Frontier → Nat
  injective : Function.Injective rank

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29e800c4d8d580d508d18113264fe7307283f0f82def7d11874307eae2a2f4fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
