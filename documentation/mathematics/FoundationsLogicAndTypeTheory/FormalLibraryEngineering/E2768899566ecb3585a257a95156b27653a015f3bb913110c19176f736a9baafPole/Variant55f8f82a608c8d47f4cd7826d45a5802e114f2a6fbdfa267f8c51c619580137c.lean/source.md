# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.E2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baafPole.Variant55f8f82a608c8d47f4cd7826d45a5802e114f2a6fbdfa267f8c51c619580137c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffa17c8766f87d53698933f3220495d2706d603c` · SHA-256 `b264926aaa0be77fb7b3e9388e9d3af64c8e936b4439919b8d19236fcd1a2f78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variante2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variante2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf","mathematical_subject":"Foundations.Unclassified","original_sha256":"e2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/e2/e2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf--Pole.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variante2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf

set_option autoImplicit false
example {d w : ℝ} {z : ℂ} (hz : z ^ 2 + (2 * d : ℝ) * z + w = 0)
    (oscillatory : z.im ≠ 0) : w = z.re ^ 2 + z.im ^ 2 := by
  have hi := congrArg Complex.im hz
  have hr := congrArg Complex.re hz
  simp? [pow_two, Complex.mul_re, Complex.mul_im] at hi hr
  have hfactor : (z.re + d) * z.im = 0 := by nlinarith [hi]
  have hdecay : z.re + d = 0 := (mul_eq_zero.mp hfactor).resolve_right oscillatory
  have hd : d = -z.re := by linarith
  rw [hd] at hr
  nlinarith [hr]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b468602e380e2828f6faf1db1b5aadfcfa8fd5c97214ee02b596b963f76b7a99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baafPole/Variant55f8f82a608c8d47f4cd7826d45a5802e114f2a6fbdfa267f8c51c619580137c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
