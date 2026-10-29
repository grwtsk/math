-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Data.Variant020feaf6141f8651ce2dcee63a0daafc98b02c0ec6d89b02e380b323a4b9b5ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"020feaf6141f8651ce2dcee63a0daafc98b02c0ec6d89b02e380b323a4b9b5ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Data.Variant020feaf6141f8651ce2dcee63a0daafc98b02c0ec6d89b02e380b323a4b9b5ab","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"020feaf6141f8651ce2dcee63a0daafc98b02c0ec6d89b02e380b323a4b9b5ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/SCC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Std.Data.HashMap.Basic
public import Init.Data.Option.Coe


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Data.Variant020feaf6141f8651ce2dcee63a0daafc98b02c0ec6d89b02e380b323a4b9b5ab

public section

namespace Lean.SCC
/-!
  Very simple implementation of Tarjan's SCC algorithm.
  Performance is not a goal here since we use this module to
  compiler mutually recursive definitions, where each function
  (and nested let-rec) in the mutual block is a vertex.
  So, the graphs are small. -/

section
variable (α : Type) [BEq α] [Hashable α]

structure Data where
  index?   : Option Nat := none
  lowlink? : Option Nat := none
  onStack  : Bool       := false

structure State where
  stack     : List α := []
  nextIndex : Nat := 0
  data      : Std.HashMap α Data := {}
  sccs      : List (List α) := []

abbrev M := StateM (State α)
end

variable {α : Type} [BEq α] [Hashable α]

private def getDataOf (a : α) : M α Data := do
  let s ← get
  match s.data[a]? with
  | some d => pure d
  | none   => pure {}

private def push (a : α) : M α Unit :=
  modify fun s => { s with
    stack     := a :: s.stack,
    nextIndex := s.nextIndex + 1,
    data      := s.data.insert a {
      index?   := s.nextIndex,
      lowlink? := s.nextIndex,
      onStack  := true
    }
  }

private def modifyDataOf (a : α) (f : Data → Data) : M α Unit :=
  modify fun s => { s with
    data := match s.data[a]? with
      | none   => s.data
      | some d => s.data.insert a (f d)
  }

private def resetOnStack (a : α) : M α Unit :=
  modifyDataOf a fun d => { d with onStack := false }

private def updateLowLinkOf (a : α) (v : Option Nat) : M α Unit :=
  modifyDataOf a fun d => { d with
    lowlink? := match d.lowlink?, v with
      | i, none => i
      | none, i => i
      | some i, some j => if i < j then i else j
  }

private def addSCC (a : α) : M α Unit := do
  let rec add
    | [],    newSCC => modify fun s => { s with stack := [], sccs := newSCC :: s.sccs }
    | b::bs, newSCC => do
      resetOnStack b;
      let newSCC := b::newSCC;
      if a != b then
        add bs newSCC
      else
        modify fun s => { s with stack := bs, sccs := newSCC :: s.sccs }
  add (← get).stack []

private partial def sccAux (successorsOf : α → List α) (a : α) : M α Unit := do
  push a
  (successorsOf a).forM fun b => do
    let bData ← getDataOf b;
    if bData.index?.isNone then
      -- `b` has not been visited yet
      sccAux successorsOf b;
      let bData ← getDataOf b;
      updateLowLinkOf a bData.lowlink?
    else if bData.onStack then do
      -- `b` is on the stack. So, it must be in the current SCC
      -- The edge `(a, b)` is pointing to an SCC already found and must be ignored
      updateLowLinkOf a bData.index?
    else
      pure ()
  let aData ← getDataOf a;
  if aData.lowlink? == aData.index? then
    addSCC a

def scc (vertices : List α) (successorsOf : α → List α) : List (List α) :=
  let main : M α Unit := vertices.forM fun a => do
    let aData ← getDataOf a
    if aData.index?.isNone then sccAux successorsOf a
  let (_, s) := main.run {}
  s.sccs.reverse

end Lean.SCC
