# Cut — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76539105be81052aa23f941d2abf0a6300c51f72` · SHA-256 `85e0bc1c9e36e552b52b92498bd6cc194812a2859fd51937ecb0f79a486a153b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Immutable spectral-closure cut

Every boundary law, operator, transform, and trace is bound to one committed
finite snapshot.  A later mutation mints a different cut.
-/

namespace Mathematics.ConnesBitfield

universe u

structure SpectralClosureCut where
  Digest : Type u
  snapshotDigest : Digest
  bitfieldDigest : Digest
  kernelFamilyDigest : Digest
  crossedProductDigest : Digest
  operatorDigest : Digest
  traceRegistryDigest : Digest
  authorityDigest : Digest
  immutable : Prop
  immutableProof : immutable
  certificatesBoundToSnapshot : Prop
  certificatesBoundProof :
    certificatesBoundToSnapshot

end Mathematics.ConnesBitfield
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8c6dde46d9349509e78045e8f7dc8ee7d3378b3b7a6dc21a556888f3797c171 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant85e0bc1c9e36e552b52b92498bd6cc194812a2859fd51937ecb0f79a486a153b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
