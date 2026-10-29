# Operator Pullback Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a62f86036e727a4c90dc980693772f9bad561af5` · SHA-256 `4f047f28a6b681636870080f8abc2a050d22b747417846650f759c45e3bc868d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.OperatorPullback.Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.OperatorPullback.Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/OperatorPullback.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PacketModel
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Fixed-Hilbert operator pullback
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.OperatorPullback.Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

universe uHilbert

noncomputable def operatorPullback
    {Hilbert : Type uHilbert}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (transport defect : HilbertEnd Hilbert) :
    HilbertEnd Hilbert :=
  transport.adjoint.comp
    (defect.comp transport)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2172172408c6b997e7562004b5b72cae811a33ea67894d14503047bfd81d1a7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/OperatorPullback/Variantb4b8a5c46090da09860ceadc9febb7852ec9e85dcf50ff5cf4542f534af21f1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
