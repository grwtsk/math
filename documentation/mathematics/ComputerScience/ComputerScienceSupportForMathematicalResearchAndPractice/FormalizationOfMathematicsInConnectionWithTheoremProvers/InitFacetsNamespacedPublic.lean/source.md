# Init Facets Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7a81b1b4cc6ffc7abb40ef3d320287476b339fa` · SHA-256 `3e7eadbc02e3fb09c88f36e56577e808c3acd5b85c114f65ab05d09b0a2cbb54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InitFacetConfigs.Variant623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.InitFacetConfigs.Variant623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/InitFacets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.FacetConfig
import Lake.Build.Module
import Lake.Build.Package
import Lake.Build.Library
import Lake.Build.Executable
import Lake.Build.ExternLib
import Lake.Build.InputFile

/-! # Initial Facets -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InitFacetConfigs.Variant623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806

namespace Lake

/-- The initial set of Lake facets. -/
public def initFacetConfigs : FacetConfigMap :=
  DNameMap.empty
  |> insert Module.initFacetConfigs
  |> insert Package.initFacetConfigs
  |> insert LeanLib.initFacetConfigs
  |> insert LeanExe.initFacetConfigs
  |> insert ExternLib.initFacetConfigs
  |> insert InputFile.initFacetConfigs
  |> insert InputDir.initFacetConfigs
where
  insert {k} (group : DNameMap (KFacetConfig k)) map :=
    group.foldl (init := map) fun m _ v => m.insert v.toFacetConfig
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0447c49c501db7c2ef10a82f0873a048d08b3d61e6443d2517392ee4ef4c433a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitFacets/Variant7b04c35f6051976cb919e253a735c3ee451752c7a76fab93f0f6ba016e3261d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
