# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrismaticSite.Variant0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `407f95950095abf11e18691f04e81b48b9f48f83` · SHA-256 `0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Prismatic.Prism

/-!
# Folder.Prismatic.PrismaticSite

Radiation role: research-boundary
BinaryMatrix spine: This module records an abstract prismatic site, not BinaryMatrix data.
Ontology: prism
Pivot role: prismatic
Zero typology: none
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace Prismatic

/-- Abstract prismatic site attached to an arithmetic object. -/
structure PrismaticSite where
  basePrism : Prism
  objectLabel : String

theorem prismatic_site_has_base_prism
    (S : PrismaticSite) :
    ∃ P : Prism, S.basePrism = P :=
  ⟨S.basePrism, rfl⟩

end Prismatic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d71bb79f530ec82b913e9e428269c2806cddd35d98f805e2e4685b692323ebe4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrismaticSite/Variant0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
