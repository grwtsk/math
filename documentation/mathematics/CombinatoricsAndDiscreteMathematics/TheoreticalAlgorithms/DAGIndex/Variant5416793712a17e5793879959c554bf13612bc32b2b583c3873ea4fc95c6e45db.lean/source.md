# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DAGIndex.Variant5416793712a17e5793879959c554bf13612bc32b2b583c3873ea4fc95c6e45db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `008be7215f68ea8e0ffd064f9766a6c2dab4095e` · SHA-256 `5416793712a17e5793879959c554bf13612bc32b2b583c3873ea4fc95c6e45db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace SpectralProof

/--
A static index of core definitions and theorems used in the DAG-based proof.
Useful for CLI inspection (`lake run spectralProof`).
-/
def dagIndex : List (String × String) :=
  [ ("def:tracePower", "tracePower")
  , ("def:zetaDet", "zetaDet")
  , ("def:spectralMap", "spectralMap")
  , ("def:inverseSpectralMap", "inverseSpectralMap")
  , ("thm:canonical_det_identity", "canonical_det_identity")
  , ("thm:zero_maps_to_spectrum", "zero_maps_to_spectrum")
  , ("thm:trace_class_Lsym_pi", "trace_class_Lsym_pi")
  , ("thm:self_adjoint_Lsym_pi", "self_adjoint_Lsym_pi")
  , ("thm:GRH_iff_spec_real", "GRH_iff_spec_real")
  , ("thm:GRH_spectral_closure", "GRH_spectral_closure")
  ]

end SpectralProof
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c18c6079ec8e82197c56ea482dda10eaf64ccd01e4ab59afbf42af293c165b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAGIndex/Variant5416793712a17e5793879959c554bf13612bc32b2b583c3873ea4fc95c6e45db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
