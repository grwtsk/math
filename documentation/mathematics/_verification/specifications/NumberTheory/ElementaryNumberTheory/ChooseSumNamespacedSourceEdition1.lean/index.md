# Verification target: Choose Sum Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f06529f8a0051e53853de45710fedfb327e12238",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f06529f8a0051e53853de45710fedfb327e12238`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_pow](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/add-pow.md) | 38 | `result-track:0345b0f23e1e5d286795f4f5c14d2237b55fdff3edd8cc45a15b53278544d321` |
| 2 | `theorem` | [add_pow'](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/add-pow-source-edition-2.md) | 72 | `result-track:17d083a0d993f813e0719bfce5840572bbe0725ead4b9b779280e0f1dee38f22` |
| 3 | `theorem` | [add_pow](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/add-pow-source-edition-3.md) | 80 | `result-track:5255a5ed0d95ce61213f16ca5274d86c8981aa62e133ebece44175bb4a9ca307` |
| 4 | `theorem` | [sub_pow](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sub-pow.md) | 85 | `result-track:74df78059d1c3062f4ff393b3ebe2d9f188d3681fa7372156836f1d636275f52` |
| 5 | `theorem` | [sum_range_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-range-choose.md) | 98 | `result-track:541aecde6332a056511c4abfd0613f3a47161b5c12bd331fe6b37d0f369b2cbd` |
| 6 | `theorem` | [sum_range_choose_halfway](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-range-choose-halfway.md) | 102 | `result-track:0f06fbb229b4341392b678635677ed73f99a805d5923f3d99bf64670c0334434` |
| 7 | `theorem` | [choose_middle_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/choose-middle-le-pow.md) | 120 | `result-track:635d5b56f58990af0380c76b3ab5f34972542daebe8e90d6b39075d8ed3ec9b4` |
| 8 | `theorem` | [four_pow_le_two_mul_add_one_mul_central_binom](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/four-pow-le-two-mul-add-one-mul-central-binom.md) | 125 | `result-track:8021445959c29f814c52a0d6416d1b4d5736c37a686ce6a6dc8d15032f3c8e82` |
| 9 | `theorem` | [sum_Icc_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-icc-choose.md) | 134 | `result-track:c3c4c30192da587483a554a7b851bf97a6b5c7c8745911551788d18a735a987a` |
| 10 | `lemma` | [sum_range_add_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-range-add-choose.md) | 151 | `result-track:29ef364b1e1ce7496a047a3bfdecd53732b9d01929b91f75c7f1188b804f8d1e` |
| 11 | `theorem` | [Int.alternating_sum_range_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/int-alternating-sum-range-choose.md) | 159 | `result-track:9a71e1ad66743aca23afc7aeffbce67efa229fb458f5def730ff1546da7dfb19` |
| 12 | `theorem` | [Int.alternating_sum_range_choose_of_ne](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/int-alternating-sum-range-choose-of-ne.md) | 168 | `result-track:60f0d075f7a26ce9e9ae6feb36af843baa83a2b3926910c0fff420e47e759366` |
| 13 | `theorem` | [sum_powerset_apply_card](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-powerset-apply-card.md) | 174 | `result-track:4f880b794a8fb0306318562d2d263fd58c51e4a60955c4eac6bc89c15cbbf91f` |
| 14 | `theorem` | [sum_powerset_neg_one_pow_card](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-powerset-neg-one-pow-card.md) | 187 | `result-track:12a406fface7f4b7874a6224bdacbdab4d945bf1ee8659c41fb93ecc7f3041ba` |
| 15 | `theorem` | [sum_powerset_neg_one_pow_card_of_nonempty](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-powerset-neg-one-pow-card-of-nonempty.md) | 192 | `result-track:ce12c20e66829c42502c7045460a1a09d138b2c26efcf74763d22c5fe5bb8b78` |
| 16 | `theorem` | [prod_pow_choose_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/prod-pow-choose-succ.md) | 201 | `result-track:f18521e2b9239a9a029e14caf85578b95e341328c6daa64555c41c937cb0d4d6` |
| 17 | `theorem` | [prod_antidiagonal_pow_choose_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/prod-antidiagonal-pow-choose-succ.md) | 212 | `result-track:928c1f2d47806c87a75dcf394a9e8eaa1c09c1f7bbd8870b71a6bd47dac81dcf` |
| 18 | `theorem` | [sum_choose_succ_mul](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-choose-succ-mul.md) | 226 | `result-track:8f9b61c3abd968e7987039106b292c8fef6fe0c66ffef2bb58db66c551c81c55` |
| 19 | `theorem` | [sum_antidiagonal_choose_succ_mul](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-antidiagonal-choose-succ-mul.md) | 234 | `result-track:87e27d74567370a97f71fe285a53ad751784e7e08cbe17a5a7bc84586b00c742` |
| 20 | `theorem` | [sum_antidiagonal_choose_add](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumNamespacedSourceEdition1.lean/declarations/sum-antidiagonal-choose-add.md) | 240 | `result-track:b65e840e0fb28d8c6d96ce1f993ec9a1c984ea47d0f405e323a24c6b576dcf19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9f29f933012cac3a0ed0745ca399d6f44105730b6c53d803466e175d483f666 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
