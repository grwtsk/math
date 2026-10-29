# APINamespaced Source Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a41e40def24601938e815cd0d9caaa8fb112925` · SHA-256 `66e4bc4c2379f04ac3227fc0abd2a3d0f480f56a231f4d60cf4390b903c1f4eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.BohrMollerup.Variantd8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.BohrMollerup.Variantd8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"d8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass4/gamma_review/API.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.PSeries
import Mathlib.Tactic


namespace GRWTSK.Analysis.SpecialFunctions.BohrMollerup.Variantd8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53

#check harmonic
#print harmonic
#check Real.BohrMollerup.logGammaSeq
#check Real.BohrMollerup.tendsto_log_gamma
#check Real.tendsto_harmonic_sub_log
#check Real.tendsto_harmonic_sub_log_add_one
#check Real.tendsto_log_nat_add_one_sub_log
#check Real.log_prod
#check Nat.factorial_eq_prod_range_add_one
#check Finset.prod_range_add_one_eq_factorial
#check hasSum_iff_tendsto_nat_of_nonneg
#check summable_nat_rpow
#check AntitoneOn.tsum_comp_add_le_integral
#check Real.integral_Ioi_rpow_of_lt
#check integral_Ioi_rpow_of_lt
#check Real.le_log_one_add_of_nonneg
#check Real.one_sub_inv_le_log_of_pos
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fcfb8cf8c8bc9de6af06902301bc0ee07424f7749c6f9c755bb0bc521a69f6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/API/Variant0d28c7e6f9ca50c074439b7c8f785c31f4eae77e55bef697bd683294a0e94a05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
