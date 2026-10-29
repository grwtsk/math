# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeWangZahlTTStar.Variant8a0189c759109b25d128bbba14cb003369bbd088832974959d744ceef4b64910

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7202328f34576495935ae243d573824e06c36a89` · SHA-256 `8a0189c759109b25d128bbba14cb003369bbd088832974959d744ceef4b64910`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeMomentPackets

/-!
# Named Wang--Zahl / polarized TT* research boundary

These predicates expose the irreducible analytic work.  The local interaction
certificate contains overlap estimates; the global Gram and maximal bounds
must be proved from it together with the fixed geometry and an exact
Vaughan/Heath--Brown decomposition.
-/

public section

namespace Surface.Core.ConductorThreeWangZahlTTStar

open Surface.Core.ConductorThreeMomentPackets
open Surface.Core.PrimeLattice.PolarizedGram

/-- Local packet-interaction evidence for a fixed moment route.

The exact coefficient collapse is already a theorem-bearing field of every
`ConductorThreeCoefficientPacketFrame`; it is deliberately not repeated here
as a free-standing proposition.  Likewise, no Type I, Type II, Gram, maximal,
or arithmetic decay conclusion is stored in this structure. -/
structure PolarizedMomentEngine
    (route : ConductorThreePrimeMomentRoute) where
  interaction : ∀ N, PolarizedInteractionControl (route.frame N)

/-- The desired implication from local geometry/interaction to the uniform
Gram bound.  It remains a named research proposition. -/
@[expose]
def WangZahlGeometryImpliesPolarizedGramBound : Prop :=
  ∀ route : ConductorThreePrimeMomentRoute,
    PolarizedMomentEngine route →
      PacketGramPowerBound route.frame

end Surface.Core.ConductorThreeWangZahlTTStar
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=186cc17f93a9ca40a3b80690c93b4e21e151833af0910c49ac0ed3ddb40ae81b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant8a0189c759109b25d128bbba14cb003369bbd088832974959d744ceef4b64910.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
