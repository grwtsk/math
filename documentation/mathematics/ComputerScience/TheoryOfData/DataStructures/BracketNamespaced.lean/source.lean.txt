-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bracket.Variant4cf4cebbb4172e77a139a93af84ab46fd561708ff839a8bb01880e9318641b43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cf4cebbb4172e77a139a93af84ab46fd561708ff839a8bb01880e9318641b43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Bracket.Variant4cf4cebbb4172e77a139a93af84ab46fd561708ff839a8bb01880e9318641b43","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4cf4cebbb4172e77a139a93af84ab46fd561708ff839a8bb01880e9318641b43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Bracket.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Patrick Lutz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Lutz, Oliver Nash
-/
import Mathlib.Tactic.TypeStar

/-!
# Bracket Notation
This file provides notation which can be used for the Lie bracket, for the commutator of two
subgroups, and for other similar operations.

## Main Definitions

* `Bracket L M` for a binary operation that takes something in `L` and something in `M` and
  produces something in `M`.
  Defining an instance of this structure gives access to the notation `⁅ ⁆`

## Notation

We introduce the notation `⁅x, y⁆` for the `bracket` of any `Bracket` structure. Note that
these are the Unicode "square with quill" brackets rather than the usual square brackets.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bracket.Variant4cf4cebbb4172e77a139a93af84ab46fd561708ff839a8bb01880e9318641b43

/-- The `Bracket` class has three intended uses:
  1. for certain binary operations on structures, like the product `⁅x, y⁆` of two elements
    `x`, `y` in a Lie algebra or the commutator of two elements `x` and `y` in a group.
  2. for certain actions of one structure on another, like the action `⁅x, m⁆` of an element `x`
    of a Lie algebra on an element `m` in one of its modules (analogous to `SMul` in the
    associative setting).
  3. for binary operations on substructures, like the commutator `⁅H, K⁆` of two subgroups `H` and
     `K` of a group. -/
class Bracket (L M : Type*) where
  /-- `⁅x, y⁆` is the result of a bracket operation on elements `x` and `y`.
  It is supported by the `Bracket` typeclass. -/
  bracket : L → M → M

@[inherit_doc] notation "⁅" x ", " y "⁆" => Bracket.bracket x y
