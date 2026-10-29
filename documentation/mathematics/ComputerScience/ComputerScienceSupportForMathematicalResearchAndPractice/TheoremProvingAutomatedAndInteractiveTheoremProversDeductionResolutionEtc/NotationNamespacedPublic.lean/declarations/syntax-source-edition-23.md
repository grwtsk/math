# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02ba7c45e6e9fd62a63c177fad06fa8140bbe978e0865d3c094872a6211c47e2",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax-source-edition-23",
  "source": {
    "blob": "245dfd10a8e7b1c8c62c8513914d8f37f75705f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 651,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74e688ce60661c7507032c9dcede9b56dfd18ade6f21a9da30c1fb4c14d8a147",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02ba7c45e6e9fd62a63c177fad06fa8140bbe978e0865d3c094872a6211c47e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax (name := deprecated_arg) "deprecated_arg" ppSpace ident (ppSpace ident)? (ppSpace str)?
    (" (" &"since" " := " str ")")? : attr

/--
The attribute `@[suggest_for ..]` on a declaration suggests likely ways in which
someone might **incorrectly** refer to a definition.

* `@[suggest_for String.endPos]` on the definition of `String.rawEndPos` suggests that `"str".endPos` might be correctable to `"str".rawEndPos`.
* `@[suggest_for Either Result]` on the definition of `Except` suggests that `Either Nat String` might be correctable to `Except Nat String`.

The namespace of the suggestions is always relative to the root namespace. In the namespace `X.Y`,
adding an annotation `@[suggest_for Z.bar]` to `def Z.foo` will suggest `X.Y.Z.foo` only as a
replacement for `Z.foo`. If your intent is to suggest `X.Y.Z.foo` as a replacement for
`X.Y.Z.bar`, you must instead use the annotation `@[suggest_for X.Y.Z.bar]`.

Suggestions can be defined for structure fields or inductive branches with the
`attribute [suggest_for Exception] Except` syntax, and these attributes do not have to be added
in the same module where the actual identifier was defined.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245dfd10a8e7b1c8c62c8513914d8f37f75705f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cefe9138093ac6f5e697778f648538543371422e85dd3daf301ace38c9e04f08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
