# Complete source: GRWTSK.Topology.PortFiber.Basic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e51c1b52fede0d883b147ffd196c0efe184a87d8` · SHA-256 `35d3c8ba2a290bf028a42670c495b065a7d4200641c07a3a5d89e48095ca80fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

namespace GRWTSK.Topology

universe u v w

/-- A dependent family of fibers and typed ports between them.

The source, target, and every middle object are retained in the port type. The laws say only
that the declared fiber map respects identity and composition. -/
structure PortFiber where
  Obj : Type u
  Fiber : Obj → Type v
  Port : Obj → Obj → Type w
  identity : ∀ A, Port A A
  comp : ∀ {A B C}, Port A B → Port B C → Port A C
  map : ∀ {A B}, Port A B → Fiber A → Fiber B
  map_identity : ∀ A x, map (identity A) x = x
  map_comp : ∀ {A B C} (p : Port A B) (q : Port B C) x,
    map (comp p q) x = map q (map p x)

namespace PortFiber

/-- Every indexed family of types has a port-fiber system whose ports are ordinary functions. -/
def ofFunctions (Obj : Type u) (Fiber : Obj → Type v) : PortFiber where
  Obj := Obj
  Fiber := Fiber
  Port A B := Fiber A → Fiber B
  identity _ := id
  comp f g := g ∘ f
  map f := f
  map_identity := by
    intro A x
    rfl
  map_comp := by
    intro A B C p q x
    rfl

/-- Immutable public identity for one source theorem or construction. -/
structure SourceIdentity where
  repository : String
  revision : String
  path : String
  declaration : String
  deriving DecidableEq, Repr

/-- A port bound to exact public source and an explicit invalidation key. -/
structure SourceBoundPort (P : PortFiber) {A B : P.Obj} where
  port : P.Port A B
  source : SourceIdentity
  invalidationKey : String

/-- Two adjacent source-bound ports may compose only after their repository and revision agree.
Their individual declaration paths may differ. -/
structure SameSource {P : PortFiber} {A B C : P.Obj}
    (p : SourceBoundPort P (A := A) (B := B))
    (q : SourceBoundPort P (A := B) (B := C)) : Prop where
  repository_eq : p.source.repository = q.source.repository
  revision_eq : p.source.revision = q.source.revision

namespace SourceBoundPort

/-- Compose source-bound ports after an explicit source-compatibility proof. -/
def comp {P : PortFiber} {A B C : P.Obj}
    (p : SourceBoundPort P (A := A) (B := B))
    (q : SourceBoundPort P (A := B) (B := C))
    (_h : SameSource p q) : SourceBoundPort P (A := A) (B := C) where
  port := P.comp p.port q.port
  source := p.source
  invalidationKey := p.invalidationKey ++ "|" ++ q.invalidationKey

end SourceBoundPort

end PortFiber

end GRWTSK.Topology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7db34666a01d237841072fc68da4c4e7909470106b50515a6faa3088429ca1bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/PortFiber/Basic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
