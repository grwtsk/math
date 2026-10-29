# Q

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58ce05f08cf09c81aff4f11a66c466adce8214f0de87e82e40586714fd7e7e56",
  "kind": "def",
  "lexical_name": "Q",
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
  "slug": "q",
  "source": {
    "blob": "d083965574a54bc6ef22624f5f3f81c7860a5c77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 204,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:635b519a5c1cdcc3051e19b467ca1c785487f8a44e689c9e2ad7369bd9b59160",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraNotInjective.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58ce05f08cf09c81aff4f11a66c466adce8214f0de87e82e40586714fd7e7e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Q : QuadraticForm K L :=
  QuadraticMap.ofPolar
    (fun x =>
      Quotient.liftOn' x Q' fun a b h => by
        rw [Submodule.quotientRel_def] at h
        suffices Q' (a - b) = 0 by rwa [Q'_sub, sub_eq_zero] at this
        apply Q'_zero_under_ideal (a - b) h)
    (fun a x => by
      induction x using Quotient.inductionOn
      exact Q'.toFun_smul a _)
    (by rintro ⟨x⟩ ⟨x'⟩ ⟨y⟩; exact Q'.polar_add_left x x' y)
    (by rintro c ⟨x⟩ ⟨y⟩; exact Q'.polar_smul_left c x y)

open CliffordAlgebra

/-- Basis vectors in the Clifford algebra -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraNotInjective.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d083965574a54bc6ef22624f5f3f81c7860a5c77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb3fb03bef0eb3139f66fd5de82c00cfeaf3effebaaf07f2da5e72d86bdbfa89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant71edb13138ac1205b642cd408522e71c09941fa826fc6632472101f20c931afe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
