# Non Archimedean Fiber — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d757cd206e05f9b14108900adefaa1eed654cbba` · SHA-256 `61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.TMFFraming
import Folder.AdelicInfinityTopos.BadPrimeLocalization
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.NonArchimedeanFiber

Radiation role: research-boundary
BinaryMatrix spine: This module records finite-prime TMF/Morava placeholder fibers.
Ontology: adelic.nonarchimedean_fiber
Pivot role: arithmetic
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure MoravaLocalContract where
  p : Nat
  prime : Nat.Prime p
  height : Nat
  moravaK : SpectrumObject
  localization : Prop

structure NonArchimedeanTMFFiber where
  place : Place
  finitePrime : IsFinitePrimePlace place
  tmfLocalization? : Option BadPrimeTMFLocalization
  moravaLocal? : Option MoravaLocalContract
  spectrumObject : SpectrumObject
  localTorsionData : Prop
  localModularCompatibility : Prop
  localModularCompatibility_certified : localModularCompatibility

theorem nonarchimedean_fiber_is_finite
    (F : NonArchimedeanTMFFiber) :
    IsFinitePrimePlace F.place :=
  F.finitePrime

theorem nonarchimedean_local_modular_compatible
    (F : NonArchimedeanTMFFiber) :
    F.localModularCompatibility :=
  F.localModularCompatibility_certified

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=834bf65d94c7fc48f71a4ffa3ccffb211315ccb33c58d0071d8d05a010292f5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
