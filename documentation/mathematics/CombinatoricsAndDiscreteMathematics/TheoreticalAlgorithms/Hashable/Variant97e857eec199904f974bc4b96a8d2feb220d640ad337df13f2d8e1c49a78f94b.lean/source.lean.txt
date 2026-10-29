-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Varianta5fe715f39a513e7ffddf210a0ef17bcf4fb6c2fbe294ffac254a3824167dacd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5fe715f39a513e7ffddf210a0ef17bcf4fb6c2fbe294ffac254a3824167dacd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Array.Varianta5fe715f39a513e7ffddf210a0ef17bcf4fb6c2fbe294ffac254a3824167dacd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a5fe715f39a513e7ffddf210a0ef17bcf4fb6c2fbe294ffac254a3824167dacd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Hashable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
import Init.Data.Array.Basic
public import Init.Data.UInt.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Varianta5fe715f39a513e7ffddf210a0ef17bcf4fb6c2fbe294ffac254a3824167dacd

public section
universe u

instance : Hashable Nat where
  hash n := UInt64.ofNat n

instance [Hashable α] [Hashable β] : Hashable (α × β) where
  hash | (a, b) => mixHash (hash a) (hash b)

instance : Hashable Bool where
  hash
    | true  => 11
    | false => 13

instance : Hashable PEmpty.{u} where
  hash x := nomatch x

instance : Hashable PUnit.{u} where
  hash | .unit => 11

instance [Hashable α] : Hashable (Option α) where
  hash
    | none   => 11
    | some a => mixHash (hash a) 13

instance [Hashable α] : Hashable (List α) where
  hash as := as.foldl (fun r a => mixHash r (hash a)) 7

instance [Hashable α] : Hashable (Array α) where
  hash as := as.foldl (fun r a => mixHash r (hash a)) 7

instance : Hashable UInt8 where
  hash n := n.toUInt64

instance : Hashable UInt16 where
  hash n := n.toUInt64

instance : Hashable UInt32 where
  hash n := n.toUInt64

instance : Hashable UInt64 where
  hash n := n

instance : Hashable USize where
  hash n := n.toUInt64

instance : Hashable (Fin n) where
  hash v := v.val.toUInt64

instance : Hashable Char where
  hash c := c.val.toUInt64

instance : Hashable Int where
  hash
    | Int.ofNat n => UInt64.ofNat (2 * n)
    | Int.negSucc n => UInt64.ofNat (2 * n + 1)

instance (P : Prop) : Hashable P where
  hash _ := 0

/-- An opaque (low-level) hash operation used to implement hashing for pointers. -/
@[always_inline, inline] def hash64 (u : UInt64) : UInt64 :=
  mixHash u 11
