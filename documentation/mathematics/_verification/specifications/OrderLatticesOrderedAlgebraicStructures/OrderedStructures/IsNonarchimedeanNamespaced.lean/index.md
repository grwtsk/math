# Verification target: Is Nonarchimedean Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae3af9de5366c308ac511910fd8b3546801cbf27",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae3af9de5366c308ac511910fd8b3546801cbf27`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/add-le.md) | 32 | `result-track:3f08600b3256dff04465861577afb6390fc3fdfdd83544b208849191f6235baa` |
| 2 | `theorem` | [nsmul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/nsmul-le.md) | 40 | `result-track:64cc37229e3101ebeb6ceff768f9a0dd2d824e792b66ebf497399475c2b3bc28` |
| 3 | `theorem` | [nmul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/nmul-le.md) | 52 | `result-track:291cc8b7b59fc7cd75e7af62219df72677c572c9130fcefb11488e7a31900be6` |
| 4 | `lemma` | [apply_natCast_le_one_of_isNonarchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/apply-natcast-le-one-of-isnonarchimedean.md) | 58 | `result-track:081afcd1c2b11b9597db3b38055b32b3ddbb207357e982e1fa472094e11b6808` |
| 5 | `theorem` | [apply_intCast_le_one_of_isNonarchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/apply-intcast-le-one-of-isnonarchimedean.md) | 66 | `result-track:1329a21401ea2ba13309f19767cb7eb01ffea18e86c8d876f3699d5c0f7ec9f4` |
| 6 | `lemma` | [add_eq_right_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/add-eq-right-of-lt.md) | 73 | `result-track:fcfc6350ccb2e42bef2d53bc77319b733dd9bec0fdb98ef3cd78fc59a0e80a79` |
| 7 | `lemma` | [add_eq_left_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/add-eq-left-of-lt.md) | 87 | `result-track:918b709ba9358e45ebd8f6bae64290a89679a25fd8fdc58ce89fd743981a1b0b` |
| 8 | `theorem` | [add_eq_max_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/add-eq-max-of-ne.md) | 103 | `result-track:59a9ab48f3fbfd4b42afb57e0ec2bad8fd61a2c776abe81bd9b3737e512db885` |
| 9 | `theorem` | [multiset_image_add_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/multiset-image-add-of-nonempty.md) | 116 | `result-track:14d611f01ed4a351846f5a088d10370652320c25ebc64b17444eba2078384ea0` |
| 10 | `theorem` | [finset_image_add_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/finset-image-add-of-nonempty.md) | 133 | `result-track:86c6985b9ca24c8637553ccb04c38491d4bf4b88b1ea8344007954c0401733e7` |
| 11 | `theorem` | [multiset_image_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/multiset-image-add.md) | 142 | `result-track:05546a2ed367458bf97be09c49301d1466068bbc8cd3bddffad8ceabc451a569` |
| 12 | `theorem` | [finset_image_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/finset-image-add.md) | 155 | `result-track:88d38d5d3f73f0d09d8ca86185e687e456ec6f46c747b8bf3abcbe739abf2996` |
| 13 | `theorem` | [multiset_powerset_image_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/multiset-powerset-image-add.md) | 164 | `result-track:e91e5ec364a1d263b056a7848d6d48f4f282f83ff6cfccefeb67c061b22b37d4` |
| 14 | `theorem` | [finset_powerset_image_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/finset-powerset-image-add.md) | 178 | `result-track:00207202ef5e040e8050d6f4928436c514991b98258c96f77e0fd1fd2aecee8c` |
| 15 | `lemma` | [apply_sum_le_sup_of_isNonarchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/apply-sum-le-sup-of-isnonarchimedean.md) | 192 | `result-track:e116713a76eab56c6c4a01a74cbc5e4248fbbd9b506504acd5d316f4b2a665d2` |
| 16 | `theorem` | [add_pow_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IsNonarchimedeanNamespaced.lean/declarations/add-pow-le.md) | 207 | `result-track:147e8277aa1f7ce08b930f6401b207437031c1e2d695e8ac7cf8334db1ecf896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a8f1a8446cbc8170e18c98ea49e474dff6c7bb3ada4809eee0d190aee8a0b93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variante25e23b87f484b5680280c9dcf8b02522adb3a09dcba161342b08eb8732c1e70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
