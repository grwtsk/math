-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc569c1801f12a07da280f702e499dcd7cb811cad78cab25171e9710d026ede0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c569c1801f12a07da280f702e499dcd7cb811cad78cab25171e9710d026ede0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantc569c1801f12a07da280f702e499dcd7cb811cad78cab25171e9710d026ede0b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c569c1801f12a07da280f702e499dcd7cb811cad78cab25171e9710d026ede0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/LawfulMonad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.Elab.Command
import all Init.System.ST


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc569c1801f12a07da280f702e499dcd7cb811cad78cab25171e9710d026ede0b

@[expose] public section

/-!
# Construct `LawfulMonad` instances for the Lean monad stack.
-/

open Lean Elab Term Tactic Command

instance : LawfulMonad (ST σ) := .mk' _
  (id_map := fun x => rfl)
  (pure_bind := fun x f => rfl)
  (bind_assoc := fun f g x => rfl)

instance  : LawfulMonad (EST ε σ) := .mk' _
  (id_map := fun x => funext fun v => by dsimp [Functor.map, EST.bind]; cases x v <;> rfl)
  (pure_bind := fun x f => rfl)
  (bind_assoc := fun f g x => funext fun v => by dsimp [Bind.bind, EST.bind]; cases f v <;> rfl)

instance : LawfulMonad (EIO ε) := inferInstanceAs <| LawfulMonad (EST _ _)
instance : LawfulMonad BaseIO := inferInstanceAs <| LawfulMonad (ST _)
instance : LawfulMonad IO := inferInstanceAs <| LawfulMonad (EIO _)

instance : LawfulMonad CoreM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ <| StateRefT' _ _ (EIO Exception))
instance : LawfulMonad MetaM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ <| StateRefT' _ _ CoreM)
instance : LawfulMonad TermElabM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ <| StateRefT' _ _ MetaM)
instance : LawfulMonad TacticM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ $ StateRefT' _ _ $ TermElabM)
instance : LawfulMonad CommandElabM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ $ StateRefT' _ _ $ EIO _)
