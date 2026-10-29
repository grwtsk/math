# Atlas — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfb2903392513032be5577fdca36069ebfce3abe` · SHA-256 `0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Scope

/-!
# Total capability atlas

The indexed function makes omission impossible: every interface is represented
either by a supported capability or by an explicit unsupported record.
-/

namespace Mathematics.Capability

universe u

inductive InterfaceSupport
  | supported (capability : OperationalCapability)
  | unsupported (reason : String)

structure TotalCapabilityAtlas (Interface : Type u) where
  webrefDigest : Digest
  webIdlDigest : Digest
  webrefDigest_valid : webrefDigest.Valid
  webIdlDigest_valid : webIdlDigest.Valid
  classify : Interface → InterfaceSupport

theorem TotalCapabilityAtlas.every_interface_modeled
    {Interface : Type u}
    (atlas : TotalCapabilityAtlas Interface)
    (interface : Interface) :
    ∃ support, atlas.classify interface = support :=
  ⟨atlas.classify interface, rfl⟩

end Mathematics.Capability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88b73c9faffce341d7db2af6014d57d62e19641411b62c2a2a8a7983fdf2d4a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
