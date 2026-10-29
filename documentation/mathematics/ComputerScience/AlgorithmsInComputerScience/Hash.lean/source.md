# Hash — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2705173f18d965ae9c5a73d94c6689bb76bbf867` · SHA-256 `f86af258ea01b92237c6c8c8a03f4ee7c2ac12bbbae926caa04e1ade4b9e33cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Incremental

structure ContentHash where
  algorithm : String
  value : String
deriving Repr, DecidableEq

theorem contentHash_visible
    (h : ContentHash) :
    h.value = h.value :=
  rfl

end Incremental
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df700f7b5da0aebd82b9379ba50023fec63e18ae1258d74d854830d8977d66dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variantf86af258ea01b92237c6c8c8a03f4ee7c2ac12bbbae926caa04e1ade4b9e33cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
