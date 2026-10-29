-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MLListWhileAtLeastHeartbeatsPercent.Variant6458971df8830e49d19a1f5df49b1f1c79d34fe4fdc6538cb3d9369dba625561","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6458971df8830e49d19a1f5df49b1f1c79d34fe4fdc6538cb3d9369dba625561","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MLListWhileAtLeastHeartbeatsPercent.Variant6458971df8830e49d19a1f5df49b1f1c79d34fe4fdc6538cb3d9369dba625561","mathematical_subject":"Computation.DataStructures","original_sha256":"6458971df8830e49d19a1f5df49b1f1c79d34fe4fdc6538cb3d9369dba625561","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/MLList/Heartbeats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Batteries.Data.MLList.Basic
public import Lean.Util.Heartbeats


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MLListWhileAtLeastHeartbeatsPercent.Variant6458971df8830e49d19a1f5df49b1f1c79d34fe4fdc6538cb3d9369dba625561

@[expose] public section

/-!
# Truncate a `MLList` when running out of available heartbeats.
-/

open Lean
open Lean.Core (CoreM)

/-- Take an initial segment of a monadic lazy list,
stopping when there is less than `percent` of the remaining allowed heartbeats.

If `getMaxHeartbeats` returns `0`, then this passes through the original list unmodified.

The `initial` heartbeat counter is recorded when the first element of the list is requested.
Then each time an element is requested from the wrapped list the heartbeat counter is checked, and
if `current * 100 / initial < percent` then that element is returned,
but no further elements.
-/
def MLList.whileAtLeastHeartbeatsPercent [Monad m] [MonadLiftT CoreM m]
    (L : MLList m α) (percent : Nat := 10) : MLList m α :=
  MLList.squash fun _ => do
    if (← getMaxHeartbeats) = 0 then do
      return L
    let initialHeartbeats ← getRemainingHeartbeats
    return L.takeUpToFirstM fun _ => do
      pure <| .up <| (← getRemainingHeartbeats) * 100 / initialHeartbeats < percent
