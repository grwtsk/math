-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadCallStackOf.Variant16080d5fb567fdf733d7f6fa3cb36273d76c02dac62fcd54e53c7bf8c2155b21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16080d5fb567fdf733d7f6fa3cb36273d76c02dac62fcd54e53c7bf8c2155b21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MonadCallStackOf.Variant16080d5fb567fdf733d7f6fa3cb36273d76c02dac62fcd54e53c7bf8c2155b21","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"16080d5fb567fdf733d7f6fa3cb36273d76c02dac62fcd54e53c7bf8c2155b21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Cycle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.ToString


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadCallStackOf.Variant16080d5fb567fdf733d7f6fa3cb36273d76c02dac62fcd54e53c7bf8c2155b21

namespace Lake

/-- A sequence of calls donated by the key type `κ`. -/
public abbrev CallStack κ := List κ

/-- A `CallStack` ending in a cycle. -/
public abbrev Cycle κ := CallStack κ

public def formatCycle [ToString κ] (cycle : Cycle κ) : String :=
  "\n".intercalate <| cycle.map (s!"  {·}")

/-- A monad equipped with a call stack. -/
public class MonadCallStackOf (κ :  semiOutParam (Type u)) (m : Type u → Type v) where
  getCallStack : m (CallStack κ)
  withCallStack (stack : CallStack κ) (x : m α) : m α

/-- Similar to `MonadCallStackOf`, but `κ` is an `outParam` for convenience. -/
public class MonadCallStack (κ :  outParam (Type u)) (m : Type u → Type v) where
  getCallStack : m (CallStack κ)
  withCallStack (stack : CallStack κ) (x : m α) : m α

export MonadCallStack (getCallStack withCallStack)

public instance [MonadCallStackOf κ m] : MonadCallStack κ m where
  getCallStack := MonadCallStackOf.getCallStack
  withCallStack := MonadCallStackOf.withCallStack

public instance [MonadLift m n] [MonadFunctor m n] [MonadCallStackOf κ m] : MonadCallStackOf κ n where
  getCallStack := liftM (m := m) getCallStack
  withCallStack s := monadMap (m := m) (withCallStack s ·)

/-- A monad equipped with a call stack and the ability to error on a cycle. -/
public class MonadCycleOf (κ :  semiOutParam (Type u)) (m : Type u → Type v) extends MonadCallStackOf κ m where
  throwCycle (cycle : Cycle κ) : m α

/-- Similar to `MonadCycle`, but `κ` is an `outParam` for convenience. -/
public class MonadCycle (κ :  outParam (Type u)) (m : Type u → Type v) extends MonadCallStack κ m where
  throwCycle (cycle : Cycle κ) : m α

export MonadCycle (throwCycle)

public instance [MonadCycleOf κ m] : MonadCycle κ m where
  throwCycle := MonadCycleOf.throwCycle

export MonadCycle (throwCycle)

public instance [MonadLift m n] [MonadFunctor m n] [MonadCycleOf κ m] : MonadCycleOf κ n where
  throwCycle cycle := liftM (m := m) (throwCycle cycle)

public instance inhabitedOfMonadCycle [MonadCycle κ m] : Inhabited (m α) := ⟨throwCycle []⟩

/-- A transformer that equips a monad with a `CallStack`. -/
public abbrev CallStackT κ m := ReaderT (CallStack κ) m

public instance [Monad m] : MonadCallStackOf κ (CallStackT κ m) where
  getCallStack := read
  withCallStack s x := x s

/-- A transformer that equips a monad with a `CallStack` to detect cycles. -/
public abbrev CycleT κ m := CallStackT κ <| ExceptT (Cycle κ) m

public instance [Monad m] : MonadCycleOf κ (CycleT κ m) where
  throwCycle := throw

/--
Add `key` to the monad's `CallStack` before invoking `act`.
If adding `key` produces a cycle, the cyclic call stack is thrown.
-/
@[inline] public def guardCycle
  [BEq κ] [Monad m] [MonadCycle κ m] (key : κ) (act : m α)
: m α := do
  let parents ← getCallStack
  if parents.contains key then
    throwCycle <| key :: (parents.partition (· != key)).1 ++ [key]
  else
    withCallStack (key :: parents) act
