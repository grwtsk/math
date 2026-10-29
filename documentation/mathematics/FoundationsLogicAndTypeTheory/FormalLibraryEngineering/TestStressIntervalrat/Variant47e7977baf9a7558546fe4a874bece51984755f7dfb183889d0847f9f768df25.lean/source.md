# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestStressIntervalrat.Variant47e7977baf9a7558546fe4a874bece51984755f7dfb183889d0847f9f768df25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `661646e831b5b8ce33ab6631d4313aa22e383d4d` · SHA-256 `ea52f0e4a4b61d6538a149073db84ef7bfb12c63b7cb6c8158dbf2b2d114784b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54f2d3d8f47ad65d34acaebc55910557caf46b0243f5a29a1a340a611cf0e510 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestStressIntervalrat/Variant47e7977baf9a7558546fe4a874bece51984755f7dfb183889d0847f9f768df25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
