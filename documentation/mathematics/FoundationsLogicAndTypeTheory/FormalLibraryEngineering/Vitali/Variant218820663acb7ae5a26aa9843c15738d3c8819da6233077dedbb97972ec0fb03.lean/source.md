# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Vitali.Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e89c30bd570c7361b1f7a5d43700cc0ca6f4c2d` · SHA-256 `218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Choice.QuotientRepresentatives

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is not claimed:
This historical finite integer toy model is not a theorem about classical
Vitali sets or nonmeasurability.
-/

namespace Surface
namespace Legacy

abbrev RealScalar := Int

def rationalTranslateEquivalent
    (x y : RealScalar) : Prop :=
  x = y

def UnitInterval : Set RealScalar :=
  fun x => x = 0 ∨ x = 1

def IsVitaliSet
    (V : Set RealScalar) : Prop :=
  ∀ x, UnitInterval x ->
    ∃ v, V v ∧ rationalTranslateEquivalent x v ∧
      ∀ y, V y -> rationalTranslateEquivalent x y -> y = v

theorem vitali_exists_under_choice
    (_C : ChoiceOperator) :
    ∃ V : Set RealScalar,
      IsVitaliSet V := by
  exact ⟨UnitInterval, by
    intro x hx
    exact ⟨x, hx, rfl, by
      intro y _ hy
      exact hy.symm⟩⟩

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=065cebaf3a5b3f408bf888664ac4a7ea999c9590ec79d42e56f1e2e646696e9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
