# Axiom And Constructor Surface — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e746c0bce8623a5cd9fc6e5dbdf9f41f752216b` · SHA-256 `dea20e4a4e35daeb3150b7cd8bba3924f246241a8caddd9767e1a54f0d427fbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.MultiSourceExample

namespace FCRS.TheoremTransfer.Cycle7.AxiomConstructorSurface

#check MultiSourceInferenceExpression.source
#check MultiSourceInferenceExpression.inference
#check MultiSourceInferenceExpression.interpret
#check MultiSourceInferenceExpression.UsesSource
#check MultiSourceLeafDependency.mk
#check MultiSourceTheoremTransferDerivation.mk
#check MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#check MultiSourceTheoremTransferDerivation.sourceLeafCoverage

#print axioms MultiSourceInferenceExpression.interpret
#print axioms MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#print axioms MultiSourceTheoremTransferDerivation.sourceLeafCoverage
#print axioms FCRS.TheoremTransfer.MultiSourceExample.derivation

end FCRS.TheoremTransfer.Cycle7.AxiomConstructorSurface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02d92345efcd7803f22d08d0aef25aa4e9e7eab9747a9a6c0c1837d49325946b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/04AxiomAndConstructorSurface/Variantdea20e4a4e35daeb3150b7cd8bba3924f246241a8caddd9767e1a54f0d427fbf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
