-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BarrierState.Variant42b5bff58d658dcf78133d0cc22fe6718b634ec59564ce9fd283d4a612313842","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42b5bff58d658dcf78133d0cc22fe6718b634ec59564ce9fd283d4a612313842","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BarrierState.Variant42b5bff58d658dcf78133d0cc22fe6718b634ec59564ce9fd283d4a612313842","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"42b5bff58d658dcf78133d0cc22fe6718b634ec59564ce9fd283d4a612313842","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sync/Barrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sync.Mutex


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BarrierState.Variant42b5bff58d658dcf78133d0cc22fe6718b634ec59564ce9fd283d4a612313842

public section

namespace Std

/-
This file heavily inspired by:
https://github.com/rust-lang/rust/blob/b8ae372/library/std/src/sync/barrier.rs
-/

private structure BarrierState where
  count : Nat
  generationId : Nat

/--
A `Barrier` will block `n - 1` threads which call `Barrier.wait` and then wake up all threads at
once when the `n`-th thread calls `Barrier.wait`.
-/
structure Barrier where private mk ::
  private lock : Mutex BarrierState
  private cvar : Condvar
  numThreads : Nat

/--
Creates a new barrier that can block a given number of threads.
-/
def Barrier.new (numThreads : Nat) : BaseIO Barrier := do
  return {
    lock := ← Mutex.new { count := 0, generationId := 0 },
    cvar := ← Condvar.new,
    numThreads := numThreads
  }

/--
Blocks the current thread until all threads have rendezvoused here.

Barriers are re-usable after all threads have rendezvoused once, and can be used continuously.

A single (arbitrary) thread will receive `true` when returning from this function, and all other
threads will receive `false`.
-/
def Barrier.wait (barrier : Barrier) : BaseIO Bool := do
  barrier.lock.atomically do
    let localGen := (← get).generationId
    modify fun s => { s with count := s.count + 1 }
    if (← get).count < barrier.numThreads then
      barrier.cvar.waitUntil barrier.lock.mutex do
        return (← get).generationId != localGen
      return false
    else
      modify fun s => { count := 0, generationId := s.generationId + 1 }
      barrier.cvar.notifyAll
      return true

end Std
