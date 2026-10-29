# Field Spectrum — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ea7f09ad0c8b863266dc429e94ae6dff7c41096` · SHA-256 `2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.Etale

/-!
Reference-layer labels for the arithmetic étale site.

These definitions deliberately distinguish `K_field` from the browser's
finite-measurement tolerance `K128`.
-/

structure FieldSpectrumReference where
  baseFieldLabel : String
  specLabel : String
deriving Repr, DecidableEq

def specKFieldEtale : FieldSpectrumReference :=
  { baseFieldLabel := "K_field", specLabel := "Spec(K_field)_ét" }

def absoluteGaloisGroupLabel : String :=
  "G_K_field"

def zariskiTooCoarseForClientArithmeticInvariant : String :=
  "Zariski topology is too coarse for this client arithmetic invariant role, not globally invalid."

end Think.Kakeya.Etale
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b6250974a784a97ca7d5ac7c831ff5caa11c44e8d67fa0eb51412aa99e15a97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSpectrum/Variant2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
