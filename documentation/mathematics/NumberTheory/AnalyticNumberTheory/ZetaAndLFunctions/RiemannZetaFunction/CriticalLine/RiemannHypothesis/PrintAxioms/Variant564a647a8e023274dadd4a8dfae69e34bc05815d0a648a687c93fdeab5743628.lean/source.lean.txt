-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Solution.Variant8e70c31e8eb0b51452c5ae0c76178e84a6618d4094b8936f027b172f8eba3bf1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e70c31e8eb0b51452c5ae0c76178e84a6618d4094b8936f027b172f8eba3bf1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Solution.Variant8e70c31e8eb0b51452c5ae0c76178e84a6618d4094b8936f027b172f8eba3bf1","mathematical_subject":"Foundations.Unclassified","original_sha256":"8e70c31e8eb0b51452c5ae0c76178e84a6618d4094b8936f027b172f8eba3bf1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/scripts/PrintAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
scripts/PrintAxioms.lean — quick axiom audit of the seventeen headline theorems WITHOUT the comparator
tool:   lake build Solution && lake env lean scripts/PrintAxioms.lean
Every line must print exactly:  'X' depends on axioms: [propext, Classical.choice, Quot.sound]
(no sorryAx, no other axiom).  The comparator run (README.md, "Verifying the statements") is the stronger check: it also
verifies that these statements coincide with the trusted ones in Challenge.lean.
-/
import Solution


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Solution.Variant8e70c31e8eb0b51452c5ae0c76178e84a6618d4094b8936f027b172f8eba3bf1

#print axioms two_thirds_on_critical_line
#print axioms two_thirds_on_critical_line_cumulative
#print axioms two_thirds_simple_on_critical_line
#print axioms two_thirds_simple_on_critical_line_cumulative
#print axioms five_sixths_distinct
#print axioms five_sixths_distinct_cumulative
#print axioms montgomery_taylor_on_critical_line
#print axioms montgomery_taylor_simple_on_critical_line_mult
#print axioms montgomery_taylor_simple_on_critical_line_mult_cumulative
#print axioms montgomery_taylor_distinct_mult
#print axioms montgomery_taylor_distinct_mult_cumulative
#print axioms dirichlet_two_thirds_on_critical_line
#print axioms dirichlet_two_thirds_simple_on_critical_line
#print axioms dirichlet_five_sixths_distinct
#print axioms dirichlet_montgomery_taylor_on_critical_line
#print axioms dirichlet_montgomery_taylor_simple_on_critical_line_mult
#print axioms dirichlet_montgomery_taylor_distinct_mult
