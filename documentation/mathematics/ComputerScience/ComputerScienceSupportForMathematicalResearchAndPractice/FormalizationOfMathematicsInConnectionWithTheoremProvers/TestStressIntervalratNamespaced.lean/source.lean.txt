-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Taylor.Variant7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Taylor.Variant7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db","mathematical_subject":"Foundations.Unclassified","original_sha256":"7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_stress_intervalrat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Core.IntervalRat.Taylor


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Taylor.Variant7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db

open LeanCert.Core

-- Raw interval computations (debug-style).
#eval
  let I := IntervalRat.expPointComputable (1 / 2) 15
  dbg_trace "exp(1/2): [{I.lo}, {I.hi}]"
  pure ()

#eval
  let I := IntervalRat.sinhPointComputable (1 / 2) 15
  dbg_trace "sinh(1/2): [{I.lo}, {I.hi}]"
  pure ()

#eval
  let I := IntervalRat.atanhPointComputable (1 / 3) 15
  dbg_trace "atanh(1/3): [{I.lo}, {I.hi}]"
  pure ()
