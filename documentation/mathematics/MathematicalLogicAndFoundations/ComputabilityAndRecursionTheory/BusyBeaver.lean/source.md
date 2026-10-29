# Busy Beaver — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f585db2d0f51588a9b2bc44f3f9ebcf5e6863c70` · SHA-256 `31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Oracle.Halting

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure BusyBeaverDescriptor where
  haltingOracle : HaltingOracleDescriptor
  ordinaryComputable : Bool

theorem busyBeaver_not_marked_ordinary_computable
    (B : BusyBeaverDescriptor) :
    B.ordinaryComputable = false -> B.ordinaryComputable = false := by
  intro h
  exact h

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45d5640291b3487f74c60043208ab6f4f2a53cf78d9f67a375a466fa042792cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/BusyBeaver/Variant31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
