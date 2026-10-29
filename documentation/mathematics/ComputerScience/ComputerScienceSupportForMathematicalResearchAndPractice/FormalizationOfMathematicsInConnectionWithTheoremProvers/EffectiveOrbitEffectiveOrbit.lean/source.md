# Effective Orbit Effective Orbit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aafa44638338a1bd58f859988d98fb2545639c19` · SHA-256 `8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Orbit.Stabilizer
import Mathematics.Orbit.TorusClosure

/-! # Effective orbit reports -/

namespace Mathematics.Orbit

structure EffectiveOrbit where
  status : Status
  observedPrefixLength : Nat
  stabilizerDigest : Option Digest
  certificate : Option CertificateId
  deriving DecidableEq, Repr

def EffectiveOrbit.finitePrefixSafe (report : EffectiveOrbit) : Prop :=
  report.certificate.isNone → report.status = .unresolved ∨
    ∃ period, report.status = .finite period

end Mathematics.Orbit
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7891ce9f0288de718186ab52594f4560e8b1fc21a9ed509de73666402d055e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EffectiveOrbit/Variant8c116feeb07762b5fd3a55a029cf983eb354edc80653cc448619e89f2db11b7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
