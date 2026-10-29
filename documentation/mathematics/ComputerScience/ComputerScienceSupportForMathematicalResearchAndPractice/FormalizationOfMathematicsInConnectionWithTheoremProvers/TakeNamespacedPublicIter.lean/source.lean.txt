-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterTake.Variant0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterTake.Variant0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Combinators/Take.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.Take


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterTake.Variant0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504

@[expose] public section

namespace Std
open Std.Iterators Std.Iterators.Types

/--
Given an iterator `it` and a natural number `n`, `it.take n` is an iterator that outputs
up to the first `n` of `it`'s values in order and then terminates.

**Marble diagram:**

```text
it          ---a----b---c--d-e--⊥
it.take 3   ---a----b---c⊥

it          ---a--⊥
it.take 3   ---a--⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is productive
* `Productive` instance: only if `it` is productive

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it`.
-/
@[cbv_opaque, always_inline, inline]
def Iter.take {α : Type w} {β : Type w} [Iterator α Id β] (n : Nat) (it : Iter (α := α) β) :
    Iter (α := Take α Id) β :=
  it.toIterM.take n |>.toIter

/--
This combinator is only useful for advanced use cases.

Given a finite iterator `it`, returns an iterator that behaves exactly like `it` but is of the same
type as `it.take n`.

**Marble diagram:**

```text
it          ---a----b---c--d-e--⊥
it.toTake   ---a----b---c--d-e--⊥
```

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it`.
-/
@[always_inline, inline]
def Iter.toTake {α : Type w} {β : Type w} [Iterator α Id β] [Finite α Id] (it : Iter (α := α) β) :
    Iter (α := Take α Id) β :=
  it.toIterM.toTake.toIter

end Std
