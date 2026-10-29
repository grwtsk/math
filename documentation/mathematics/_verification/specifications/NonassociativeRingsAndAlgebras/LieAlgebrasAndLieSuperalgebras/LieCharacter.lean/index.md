# Verification target: Lie Character

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e71880b1f10b6474bdeef537c23cc7ea92da7289",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCharacter.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCharacter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e71880b1f10b6474bdeef537c23cc7ea92da7289`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Solvable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieCharacter](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCharacter.lean/declarations/liecharacter.md) | 35 | `declaration-track:93fc7dfbdc70ed5c6bba10e7991eb7bce70772a596cbc5ec16a9c72e1f56f206` |
| 2 | `theorem` | [lieCharacter_apply_lie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCharacter.lean/declarations/liecharacter-apply-lie.md) | 40 | `result-track:4b8aa67ceae9835690bab886e139dda55df207e1598edc97e7f55283e28f3a19` |
| 3 | `theorem` | [lieCharacter_apply_lie'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCharacter.lean/declarations/liecharacter-apply-lie-source-edition-2.md) | 44 | `result-track:9a46a0369bc0a2e9f8062ce7bdb093fd5cac9be9cd5097a9021c59b5e43cfa9e` |
| 4 | `theorem` | [lieCharacter_apply_of_mem_derived](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCharacter.lean/declarations/liecharacter-apply-of-mem-derived.md) | 47 | `result-track:5786a7f13bacd2d0df252d5f4580678ad534018cbbc96cd3cd0bfdf946105a32` |
| 5 | `def` | [lieCharacterEquivLinearDual](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCharacter.lean/declarations/liecharacterequivlineardual.md) | 59 | `declaration-track:01a86a204d88cb36e61a9c28e4d38e1a2d7f6a25f90b6220c61326a7afa88bc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=471ed9ca2238707215b9433656bb18058c809a65891ace5980192fa2a8fbb922 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Character/Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
