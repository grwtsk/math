-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Testable.Variantff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Testable.Variantff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77","mathematical_subject":"Logic.Foundations","original_sha256":"ff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Testing/Plausible/Testable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Simon Hudon
-/
import Plausible.Testable
import Mathlib.Logic.Basic

/-!
This module contains `Plausible.Testable` and `Plausible.PrintableProb` instances for mathlib types.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Testable.Variantff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77

namespace Plausible

namespace Testable

open TestResult

instance factTestable {p : Prop} [Testable p] : Testable (Fact p) where
  run cfg min := do
    let h ← runProp p cfg min
    pure <| iff fact_iff h

end Testable

section PrintableProp

instance Fact.printableProp {p : Prop} [PrintableProp p] : PrintableProp (Fact p) where
  printProp := printProp p

end PrintableProp

end Plausible
