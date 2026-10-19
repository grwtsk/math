-- corpus-organization-transform:v1
-- Mathematical subject: Computation.LeanMetaprogramming
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RuleSetName.Variant935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RuleSetName.Variant935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleSet/Name.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module



namespace FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RuleSetName.Variant935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a

public section

open Lean

namespace Aesop

abbrev RuleSetName := Name -- Not really an abbreviation is it?

def defaultRuleSetName : RuleSetName := `default

def builtinRuleSetName : RuleSetName := `builtin

def localRuleSetName : RuleSetName := `local

def builtinRuleSetNames : Array RuleSetName :=
  #[defaultRuleSetName, builtinRuleSetName]

def RuleSetName.isReserved (n : RuleSetName) : Bool :=
  n == localRuleSetName || builtinRuleSetNames.contains n

end Aesop
