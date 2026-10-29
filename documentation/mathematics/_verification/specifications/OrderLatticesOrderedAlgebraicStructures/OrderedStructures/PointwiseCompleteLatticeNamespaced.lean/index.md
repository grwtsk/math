# Verification target: Pointwise Complete Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "317225f9d051d636df3b7786f7c1bab128d3e970",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc66344dda8cf96ec0c1a87b0614f1040e0041a27c2fb22e88f0634cc2450abbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `317225f9d051d636df3b7786f7c1bab128d3e970`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc66344dda8cf96ec0c1a87b0614f1040e0041a27c2fb22e88f0634cc2450abbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc66344dda8cf96ec0c1a87b0614f1040e0041a27c2fb22e88f0634cc2450abbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [csSup_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/cssup-one.md) | 39 | `result-track:b41fc7d412aa3fd756aa85753a7c05045c5b30e5e95a8791b1986c28187e19cf` |
| 2 | `lemma` | [csInf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/csinf-one.md) | 40 | `result-track:8b6dfb5c789d555694a797e1bacb26cad379308e328d9e632888ac35fe3fe8b8` |
| 3 | `lemma` | [csSup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/cssup-inv.md) | 49 | `result-track:6dc720cf26cf1979a2c5984e011656b08dd58373c285cd2c9700cc0535563755` |
| 4 | `lemma` | [csInf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/csinf-inv.md) | 54 | `result-track:cac9a20ff854eed6c73ac6ae0a2e63583c74feb36e3500c1abce73b6d2fb6616` |
| 5 | `lemma` | [csSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/cssup-mul.md) | 59 | `result-track:1f9b346555ef4fcb258277c381185e8d70b57f5c382d04df1251fda67fa786e6` |
| 6 | `lemma` | [csInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/csinf-mul.md) | 65 | `result-track:dcef89f0492fda2231574cb758f55cf34dc6eca8213cf9c33776b860ed447cea` |
| 7 | `lemma` | [csSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/cssup-div.md) | 71 | `result-track:a79657a344992ae03864cffae6e6e315feefe857608b1b67aecfa2a92388303f` |
| 8 | `lemma` | [csInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/csinf-div.md) | 76 | `result-track:e7a5770d6b4a3eb6f40f7d45a131598ab827070502b48798375672ced26e9759` |
| 9 | `lemma` | [sSup_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/ssup-one.md) | 89 | `result-track:0cf6526dfec8c85b00932ae2d9ebd83e7b86de7569857359227fa455ac911db5` |
| 10 | `lemma` | [sInf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/sinf-one.md) | 90 | `result-track:4b1bf5797019079207e644890a07cb73b1b4f09ff909ff4061f6cb11eb3cc0b6` |
| 11 | `lemma` | [sSup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/ssup-inv.md) | 99 | `result-track:01fd36ee3715af08295e5ed44ba87239da13943e4408d9a1c74664f1109fe4fc` |
| 12 | `lemma` | [sInf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/sinf-inv.md) | 104 | `result-track:a79ccb47b77ecfcc46dafc8500c979fa60abe2a12d85442933279c1364be43df` |
| 13 | `lemma` | [sSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/ssup-mul.md) | 109 | `result-track:579d689328c4a08e67f4e7b6ba0c431c00759830aa1526d18abdd789286e3d5b` |
| 14 | `lemma` | [sInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/sinf-mul.md) | 114 | `result-track:a7d572083a748caf18529ad3add0d7858877fb13476e4276c632d38d53a80d8f` |
| 15 | `lemma` | [sSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/ssup-div.md) | 119 | `result-track:40b9e1d3b48c330c282c976bf83bdd40a98a035da5568ce6ab9d99686c8bf468` |
| 16 | `lemma` | [sInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticeNamespaced.lean/declarations/sinf-div.md) | 122 | `result-track:6b5a044709820e6b5cf5378a08cb0b92433057516b16eb548be7e49a030c9908` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5a70155dfeca1d4d651bd7a6bcb5888e0f5761474203777b1748b79040ad6e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc66344dda8cf96ec0c1a87b0614f1040e0041a27c2fb22e88f0634cc2450abbd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantc66344dda8cf96ec0c1a87b0614f1040e0041a27c2fb22e88f0634cc2450abbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
