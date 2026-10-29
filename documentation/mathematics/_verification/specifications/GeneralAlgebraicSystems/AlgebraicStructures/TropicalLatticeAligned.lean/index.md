# Verification target: Tropical Lattice Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a299a44d332fabeec929e28c44acdbabdd6b719",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a299a44d332fabeec929e28c44acdbabdd6b719`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Tropical.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSupTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instsuptropical.md) | 34 | `declaration-track:717d924dc47f9a0b8fe429344f6432b2f0076e71bdbadbda4b45f57be2cf1c12` |
| 2 | `instance` | [instInfTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instinftropical.md) | 37 | `declaration-track:6028f443c9f4658a1fd2a5366b44bac9204354304b9ae908a3470c3690c42c31` |
| 3 | `instance` | [instSemilatticeInfTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instsemilatticeinftropical.md) | 40 | `declaration-track:8bdc749a8205db051935277776cf232467cc1745bec6377a4f0b11f844efafc5` |
| 4 | `instance` | [instSemilatticeSupTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instsemilatticesuptropical.md) | 47 | `declaration-track:93c2703badc25c37f110bd27dc2d34d465b6b95eac5e115fd59837343043d341` |
| 5 | `instance` | [instLatticeTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instlatticetropical.md) | 54 | `declaration-track:586ef48b22c8f317537196526de2a1e8354c0f55b86c73c0963eb285b6e8942d` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instance.md) | 57 | `declaration-track:1820f7d797e0df075594514f78debedcc1db17afe7ebe8d015983bc54e562b7b` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instance-source-edition-3.md) | 59 | `declaration-track:7ac6c6d4fe79a440dbe2b22a3ab1818398f35bad92d167c484da7b34d616bb70` |
| 8 | `instance` | [instConditionallyCompleteLatticeTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instconditionallycompletelatticetropical.md) | 61 | `declaration-track:639eed108c28d02bae8944b0a578b2398c496443e023529412050e91b51c98bf` |
| 9 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeAligned.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:2805c68a9edc529dcc067bb33fd7c508f98002ba5836036f68bedbabc32ed92f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9650527ffacd8b8093ee6c79880125633838d0ca9072ddc9413bc3a1f8f5f52a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
