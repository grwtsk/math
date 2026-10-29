-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantab8cc60c613b958e9f37bc0ce85e5b8981566069476b636bfe9650027c4a48a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab8cc60c613b958e9f37bc0ce85e5b8981566069476b636bfe9650027c4a48a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Core.Variantab8cc60c613b958e9f37bc0ce85e5b8981566069476b636bfe9650027c4a48a6","mathematical_subject":"Foundations.Unclassified","original_sha256":"ab8cc60c613b958e9f37bc0ce85e5b8981566069476b636bfe9650027c4a48a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.Core
import Surface.Incremental.Hash
import Surface.Incremental.ModuleKey
import Surface.Incremental.ImportGraph
import Surface.Incremental.ReverseImportGraph
import Surface.Incremental.DependencyClosure
import Surface.Incremental.AffectedOrder
import Surface.Incremental.Artifact
import Surface.Incremental.Request
import Surface.Incremental.ReducerSeed
import Surface.Incremental.RegenerationPlan
import Surface.Incremental.SiteArtifacts
import Surface.Incremental.Preservation
import Surface.Incremental.Report
import Surface.Incremental.Json
import Surface.Incremental.RustProtocol
import Surface.Incremental.Main

/-!
# Surface incremental generation

What is formalized:
Request-time reducer seeds, reverse-import closures, deterministic affected
orders, artifact plans, preservation reports, site-fragment updates, JSON/report
schemas, and Rust transport boundaries.

What is certificate-gated:
External filesystem watching, hashing, Lean invocation, and artifact emission by
runners outside the Lean kernel.

What is not claimed:
Rust transport is not theorem authority, and unchanged artifacts are not claimed
mathematically independent beyond the certified closure and hash reports.

Primary mathematical source:
Internal Surface deterministic request-time generation discipline.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantab8cc60c613b958e9f37bc0ce85e5b8981566069476b636bfe9650027c4a48a6

