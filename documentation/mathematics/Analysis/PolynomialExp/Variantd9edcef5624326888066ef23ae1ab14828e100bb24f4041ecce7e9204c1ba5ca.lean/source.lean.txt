-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.TendstoDivExpAtTop.Variantbfc688d80262071299bd18fd626fc25b939f543e4480d408c3940ae40a87a86c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bfc688d80262071299bd18fd626fc25b939f543e4480d408c3940ae40a87a86c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.TendstoDivExpAtTop.Variantbfc688d80262071299bd18fd626fc25b939f543e4480d408c3940ae40a87a86c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"bfc688d80262071299bd18fd626fc25b939f543e4480d408c3940ae40a87a86c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/PolynomialExp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Algebra.Polynomial.Eval.Defs
public import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Limits of `P(x) / e ^ x` for a polynomial `P`

In this file we prove that $\lim_{x\to\infty}\frac{P(x)}{e^x}=0$ for any polynomial `P`.

## TODO

Add more similar lemmas: limit at `-∞`, versions with $e^{cx}$ etc.

## Keywords

polynomial, limit, exponential
-/


namespace GRWTSK.Analysis.TendstoDivExpAtTop.Variantbfc688d80262071299bd18fd626fc25b939f543e4480d408c3940ae40a87a86c

public section

open Filter Real

open scoped Topology

namespace Polynomial

theorem tendsto_div_exp_atTop (p : ℝ[X]) : Tendsto (fun x ↦ p.eval x / exp x) atTop (𝓝 0) := by
  induction p using Polynomial.induction_on' with
  | monomial n c => simpa [exp_neg, div_eq_mul_inv, mul_assoc]
    using tendsto_const_nhds.mul (tendsto_pow_mul_exp_neg_atTop_nhds_zero n)
  | add p q hp hq => simpa [add_div] using hp.add hq

end Polynomial
