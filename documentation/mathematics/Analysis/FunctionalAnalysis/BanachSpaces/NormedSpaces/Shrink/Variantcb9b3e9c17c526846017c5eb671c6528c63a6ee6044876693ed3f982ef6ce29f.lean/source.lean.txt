-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.TransferInstance.Variantf20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.TransferInstance.Variantf20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"f20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Module/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Analysis.Normed.Module.TransferInstance
public import Mathlib.Algebra.Group.Shrink

/-!
# Transfer normed algebraic structures from `α` to `Shrink α`
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.TransferInstance.Variantf20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4

public section

noncomputable section

namespace Shrink

universe v
variable {𝕜 α : Type*} [Small.{v} α] [NormedField 𝕜]

instance [SeminormedAddCommGroup α] : SeminormedAddCommGroup (Shrink.{v} α) :=
  (equivShrink α).symm.seminormedAddCommGroup

instance [NormedAddCommGroup α] : NormedAddCommGroup (Shrink.{v} α) :=
  (equivShrink α).symm.normedAddCommGroup

instance [SeminormedAddCommGroup α] [NormedSpace 𝕜 α] : NormedSpace 𝕜 (Shrink.{v} α) :=
  (Shrink.addEquiv (α := α)).normedSpace 𝕜

end Shrink
