-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompleteMatchQueue.Variantc376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CompleteMatchQueue.Variantc376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Forward/CompleteMatchQueue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Batteries.Data.BinomialHeap.Basic
import Aesop.Forward.Match


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompleteMatchQueue.Variantc376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8

set_option linter.missingDocs true

namespace Aesop

open Batteries (BinomialHeap)

/-- A complete match queue. -/
abbrev CompleteMatchQueue := BinomialHeap ForwardRuleMatch ForwardRuleMatch.le

namespace CompleteMatchQueue

/-- Drop elements satisfying `f` from the front of `queue` until we reach
an element that does not satisfy `f` (or until the queue is empty). -/
partial def dropInitial (queue : CompleteMatchQueue)
    (f : ForwardRuleMatch → Bool) : CompleteMatchQueue :=
  match queue.deleteMin with
  | none => queue
  | some (m, queue') =>
    if f m then
      dropInitial queue' f
    else
      queue

end Aesop.CompleteMatchQueue
