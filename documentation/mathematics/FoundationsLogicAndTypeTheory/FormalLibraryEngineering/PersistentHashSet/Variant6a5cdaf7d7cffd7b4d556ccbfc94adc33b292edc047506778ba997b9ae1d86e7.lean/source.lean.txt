-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnyM.Variant8e8befa4956c99cf968804d4e6230b84b9cb235194d4922f0d065c03b37a4e2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e8befa4956c99cf968804d4e6230b84b9cb235194d4922f0d065c03b37a4e2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AnyM.Variant8e8befa4956c99cf968804d4e6230b84b9cb235194d4922f0d065c03b37a4e2b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8e8befa4956c99cf968804d4e6230b84b9cb235194d4922f0d065c03b37a4e2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/PersistentHashSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Data.PersistentHashSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnyM.Variant8e8befa4956c99cf968804d4e6230b84b9cb235194d4922f0d065c03b37a4e2b

@[expose] public section

namespace Lean.PersistentHashSet

variable [BEq α] [Hashable α]

instance [Monad m] : ForIn m (PersistentHashSet α) α where
  forIn s init step := do
    let mut state := init
    for (k, _) in s.set do
      match ← step k state with
      | .done state' => return state'
      | .yield state' => state := state'
    return state

/--
Returns `true` if `f` returns `true` for any element of the set.
-/
@[specialize]
def anyM [Monad m] (s : PersistentHashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if ← f a then
      return true
  return false

/--
Returns `true` if `f` returns `true` for any element of the set.
-/
@[inline]
def any (s : PersistentHashSet α) (f : α → Bool) : Bool :=
  Id.run <| s.anyM f

/--
Returns `true` if `f` returns `true` for all elements of the set.
-/
@[specialize]
def allM [Monad m] (s : PersistentHashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if ! (← f a) then
      return false
  return true

/--
Returns `true` if `f` returns `true` for all elements of the set.
-/
@[inline]
def all (s : PersistentHashSet α) (f : α → Bool) : Bool :=
  Id.run <| s.allM f

instance : BEq (PersistentHashSet α) where
  beq s t := s.all (t.contains ·) && t.all (s.contains ·)

/--
Insert all elements from a collection into a `PersistentHashSet`.
-/
def insertMany [ForIn Id ρ α] (s : PersistentHashSet α) (as : ρ) :
    PersistentHashSet α := Id.run do
  let mut s := s
  for a in as do
    s := s.insert a
  return s

/--
Obtain a `PersistentHashSet` from an array.
-/
@[inline]
protected def ofArray [BEq α] [Hashable α] (as : Array α) : PersistentHashSet α :=
  PersistentHashSet.empty.insertMany as

/--
Obtain a `PersistentHashSet` from a list.
-/
@[inline]
protected def ofList [BEq α] [Hashable α] (as : List α) : PersistentHashSet α :=
  PersistentHashSet.empty.insertMany as

/--
Merge two `PersistentHashSet`s.
-/
@[inline]
def merge (s t : PersistentHashSet α) : PersistentHashSet α :=
  s.insertMany t
