# Verification target: Measurable Space Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2948bed8b8f87b0ca11c6e861f40e36c8410f7f9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2948bed8b8f87b0ca11c6e861f40e36c8410f7f9`.

Source path: `GRWTSK/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generateFrom_prod_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/generatefrom-prod-eq.md) | 25 | `result-track:e937c574f4a5be138b7392c3124251db85f2da2a4be76d0ddcd34eb799c651a9` |
| 2 | `theorem` | [generateFrom_eq_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/generatefrom-eq-prod.md) | 54 | `result-track:cfd40825985cdcc161aaa8c954d581c7830dc2036688cb19f2276a45bfb4ff6d` |
| 3 | `lemma` | [generateFrom_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/generatefrom-prod.md) | 61 | `result-track:06ef66fa19094cde0090279752415dfa7b8782bb5975e8254282ae1f267e8e64` |
| 4 | `lemma` | [isPiSystem_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/ispisystem-prod.md) | 68 | `result-track:567d48d6d5d432b8c55f6d4334c0140c01fc6470e20fa222941a7a5f7be28f8e` |
| 5 | `lemma` | [MeasurableEmbedding.prodMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/measurableembedding-prodmap.md) | 72 | `result-track:a401c56bcb7862faea6bf37c575164dae321a1c951fe7faf157c47f3c06ebd00` |
| 6 | `lemma` | [MeasurableEmbedding.prodMk_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/measurableembedding-prodmk-left.md) | 96 | `result-track:0813882f4c475ece6c18d64cfa466324c11dd5fae70e9b58fc883c611ca64ec4` |
| 7 | `lemma` | [measurableEmbedding_prodMk_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/measurableembedding-prodmk-left-source-edition-2.md) | 114 | `result-track:6dd85633e0722e20427e8ff49f7be734d11aa17288d37b850e262b1250a2134e` |
| 8 | `lemma` | [MeasurableEmbedding.prodMk_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/measurableembedding-prodmk-right.md) | 121 | `result-track:c785c2b1a95d489b005b237533cbcc4aad114d6a08a3a975fb78580f77d8cbf9` |
| 9 | `lemma` | [measurableEmbedding_prod_mk_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceProd.lean/declarations/measurableembedding-prod-mk-right.md) | 130 | `result-track:57edc35ed45100b6e5271ca2c59b2529ae9431632c67de24ef0704367d97a1f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24f5585b895c4759011ea475f0fe9981642eb82c01ce7f103ecbf37c3232f808 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
