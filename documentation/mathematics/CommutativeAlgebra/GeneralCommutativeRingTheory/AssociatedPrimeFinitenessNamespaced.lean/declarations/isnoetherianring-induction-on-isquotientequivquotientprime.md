# IsNoetherianRing.induction_on_isQuotientEquivQuotientPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b250987a-e51f-695f-640e-441dde28576b",
  "kind": "theorem",
  "lexical_name": "IsNoetherianRing.induction_on_isQuotientEquivQuotientPrime",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "isnoetherianring-induction-on-isquotientequivquotientprime",
  "source": {
    "blob": "8406daec6a6319abb9f721aef5b3dbaacaf9f484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a40218be702046ef284afd54f8db73a22ab18a9f2b2435148a111e40c6ccfd82",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/AssociatedPrimeFinitenessNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b250987a-e51f-695f-640e-441dde28576b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNoetherianRing.induction_on_isQuotientEquivQuotientPrime
    ⦃M : Type v⦄ [AddCommGroup M] [Module A M] (_ : Module.Finite A M)
    {motive : (N : Type v) → [AddCommGroup N] → [Module A N] → [Module.Finite A N] → Prop}
    (subsingleton : (N : Type v) → [AddCommGroup N] → [Module A N] → [Module.Finite A N] →
      [Subsingleton N] → motive N)
    (quotient : (N : Type v) → [AddCommGroup N] → [Module A N] → [Module.Finite A N] →
      (p : PrimeSpectrum A) → (N ≃ₗ[A] A ⧸ p.1) → motive N)
    (exact : (N₁ : Type v) → [AddCommGroup N₁] → [Module A N₁] → [Module.Finite A N₁] →
      (N₂ : Type v) → [AddCommGroup N₂] → [Module A N₂] → [Module.Finite A N₂] →
      (N₃ : Type v) → [AddCommGroup N₃] → [Module A N₃] → [Module.Finite A N₃] →
      (f : N₁ →ₗ[A] N₂) → (g : N₂ →ₗ[A] N₃) →
      Function.Injective f → Function.Surjective g → Function.Exact f g →
      motive N₁ → motive N₃ → motive N₂) : motive M := by
  have equiv (N₁ : Type v) [AddCommGroup N₁] [Module A N₁] [Module.Finite A N₁]
      (N₂ : Type v) [AddCommGroup N₂] [Module A N₂] [Module.Finite A N₂]
      (f : N₁ ≃ₗ[A] N₂) (h : motive N₁) : motive N₂ :=
    exact N₁ N₂ PUnit.{v + 1} f 0 f.injective (Function.surjective_to_subsingleton _)
      ((f.exact_zero_iff_surjective _).2 f.surjective) h (subsingleton _)
  obtain ⟨s, hs1, hs2⟩ := IsNoetherianRing.exists_relSeries_isQuotientEquivQuotientPrime A M
  suffices H : ∀ n, (h : n < s.length + 1) → motive (s ⟨n, h⟩) by
    replace H : motive s.last := H s.length s.length.lt_add_one
    rw [hs2] at H
    exact equiv _ _ Submodule.topEquiv H
  intro n h
  induction n with
  | zero =>
    change motive s.head
    rw [hs1]
    exact subsingleton _
  | succ n ih =>
    specialize ih (n.lt_add_one.trans h)
    obtain ⟨hle, p, ⟨f⟩⟩ := s.step ⟨n, (add_lt_add_iff_right _).1 h⟩
    replace ih := equiv _ _ (Submodule.submoduleOfEquivOfLe hle).symm ih
    exact exact _ _ _ _ _ (Submodule.injective_subtype _) (Submodule.mkQ_surjective _)
      (LinearMap.exact_subtype_mkQ _) ih (quotient _ p f)

/-- There are only finitely many associated primes of a finitely generated module
over a Noetherian ring. -/
@[stacks 00LC]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/AssociatedPrimeFinitenessNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8406daec6a6319abb9f721aef5b3dbaacaf9f484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0e8358144391c61e8f6dab7ccf80f7368f8cbfaf03a8e5931021d9b1707ae5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
