-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CeilingLaw256.Variant05a916f49e2cb20f4c873cfd3d6632abed17375118e4767f7da045f2a6c19945","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05a916f49e2cb20f4c873cfd3d6632abed17375118e4767f7da045f2a6c19945","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CeilingLaw256.Variant05a916f49e2cb20f4c873cfd3d6632abed17375118e4767f7da045f2a6c19945","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"05a916f49e2cb20f4c873cfd3d6632abed17375118e4767f7da045f2a6c19945","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/scripts/PrintAxioms/PairCeiling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
import Zeta23.PairCeiling.CeilingLaw256
import Zeta23.PairCeiling.Signed

-- the bandwidth-one ceiling (no trusted statement file: every theorem below except the two kernel checks carries the
-- displayed hypothesis EnclOK; LawN256_check is by decide and depends on propext only, LawN256_edge on no axioms)

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CeilingLaw256.Variant05a916f49e2cb20f4c873cfd3d6632abed17375118e4767f7da045f2a6c19945

#print axioms Zeta23.PairCeiling.ceiling_stability
#print axioms Zeta23.PairCeiling.ceiling_nearCUE
#print axioms Zeta23.PairCeiling.lawN256_rows
#print axioms Zeta23.PairCeiling.ceiling_law256
#print axioms Zeta23.PairCeiling.ceiling_law256_decimal
#print axioms Zeta23.PairCeiling.ceiling_signed
#print axioms Zeta23.PairCeiling.ceiling_nearCUE_signed
#print axioms Zeta23.PairCeiling.ceiling_law256_signed
#print axioms Zeta23.PairCeiling.D1_nonneg_of_edgeNonneg
#print axioms Zeta23.PairCeiling.LawN256_check
#print axioms Zeta23.PairCeiling.LawN256_edge
