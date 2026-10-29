# Verification target: Torsion Complex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88a5295ea5459d0703861b2983e87cd695546ba1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88a5295ea5459d0703861b2983e87cd695546ba1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteTorsionComplex](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/declarations/finitetorsioncomplex.md) | 15 | `declaration-track:b30a37ea087bd0081432e8633dd72da36733113987981b3ec3aaef207bb467c9` |
| 2 | `def` | [torsionMass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/declarations/torsionmass.md) | 22 | `declaration-track:8e13e042794aee22e8414cf3d715ee992c9be7a4611b4ea55c27677ba45f75ff` |
| 3 | `def` | [eulerShadow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/declarations/eulershadow.md) | 26 | `declaration-track:f776163150535971295ca80fc8664e0ee075f9cba0887123e27eadb8c70e942d` |
| 4 | `theorem` | [torsionMass_nonnegative](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/declarations/torsionmass-nonnegative.md) | 31 | `result-track:d5f50728a9b0cba4076248dbb25ce5ed8aac74e0a82f1af3328af776f967045d` |
| 5 | `theorem` | [torsionMass_identity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/declarations/torsionmass-identity.md) | 36 | `result-track:fdf8efe182a8158ca267a3c059d0c680615c8fb40435e5788f67cff92dad0e4a` |
| 6 | `theorem` | [eulerShadow_identity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/declarations/eulershadow-identity.md) | 41 | `result-track:654f12df22a015c2801bb06345e7cb4aad4003d7dd30148bde65e0bf0583f2e9` |
| 7 | `theorem` | [mass_nonincreasing_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TorsionComplex.lean/declarations/mass-nonincreasing-comp.md) | 46 | `result-track:3d6e8454220a836ebdb18b8afc453cbfa45619d16adfba124aa78ca983ae1538` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c7bc44905c4b9557d72f79a4034bcf8f2d6b1848691ccf0cff46721b469dc54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/TorsionComplex/Variant1e5386b9a9a7bcc4bc63519a2a1d6ad9d62592b2be0c87bb00a3865d80819252.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
