-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuotRecOnPrime.Variant2f028bc12fbd97e2b47e1ca1be5d6077fda13461ce029eec7e842d28f70ceb43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f028bc12fbd97e2b47e1ca1be5d6077fda13461ce029eec7e842d28f70ceb43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.QuotRecOnPrime.Variant2f028bc12fbd97e2b47e1ca1be5d6077fda13461ce029eec7e842d28f70ceb43","mathematical_subject":"Logic.Foundations","original_sha256":"2f028bc12fbd97e2b47e1ca1be5d6077fda13461ce029eec7e842d28f70ceb43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Init/Quot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Mathport.Rename

/-!
# Quot

Some induction principles tagged with `elab_as_elim`, since the attribute is missing in core.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuotRecOnPrime.Variant2f028bc12fbd97e2b47e1ca1be5d6077fda13461ce029eec7e842d28f70ceb43

set_option autoImplicit true

#align quotient.induction_on Quotient.inductionOn
#align quot.induction_on Quot.inductionOn

variable {α : Sort u} {r : α → α → Prop} {motive : Quot r → Sort v}

@[inherit_doc Quot.rec, elab_as_elim] -- Porting note: adding `elab_as_elim`
protected abbrev Quot.recOn'
    (q : Quot r)
    (f : (a : α) → motive (Quot.mk r a))
    (h : (a b : α) → (p : r a b) → Eq.ndrec (f a) (Quot.sound p) = f b)
    : motive q :=
 q.rec f h
#align quot.rec_on Quot.recOn'
-- expected token

/-- Version of `Quot.recOnSubsingleton` tagged with `elab_as_elim` -/
@[elab_as_elim] -- Porting note: this attribute is missing in core
protected abbrev Quot.recOnSubsingleton'
    [h : (a : α) → Subsingleton (motive (Quot.mk r a))]
    (q : Quot r)
    (f : (a : α) → motive (Quot.mk r a))
    : motive q := by
  induction q using Quot.rec
  apply f
  apply Subsingleton.elim
#align quot.rec_on_subsingleton Quot.recOnSubsingleton'
