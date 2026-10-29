-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attributes.Variant76e1568996176fd4e199deec46030ff44de3db6cffdfbdba851c5da3b70838d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76e1568996176fd4e199deec46030ff44de3db6cffdfbdba851c5da3b70838d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attributes.Variant76e1568996176fd4e199deec46030ff44de3db6cffdfbdba851c5da3b70838d9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"76e1568996176fd4e199deec46030ff44de3db6cffdfbdba851c5da3b70838d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Mathport/Attributes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attributes.Variant76e1568996176fd4e199deec46030ff44de3db6cffdfbdba851c5da3b70838d9

namespace Lean.Attr

initialize substAttr : TagAttribute ← registerTagAttribute `subst "substitution"

initialize hintTacticAttr : TagAttribute ←
  registerTagAttribute `hint_tactic "A tactic that should be tried by `hint`."
