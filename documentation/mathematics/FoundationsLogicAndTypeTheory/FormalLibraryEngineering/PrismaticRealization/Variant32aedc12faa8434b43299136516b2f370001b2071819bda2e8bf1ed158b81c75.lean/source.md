# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrismaticRealization.Variant32aedc12faa8434b43299136516b2f370001b2071819bda2e8bf1ed158b81c75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `253d026175cc59d93be1e59bd88434f8e4023ef4` · SHA-256 `32aedc12faa8434b43299136516b2f370001b2071819bda2e8bf1ed158b81c75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Prismatic.PrismaticSite

/-!
# Folder.Prismatic.PrismaticRealization

Radiation role: research-boundary
BinaryMatrix spine: This module records prismatic realization placeholders.
Ontology: prismatic_realization
Pivot role: prismatic
Zero typology: none
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace Prismatic

/-- Abstract prismatic cohomology object. -/
structure PrismaticCohomology where
  site : PrismaticSite
  cohomologyLabel : String

theorem prismatic_cohomology_has_site
    (C : PrismaticCohomology) :
    ∃ S : PrismaticSite, C.site = S :=
  ⟨C.site, rfl⟩

end Prismatic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05c06a6e18150b8183588fa2981057aa457fcac3fefdf37bfa18dd47f223b87f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrismaticRealization/Variant32aedc12faa8434b43299136516b2f370001b2071819bda2e8bf1ed158b81c75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
