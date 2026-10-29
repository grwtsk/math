# ofFinitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21ee6a49799b1cf4329d950c0c0362ee412ceb9ffd8ec7523f023c6bdef2989b",
  "kind": "def",
  "lexical_name": "ofFinitePresentation",
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
  "slug": "offinitepresentation",
  "source": {
    "blob": "a9a124e1328dec7a2652660736f9be0498786f32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 140,
    "path": "GRWTSK/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c82e8b4980a7670f937e1d539c1e77dc5941124c99996c8d6a474e7aaa12fe9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/PresentationBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21ee6a49799b1cf4329d950c0c0362ee412ceb9ffd8ec7523f023c6bdef2989b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofFinitePresentation [FinitePresentation R S] : Presentation.{0, 0} R S :=
  letI H := FinitePresentation.out (R := R) (A := S)
  letI n : ℕ := H.choose
  letI f : MvPolynomial (Fin n) R →ₐ[R] S := H.choose_spec.choose
  haveI hf : Function.Surjective f := H.choose_spec.choose_spec.1
  haveI hf' : (RingHom.ker f).FG := H.choose_spec.choose_spec.2
  letI H' := Submodule.fg_iff_exists_fin_generating_family.mp hf'
  let m : ℕ := H'.choose
  let v : Fin m → MvPolynomial (Fin n) R := H'.choose_spec.choose
  let hv : Ideal.span (Set.range v) = RingHom.ker f := H'.choose_spec.choose_spec
  { __ := Generators.ofSurjective (fun x ↦ f (.X x)) (by convert hf; ext; simp)
    rels := Fin m
    relation := v
    span_range_relation_eq_ker := hv.trans (by congr; ext; simp) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/PresentationBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a124e1328dec7a2652660736f9be0498786f32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fcc5dfd6620718b543a957a34f88a554a1773cef225ae25db857f2c84522f71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
