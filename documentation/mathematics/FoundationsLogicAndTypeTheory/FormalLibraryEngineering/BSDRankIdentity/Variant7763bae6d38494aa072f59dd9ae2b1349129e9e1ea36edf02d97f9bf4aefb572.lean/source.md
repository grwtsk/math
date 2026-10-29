# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BSDRankIdentity.Variant7763bae6d38494aa072f59dd9ae2b1349129e9e1ea36edf02d97f9bf4aefb572

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bc0e70f2c51b08f0c3bc3b5c47caeaf3af6ffdc` · SHA-256 `7763bae6d38494aa072f59dd9ae2b1349129e9e1ea36edf02d97f9bf4aefb572`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.Basic

set_option autoImplicit false

namespace Think.Arithmetic.BSDRankIdentity

structure BSDRankSurface where
  curve : EllipticCurveSurface
  algebraicRankSymbol : String
  analyticRankSymbol : String
  hasseWeilLFunction : HasseWeilLFunctionSurface
deriving Repr, DecidableEq

def bsdRankIdentityClaim (_s : BSDRankSurface) : Prop := True

def bsdRankIdentityResidue (s : BSDRankSurface) : Think.Residue :=
  { target := FWR.Target.OpenConjectureLedger
    atomId := "bsd.rank_identity:" ++ s.curve.curveId
    kind := FWR.ResidueKind.conjecturalAtom
    blocks :=
      "BSD rank identity requires a checked pure theorem bridge; finite applied witnesses alone do not settle the general conjecture"
    clearsBy :=
      "checked Lean proof/import for the exact BSD rank identity, special-case theorem, or retained conjectural annotation" }

def bsdRankIdentityChecked (s : BSDRankSurface) :
    Think.Checked (bsdRankIdentityClaim s) :=
  FWR.Checked.residue [bsdRankIdentityResidue s]

theorem bsdRankIdentity_hasResidue (s : BSDRankSurface) :
    (bsdRankIdentityChecked s).hasResidue = true := by
  rfl

end Think.Arithmetic.BSDRankIdentity
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4ff33271ce9a9ccc51555b41d09ffaf72c4c06c42290b0f1908ea6d4457910f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSDRankIdentity/Variant7763bae6d38494aa072f59dd9ae2b1349129e9e1ea36edf02d97f9bf4aefb572.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
