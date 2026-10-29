# Axiomafter Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f51f6343bafc738d365d372d2ee9e1a54a49813` · SHA-256 `ae818ac78349fb3076d9e7c2660a0f3c5b185e3c34f0940a40e931de98ee56d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  have first : value = value := Eq.refl value
  have second : value = value := first
  exact second

@[surface_candidate]
theorem identity_with_local_auxiliary (value : Nat) : value + 0 = value := by
  exact Classical.choice ⟨Nat.add_zero value⟩

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture



open Lean

run_meta do
  let axioms ← Lean.collectAxioms `Generated.RefactorFixture.identity_with_local_auxiliary
  let names := axioms.toList.map Name.toString |>.mergeSort (· < ·)
  let info ← getConstInfo `Generated.RefactorFixture.identity_with_local_auxiliary
  let normalizedType := toString (← Meta.ppExpr info.type)
  let env ← getEnv
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications)]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10a9efa25e56cde9675cb97678ffd0c66e4c15e14e36961d179a5d93141ab8df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Axiomafter/Variantae818ac78349fb3076d9e7c2660a0f3c5b185e3c34f0940a40e931de98ee56d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
