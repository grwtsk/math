# Model Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04d4e0a80ebed68170331b8a3faa18ff894b014c` · SHA-256 `5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Kernel.Channel

/-!
# Arbitrary-project kernel models

A project snapshot may expose any index type.  It supplies a finite number of
feature channels, each of finite dimension.  The kernel construction itself
contains no references to source paths or to the project that defines it.
-/

noncomputable section

namespace Mathematics.Kernel

universe u

/-- Complete semantic-kernel input for one finite project snapshot. -/
structure ProjectKernelModel (Index : Type u) where
  channelCount : Nat
  channel : Fin channelCount → FeatureChannelModel Index

/-- Semantic kernel of one project snapshot. -/
def ProjectKernelModel.semanticKernel
    {Index : Type u} (model : ProjectKernelModel Index) : PositiveKernel Index :=
  featureChannelKernel fun index => (model.channel index).toKernelChannel

end Mathematics.Kernel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=740e21fede7082993d412a116851c92e7ef75e128c5bc59b956937a434b9940b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
