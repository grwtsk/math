-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsLt.Variant50ba97fd8e3452bd7500140673995b466e06fa20de5c6ac337c12bad57907079","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50ba97fd8e3452bd7500140673995b466e06fa20de5c6ac337c12bad57907079","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IsLt.Variant50ba97fd8e3452bd7500140673995b466e06fa20de5c6ac337c12bad57907079","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"50ba97fd8e3452bd7500140673995b466e06fa20de5c6ac337c12bad57907079","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/BitVec/BasicAux.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix, Wojciech Nawrocki, Leonardo de Moura, Mario Carneiro, Alex Keizer, Harun Khan, Abdalrhman M Mohamed
-/
module

prelude
public import Init.Grind.Tactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsLt.Variant50ba97fd8e3452bd7500140673995b466e06fa20de5c6ac337c12bad57907079

public section

set_option linter.missingDocs true

/-!
This module exists to provide the very basic `BitVec` definitions required for
`Init.Data.UInt.BasicAux`.
-/

namespace BitVec

section Nat

instance instOfNat : OfNat (BitVec n) i where ofNat := .ofNat n i

/-- Return the bound in terms of toNat. -/
theorem isLt (x : BitVec w) : x.toNat < 2^w := x.toFin.isLt

grind_pattern isLt => x.toNat, 2^w

end Nat

section arithmetic

/--
Adds two bitvectors. This can be interpreted as either signed or unsigned addition modulo `2^n`.
Usually accessed via the `+` operator.

SMT-LIB name: `bvadd`.
-/
@[expose, implicit_reducible]
protected def add (x y : BitVec n) : BitVec n := .ofNat n (x.toNat + y.toNat)
instance : Add (BitVec n) := ⟨BitVec.add⟩

/--
Subtracts one bitvector from another. This can be interpreted as either signed or unsigned subtraction
modulo `2^n`. Usually accessed via the `-` operator.

-/
@[expose, implicit_reducible]
protected def sub (x y : BitVec n) : BitVec n := .ofNat n ((2^n - y.toNat) + x.toNat)
instance : Sub (BitVec n) := ⟨BitVec.sub⟩

end arithmetic

end BitVec
