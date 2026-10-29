# Verification target: Universal Enveloping Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "322e3711b5122d38624d4482fe9d00475475c09a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `322e3711b5122d38624d4482fe9d00475475c09a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/rel.md) | 62 | `declaration-track:d73c0ebdd024670be203a7f94da1ffa332fd76a0a09d3f22549fad9236700d1d` |
| 2 | `def` | [UniversalEnvelopingAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/universalenvelopingalgebra.md) | 69 | `declaration-track:6ec862d32a155a1645d0e5788ddd3b82dfb6121387e9d688bc677964ed6dd96c` |
| 3 | `instance` | [instInhabited](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/instinhabited.md) | 78 | `declaration-track:452782e97ca050fa03a52288896e7358b5fd3cf683a07097cb61e97558903ec4` |
| 4 | `instance` | [instRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/instring.md) | 82 | `declaration-track:87e596b29a2ce50c2ae601a5cf297d6a51a31be728977afa8a6575cae5bf4778` |
| 5 | `instance` | [instAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/instalgebra.md) | 86 | `declaration-track:f40f92221548f95fa8b0a862e6f2374c21762dfc6f98c170f345184ec6b33331` |
| 6 | `def` | [mkAlgHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/mkalghom.md) | 93 | `declaration-track:90692912f14ebbbfebaf3ec219f97250836f5ff7da0c67c1b77ff9e2505834eb` |
| 7 | `def` | [ι](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/anonymous.md) | 101 | `declaration-track:6f594a17b07ab481f6a7ff78b3cbb63e58f121528eff3ec6c4ddf98fbbc49fb5` |
| 8 | `def` | [lift](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/lift.md) | 113 | `declaration-track:7c86b846079e30c9faa1ee90223c4161a7e541e194c0d785cc0284e5292f00e9` |
| 9 | `theorem` | [lift_symm_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/lift-symm-apply.md) | 144 | `result-track:71c5153b537eec4fbf639f51a9b5c5131c01f842f7badba726afb39b231f8a8e` |
| 10 | `theorem` | [ι_comp_lift](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/comp-lift.md) | 150 | `result-track:60e368d5db5fb4500804b5284d07060f1ee85f256c78bd10567dddb699b98273` |
| 11 | `theorem` | [lift_ι_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/lift-apply-source-edition-2.md) | 155 | `result-track:7f90bd500abc54f1793e616dfead60810caa3dea8c71a590f62e01f3dae515fd` |
| 12 | `theorem` | [lift_ι_apply'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/lift-apply.md) | 160 | `result-track:5fe409bd7d17d59bc6a88f96a8ee54daf027adb7ed7bdc86d27545f309f79323` |
| 13 | `theorem` | [lift_unique](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/lift-unique.md) | 164 | `result-track:5dde021c0b5ef8952a6443d050410778c167df8c482228695a797a65549d65f7` |
| 14 | `theorem` | [hom_ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/UniversalEnvelopingNamespacedAligned.lean/declarations/hom-ext.md) | 171 | `result-track:8a38e481741b894c047acc4c82d1fed4d18e932e18c7c480b4913cb96c16ee58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09a58d4708e4f7396110200ceaf4b90c18b8252a0be8d644fe0e07a09416ddf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/UniversalEnveloping/Variant08f66f100c8bb7aeb374c33b11a1fb72a1bb70c46da5f2925ddde5944e84e741.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
