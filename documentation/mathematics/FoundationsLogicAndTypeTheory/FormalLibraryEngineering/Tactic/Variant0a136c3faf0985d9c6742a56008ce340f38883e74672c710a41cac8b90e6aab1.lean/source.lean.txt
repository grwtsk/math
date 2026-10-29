-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVDecide.Variant3965f82c8747668f6f4496590d77fbb0b760a01702d0b1468a1e4bbda840445b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3965f82c8747668f6f4496590d77fbb0b760a01702d0b1468a1e4bbda840445b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BVDecide.Variant3965f82c8747668f6f4496590d77fbb0b760a01702d0b1468a1e4bbda840445b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3965f82c8747668f6f4496590d77fbb0b760a01702d0b1468a1e4bbda840445b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide
public import Std.Tactic.Do


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVDecide.Variant3965f82c8747668f6f4496590d77fbb0b760a01702d0b1468a1e4bbda840445b

@[expose] public section

/-!
This directory is mainly used for bootstrapping reasons. Suppose a tactic generates a proof term
that contains either directly things from `Std` or custom lemmas/definitions that make use of
things from `Std`. These lemmas/definitions could not be put into `Init` for dependency reasons but
storing them in `Lean` directly is also not perfect because we do not want end users to import the
compiler. This directory offers a place for such definitions to live, such that the user only has
to import `Std.Tactic` to use such a tactic.

Note that this does not contain meta programs that implement tactics themselves because these would
rely on importing things from `Lean` which cannot done in `Std`.
-/
