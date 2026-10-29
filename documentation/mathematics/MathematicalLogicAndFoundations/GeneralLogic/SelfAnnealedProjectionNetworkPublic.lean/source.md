# Self Annealed Projection Network Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38bea32d60a8ee4760d019f5150703083cd98a56` · SHA-256 `5208dd6478eb142deb397f37aea732a35227de021b4f7adaa5a461338d92425e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Presentation.SelfAnneal
public import Presentation.Transport.Network

/-!
# Compatibility facade for admitted finite projection networks

The historical public names now refer to the operational transport network.
Its origin carries the generic ordered route and an admitted structural trace;
nodes carry canonical packet revisions, snapshot hashes, and measured energy.
-/

public section

namespace Presentation

abbrev CompileTimeAnnealEnergy := Surface.Refactor.Surgery.StructuralEnergy
abbrev CompileTimeAnnealTrace := Transport.AnnealTrace
abbrev SelfAnnealedProjectionNetworkOrigin := Transport.FiniteProjectionOrigin
abbrev ProjectionNodeKind := Transport.NetworkNodeKind
abbrev ProjectionNode := Transport.NetworkNode
abbrev ProjectionEdge := Transport.NetworkEdge
abbrev SelfAnnealedProjectionNetwork :=
  Transport.SelfAnnealedProjectionNetwork

def SelfAnnealedProjectionNetworkCreatesAuthority
    (_network : SelfAnnealedProjectionNetwork) : Prop := False

theorem self_annealed_projection_network_origin_sound
    (origin : SelfAnnealedProjectionNetworkOrigin)
    (valid : origin.Valid) :
    origin.routing.Valid ∧
      origin.route = origin.routing.orderedRoute origin.startHost ∧
      origin.admittedTrace.Valid :=
  valid

theorem self_annealed_projection_network_sound
    (network : SelfAnnealedProjectionNetwork)
    (valid : network.Valid) :
    network.origin.Valid ∧
      (∀ node ∈ network.nodes, node.Valid network.origin) ∧
      network.authority = .presentationOnly ∧
      ¬ SelfAnnealedProjectionNetworkCreatesAuthority network :=
  ⟨valid.1, valid.2.2.1, valid.2.2.2.2, by
    simp [SelfAnnealedProjectionNetworkCreatesAuthority]⟩

end Presentation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16a7d04c773c6ae3dd86cd58eb77e9047acedb134712ab97237dbe69d51b3a9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelfAnnealedProjectionNetwork/Variant5208dd6478eb142deb397f37aea732a35227de021b4f7adaa5a461338d92425e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
