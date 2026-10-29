# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trusted.Variantc9b5922834f0b82d321e1b58f59052c0cc96779f3d29e3978a3a8c80846f5982

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb36684918c76bc692b5166bc547f2802affea59` · SHA-256 `c9b5922834f0b82d321e1b58f59052c0cc96779f3d29e3978a3a8c80846f5982`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.AST.Slug

namespace Surface

namespace AST

def TrustedPathClean (forbiddenTokenCount : Nat) : Prop :=
  forbiddenTokenCount = 0

theorem trustedPathClean_zero :
    TrustedPathClean 0 := by
  rfl

end AST

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4311da399665779af2360e18ef631ce74e285a431ffda1f126d17af28877848 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trusted/Variantc9b5922834f0b82d321e1b58f59052c0cc96779f3d29e3978a3a8c80846f5982.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
