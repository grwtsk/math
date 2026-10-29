# Pi.rootableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cbd224a7ffe54f921a89cbbb185a919251f1e54e4a1b5c34d2fd4688a4a8cce",
  "kind": "instance",
  "lexical_name": "Pi.rootableBy",
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
  "slug": "pi-rootableby",
  "source": {
    "blob": "9b21355dee7325cdd74738b52707f1934f364640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 147,
    "path": "GRWTSK/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca4b7f969f5f96a39e4d4eccc21306ceafff3865c897b887dfc201b61c229136",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/DivisibleNamespacedDivisibleByIntOfSmulTopEqTopSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cbd224a7ffe54f921a89cbbb185a919251f1e54e4a1b5c34d2fd4688a4a8cce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.rootableBy : RootableBy (∀ i, B i) β where
  root x n i := RootableBy.root (x i) n
  root_zero _x := funext fun _i => RootableBy.root_zero _
  root_cancel _x hn := funext fun _i => RootableBy.root_cancel _ hn
#align pi.rootable_by Pi.rootableBy
#align pi.divisible_by Pi.divisibleBy

end Pi

section Prod

variable {β B B' : Type*} [Pow B β] [Pow B' β]

variable [Zero β] [Monoid B] [Monoid B'] [RootableBy B β] [RootableBy B' β]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/DivisibleNamespacedDivisibleByIntOfSmulTopEqTopSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b21355dee7325cdd74738b52707f1934f364640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d53e08eef81b0deea16a08e0cbd83aa33665c1a80b400a378d80b383998fa880 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
