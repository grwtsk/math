-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterStepSize.Variant9288238f61c1bd391d76e1ced4f8a688d515c25821952182872321e578a0ce11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9288238f61c1bd391d76e1ced4f8a688d515c25821952182872321e578a0ce11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterStepSize.Variant9288238f61c1bd391d76e1ced4f8a688d515c25821952182872321e578a0ce11","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9288238f61c1bd391d76e1ced4f8a688d515c25821952182872321e578a0ce11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Combinators/StepSize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.StepSize


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterStepSize.Variant9288238f61c1bd391d76e1ced4f8a688d515c25821952182872321e578a0ce11

@[expose] public section

/-!
This module provides a combinator that only yields every `n`-th element of another iterator.
-/

namespace Std
open Std.Iterators

@[always_inline, inline, inherit_doc IterM.stepSize]
def Iter.stepSize [Iterator α Id β] [IteratorAccess α Id]
    (it : Iter (α := α) β) (n : Nat) :
    Iter (α := Types.StepSizeIterator α Id β) β :=
  (it.toIterM.stepSize n).toIter

end Std
