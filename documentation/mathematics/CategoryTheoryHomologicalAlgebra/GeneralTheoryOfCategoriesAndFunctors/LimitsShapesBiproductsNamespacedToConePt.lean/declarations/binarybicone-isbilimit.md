# BinaryBicone.IsBilimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1c936bacd065fbb940a59038e9d60420d4ea41224f760eca3ce9815dac8d479",
  "kind": "structure",
  "lexical_name": "BinaryBicone.IsBilimit",
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
  "slug": "binarybicone-isbilimit",
  "source": {
    "blob": "1ff216a06b1657299522dda1f7d92b28b2fa4ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1253,
    "line": 1243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:add700b566bf56ffd564293f64e241f61611a0ce9aa07e8e287f28b50ada212c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesBiproductsNamespacedToConePt.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1c936bacd065fbb940a59038e9d60420d4ea41224f760eca3ce9815dac8d479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1243–1253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryBicone.IsBilimit {P Q : C} (b : BinaryBicone P Q) where
  isLimit : IsLimit b.toCone
  isColimit : IsColimit b.toCocone
#align category_theory.limits.binary_bicone.is_bilimit CategoryTheory.Limits.BinaryBicone.IsBilimit
#align category_theory.limits.binary_bicone.is_bilimit.is_limit CategoryTheory.Limits.BinaryBicone.IsBilimit.isLimit
#align category_theory.limits.binary_bicone.is_bilimit.is_colimit CategoryTheory.Limits.BinaryBicone.IsBilimit.isColimit

attribute [inherit_doc BinaryBicone.IsBilimit] BinaryBicone.IsBilimit.isLimit
  BinaryBicone.IsBilimit.isColimit

/-- A binary bicone is a bilimit bicone if and only if the corresponding bicone is a bilimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesBiproductsNamespacedToConePt.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean#L1243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff216a06b1657299522dda1f7d92b28b2fa4ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=866aaaef115287dde76d0eeafee705b27ca6f6d87b0ed8a54063836cc518e30f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
