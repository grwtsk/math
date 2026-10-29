# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Build.Variant738bb16edb2e4edfbd1d1778eec09390f708f4b1e8d87c8f8e0a7aefc4104e78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d91920ff62b72ca368a395e3df7e0b68804a4d3` · SHA-256 `472d2d82e7081eecdf4fcbb77066d8120810b8ec8ae3f4bdeae092c55ba9f47d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BuildArtifactKind.Varianta5d21b5fbe2fb11c54d67fb6603a67929ba7040045c559b9f2bcada211c037cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5d21b5fbe2fb11c54d67fb6603a67929ba7040045c559b9f2bcada211c037cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BuildArtifactKind.Varianta5d21b5fbe2fb11c54d67fb6603a67929ba7040045c559b9f2bcada211c037cc","mathematical_subject":"Computation.DataStructures","original_sha256":"a5d21b5fbe2fb11c54d67fb6603a67929ba7040045c559b9f2bcada211c037cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Build.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Module

/-!
# Build-system and artifact receipt boundary

These records carry build-system evidence. They never override declaration
facts recovered from the compiled Lean environment.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BuildArtifactKind.Varianta5d21b5fbe2fb11c54d67fb6603a67929ba7040045c559b9f2bcada211c037cc

namespace MathDiscovery.Extractor

open MathDiscovery

inductive BuildArtifactKind
  | source
  | olean
  | library
  | executable
  | lakefile
  | lakeManifest
  | leanToolchain
  | other
  deriving DecidableEq, Repr, Inhabited

structure BuildArtifactRecord where
  kind : BuildArtifactKind
  path : Option CanonicalPath
  digest : Option Digest
  required : Bool
  present : Bool
  authority : ExtractionAuthority := .buildSystem
  deriving DecidableEq, Repr, Inhabited

structure ModuleBuildReceipt where
  moduleName : Lean.Name
  packageId : PackageId
  ownership : OwnershipClass
  source : BuildArtifactRecord
  olean : BuildArtifactRecord
  deriving DecidableEq, Repr, Inhabited

structure BuildReceipt where
  schemaVersion : String
  projectId : ProjectId
  leanVersion : Option String
  lakeVersion : Option String
  leanGitRevision : Option String
  modules : Array ModuleBuildReceipt
  projectArtifacts : Array BuildArtifactRecord
  missingArtifacts : Array String
  authority : ExtractionAuthority := .buildSystem
  deriving DecidableEq, Repr, Inhabited

namespace BuildArtifactRecord

/-- A required artifact is complete exactly when it is present. -/
def Complete (artifact : BuildArtifactRecord) : Prop :=
  artifact.required = true → artifact.present = true

end BuildArtifactRecord

namespace ModuleBuildReceipt

/-- A module receipt accounts for both its source and compiled artifact. -/
def Complete (receipt : ModuleBuildReceipt) : Prop :=
  receipt.source.Complete ∧ receipt.olean.Complete

end ModuleBuildReceipt

namespace BuildReceipt

/--
An authoritative receipt has no recorded missing artifact, every module source
and `.olean` requirement is present, and every required project artifact is
present. This is build-system evidence only; it does not override the compiled
environment.
-/
def Complete (receipt : BuildReceipt) : Prop :=
  receipt.missingArtifacts.isEmpty = true ∧
  (∀ moduleReceipt ∈ receipt.modules, moduleReceipt.Complete) ∧
  (∀ artifact ∈ receipt.projectArtifacts, artifact.Complete)

end BuildReceipt

end MathDiscovery.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c54f987f4b8c2905f231c48e9e50f3ec3979e06c33e0965a40d5fd67360f6b99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Build/Variant738bb16edb2e4edfbd1d1778eec09390f708f4b1e8d87c8f8e0a7aefc4104e78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
