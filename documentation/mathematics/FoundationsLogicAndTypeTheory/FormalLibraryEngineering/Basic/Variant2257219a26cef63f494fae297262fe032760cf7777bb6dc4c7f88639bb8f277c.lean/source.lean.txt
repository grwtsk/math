-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMInductSteps.Variant1125d66c4a8c0d800cc23b02a7ce68e394ff5d2891e96fe8361c47bc3f54bacd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1125d66c4a8c0d800cc23b02a7ce68e394ff5d2891e96fe8361c47bc3f54bacd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMInductSteps.Variant1125d66c4a8c0d800cc23b02a7ce68e394ff5d2891e96fe8361c47bc3f54bacd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1125d66c4a8c0d800cc23b02a7ce68e394ff5d2891e96fe8361c47bc3f54bacd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Monadic/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMInductSteps.Variant1125d66c4a8c0d800cc23b02a7ce68e394ff5d2891e96fe8361c47bc3f54bacd

public section

namespace Std
open Std.Iterators

/--
Induction principle for finite monadic iterators: One can define a function `f` that maps every
iterator `it` to an element of `motive it` by defining `f it` in terms of the values of `f` on
the plausible successors of `it'.
-/
@[specialize]
def IterM.inductSteps {α m β} [Iterator α m β] [Finite α m]
  (motive : IterM (α := α) m β → Sort x)
  (step : (it : IterM (α := α) m β) →
    (ih_yield : ∀ {it' : IterM (α := α) m β} {out : β},
      it.IsPlausibleStep (.yield it' out) → motive it') →
    (ih_skip : ∀ {it' : IterM (α := α) m β}, it.IsPlausibleStep (.skip it') → motive it') →
    motive it)
  (it : IterM (α := α) m β) : motive it :=
  step it
    (fun {it' _} _ => inductSteps motive step it')
    (fun {it'} _ => inductSteps motive step it')
termination_by it.finitelyManySteps

/--
Induction principle for productive monadic iterators: One can define a function `f` that maps every
iterator `it` to an element of `motive it` by defining `f it` in terms of the values of `f` on
the plausible skip successors of `it'.
-/
@[specialize]
def IterM.inductSkips {α m β} [Iterator α m β] [Productive α m]
  (motive : IterM (α := α) m β → Sort x)
  (step : (it : IterM (α := α) m β) →
    (ih_skip : ∀ {it' : IterM (α := α) m β}, it.IsPlausibleStep (.skip it') → motive it') →
    motive it)
  (it : IterM (α := α) m β) : motive it :=
  step it (fun {it'} _ => inductSkips motive step it')
termination_by it.finitelyManySkips

end Std
