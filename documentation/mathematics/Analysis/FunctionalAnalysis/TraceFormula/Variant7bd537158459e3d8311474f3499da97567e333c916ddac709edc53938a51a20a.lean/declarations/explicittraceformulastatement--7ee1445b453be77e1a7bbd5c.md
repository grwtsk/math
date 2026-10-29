# ExplicitTraceFormulaStatement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86a7779dc3e0f66f43544d037c752b7d0b5bd48ea0d979f3c6a90ccd5f53c0ce",
  "kind": "def",
  "lexical_name": "ExplicitTraceFormulaStatement",
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
  "slug": "explicittraceformulastatement--7ee1445b453be77e1a7bbd5c",
  "source": {
    "blob": "2e5a71b1bbe76ec8ae808e7b31883fc21964d066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 36,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variant7bd537158459e3d8311474f3499da97567e333c916ddac709edc53938a51a20a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ee1445b453be77e1a7bbd5c3a5b04672fd68adc1cdfedbbef660be65024363c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TraceFormula/Variant7bd537158459e3d8311474f3499da97567e333c916ddac709edc53938a51a20a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86a7779dc3e0f66f43544d037c752b7d0b5bd48ea0d979f3c6a90ccd5f53c0ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExplicitTraceFormulaStatement
    (pairing : TracePairing) : Prop :=
  ∀ φ : RHTestFunction, pairing.spectral.eval φ = pairing.index.eval φ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Analysis/FunctionalAnalysis/TraceFormula/Variant7bd537158459e3d8311474f3499da97567e333c916ddac709edc53938a51a20a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variant7bd537158459e3d8311474f3499da97567e333c916ddac709edc53938a51a20a.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e5a71b1bbe76ec8ae808e7b31883fc21964d066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68bc14db6621ecbd8a50f0a3ad9a15661dc30f251111b7cf47c7355f4152490f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variant7bd537158459e3d8311474f3499da97567e333c916ddac709edc53938a51a20a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
