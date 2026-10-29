# normExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8435428128e8d4fa0a5671f9f98ee03c2c58cf4152a1f977d8abe0c67e0637f6",
  "kind": "def",
  "lexical_name": "normExpr",
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
  "slug": "normexpr",
  "source": {
    "blob": "c473d10d9b66a871be2335a9c9c3e97ea55c4621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormIds/Variantab29cefeb7aa7b45f01332b525a94e54856510f579766be75d7342237bb7f688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:869e5729893050a276f37af6e53bcfed94a77c2885fffb0ebf5ad3f78402d32f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormIdsPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8435428128e8d4fa0a5671f9f98ee03c2c58cf4152a1f977d8abe0c67e0637f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normExpr : Expr → M Expr
  | Expr.ctor c ys,      m => Expr.ctor c (normArgs ys m)
  | Expr.reset n x,      m => Expr.reset n (normVar x m)
  | Expr.reuse x c u ys, m => Expr.reuse (normVar x m) c u (normArgs ys m)
  | Expr.proj i x,       m => Expr.proj i (normVar x m)
  | Expr.uproj i x,      m => Expr.uproj i (normVar x m)
  | Expr.sproj n o x,    m => Expr.sproj n o (normVar x m)
  | Expr.fap c ys,       m => Expr.fap c (normArgs ys m)
  | Expr.pap c ys,       m => Expr.pap c (normArgs ys m)
  | Expr.ap x ys,        m => Expr.ap (normVar x m) (normArgs ys m)
  | Expr.box t x,        m => Expr.box t (normVar x m)
  | Expr.unbox x,        m => Expr.unbox (normVar x m)
  | Expr.isShared x,     m => Expr.isShared (normVar x m)
  | e@(Expr.lit _),      _ =>  e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormIdsPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormIds/Variantab29cefeb7aa7b45f01332b525a94e54856510f579766be75d7342237bb7f688.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c473d10d9b66a871be2335a9c9c3e97ea55c4621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf24e62239c10a8bd5713de95b3cd8d6e483ab03e385f65d18bddc6108be6e2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormIds/Variantab29cefeb7aa7b45f01332b525a94e54856510f579766be75d7342237bb7f688.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
