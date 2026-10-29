-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trim.Variantac2f9adceef1b5b5a88f8bb79b1a0a401e3077055e1fc4b38e6fce3843fd1760","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac2f9adceef1b5b5a88f8bb79b1a0a401e3077055e1fc4b38e6fce3843fd1760","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Trim.Variantac2f9adceef1b5b5a88f8bb79b1a0a401e3077055e1fc4b38e6fce3843fd1760","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ac2f9adceef1b5b5a88f8bb79b1a0a401e3077055e1fc4b38e6fce3843fd1760","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/LRAT.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.LRAT.Trim
public import Lean.Meta.Tactic.BVDecide.LRAT.Cert


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trim.Variantac2f9adceef1b5b5a88f8bb79b1a0a401e3077055e1fc4b38e6fce3843fd1760

public section

/-!
This directory contains the implementation of the LRAT trimming algorithms.
It lives here because it uses datastructures and parsing infrastructure from `Lean`.
Otherwise they could be put into `Std.Tactic.BVDecide.LRAT`.
-/
