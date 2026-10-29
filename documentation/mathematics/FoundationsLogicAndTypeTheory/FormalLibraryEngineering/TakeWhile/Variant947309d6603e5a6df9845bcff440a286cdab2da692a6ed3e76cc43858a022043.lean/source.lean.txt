-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterTakeWhile.Variant7ba8dfc258632e30afd9061ca219cf96b80a45f1541d07184edde9693ddf6289","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ba8dfc258632e30afd9061ca219cf96b80a45f1541d07184edde9693ddf6289","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterTakeWhile.Variant7ba8dfc258632e30afd9061ca219cf96b80a45f1541d07184edde9693ddf6289","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7ba8dfc258632e30afd9061ca219cf96b80a45f1541d07184edde9693ddf6289","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Combinators/TakeWhile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.TakeWhile


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterTakeWhile.Variant7ba8dfc258632e30afd9061ca219cf96b80a45f1541d07184edde9693ddf6289

@[expose] public section

namespace Std

/--
Given an iterator `it` and a predicate `P`, `it.takeWhile P` is an iterator that outputs
the values emitted by `it` until one of those values is rejected by `P`.
If some emitted value is rejected by `P`, the value is dropped and the iterator terminates.

**Marble diagram:**

Assuming that the predicate `P` accepts `a` and `b` but rejects `c`:

```text
it               ---a----b---c--d-e--⊥
it.takeWhile P   ---a----b---⊥

it               ---a----⊥
it.takeWhile P   ---a----⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is productive

Depending on `P`, it is possible that `it.takeWhile P` is finite (or productive) although `it` is not.
In this case, the `Finite` (or `Productive`) instance needs to be proved manually.

**Performance:**

This combinator calls `P` on each output of `it` until the predicate evaluates to false. Then
it terminates.
-/
@[cbv_opaque, always_inline, inline]
def Iter.takeWhile {α : Type w} {β : Type w} (P : β → Bool) (it : Iter (α := α) β) :=
  (it.toIterM.takeWhile P |>.toIter : Iter β)

end Std
