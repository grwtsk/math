# Source Actual Euler One Review Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f65ea04546b32e7d7d92c2173fc675d10e25e2c` · SHA-256 `e09e8df8756b20ff6dd4b5168843fb6b02078c2db009e254a1d1f9b5d6ea4cde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualEulerOne.Variant01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceActualEulerOne.Variant01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a","mathematical_subject":"Analysis.Calculus","original_sha256":"01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-low-euler-maclaurin/native/SourceActualEulerOneReview.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerOne

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualEulerOne.Variant01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a

open RH16ActualEulerOne
#check periodicB1
#print axioms periodicB1
#check periodicB2
#print axioms periodicB2
#check sourceFloorWeight_eq_neg_periodicB1
#print axioms sourceFloorWeight_eq_neg_periodicB1
#check periodicB2_bounds
#print axioms periodicB2_bounds
#check periodicB2_abs_le
#print axioms periodicB2_abs_le
#check periodicB2_at_integer
#print axioms periodicB2_at_integer
#check periodicB2_continuous
#print axioms periodicB2_continuous
#check periodicB2_hasDerivAt
#print axioms periodicB2_hasDerivAt
#check periodicB2_ae_hasDerivAt
#print axioms periodicB2_ae_hasDerivAt
#check actual_zeta_euler_one
#print axioms actual_zeta_euler_one
#print periodicB1
#print periodicB2
#check Zeta0EqZeta
#print axioms Zeta0EqZeta
#print Zeta23.IsNontrivialZero
#print Zeta23.reflect
#print Zeta23.zetaZeros
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=518dc90211215cae7fa20166bc40047e13edbadec58df3b633af3f7a97d095f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerOneReview/Variant22c05a6e30b2478f5ab6e666b4152a22caca80fe5bd2c7569060d5404dd6437b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
