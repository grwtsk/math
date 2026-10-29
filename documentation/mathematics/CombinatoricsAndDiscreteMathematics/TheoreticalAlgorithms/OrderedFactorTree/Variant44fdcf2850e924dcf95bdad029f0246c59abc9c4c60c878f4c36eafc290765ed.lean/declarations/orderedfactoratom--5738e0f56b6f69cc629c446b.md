# OrderedFactorAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:830467b95469ef8e621f65603f311bfb72c3e356906aa62ffbcd8b03ee2226d4",
  "kind": "inductive",
  "lexical_name": "OrderedFactorAtom",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "orderedfactoratom--5738e0f56b6f69cc629c446b",
  "source": {
    "blob": "25f4acd1b4bb9da4358d4c7f189472f7280b9df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant44fdcf2850e924dcf95bdad029f0246c59abc9c4c60c878f4c36eafc290765ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5738e0f56b6f69cc629c446bc0f621ff1652d5728af36605e04281b89f0d5f73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant44fdcf2850e924dcf95bdad029f0246c59abc9c4c60c878f4c36eafc290765ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:830467b95469ef8e621f65603f311bfb72c3e356906aa62ffbcd8b03ee2226d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive OrderedFactorAtom where
  | token : String -> OrderedFactorAtom
  | matrixCell : Nat -> Nat -> OrderedFactorAtom
  | constant : Bool -> OrderedFactorAtom
deriving Repr, DecidableEq

/--
Finite ordered binary syntax tree.

The constructor `node left right` is deliberately ordered and bracket-sensitive.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant44fdcf2850e924dcf95bdad029f0246c59abc9c4c60c878f4c36eafc290765ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant44fdcf2850e924dcf95bdad029f0246c59abc9c4c60c878f4c36eafc290765ed.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f4acd1b4bb9da4358d4c7f189472f7280b9df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac7b34897f8a16e431f7a3ff0877988b0152373551611a00e5c8b0be706ae5c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant44fdcf2850e924dcf95bdad029f0246c59abc9c4c60c878f4c36eafc290765ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
