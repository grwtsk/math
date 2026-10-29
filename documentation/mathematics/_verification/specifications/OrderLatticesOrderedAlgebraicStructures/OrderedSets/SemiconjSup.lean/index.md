# Verification target: Semiconj Sup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6012692bbb08f2040aca48ada8ee0f3ac820e823",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant89f79dd7f40ed9ecca0724f74bd578a139bfe5e0c480c8096b73e1054e2a123f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6012692bbb08f2040aca48ada8ee0f3ac820e823`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant89f79dd7f40ed9ecca0724f74bd578a139bfe5e0c480c8096b73e1054e2a123f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant89f79dd7f40ed9ecca0724f74bd578a139bfe5e0c480c8096b73e1054e2a123f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Conjugate` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrdContinuous` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrderRightAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/isorderrightadjoint.md) | 43 | `declaration-track:fd2d32e2d386d9ab3869fb22663b43589916c5f674b7fe29a8df458d3e336b0e` |
| 2 | `theorem` | [isOrderRightAdjoint_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/isorderrightadjoint-ssup.md) | 46 | `result-track:ab7ee7e4a6394b56e0c3eb94c58a9e10168de4fbb39aa4a7e0caabfe2e47247e` |
| 3 | `theorem` | [isOrderRightAdjoint_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/isorderrightadjoint-cssup.md) | 49 | `result-track:719e11a7197dbb7c95899f5051ecb3a5adb0b87a0b94249563384b4fc2860f12` |
| 4 | `theorem` | [unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/unique.md) | 55 | `result-track:6ff7b6b11dc687a95eefd785cd2fa283013706d422e1e010fece4bbfd169b35b` |
| 5 | `theorem` | [right_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/right-mono.md) | 59 | `result-track:6c55452c0f9e201de1c4d6f4df4eb68b667dbfbcb51ddb764474942b0cb1d191` |
| 6 | `theorem` | [orderIso_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/orderiso-comp.md) | 62 | `result-track:fbe7f111821f2043b85dd6033f9d22e6ade975998e5572f1848cadfe982f390e` |
| 7 | `theorem` | [comp_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/comp-orderiso.md) | 66 | `result-track:c8f94a9766b16e3fe63490e64ab9d14d5acf293ba1d7799c791e53752b88a3bd` |
| 8 | `theorem` | [Semiconj.symm_adjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/semiconj-symm-adjoint.md) | 83 | `result-track:0c572b8e3c00c6510ab3734adec64518c8f3638b8d0c710699af79c27ec7ec6e` |
| 9 | `theorem` | [semiconj_of_isLUB](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/semiconj-of-islub.md) | 92 | `result-track:431a21ff3c22356c3e19f7da20f612072ea009ccfba0d4b7275daa8e6371a4c3` |
| 10 | `theorem` | [sSup_div_semiconj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/ssup-div-semiconj.md) | 105 | `result-track:8d820a2776b86d67d7a88aba4b515375b0901e4858ffb981a47df2386f2762c4` |
| 11 | `theorem` | [csSup_div_semiconj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSup.lean/declarations/cssup-div-semiconj.md) | 115 | `result-track:8ec204cd395893c15f11d478bd5d066660da817e8cb719dca4036e8210983aa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f7d79b77d456eb36bc8cf4fbc6d761b5f29d3567ef12bf4fcfcc64cedf3c7dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant89f79dd7f40ed9ecca0724f74bd578a139bfe5e0c480c8096b73e1054e2a123f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant89f79dd7f40ed9ecca0724f74bd578a139bfe5e0c480c8096b73e1054e2a123f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
