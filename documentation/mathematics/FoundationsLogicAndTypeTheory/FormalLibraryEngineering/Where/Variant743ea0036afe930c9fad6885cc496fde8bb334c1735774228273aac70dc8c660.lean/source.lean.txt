-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Variantcd946e9424cd7423adeeec9d79839bcc929fc86a92aba8de27ad48f0bf5f9b00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd946e9424cd7423adeeec9d79839bcc929fc86a92aba8de27ad48f0bf5f9b00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Term.Variantcd946e9424cd7423adeeec9d79839bcc929fc86a92aba8de27ad48f0bf5f9b00","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cd946e9424cd7423adeeec9d79839bcc929fc86a92aba8de27ad48f0bf5f9b00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/where.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- None of these imports are really necessary, except to create namespace mentioned below.
import Lean.Elab.Term
import Lean.Elab.Command
import Batteries.Data.UnionFind.Basic

-- Return to pristine state

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Variantcd946e9424cd7423adeeec9d79839bcc929fc86a92aba8de27ad48f0bf5f9b00

set_option linter.missingDocs false
set_option internal.cmdlineSnapshots false
set_option experimental.module false
set_option Elab.inServer false

/-- info: -- In root namespace with initial scope -/
#guard_msgs in #where

noncomputable section
/-- info: noncomputable section -/
#guard_msgs in #where
end

namespace WhereTest
variable (x : Nat) (α : Type)
/--
info: namespace WhereTest

variable (x : Nat) (α : Type)
-/
#guard_msgs in #where

universe u v w

/--
info: namespace WhereTest

universe u v w

variable (x : Nat) (α : Type)
-/
#guard_msgs in #where

set_option pp.piBinderTypes false

/--
info: namespace WhereTest

universe u v w

variable (x : Nat) (α : Type)

set_option pp.piBinderTypes false
-/
#guard_msgs in #where
end WhereTest

open Lean Meta

/--
info: open Lean Lean.Meta
-/
#guard_msgs in #where

open Elab hiding TermElabM

/--
info: open Lean Lean.Meta
open Lean.Elab hiding TermElabM
-/
#guard_msgs in #where

open Command Batteries
open _root_.Array renaming map -> listMap

/--
info: open Lean Lean.Meta
open Lean.Elab hiding TermElabM
open Lean.Elab.Command Lean.Meta.Command Batteries
open Array renaming map → listMap
-/
#guard_msgs in #where
