# Stone Closure — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `228bb9610567602cb5b8d5c4a380469c6a1aac5e` · SHA-256 `fc477a53283265c2be6502df23f8e429ffcdd05d8fa4b78a4c8a2dbf425c83e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.IncidenceCode

/-!
# Compatible Boolean probe stages

An evolving family of incidence coordinates belongs to an inverse system of
finite Boolean stages.  Residues therefore retain their full compatible
coordinates; they are not collapsed to a single undifferentiated infinity.
-/

namespace Mathematics.Projection

universe u v

structure BooleanProbeSystem (Stage : Type u) [Preorder Stage] where
  Probe : Stage → Type v
  restrict :
    ∀ {earlier later : Stage},
      earlier ≤ later →
        IncidenceCode (Probe later) →
          IncidenceCode (Probe earlier)
  restrict_refl :
    ∀ stage code, restrict (show stage ≤ stage from le_rfl) code = code
  restrict_trans :
    ∀ {first second third : Stage}
      (firstToSecond : first ≤ second)
      (secondToThird : second ≤ third)
      (code : IncidenceCode (Probe third)),
      restrict firstToSecond (restrict secondToThird code) =
        restrict (firstToSecond.trans secondToThird) code

/-- A point of the Boolean inverse limit (Stone-stage closure). -/
structure StonePoint
    {Stage : Type u} [Preorder Stage]
    (system : BooleanProbeSystem Stage) where
  coordinate : ∀ stage, IncidenceCode (system.Probe stage)
  compatible :
    ∀ {earlier later : Stage} (relation : earlier ≤ later),
      system.restrict relation (coordinate later) = coordinate earlier

end Mathematics.Projection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58f038ce13e833f1aeef4c45fe8c869b26c6793fa1a904fccc26be259b5be5be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StoneClosure/Variantfc477a53283265c2be6502df23f8e429ffcdd05d8fa4b78a4c8a2dbf425c83e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
