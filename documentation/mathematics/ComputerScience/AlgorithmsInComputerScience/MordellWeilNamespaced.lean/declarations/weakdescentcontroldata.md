# WeakDescentControlData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06204a13e0f6ce07c69ab5d92fe32931ec18aad0ec0c70327ffbe937ff1919b4",
  "kind": "structure",
  "lexical_name": "WeakDescentControlData",
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
  "slug": "weakdescentcontroldata",
  "source": {
    "blob": "0c46f379bb6aae2ad8617b3bc53b376ecfccfe05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 505,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5779393463b03a594f35e16a42f56d79c9cb2910a129fd5482711c5f6ff824c2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/MordellWeilNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06204a13e0f6ce07c69ab5d92fe32931ec18aad0ec0c70327ffbe937ff1919b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WeakDescentControlData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    {n : Nat}
    (K : KummerSelmerExactSequenceCertificate M n) where
  quotientByMultiplication :
    Type u
  quotientMap :
    Point C.E → quotientByMultiplication
  selmerInjection :
    quotientByMultiplication →
      K.finiteKummerSelmer.globalKummer.Domain
  localSolubility :
    quotientByMultiplication → Prop
  quotientIdentifiesMultiplicationClasses : Prop
  quotientIdentifiesMultiplicationClassesCertified :
    quotientIdentifiesMultiplicationClasses
  selmerInjectionCompatibleWithKummer :
    ∀ q,
      K.finiteSelmerProblem.selmerSubgroup.carrier
        (K.finiteKummerSelmer.globalKummer.toH1
          (selmerInjection q))
  localSolubilityMatchesLocalConditions : Prop
  localSolubilityMatchesLocalConditionsCertified :
    localSolubilityMatchesLocalConditions
  boundary : List String

/--
Weak Mordell-Weil/descent provenance for the smooth Mordell-Weil interface.

This now depends on the constructed finite abstract Galois-cohomology/Selmer
layer through its Kummer/Selmer certificate. It still does not construct
number-field Galois groups, elliptic-curve descent maps, or quotient groups.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/MordellWeilNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c46f379bb6aae2ad8617b3bc53b376ecfccfe05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b614843c6296bab5a6997c99aa0b5abcf7b8b8c674e554a6737ed681a4faf4e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
