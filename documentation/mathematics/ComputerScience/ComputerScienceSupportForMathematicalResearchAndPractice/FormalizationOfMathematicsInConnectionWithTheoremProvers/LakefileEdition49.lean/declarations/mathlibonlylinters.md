# mathlibOnlyLinters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:635ec005aedb4d7938e8ce6b5961008e2395abf388811ced813bbfd7a27f052d",
  "kind": "abbrev",
  "lexical_name": "mathlibOnlyLinters",
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
  "slug": "mathlibonlylinters",
  "source": {
    "blob": "db940553cc393cbb4ec8965388bc95997d703e17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantd2c5cf59f818fe9b8944be866204ae99d8b6f7ea75ed48fd4e1300169eb1a1d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f882725cb3fd4221e6f288cb637296014a763798234cd63f568537c77479ed9d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LakefileEdition49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:635ec005aedb4d7938e8ce6b5961008e2395abf388811ced813bbfd7a27f052d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev mathlibOnlyLinters : Array LeanOption := #[
  ⟨`linter.allScriptsDocumented, true⟩,
  ⟨`linter.checkInitImports, true⟩,
  -- The `docPrime` linter is disabled: https://github.com/leanprover-community/mathlib4/issues/20560
  ⟨`linter.docPrime, false⟩,
  ⟨`linter.hashCommand, true⟩,
  ⟨`linter.oldObtain, true⟩,
  ⟨`linter.style.cases, true⟩,
  ⟨`linter.style.cdot, true⟩,
  ⟨`linter.style.docString, true⟩,
  ⟨`linter.style.dollarSyntax, true⟩,
  ⟨`linter.style.header, true⟩,
  ⟨`linter.style.lambdaSyntax, true⟩,
  ⟨`linter.style.longLine, true⟩,
  ⟨`linter.style.longFile, .ofNat 1500⟩,
  ⟨`linter.style.maxHeartbeats, true⟩,
  -- `latest_import.yml` uses this comment: if you edit it, make sure that the workflow still works
  ⟨`linter.style.missingEnd, true⟩,
  ⟨`linter.style.multiGoal, true⟩,
  ⟨`linter.style.openClassical, true⟩,
  ⟨`linter.style.refine, true⟩,
  ⟨`linter.style.setOption, true⟩,
]

/-- These options are passed as `leanOptions` to building mathlib, as well as the
`Archive` and `Counterexamples`. (`tests` omits the first two options.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LakefileEdition49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantd2c5cf59f818fe9b8944be866204ae99d8b6f7ea75ed48fd4e1300169eb1a1d9.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db940553cc393cbb4ec8965388bc95997d703e17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52943e81f56f5f29a8f0101636aa1e7dfa7fe4cc8615f226177bde832906d72c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantd2c5cf59f818fe9b8944be866204ae99d8b6f7ea75ed48fd4e1300169eb1a1d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
