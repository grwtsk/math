# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.BadPrimeLocalization.Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `304ff4fb3e57c0f2e2e0cabd16abec2e03d751ff` · SHA-256 `249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.BadPrimeLocalization

Radiation role: research-boundary
BinaryMatrix spine: This module separates bad-prime TMF localization from concrete BinaryMatrix data.
Ontology: adelic.bad_prime_localization
Pivot role: arithmetic
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure BadPrimeTMFLocalization where
  p : Nat
  prime : Nat.Prime p
  bad : p = 2 ∨ p = 3
  localTMF : SpectrumObject
  torsionWildness : Prop
  chromaticHeight? : Option Nat

theorem bad_prime_localization_is_bad
    (L : BadPrimeTMFLocalization) :
    L.p = 2 ∨ L.p = 3 :=
  L.bad

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6230c25259f7d70931cd014c17ad661fec36658a73598e251be71b71480b8e20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
