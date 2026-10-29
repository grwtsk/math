# Local System — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c782c5c9df42a46edfcc23d272ec9313fb26b5e1` · SHA-256 `4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Universe.Terrain
import DAF.Hilbert.Finite

/-!
# Finite local coefficient systems on active terrain

The transport attached to an active edge is proof-carrying: its source and
target support projections are exact self-adjoint idempotents and the matrix
has those initial and final projections.  This module does not infer a
transport merely from graph adjacency.
-/

noncomputable section

namespace DAF.Universe

open DAF.Hilbert

universe u

/-- Fixed vocabulary for the semantic facet of a local coefficient. -/
inductive TerrainFacet
  | statement
  | hypotheses
  | proof
  | definition
  | representation
  | runtime
  | boundary
  | externalAuthority
  | nonclaim
  deriving DecidableEq, Repr, Inhabited

/-- An exact finite partial isometry on a common coefficient fiber. -/
structure CertifiedPartialIsometry
    (FiberIndex : Type u) [Fintype FiberIndex] [DecidableEq FiberIndex] where
  operator : FiniteOperator FiberIndex FiberIndex
  sourceProjection : FiniteOperator FiberIndex FiberIndex
  targetProjection : FiniteOperator FiberIndex FiberIndex
  source_selfAdjoint : sourceProjection.IsHermitian
  target_selfAdjoint : targetProjection.IsHermitian
  source_idempotent : sourceProjection * sourceProjection = sourceProjection
  target_idempotent : targetProjection * targetProjection = targetProjection
  initialProjection : operator.conjTranspose * operator = sourceProjection
  finalProjection : operator * operator.conjTranspose = targetProjection

/-- Uniform finite local coefficients over one closed active terrain.  Uniform
coordinates are a runtime-friendly presentation of the cellwise finite
fibers; support projections select the actual source and target fibers. -/
structure FiniteLocalSystem
    {manifest : UniverseManifest}
    (terrain : ActiveTerrain manifest) where
  FiberIndex : Type
  instFintypeFiberIndex : Fintype FiberIndex
  instDecidableEqFiberIndex : DecidableEq FiberIndex
  edgeTransport : (edge : TerrainEdgeId) →
    CertifiedPartialIsometry FiberIndex
  edgeAuthority : ∀ edge ∈ terrain.edges, manifest.HasEdge edge

attribute [instance] FiniteLocalSystem.instFintypeFiberIndex
  FiniteLocalSystem.instDecidableEqFiberIndex

namespace FiniteLocalSystem

/-- Every selected local-system edge resolves in the pinned manifest. -/
theorem transport_edge_resolves
    {manifest : UniverseManifest}
    {terrain : ActiveTerrain manifest}
    (system : FiniteLocalSystem terrain)
    {edge : TerrainEdgeId}
    (membership : edge ∈ terrain.edges) :
    manifest.HasEdge edge :=
  system.edgeAuthority edge membership

end FiniteLocalSystem

end DAF.Universe
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f480e741d5dbacd0f09e428cd064f31eea2ed9476196235f48234282fdd8094 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
