# Verification target: Group With Zero Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97fcd9eafb9a0ce36a482127558efd2a2c250681",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97fcd9eafb9a0ce36a482127558efd2a2c250681`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/declarations/instmulzeroclass.md) | 27 | `declaration-track:5963129521565ca1804a53e1017f5e18646dcc7b4553422a12db100122ab1c37` |
| 2 | `instance` | [instSemigroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/declarations/instsemigroupwithzero.md) | 31 | `declaration-track:c3e4b4144e46482fddbf0afc032e399d18650ae755fad54afa456d82390e173e` |
| 3 | `instance` | [instMulZeroOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/declarations/instmulzerooneclass.md) | 36 | `declaration-track:079dc5f542e04ae012d1e6db53b25c7819ff5dec1aedfe81013b0b13c08ce4d3` |
| 4 | `instance` | [instMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/declarations/instmonoidwithzero.md) | 41 | `declaration-track:0e9a34ab744d91e1c6972d7847f00b713c07f0bb219fe10fec6358ad0e740476` |
| 5 | `instance` | [instCommMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/declarations/instcommmonoidwithzero.md) | 45 | `declaration-track:392739d1229c3df45a08943960a30104c7103a5c1ddcbbcce5b7d903b3b51c6e` |
| 6 | `def` | [mulMonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/declarations/mulmonoidwithzerohom.md) | 58 | `declaration-track:645a420142f6cae3a6a269f941522cc4354baffc6d0334c924e692b063ae5152` |
| 7 | `def` | [divMonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroProd.lean/declarations/divmonoidwithzerohom.md) | 64 | `declaration-track:f333412e81f1c4da11a6bf3b00a2697f587751027caa9890b68d0ca11fae0861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd860455509e8783c712517059628ad1d50ead5767090947fcae8a06fc9a25ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
