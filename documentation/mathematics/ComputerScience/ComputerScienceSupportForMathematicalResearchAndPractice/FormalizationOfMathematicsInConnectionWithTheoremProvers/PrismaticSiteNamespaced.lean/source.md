# Prismatic Site Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `198810213eb2f9732fd0c520e00b3355bda7ce09` · SHA-256 `7c11a0fa9730ba313ec6bde2fea5e7cc0b53122eb51dc547fc71af2bf8a4de8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrismaticSite.Variant0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrismaticSite.Variant0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5","mathematical_subject":"Foundations.Unclassified","original_sha256":"0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/PrismaticSite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrismaticSite.Variant0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edfcee66e4db1fa788dd21fcbda6cc1ad93f49d7d53789e2c10938909a54dc60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrismaticSite/Variant67f88f08add463cfe2dd2c9729bb916283b21013923106648d6a6a8cc0d94d4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
