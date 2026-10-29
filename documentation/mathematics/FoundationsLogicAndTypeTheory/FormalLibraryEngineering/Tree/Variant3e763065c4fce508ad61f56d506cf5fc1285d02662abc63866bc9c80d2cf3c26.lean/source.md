# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tree.Variant3e763065c4fce508ad61f56d506cf5fc1285d02662abc63866bc9c80d2cf3c26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a24d1e8aa7abaa18fcdd638f7aae65c59947ea5` · SHA-256 `2852f64ac2f1ac0628e55afc5e4b74820a7e00665b2d44b75407f273c8cf1025`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddRapp.Variantb3e9519a9915059aa4ddcd1e5b93f8eca6f19c2c72e3e862be6183839eb93a67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3e9519a9915059aa4ddcd1e5b93f8eca6f19c2c72e3e862be6183839eb93a67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddRapp.Variantb3e9519a9915059aa4ddcd1e5b93f8eca6f19c2c72e3e862be6183839eb93a67","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b3e9519a9915059aa4ddcd1e5b93f8eca6f19c2c72e3e862be6183839eb93a67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.AddRapp
public import Aesop.Tree.Check
public import Aesop.Tree.Data
public import Aesop.Tree.ExtractProof
public import Aesop.Tree.ExtractScript
public import Aesop.Tree.Free
public import Aesop.Tree.RunMetaM
public import Aesop.Tree.State
public import Aesop.Tree.Tracing
public import Aesop.Tree.Traversal
public import Aesop.Tree.TreeM
public import Aesop.Tree.UnsafeQueue

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddRapp.Variantb3e9519a9915059aa4ddcd1e5b93f8eca6f19c2c72e3e862be6183839eb93a67

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d51c4866a09851d589d51dbd410b5e6ff3c7f9a451299771ffa254b9c4da419 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tree/Variant3e763065c4fce508ad61f56d506cf5fc1285d02662abc63866bc9c80d2cf3c26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
