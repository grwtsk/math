# BitfieldInfluenceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a99318f935f4d2185e49b84da710fbcbc63d01a34e05ae90af68bb389095462",
  "kind": "structure",
  "lexical_name": "BitfieldInfluenceCertificate",
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
  "slug": "bitfieldinfluencecertificate",
  "source": {
    "blob": "1cd5d2c08a1607c634f8f195d380d84b4d50a077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 31,
    "path": "GRWTSK/Analysis/SpecialFunctions/Influence/Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07a17f5036d58b1f665de20dda37eb2b6d12c8c0f5eeacdc8eb620c6b56166cd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/Influence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a99318f935f4d2185e49b84da710fbcbc63d01a34e05ae90af68bb389095462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BitfieldInfluenceCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test, 0 ≤ testNorm test
  logarithmicOrder : Nat
  localPerturbation :
    Fin system.bits →
      Bitfield system.bits →
      Finset (Bitfield system.bits)
  perturbationsAdmissible :
    ∀ index {state neighbor},
      system.admissible state →
      neighbor ∈ localPerturbation index state →
      system.admissible neighbor
  perturbationSymmetric :
    ∀ index {left right},
      right ∈ localPerturbation index left →
      left ∈ localPerturbation index right
  influence :
    Scale →
      Fin system.bits →
      TestFunction →
      ℝ
  influenceNonnegative :
    ∀ scale index test,
      0 ≤ influence scale index test
  localInfluenceSound :
    ∀ scale index test state neighbor,
      system.admissible state →
      neighbor ∈ localPerturbation index state →
      ‖reducedTraceObservable
          trace.invariantProjection
          trace.spectralTransform
          scale test state -
        reducedTraceObservable
          trace.invariantProjection
          trace.spectralTransform
          scale test neighbor‖ ≤
        influence scale index test
  influenceConstant : ℝ
  influenceConstantNonnegative :
    0 ≤ influenceConstant
  influenceEnergyBound :
    ∀ scale test,
      influenceEnergy influence scale test ≤
        influenceConstant *
          mass scale *
          (1 + Real.log (mass scale)) ^
            (2 * logarithmicOrder) *
          (testNorm test) ^ 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/Influence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Influence/Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cd5d2c08a1607c634f8f195d380d84b4d50a077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8b73ab39ff90d8246b90b9bb9c9e3ae7a2abe55b9a5ef4ebec59ac4568194e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Influence/Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
