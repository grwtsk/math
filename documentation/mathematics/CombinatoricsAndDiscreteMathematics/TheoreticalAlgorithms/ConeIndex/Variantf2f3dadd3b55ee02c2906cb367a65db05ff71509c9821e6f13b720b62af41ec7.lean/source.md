# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeIndex.Variantf2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `262327b00f774984fbfba0130982aed8802d78a3` · SHA-256 `f2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Spectral
namespace ConeIndex

/-! Audit-facing index for the finite-Hilbert spectral convergence cone. -/

def coneName : String := "FiniteHilbertSpectralConvergence"

def publicTheoremDeclarations : List String := [
  "FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence",
  "HilbertTraceEvidenceInput.finiteConvergence_present",
  "standardHilbertTraceBridge_no_evidenceInput"
]

def certificateOnlyDeclarations : List String := [
  "FiniteGraphLaplacianConvergenceCertificate",
  "HilbertTraceEvidenceInput",
  "AnalyticPDESpectralTheoremInput"
]

def hardInputDeclarations : List String := [
  "samplingHypothesis",
  "kernelScalingHypothesis",
  "boundaryCompatibility",
  "hilbertEmbeddingCompatibility",
  "traceOrResolventControl"
]

def forbiddenClaims : List String := [
  "finite graph as direct Hilbert evidence",
  "matrix dashboard as spectral theorem",
  "PDE data as spectral theorem without convergence"
]

end ConeIndex
end Spectral
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=941ad6cdcbcf28490b23c1ae5934ae3dfcad550be224353f6efd50a99a2033e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConeIndex/Variantf2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
