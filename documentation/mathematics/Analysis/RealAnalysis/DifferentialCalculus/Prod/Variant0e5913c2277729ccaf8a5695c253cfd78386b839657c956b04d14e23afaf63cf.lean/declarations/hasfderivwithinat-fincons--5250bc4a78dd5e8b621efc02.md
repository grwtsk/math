# HasFDerivWithinAt.finCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51ffa0df-dd20-28de-9478-ab5ac72e7052",
  "kind": "theorem",
  "lexical_name": "HasFDerivWithinAt.finCons",
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
  "slug": "hasfderivwithinat-fincons--5250bc4a78dd5e8b621efc02",
  "source": {
    "blob": "6e786a2c0a20ffe34b63bca1e85d540004c92b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 597,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant0e5913c2277729ccaf8a5695c253cfd78386b839657c956b04d14e23afaf63cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5250bc4a78dd5e8b621efc02df0ad794085766f7d1f6d8c6aacedfbd36cb13a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant0e5913c2277729ccaf8a5695c253cfd78386b839657c956b04d14e23afaf63cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51ffa0df-dd20-28de-9478-ab5ac72e7052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 597–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivWithinAt.finCons
    {φ' : E →L[𝕜] F' 0} {φs' : E →L[𝕜] Π i, F' (Fin.succ i)}
    (h : HasFDerivWithinAt φ φ' s x) (hs : HasFDerivWithinAt φs φs' s x) :
    HasFDerivWithinAt (fun x => Fin.cons (φ x) (φs x)) (φ'.finCons φs') s x :=
  hasFDerivWithinAt_finCons'.mpr ⟨h, hs⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant0e5913c2277729ccaf8a5695c253cfd78386b839657c956b04d14e23afaf63cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant0e5913c2277729ccaf8a5695c253cfd78386b839657c956b04d14e23afaf63cf.lean#L597).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e786a2c0a20ffe34b63bca1e85d540004c92b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=960a2e0d54b782ab8b31ff468c69d230c5e0027c7352d21f482ba0cfeb36c8c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant0e5913c2277729ccaf8a5695c253cfd78386b839657c956b04d14e23afaf63cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
