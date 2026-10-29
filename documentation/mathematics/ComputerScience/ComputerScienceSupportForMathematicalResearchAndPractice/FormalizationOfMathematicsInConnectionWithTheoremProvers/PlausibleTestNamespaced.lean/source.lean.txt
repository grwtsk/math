-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantde173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tactic.Variantde173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b","mathematical_subject":"Foundations.Unclassified","original_sha256":"de173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import PlausibleTest.Tactic
import PlausibleTest.Testable

-- Tests for `deriving Arbitrary`
import PlausibleTest.DeriveArbitrary.DeriveTreeGenerator
import PlausibleTest.DeriveArbitrary.DeriveSTLCTermTypeGenerators
import PlausibleTest.DeriveArbitrary.DeriveNKIValueGenerator
import PlausibleTest.DeriveArbitrary.DeriveNKIBinopGenerator
import PlausibleTest.DeriveArbitrary.DeriveRegExpGenerator
import PlausibleTest.DeriveArbitrary.StructureTest
import PlausibleTest.DeriveArbitrary.BitVecStructureTest
import PlausibleTest.DeriveArbitrary.MissingNonRecursiveConstructorTest
import PlausibleTest.DeriveArbitrary.ParameterizedTypeTest
import PlausibleTest.DeriveArbitrary.MutuallyRecursiveTypeTest

-- Tests for `deriving Shrinkable`
import PlausibleTest.DeriveShrinkable.DeriveShrinkableTest
import PlausibleTest.DeriveShrinkable.DeriveShrinkableMutualTest

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantde173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b

