# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustProtocol.Variant6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b611c11d111544ba1b4046557acc5bdd16533ff2` · SHA-256 `6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.Json

namespace Surface
namespace Incremental

structure RustIncrementalRequestFrame where
  requestId : String
  changedPath : String
  beforeHash? : Option String
  afterHash : String
  generatorVersionHash : String
  toolchainHash : String
  claimBoundary : List String
deriving Repr

structure RustIncrementalResultFrame where
  requestId : String
  affectedModulesHash : String
  orderHash : String
  reportHash : String
  success : Bool
  rustIsNotProofAuthority : True
  claimBoundary : List String
deriving Repr

theorem rustIncrementalResult_is_transport_not_authority
    (R : RustIncrementalResultFrame) :
    R.rustIsNotProofAuthority = True.intro :=
  rfl

end Incremental
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98889fc9929dc67288740d161a3631e06f7444bee2dba1e9a09ef7ee2fc6be36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RustProtocol/Variant6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
