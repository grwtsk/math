-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIterator.Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToIterator.Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/ToIterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIterator.Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20

public section

/-!
This module provides the typeclass `ToIterator`, which is implemented by types that can be
converted into iterators.
-/

namespace Std

/-- This typeclass provides an iterator for elements of type `γ`. -/
class ToIterator (γ : Type u) (m : Type w → Type w') (α β : outParam (Type w)) where
  iterMInternal (x : γ) : IterM (α := α) m β

/-- Converts `x` into a monadic iterator. -/
@[always_inline, inline, expose]
def ToIterator.iterM (x : γ) [ToIterator γ m α β] : IterM (α := α) m β :=
  ToIterator.iterMInternal (x := x)

/-- Converts `x` into a pure iterator. -/
@[always_inline, inline, expose]
def ToIterator.iter [ToIterator γ Id α β] (x : γ) : Iter (α := α) β :=
  ToIterator.iterM x |>.toIter

/-- Creates a monadic `ToIterator` instance. -/
@[always_inline, inline, expose, instance_reducible]
def ToIterator.ofM (α : Type w)
    (iterM : γ → IterM (α := α) m β) :
    ToIterator γ m α β where
  iterMInternal x := iterM x

/-- Creates a pure `ToIterator` instance. -/
@[always_inline, inline, expose, instance_reducible]
def ToIterator.of (α : Type w)
    (iter : γ → Iter (α := α) β) :
    ToIterator γ Id α β where
  iterMInternal x := iter x |>.toIterM

/-- Replaces `ToIterator.iterM` with its definition. -/
theorem ToIterator.iterM_eq {γ : Type u} {α β : Type v}
    {it : γ → IterM (α := α) Id β} {x} :
    letI : ToIterator γ Id α β := .ofM α it
    ToIterator.iterM x = it x :=
  rfl

/-- Replaces `ToIterator.iter` with its definition. -/
theorem ToIterator.iter_eq {γ : Type u} {x : γ} {α β : Type v} {it} :
    letI : ToIterator γ Id α β := .ofM α it
    ToIterator.iter x = (it x).toIter :=
  rfl

end Std
