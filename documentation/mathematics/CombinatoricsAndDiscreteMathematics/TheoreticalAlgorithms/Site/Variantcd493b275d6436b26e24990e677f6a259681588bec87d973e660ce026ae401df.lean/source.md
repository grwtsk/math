# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Site.Variantcd493b275d6436b26e24990e677f6a259681588bec87d973e660ce026ae401df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5589b57a6ffc8d4efeadb21efe76404cf9f8194f` · SHA-256 `cd493b275d6436b26e24990e677f6a259681588bec87d973e660ce026ae401df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.AffineTopos.Modality

namespace Surface
namespace Legacy
namespace AffineTopos

structure TheoremAwareArtifact where
  object : Object
  theoremNames : List String
  fixtureNames : List String
  claimBoundary : AffineClaimBoundary

structure CoveringFamily where
  base : Context
  artifacts : List TheoremAwareArtifact
  foundationCompatible : Prop
  gammaCompatible : Prop
  claimBoundary : AffineClaimBoundary

structure SurfaceSite where
  contexts : List Context
  coverings : List CoveringFamily
  claimBoundary : AffineClaimBoundary

theorem coveringFamily_foundation_compatible
    (C : CoveringFamily) :
    C.foundationCompatible → C.foundationCompatible := by
  intro h
  exact h

theorem coveringFamily_gamma_compatible
    (C : CoveringFamily) :
    C.gammaCompatible → C.gammaCompatible := by
  intro h
  exact h

end AffineTopos
end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24dad75f77d17bb1f31f8f161c27c1a1fbf4e9a43a4f96ccdb99d60c44f57862 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variantcd493b275d6436b26e24990e677f6a259681588bec87d973e660ce026ae401df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
