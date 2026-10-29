# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ObstructionAction.Variantdd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `637efde7a1376e6651a0ac6421cf92a3e4469057` · SHA-256 `dd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance

/-!
# Primitive-core transport

The project must supply a transport certificate for a concrete action.  Its
completion-equivariance member prevents a raw data permutation from being
mistaken for a semantic automorphism.
-/

namespace Mathematics.BinaryFrontier

structure PrimitiveCoreTransportCertificate
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G) where
  transported :
    PrimitiveObstructionCertificate
      semantics
      (equivariance.actRegistry groupElement registry)
      (equivariance.actPartial groupElement state)
      (equivariance.actRegistry groupElement core)

theorem primitive_core_transports_under_automorphism
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G)
    (transport :
      PrimitiveCoreTransportCertificate
        semantics equivariance
        registry core state primitive groupElement) :
    PrimitiveObstructionCertificate
      semantics
      (equivariance.actRegistry groupElement registry)
      (equivariance.actPartial groupElement state)
      (equivariance.actRegistry groupElement core) :=
  transport.transported

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6025c9be4f01942a3f2bf3f7107fed5dc26d738dc00c491f56e1c424f671d284 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ObstructionAction/Variantdd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
