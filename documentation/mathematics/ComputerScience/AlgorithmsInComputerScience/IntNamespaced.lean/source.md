# Int Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1a8e12164fc3acb92c33157ae6df1f3670f52f5` · SHA-256 `63754e172fe5bfab241cf573cf79a91efbdeed3506fea649b4d9c724728637bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Int.Variant47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f","mathematical_subject":"Computation.DataStructures","original_sha256":"47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Data.Int.Basic
import Std.Tactic.GuardExpr

-- complement

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f

#guard ~~~(-1:Int) = 0
#guard ~~~(0:Int) = -1
#guard ~~~(1:Int) = -2
#guard ~~~(-2:Int) = 1

-- shiftRight
#guard (2:Int) >>> 1 = 1
#guard (0:Int) >>> 1 = 0
#guard ~~~(1:Int) >>> 1 = ~~~0
#guard ~~~(0:Int) >>> 1 = ~~~0
#guard ~~~(2:Int) >>> 1 = ~~~1
#guard ~~~(4:Int) >>> 1 = ~~~2
#guard ~~~(4:Int) >>> 2 = ~~~1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0593cef80ccb6186ec271a12f2b2996ab08f3bfdf8b6c58f16be8f2eef27c45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant4f4f1de64251e4deea5798ab32fce5be737c7981bd8bd2fa708e4929bed2ecd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
