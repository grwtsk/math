-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantb943f1fabf7ec2448d6671b6fef4b58fc79cc8f20464fca65b778eb0d5503531","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b943f1fabf7ec2448d6671b6fef4b58fc79cc8f20464fca65b778eb0d5503531","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variantb943f1fabf7ec2448d6671b6fef4b58fc79cc8f20464fca65b778eb0d5503531","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b943f1fabf7ec2448d6671b6fef4b58fc79cc8f20464fca65b778eb0d5503531","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/WarnApplyIff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantb943f1fabf7ec2448d6671b6fef4b58fc79cc8f20464fca65b778eb0d5503531

set_option aesop.check.all true

/--
warning: Apply builder was used for a theorem with conclusion A ↔ B.
You probably want to use the simp builder or create an alias that applies the theorem in one direction.
Use `set_option aesop.warn.applyIff false` to disable this warning.
-/
#guard_msgs in
@[aesop safe apply]
axiom foo : True ↔ True

@[aesop simp]
axiom bar : True ↔ True

set_option aesop.warn.applyIff false in
@[aesop 1% apply]
axiom baz : True ↔ True
