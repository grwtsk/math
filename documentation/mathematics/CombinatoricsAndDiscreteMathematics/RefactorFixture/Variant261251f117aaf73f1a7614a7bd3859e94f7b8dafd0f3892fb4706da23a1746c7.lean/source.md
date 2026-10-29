# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variant261251f117aaf73f1a7614a7bd3859e94f7b8dafd0f3892fb4706da23a1746c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8016862d4b54d66517cdefc55a8a1fe55aef21f0` · SHA-256 `261251f117aaf73f1a7614a7bd3859e94f7b8dafd0f3892fb4706da23a1746c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  rfl

@[surface_candidate]
theorem identity_with_local_auxiliary (value : Nat) : value + 0 = value := by
  have localAuxiliary (input : Nat) : input + 0 = input := by
    exact Nat.add_zero input
  exact localAuxiliary value

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f916e65cca4b9ea163bdbd653ed2513d3bbd8837b523686fa5ed265aa80f305 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/RefactorFixture/Variant261251f117aaf73f1a7614a7bd3859e94f7b8dafd0f3892fb4706da23a1746c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
