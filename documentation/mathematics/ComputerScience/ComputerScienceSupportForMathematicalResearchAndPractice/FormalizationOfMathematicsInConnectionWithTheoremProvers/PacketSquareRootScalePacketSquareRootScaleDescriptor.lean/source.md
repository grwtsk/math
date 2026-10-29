# Packet Square Root Scale Packet Square Root Scale Descriptor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67a6334992d5773ee9415670b5194f19a04e871c` · SHA-256 `94548cc486e7b4ec3b6a2921fa667650b33465037a1f4dac0dec9f8a097579e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure PacketSquareRootScaleDescriptor where
  scaleRef : String
  packetBoundRef : String
  testCoverageRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .packetSquareRootScale

end Mathematics.SemiLocalDefect.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f20fc78227ed45c6f33c93751c9ca8aa0dbc2c14632fa6526d07b368713daa7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variant94548cc486e7b4ec3b6a2921fa667650b33465037a1f4dac0dec9f8a097579e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
