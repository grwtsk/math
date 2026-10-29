# Spectral Spherical Glue — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd2046e10276c1566bd7bb6842688e10411b6262` · SHA-256 `682d14bd793b42d2c47897907db5db24cb3a43fd26d68f0e9d9ffa9e2df219ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=10010001|role=proof_code_atom|slug=pipeline-glue-spectralsphericalglue|owner=canonical_owner|core=Pipeline/Glue/SpectralSphericalGlue.lean|leaf=M506970656c696e652f476c75652f537065637472616c53706865726963616c476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.SpectralSphericalGlue

def surfaceId : String := "Pipeline/Glue/SpectralSphericalGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/SpectralSphericalGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.SpectralSphericalGlue
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b98306f085285fa831183ee820151aab25257a68ce1a53e67b2bdf03161535b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/M506970656c696e652f476c75652f537065637472616c53706865726963616c476c75652e6c65616/Variant682d14bd793b42d2c47897907db5db24cb3a43fd26d68f0e9d9ffa9e2df219ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
