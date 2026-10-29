-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantf235ac251aa361c64d3c75f099a8af24980d6eaf04b7d8c4639b898c748499d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f235ac251aa361c64d3c75f099a8af24980d6eaf04b7d8c4639b898c748499d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Lemmas.Variantf235ac251aa361c64d3c75f099a8af24980d6eaf04b7d8c4639b898c748499d6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f235ac251aa361c64d3c75f099a8af24980d6eaf04b7d8c4639b898c748499d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/Formula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Lemmas
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Class
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Implementation
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Instance
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RatAddResult
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RatAddSound
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RupAddResult
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RupAddSound


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantf235ac251aa361c64d3c75f099a8af24980d6eaf04b7d8c4639b898c748499d6

@[expose] public section

/-!
This directory contains the current implementation of the LRAT checker that is plugged into the
generic LRAT checking loop from `LRATChecker` and then used in the surface level LRAT checker
that is publicly exposed.
-/
