-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.DeltaGenerated.Variant3916bb4b40015bb63cb8ce7aa1b043d9242fc806ebced290e004a33c188609d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3916bb4b40015bb63cb8ce7aa1b043d9242fc806ebced290e004a33c188609d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.DeltaGenerated.Variant3916bb4b40015bb63cb8ce7aa1b043d9242fc806ebced290e004a33c188609d7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3916bb4b40015bb63cb8ce7aa1b043d9242fc806ebced290e004a33c188609d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/DeltaGenerated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Ben Eltschig. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ben Eltschig, Joël Riou
-/
module

public import Mathlib.CategoryTheory.Monad.Limits
public import Mathlib.Topology.Category.TopCat.Limits.Basic
public import Mathlib.Topology.Compactness.DeltaGeneratedSpace
public import Mathlib.Topology.Convenient.Category

/-!
# Delta-generated topological spaces

This file defines the category `DeltaGenerated` of delta-generated spaces.
This is a particular case of the construction in the file
`Mathlib/Topology/Convenient/Category.Lean`: this is the category of
`X`-generated spaces where `X` is the family of spaces `Fin n → ℝ`
for all `n : ℕ`.

## TODO
* `DeltaGenerated` is Cartesian closed (@joelriou).

## References
* https://ncatlab.org/nlab/show/Delta-generated+topological+space

-/


namespace GRWTSK.Topology.GeneralTopology.DeltaGenerated.Variant3916bb4b40015bb63cb8ce7aa1b043d9242fc806ebced290e004a33c188609d7

@[expose] public section

universe u

open CategoryTheory

/-- The category of delta-generated topological spaces. -/
abbrev DeltaGenerated := GeneratedByTopCat.{u} (fun n ↦ Fin n → ℝ)

/-- The faithful (but not full) functor taking each topological space to its delta-generated
  coreflection. -/
abbrev TopCat.toDeltaGenerated : TopCat.{u} ⥤ DeltaGenerated.{u} :=
  TopCat.toGeneratedByTopCat

namespace DeltaGenerated

/-- Constructor for objects of the category `DeltaGenerated` -/
abbrev of (X : Type u) [TopologicalSpace X] [DeltaGeneratedSpace X] : DeltaGenerated.{u} :=
  ↧X

open Lean.PrettyPrinter.Delaborator in
/-- This prints `DeltaGenerated.of X` as `↧X`. -/
@[app_delab DeltaGenerated.of]
meta def delabOf : Delab := CategoryTheory.delabOf

/-- The forgetful functor `DeltaGenerated ⥤ TopCat` -/
abbrev deltaGeneratedToTop : DeltaGenerated.{u} ⥤ TopCat.{u} :=
  GeneratedByTopCat.toTopCat

/-- `deltaGeneratedToTop` is fully faithful. -/
abbrev fullyFaithfulDeltaGeneratedToTop : deltaGeneratedToTop.{u}.FullyFaithful :=
  GeneratedByTopCat.fullyFaithfulToTopCat _

@[deprecated (since := "2026-04-23")] alias topToDeltaGenerated := TopCat.toDeltaGenerated

/-- The adjunction between the forgetful functor `DeltaGenerated ⥤ TopCat` and its coreflector. -/
abbrev coreflectorAdjunction : deltaGeneratedToTop ⊣ TopCat.toDeltaGenerated :=
  GeneratedByTopCat.adj

end DeltaGenerated
