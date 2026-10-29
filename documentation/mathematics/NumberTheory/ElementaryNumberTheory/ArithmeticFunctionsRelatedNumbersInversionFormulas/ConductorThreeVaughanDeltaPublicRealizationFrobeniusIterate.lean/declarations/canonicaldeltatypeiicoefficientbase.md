# canonicalDeltaTypeIICoefficientBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5c7a5a789f0c3306bd7ba7757e59b5fb57593de03c6d48dbe0d044d4994ccf3",
  "kind": "def",
  "lexical_name": "canonicalDeltaTypeIICoefficientBase",
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
  "slug": "canonicaldeltatypeiicoefficientbase",
  "source": {
    "blob": "14ebf711ef62d8e0f0b4c76ab0a20c2badc52048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 541,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15375f20e2ce71789822d81f7c8de27b4ab119473b667f660c7b9c44a529226b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVaughanDeltaPublicRealizationFrobeniusIterate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5c7a5a789f0c3306bd7ba7757e59b5fb57593de03c6d48dbe0d044d4994ccf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalDeltaTypeIICoefficientBase (N : ℕ) :
    DeltaTypeIICoefficientBase N where
  A := VaughanDeltaPolynomial N
  commRing := inferInstance
  deltaRing :=
    { operation := polynomialThreeTypicalDelta N
      laws := polynomialThreeTypicalDeltaLaws N }
  target := ℂ
  targetCommRing := inferInstance
  targetDeltaRing := complexThreeTypicalDeltaRing
  target_phi_identity := by simp [complexThreeTypicalDeltaRing,
    complexThreeTypicalDelta]
  realization :=
    { toRingHom := vaughanDeltaRealization N
      map_delta := by
        intro a
        simp only [polynomialThreeTypicalDelta, complexThreeTypicalDeltaRing,
          complexThreeTypicalDelta, polynomialThreeDelta, complexThreeDelta]
        simp [vaughanDeltaRealization]
        ring }
  targetEquivComplex := RingEquiv.refl ℂ
  leftVariable := fun m ↦ MvPolynomial.X (.inl m)
  rightVariable := fun k ↦ MvPolynomial.X (.inr k)
  realization_left := by
    intro m
    simp [vaughanDeltaRealization, vaughanDeltaVariableValue]
  realization_right := by
    intro k
    simp [vaughanDeltaRealization, vaughanDeltaVariableValue]

/-- Concrete endpoint: the canonical universal polynomial prefix evaluates
exactly to the literal Type II Vaughan prefix. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVaughanDeltaPublicRealizationFrobeniusIterate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ebf711ef62d8e0f0b4c76ab0a20c2badc52048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ad121ac8987c258371a0a72e003c222134670422045437979bf928a69839d10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
