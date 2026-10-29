# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M536f75726365547265652f42696e6f6d69616c5472616e73706f72742e6c65616e.Variantb347e75720989e7423f97622b2c7af0181ad3eb85c684514de67d1e5af442d33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4e3b286a181e2d3d726c4f41fdf28a94353df52` · SHA-256 `b347e75720989e7423f97622b2c7af0181ad3eb85c684514de67d1e5af442d33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|X|addr=1101010|role=proof_code_atom|slug=sourcetree-binomialtransport|owner=placeholder_non_owner|core=SourceTree/BinomialTransport.lean|leaf=M536f75726365547265652f42696e6f6d69616c5472616e73706f72742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

structure PlaceholderCover where
  id : String
  leftCapacity : String
  rightCapacity : String
  owning : Bool
deriving DecidableEq, Repr

def binomialTransportRootPlaceholder : PlaceholderCover :=
  {
    id := "binomial_transport_root_placeholder"
    leftCapacity := "future_left_half_cover"
    rightCapacity := "future_right_half_cover"
    owning := false
  }

theorem binomialTransportRootPlaceholder_nonowning :
    binomialTransportRootPlaceholder.owning = false := by
  rfl

end Think.SourceTree
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fda47b18708dc4128a48b39632166884f05f3efb69b4f8a4a3ac04db74626c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f42696e6f6d69616c5472616e73706f72742e6c65616e/Variantb347e75720989e7423f97622b2c7af0181ad3eb85c684514de67d1e5af442d33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
