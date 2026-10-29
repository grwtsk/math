# Complete source: GRWTSK.Algebra.GroupTheory.Symbol.Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6842c618f0f62d1528e254dbbf240cd6a8e8560` · SHA-256 `4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ShapleyAttribution

/-!
# Archimedean-anchored semi-local symbols

Finite-place products never discard the distinguished archimedean factor.
-/

namespace Mathematics.SemiLocalDefect.Hardy

open scoped BigOperators

universe uPrime uSymbol

structure SemiLocalSymbolProfile
    (Prime : Type uPrime)
    (Symbol : Type uSymbol)
    [CommGroup Symbol] where
  archimedeanRatio : Symbol
  finiteRatio : Prime → Symbol

def SemiLocalSymbolProfile.totalSymbol
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (cut : Finset Prime) :
    Symbol :=
  profile.archimedeanRatio *
    ∏ prime ∈ cut, profile.finiteRatio prime

structure QuasiInnerClass
    (Symbol : Type uSymbol)
    [Mul Symbol] where
  member : Symbol → Prop
  multiplicationClosed :
    ∀ {left right : Symbol},
      member left →
      member right →
      member (left * right)

end Mathematics.SemiLocalDefect.Hardy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=324732422dd928bdc392c6d89738db44c0868772ceecc577ed0c8bc1e9ba5c82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Symbol/Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
