-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GammaFactsOfStirling.Variantd43b2d4f3fa0c1d22210e1f671b875a88b09747247e67becbbc38f85f34f2fb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d43b2d4f3fa0c1d22210e1f671b875a88b09747247e67becbbc38f85f34f2fb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GammaFactsOfStirling.Variantd43b2d4f3fa0c1d22210e1f671b875a88b09747247e67becbbc38f85f34f2fb0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d43b2d4f3fa0c1d22210e1f671b875a88b09747247e67becbbc38f85f34f2fb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/GammaFacts/Complete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/GammaFacts/Complete.lean — assembly of H-Γ:
All nine fields of Zeta23.GammaFacts ([eq:mufacts] + the Γ-halves of [eq:muints])
are proved: even/smooth (Zeta23/GammaFacts.lean), monotoneOn/mu_zero_le/
neg_one_lt_mu_zero/deriv_bound (Zeta23/GammaFacts/Mu.lean, via the digamma
partial-fraction series), stirling (Zeta23/GammaFacts/StirlingVert.lean, C = 20/2π),
int_mu/int_mu_sq (Zeta23/GammaFacts/IntMu.lean, from stirling + FTC).
-/
import Zeta23.Hypotheses
import Zeta23.GammaFacts
import Zeta23.GammaFacts.Mu
import Zeta23.GammaFacts.IntMu
import Zeta23.GammaFacts.StirlingVert


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GammaFactsOfStirling.Variantd43b2d4f3fa0c1d22210e1f671b875a88b09747247e67becbbc38f85f34f2fb0

noncomputable section

namespace Zeta23

/-- GammaFacts from any Stirling bound for μ (the only analytically deep field). -/
theorem gammaFacts_of_stirling (hst : MuInts.StirlingHyp) : GammaFacts :=
  ⟨mu_even, mu_smooth, MuFields.mu_monotoneOn, MuFields.mu_zero_le, MuFields.neg_one_lt_mu_zero,
    hst, MuFields.mu_deriv_bound, MuInts.int_mu_of_stirling hst, MuInts.int_mu_sq_of_stirling hst⟩

/-- **H-Γ, unconditionally.** -/
theorem gammaFacts : GammaFacts := gammaFacts_of_stirling StirlingVert.mu_stirling

end Zeta23
