-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RatCast.Variant2d2f0265802ab69e891924f62d1ddca1b82c303027dfa0ef3453bea37577e7b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d2f0265802ab69e891924f62d1ddca1b82c303027dfa0ef3453bea37577e7b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RatCast.Variant2d2f0265802ab69e891924f62d1ddca1b82c303027dfa0ef3453bea37577e7b9","mathematical_subject":"Foundations.Unclassified","original_sha256":"2d2f0265802ab69e891924f62d1ddca1b82c303027dfa0ef3453bea37577e7b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Classes/RatCast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Robert Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Lewis, Leonardo de Moura, Johannes Hölzl, Mario Carneiro, Gabriel Ebner
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RatCast.Variant2d2f0265802ab69e891924f62d1ddca1b82c303027dfa0ef3453bea37577e7b9

@[expose] public section

/-- Type class for the canonical homomorphism `Rat → K`. -/
class RatCast (K : Type u) where
  /-- The canonical homomorphism `Rat → K`. -/
  protected ratCast : Rat → K

instance : RatCast Rat where ratCast n := n

/-- Canonical homomorphism from `Rat` to a division ring `K`.
This is just the bare function in order to aid in creating instances of `DivisionRing`. -/
@[coe, reducible, match_pattern] protected def Rat.cast {K : Type u} [RatCast K] : Rat → K :=
  RatCast.ratCast

-- see note [coercion into rings]
instance [RatCast K] : CoeTail Rat K where coe := Rat.cast

-- see note [coercion into rings]
instance [RatCast K] : CoeHTCT Rat K where coe := Rat.cast
