# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:990988e001d5bf70a965272f916775595a601399a4eb330c6337848136b30cc1",
  "kind": "elab",
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
  "slug": "elab",
  "source": {
    "blob": "f4b3f5544cd2a5dc8c4d1edecf409ad21da38bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf7c404040ff2d1512a4ba103645396dde6c81fcb4ccf5586c10371f21aa301c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:990988e001d5bf70a965272f916775595a601399a4eb330c6337848136b30cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "dims% " e:term : term => do
  let elem_t ← mkFreshTypeMVar
  let m ← mkFreshExprMVar (mkConst ``Nat)
  let n ← mkFreshExprMVar (mkConst ``Nat)
  let matrix_t := mkAppN (← mkConstWithFreshMVarLevels ``Matrix)
                    #[mkApp (mkConst ``Fin) m, mkApp (mkConst ``Fin) n, elem_t]
  let _ ← Term.elabTermEnsuringType e (some matrix_t)
  let m ← instantiateMVars m
  let n ← instantiateMVars n
  mkAppM ``Prod.mk #[m, n]

end elaborators

-- we test equality of expressions here to ensure that we have `2` and not `1.succ` in the type
#guard_expr dims% !![]        =ₛ (0, 0)
#guard_expr dims% !![;]       =ₛ (1, 0)
#guard_expr dims% !![;;]      =ₛ (2, 0)
#guard_expr dims% !![,]       =ₛ (0, 1)
#guard_expr dims% !![,,]      =ₛ (0, 2)
#guard_expr dims% !![1]       =ₛ (1, 1)
#guard_expr dims% !![1,]      =ₛ (1, 1)
#guard_expr dims% !![1;]      =ₛ (1, 1)
#guard_expr dims% !![1,2;3,4] =ₛ (2, 2)

end dimensions

section safety
open Lean Meta Elab Command

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b3f5544cd2a5dc8c4d1edecf409ad21da38bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c8d20d3bf7c69cea74a5c3079ae3b64680cd97c4345356eb76ffa3335312fce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean","GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
