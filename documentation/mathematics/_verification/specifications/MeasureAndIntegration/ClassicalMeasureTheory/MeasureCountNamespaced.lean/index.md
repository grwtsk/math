# Verification target: Measure Count Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73f5b8ca0197a831d07cf614a68551e136deded1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Count/Variantcc0ab70e394304b08a8f40fcd80b8212d25bed9419ee0c76b8dbf9ccce7e80f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73f5b8ca0197a831d07cf614a68551e136deded1`.

Source path: `GRWTSK/Analysis/MeasureTheory/Count/Variantcc0ab70e394304b08a8f40fcd80b8212d25bed9419ee0c76b8dbf9ccce7e80f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Count/Variantcc0ab70e394304b08a8f40fcd80b8212d25bed9419ee0c76b8dbf9ccce7e80f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Dirac` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.ENNReal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count.md) | 35 | `declaration-track:19d674568e11bb350a5c6d573d5faabd6fca29c7e03a003c9407ee6546df97ce` |
| 2 | `lemma` | [count_ne_zero''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-ne-zero.md) | 38 | `result-track:8887540766c5e3983f2b07d1a8543c59e5891ab9c0353523612f83a9c7d50d8b` |
| 3 | `theorem` | [le_count_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/le-count-apply.md) | 40 | `result-track:f03bf1830dd7a7a5a34f7194f0fc670f3358b0dbbeafa724b9267055d78f538a` |
| 4 | `theorem` | [count_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply.md) | 46 | `result-track:5b41f376304d2482fa1de6651a02362d9bcdafa7dcb53c555ec9a85f14d665a0` |
| 5 | `theorem` | [count_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-empty.md) | 50 | `result-track:1904dad93bafd75749477120b99cddd6ead466562f3b9497efdf8fb811b8861a` |
| 6 | `theorem` | [count_apply_finset'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-finset.md) | 53 | `result-track:4e8a0adc6345b5b5e2ac279ad13eb4884a6d667e862bbc784727c921316df2ad` |
| 7 | `theorem` | [count_apply_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-finset-source-edition-2.md) | 57 | `result-track:cc21666105e356e060bc7afa1b4a18fe98caa3dd8cb04ed4c45b223d86108d66` |
| 8 | `theorem` | [count_apply_finite'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-finite.md) | 61 | `result-track:6a56b886b1680e7b4501510c359cc7798468ab6e1b3d0b6a95d5f1f76f89a87a` |
| 9 | `theorem` | [count_apply_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-finite-source-edition-2.md) | 66 | `result-track:91e969c584ebaf15ff471958bc252b4cffb0ff7f1f32333554f574d34b7ed2f9` |
| 10 | `theorem` | [count_apply_infinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-infinite.md) | 70 | `result-track:9017fea3a3fa3c78d12a79ecdeec46c700ae34e16cebf956aa7c8722f6b29d66` |
| 11 | `theorem` | [count_apply_eq_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-eq-top-source-edition-2.md) | 80 | `result-track:82b5cb69087fef2291a7012c90002e437b0719bc59572fafa9642ebb69b9d833` |
| 12 | `theorem` | [count_apply_eq_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-eq-top.md) | 87 | `result-track:6b8b1d51c2592e910db59b4384fbb0a5b3f4382a0f7dff272dcbe85dc3bbd95c` |
| 13 | `theorem` | [count_apply_lt_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-lt-top.md) | 94 | `result-track:1db871e0dacc04d0c24f2c5ab063047c0ce46ea8cff18c1515e0268e4d3c7a46` |
| 14 | `theorem` | [count_apply_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-apply-lt-top-source-edition-2.md) | 101 | `result-track:7cb3c8d8ce00b65faaee7d16212aac96a26c209b1fb3d15c8a98a34a92ccb9cb` |
| 15 | `theorem` | [count_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-eq-zero-iff.md) | 108 | `result-track:e4ec3449b72af17e0c4f4d50e946d810f37439c17814d69ffd01a50ffbe15012` |
| 16 | `lemma` | [count_ne_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-ne-zero-iff.md) | 113 | `result-track:8c49bc45eda842e78bdbf345ea0a7359f4d0290999d703fa2a615bcacd5128ab` |
| 17 | `lemma` | [ae_count_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/ae-count-iff.md) | 124 | `result-track:4a9efbe053b64be9dd1e20ff08c55fcfd986367941d301b0b817defc041baeb5` |
| 18 | `theorem` | [count_singleton'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-singleton-source-edition-2.md) | 131 | `result-track:e22aed107c14cad8782e560534978689af168f1c769d42b190ba775990cf5b81` |
| 19 | `theorem` | [count_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-singleton.md) | 136 | `result-track:38a27991b94f537a7d63e0fb679e8242a86eb3c62355d0d134b22c3ef96753a6` |
| 20 | `theorem` | [Measure Count Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-real-singleton.md) | 140 | `result-track:4ed02eb1656d4f106d9aea4307be4b543544b3671cec6df60112cc5c8a5b5988` |
| 21 | `theorem` | [Measure Count Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-real-singleton-source-line-145-occurrence-2.md) | 145 | `result-track:9f052e5af1494d0e6bf059ba609c28ad4f60b6d56f4ab3bc5c58a02349fe6cc7` |
| 22 | `theorem` | [count_injective_image'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-injective-image-source-edition-2.md) | 149 | `result-track:e3a4f73355994d42e53aaecc753d70f15532ce52b96682e9c44bf5eb0f0cf18f` |
| 23 | `theorem` | [count_injective_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-injective-image.md) | 161 | `result-track:db2a21d78130c0d4db4d93007232d299ec21b00d617dbbe731f7e6680b0972dd` |
| 24 | `instance` | [count.instSigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-instsigmafinite.md) | 169 | `declaration-track:bb289a66e6caa23d3d021d8ed0dc7f657b0508171f3e82291e227903fbaeb2f5` |
| 25 | `instance` | [count.isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-isfinitemeasure.md) | 172 | `declaration-track:a31ffd1f79748ef7c3994aa68455632cb2ee0b46bd630848326e198b4b4c310a` |
| 26 | `lemma` | [count_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureCountNamespaced.lean/declarations/count-univ.md) | 177 | `result-track:2cc947fbc16e5d8ccc95d4bb986e5888cc9da5a5ad6ea530a77fc96ddb9321e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a5672f62107e37bf4b0307611e128de4a70eb3e0f65f5e9cf08a79d50d0deae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Count/Variantcc0ab70e394304b08a8f40fcd80b8212d25bed9419ee0c76b8dbf9ccce7e80f9.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Count/Variantcc0ab70e394304b08a8f40fcd80b8212d25bed9419ee0c76b8dbf9ccce7e80f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
