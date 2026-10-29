# Hilbert.TraceFormulaTheoremCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf485eb275da05b6d5a3220195d229e3a4abccda4cf90df767a38f7f0f0f9a27",
  "kind": "structure",
  "lexical_name": "Hilbert.TraceFormulaTheoremCertificate",
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
  "slug": "hilbert-traceformulatheoremcertificate",
  "source": {
    "blob": "1c402b9178383dc516ea6f6cde8aceabe1e1fd98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 177,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ab92403be15ed294c41ceee553a349010605d6515c13d328eba8178bade9a48",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/TraceFormulaNamespacedHilbert.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf485eb275da05b6d5a3220195d229e3a4abccda4cf90df767a38f7f0f0f9a27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Hilbert.TraceFormulaTheoremCertificate
    (C : Hilbert.TraceFormulaCore.{u, v}) where
  traceSideReady : C.traceSide.ready
  spectralSideReady : C.spectralSide.ready
  geometricSideReady : C.geometricSide.ready
  selfAdjoint : Hilbert.SelfAdjointCertificate C.operator
  selfAdjoint_matches :
    C.selfAdjoint? = some selfAdjoint
  traceClass : Hilbert.TraceClassCertificate C.operator
  traceClass_matches :
    C.traceClass? = some traceClass
  spectralMeasure : Hilbert.SpectralMeasure C.operator
  spectralMeasure_matches :
    C.spectralMeasure? = some spectralMeasure
  spectralTheorem : Hilbert.SpectralTheoremCertificate C.operator
  spectralTheorem_matches :
    C.spectralTheorem? = some spectralTheorem
  spectralTheorem_uses_selfAdjoint :
    spectralTheorem.selfAdjoint = selfAdjoint
  spectralTheorem_uses_spectralMeasure :
    spectralTheorem.spectralMeasure = spectralMeasure
  sidesShareNormalizationCertified : C.sidesShareNormalization
  sidesReferToOperatorCertified : C.sidesReferToOperator
  boundary : List String

/--
Major-proof quality predicate for the Hilbert-level trace core.

The predicate mentions the witness propositions themselves, the option-field
matching equations, the spectral-theorem coherence equations, and the
normalization/compatibility obligations.  It deliberately does not contain any
proposition of the form "the trace formula holds".
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/TraceFormulaNamespacedHilbert.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c402b9178383dc516ea6f6cde8aceabe1e1fd98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ae67811277817957ed5aec33ed39a5441c3fb3196c33b4fcd6333d2f20b99ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
