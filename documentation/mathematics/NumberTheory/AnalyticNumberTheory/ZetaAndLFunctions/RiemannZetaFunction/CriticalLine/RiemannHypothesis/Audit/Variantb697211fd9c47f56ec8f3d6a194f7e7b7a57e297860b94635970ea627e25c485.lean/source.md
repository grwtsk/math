# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variantb697211fd9c47f56ec8f3d6a194f7e7b7a57e297860b94635970ea627e25c485

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6dd1248f2b7466557ff3e938fb6e82212621b80` · SHA-256 `b697211fd9c47f56ec8f3d6a194f7e7b7a57e297860b94635970ea627e25c485`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceMangoldtNorm

#check interactionShiftMass
#print axioms interactionShiftMass
#check interactionShiftMass_nonneg
#print axioms interactionShiftMass_nonneg
#check symmetricTranslation_norm_apply_le
#print axioms symmetricTranslation_norm_apply_le
#check symmetricTranslation_norm_le_one
#print axioms symmetricTranslation_norm_le_one
#check sourceCorrelation_sub_one_abs_le
#print axioms sourceCorrelation_sub_one_abs_le
#check sourceCorrelation_tendsto_one
#print axioms sourceCorrelation_tendsto_one
#check interaction_probe_eq_sum
#print axioms interaction_probe_eq_sum
#check interaction_probe_mass_error
#print axioms interaction_probe_mass_error
#check mangoldtInteraction_norm_apply_le
#print axioms mangoldtInteraction_norm_apply_le
#check mangoldtInteraction_norm_le_mass
#print axioms mangoldtInteraction_norm_le_mass
#check interaction_probe_le_norm
#print axioms interaction_probe_le_norm
#check mass_le_mangoldtInteraction_norm
#print axioms mass_le_mangoldtInteraction_norm
#check mangoldtInteraction_norm_eq_mass
#print axioms mangoldtInteraction_norm_eq_mass
#check interaction_probe_eq_mass_of_shiftMass_zero
#print axioms interaction_probe_eq_mass_of_shiftMass_zero
#check mangoldtInteraction_eq_zero_iff_mass_eq_zero
#print axioms mangoldtInteraction_eq_zero_iff_mass_eq_zero
#check interactionShiftMass_le_scaled_mass
#print axioms interactionShiftMass_le_scaled_mass
#check weightedMangoldt_term_le_coefficient
#print axioms weightedMangoldt_term_le_coefficient
#check weightedMangoldt_le_mass
#print axioms weightedMangoldt_le_mass
#check mangoldtInteraction_norm_lower
#print axioms mangoldtInteraction_norm_lower
#check mangoldtInteraction_norm_not_eventually_bounded
#print axioms mangoldtInteraction_norm_not_eventually_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3278976dff46bd06cdd58d64e85a1e41d93e2a368eeb85a513e283f2792cb0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantb697211fd9c47f56ec8f3d6a194f7e7b7a57e297860b94635970ea627e25c485.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
