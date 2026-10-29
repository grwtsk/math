# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TagAttribute.Variantc8388a707978602cae250dc9c463c4a884185740ccad5ef84691c39fbd9d5d1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1420a742e43caa3b4fca1acaa14f6d332a91b84c` · SHA-256 `f16fe9fc202f13709724f79eda5f1c291c9931a56e0f53c2a9a43b3d1c02fb42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanTagAttributeGetDecls.Variant06eefb0800ca838c59a4d14a15054bf7cb2856e560bf31a3ae0fbdf9d1334243","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06eefb0800ca838c59a4d14a15054bf7cb2856e560bf31a3ae0fbdf9d1334243","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanTagAttributeGetDecls.Variant06eefb0800ca838c59a4d14a15054bf7cb2856e560bf31a3ae0fbdf9d1334243","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"06eefb0800ca838c59a4d14a15054bf7cb2856e560bf31a3ae0fbdf9d1334243","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/TagAttribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanTagAttributeGetDecls.Variant06eefb0800ca838c59a4d14a15054bf7cb2856e560bf31a3ae0fbdf9d1334243

/-- Get the list of declarations tagged with the tag attribute `attr`. -/
def Lean.TagAttribute.getDecls (attr : TagAttribute) (env : Environment) : Array Name :=
  core <| attr.ext.toEnvExtension.getState env
where
  /-- Implementation of `TagAttribute.getDecls`. -/
  core (st : PersistentEnvExtensionState Name NameSet) : Array Name := Id.run do
    let mut decls := st.state.toArray
    for ds in st.importedEntries do
      decls := decls ++ ds
    decls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad98c6dd9acbf8cfa9179bd22e770cf202ced10458cc8834bceca6fa4a6e0203 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TagAttribute/Variantc8388a707978602cae250dc9c463c4a884185740ccad5ef84691c39fbd9d5d1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
