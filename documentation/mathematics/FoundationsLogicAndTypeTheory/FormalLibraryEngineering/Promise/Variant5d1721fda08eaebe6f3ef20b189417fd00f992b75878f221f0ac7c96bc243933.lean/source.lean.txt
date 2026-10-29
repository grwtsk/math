-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Promise.Variant0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Promise.Variant0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/System/Promise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Init.System.IO


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Promise.Variant0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845

public section

set_option linter.missingDocs true

namespace IO

private opaque PromisePointed : NonemptyType.{0}

/--
`Promise α` allows you to create a `Task α` whose value is provided later by calling `resolve`.

Typical usage is as follows:
1. `let promise ← Promise.new` creates a promise
2. `promise.result? : Task (Option α)` can now be passed around
3. `promise.result?.get` blocks until the promise is resolved
4. `promise.resolve a` resolves the promise
5. `promise.result?.get` now returns `some a`

If the promise is dropped without ever being resolved, `promise.result?.get` will return `none`.
See `Promise.result!/resultD` for other ways to handle this case.
-/
structure Promise (α : Type) : Type where
  private prom : PromisePointed.type
  private h    : Nonempty α

instance [s : Nonempty α] : Nonempty (Promise α) :=
  by exact Nonempty.intro { prom := Classical.choice PromisePointed.property, h := s }

/-- Creates a new `Promise`. -/
@[extern "lean_io_promise_new"]
opaque Promise.new [Nonempty α] : BaseIO (Promise α)

/--
Resolves a `Promise`.

Only the first call to this function has an effect.
-/
@[extern "lean_io_promise_resolve"]
opaque Promise.resolve (value : α) (promise : @& Promise α) : BaseIO Unit

/--
Like `Promise.result`, but resolves to `none` if the promise is dropped without ever being resolved.
-/
@[extern "lean_io_promise_result_opt"]
opaque Promise.result? (promise : @& Promise α) : Task (Option α)

-- SU: not planning to make this public without a lot more thought and motivation
@[extern "lean_option_get_or_block"]
private opaque Option.getOrBlock! [Nonempty α] : Option α → α

/--
The result task of a `Promise`.

The task blocks until `Promise.resolve` is called. If the promise is dropped without ever being
resolved, evaluating the task will panic and, when not using fatal panics, block forever. As
`Promise.result!` is a pure value and thus the point of evaluation may not be known precisely, this
means that any promise on which `Promise.result!` *may* be evaluated *must* be resolved eventually.
When in doubt, always prefer `Promise.result?` to handle dropped promises explicitly.
-/
def Promise.result! (promise : @& Promise α) : Task α :=
  let _ : Nonempty α := promise.h
  promise.result?.map (sync := true) Option.getOrBlock!

/--
Like `Promise.result`, but resolves to `dflt` if the promise is dropped without ever being resolved.
-/
@[macro_inline, expose] def Promise.resultD (promise : Promise α) (dflt : α) : Task α :=
  promise.result?.map (sync := true) (·.getD dflt)

/--
Checks whether the promise has already been resolved, i.e. whether access to `result*` will return
immediately.
-/
def Promise.isResolved (promise : Promise α) : BaseIO Bool :=
  IO.hasFinished promise.result?
