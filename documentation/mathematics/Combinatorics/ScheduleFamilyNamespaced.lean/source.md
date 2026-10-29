# Schedule Family Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cbf63644dceee4b025ccdd0900468741e7c4a3b` · SHA-256 `5594d7945f11e7def3a78919b6bc57dda7a536dc51f150dac6d6ea2fff3fcbd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RegisteredScheduleFamily.Variant581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RegisteredScheduleFamily.Variant581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/ScheduleFamily.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic

/-!
# Registered finite schedule family
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RegisteredScheduleFamily.Variant581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af

namespace Mathematics.StratifiedBoundary

structure RegisteredScheduleFamily (Schedule : Type u)
    [DecidableEq Schedule] where
  familyId : String
  schedules : Finset Schedule
  nonempty : schedules.Nonempty
  authorityRef : String

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c6085f7d611b8f41954ca852b2636df6c20fe212b1eccc5d28242dd74e3eb14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ScheduleFamily/Variante2b82f8526d7b154634e78bd59c1e15cded7feaf11f55b46d60db82812d61603.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
