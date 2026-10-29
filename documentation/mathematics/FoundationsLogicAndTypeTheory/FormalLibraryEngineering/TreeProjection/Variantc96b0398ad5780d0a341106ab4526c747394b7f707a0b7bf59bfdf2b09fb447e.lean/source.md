# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeProjection.Variantc96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fed25ff3b9cd51b2a69a198c88608ede6fc1a48` · SHA-256 `c96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Noeoueue.Memory.TypeGraph

namespace Noeoueue.TypeMemory

structure ForestReplayCertificate where
  canonicalDigest : String
  treeDigest : String
  nonTreeDigest : String
  hyperedgeDigest : String
  replayDigest : String

/-- `type-memory://noeoueue/tree-replay@1`: replay is equality to the canonical digest,
not authority transferred to the filesystem. -/
def Replays (c : ForestReplayCertificate) : Prop := c.replayDigest = c.canonicalDigest

end Noeoueue.TypeMemory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92a2130a7f4b09f6c4258e4f13234c0fd0199fe6a1b61f3c5f19a8f24a865cba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeProjection/Variantc96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
