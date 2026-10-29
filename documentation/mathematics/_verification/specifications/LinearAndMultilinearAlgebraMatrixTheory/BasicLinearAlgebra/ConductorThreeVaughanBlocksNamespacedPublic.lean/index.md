# Verification target: Conductor Three Vaughan Blocks Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9bc59ac0615526c66b491cf225a38e6e8f8d05a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variant6f505bbc87b0b4761615bcdc8fc3ce14b50d043051736ebffe4411130fa38fc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9bc59ac0615526c66b491cf225a38e6e8f8d05a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variant6f505bbc87b0b4761615bcdc8fc3ce14b50d043051736ebffe4411130fa38fc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variant6f505bbc87b0b4761615bcdc8fc3ce14b50d043051736ebffe4411130fa38fc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typeIIBlockCutoffMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/typeiiblockcutoffmatrix.md) | 40 | `declaration-track:06e03595956451ec4114d3d5586da46fa794795f906ac4135d2f5f67afee04ba` |
| 2 | `def` | [blockLeftCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/blockleftcoefficient.md) | 46 | `declaration-track:ff0b545353ada89de8fd4b5ba379afe4f175a9c5ef4fdcecf6d6a0ac8a04115a` |
| 3 | `def` | [blockRightCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/blockrightcoefficient.md) | 51 | `declaration-track:290545d0662a28de985765ae4062de965b742bb9bcc39e4306bed96ee4b9a1d9` |
| 4 | `def` | [conductorThreeTypeIIBlockSubtypePairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/conductorthreetypeiiblocksubtypepairing.md) | 56 | `declaration-track:134d167ccc386e04aa377489a3ca48617858f317683f615189e27a119da97044` |
| 5 | `def` | [maskedBlockLeftCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/maskedblockleftcoefficient.md) | 68 | `declaration-track:ba99d64aade1f94aab57626ee3e6e229ad88672f34fd013059b998739d682fa7` |
| 6 | `def` | [maskedBlockRightCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/maskedblockrightcoefficient.md) | 73 | `declaration-track:b1c0ba1b6272972e65a5c365e63d13e20a9bd6e87135dcf251dd8427c04daede` |
| 7 | `def` | [maskedTypeIIBlockPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/maskedtypeiiblockpairing.md) | 78 | `declaration-track:068a1ad80fe018af2588e3d08d3f26d50f4a453b7301b034142233b758be4624` |
| 8 | `def` | [conductorThreeTypeIIBlockPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/conductorthreetypeiiblockpairing.md) | 89 | `declaration-track:c8b4ead35bab72ec6ff4cd133157a692e71346903d3850e45933933625eea2a8` |
| 9 | `theorem` | [sum_masked_block_entries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/sum-masked-block-entries.md) | 95 | `result-track:d859580cc8120fa0d495bd5031b03ebf8cb80b779c24f3d3a4da3891465252db` |
| 10 | `theorem` | [sum_typeIIBlockPairing_eq_global](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/sum-typeiiblockpairing-eq-global.md) | 150 | `result-track:373765022dd8816382f6144e01d180f3138b4e06dee08dc942036862fa251419` |
| 11 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/instance.md) | 187 | `declaration-track:407497d3f42f108aa906832ece903301769a4fddb205f8de0308000fc804ebc9` |
| 12 | `def` | [prefixScaleIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/prefixscaleindex.md) | 191 | `declaration-track:40cba78d5d93cebd8869187b754604b70831cfbadb1e03b5b46f8c0e9abcb602` |
| 13 | `theorem` | [typeIIPrefix_eq_factorAtom_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/typeiiprefix-eq-factoratom-sum.md) | 197 | `result-track:89c9136222d69553358af4e7f98a0ab5c287fe96363f8890628af69eb1b6e13c` |
| 14 | `def` | [typeIIFactorTerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/typeiifactorterm.md) | 258 | `declaration-track:91fef97bdc2e7324e88f5f7c9ba4649e93171664ee658a05009ec37e1a490d5d` |
| 15 | `theorem` | [vaughanTypeIIFactorCoefficient_eq_neg_term](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/vaughantypeiifactorcoefficient-eq-neg-term.md) | 261 | `result-track:eb584b7f9b1e51fab265c0e0288a9476061b5698c3d5fd4881b695b96ba58fd4` |
| 16 | `instance` | [typeIIFactorDecidable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/typeiifactordecidable.md) | 271 | `declaration-track:f799759fea2d19a917f9d77d95a0cd869da5d57a9649ab559ce851310ebe4c6b` |
| 17 | `theorem` | [typeIIFactor_indicator_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/typeiifactor-indicator-eq.md) | 275 | `result-track:7bfc1558446205f754042a09caf68e8b46d750da5d0fc166290aa9ea223ec614` |
| 18 | `theorem` | [factorAtom_sum_eq_neg_global](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/factoratom-sum-eq-neg-global.md) | 304 | `result-track:2e13dd3e6f30c6ca77fd97a7dea660678992005945209586c9300eb0320b6222` |
| 19 | `theorem` | [conductorThreeTypeII_eq_sum_dyadicBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConductorThreeVaughanBlocksNamespacedPublic.lean/declarations/conductorthreetypeii-eq-sum-dyadicblocks.md) | 353 | `result-track:9e40f60b456ee4dfc15c94d93ea74e667d6bbfe7c028801aba8d57288b9a3a3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cc7d67191995e21ff3762a263a25d0503ecea673b5bb4dc315ad4cd5f5b4d97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variant6f505bbc87b0b4761615bcdc8fc3ce14b50d043051736ebffe4411130fa38fc6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variant6f505bbc87b0b4761615bcdc8fc3ce14b50d043051736ebffe4411130fa38fc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
