-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsTerminalPUnit.Variantfefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsTerminalPUnit.Variantfefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9","mathematical_subject":"Topology.GeneralTopology","original_sha256":"fefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/Profinite/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Dagur Asgeirsson
-/
import Mathlib.Topology.Category.Profinite.Basic
import Mathlib.Topology.Category.CompHausLike.Limits
/-!

# Explicit limits and colimits

This file applies the general API for explicit limits and colimits in `CompHausLike P` (see
the file `Mathlib/Topology/Category/CompHausLike/Limits.lean`) to the special case of `Profinite`.
-/


namespace GRWTSK.Topology.GeneralTopology.IsTerminalPUnit.Variantfefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9

namespace Profinite

universe u w

open CategoryTheory Limits CompHausLike

instance : HasExplicitPullbacks (fun Y ↦ TotallyDisconnectedSpace Y) where
  hasProp _ _ := { hasProp :=
    show TotallyDisconnectedSpace {_xy : _ | _} from inferInstance}

instance : HasExplicitFiniteCoproducts.{w, u} (fun Y ↦ TotallyDisconnectedSpace Y) where
  hasProp _ := { hasProp :=
    show TotallyDisconnectedSpace (Σ (_a : _), _) from inferInstance}

/-- A one-element space is terminal in `Profinite` -/
abbrev isTerminalPUnit : IsTerminal (Profinite.of PUnit.{u + 1}) := CompHausLike.isTerminalPUnit

example : FinitaryExtensive Profinite.{u} := inferInstance

noncomputable example : PreservesFiniteCoproducts profiniteToCompHaus := inferInstance

end Profinite
