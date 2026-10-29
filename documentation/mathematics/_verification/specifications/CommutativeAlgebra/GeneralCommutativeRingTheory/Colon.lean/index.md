# Verification target: Colon

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04c4a6fd09e82d0e2767b5c8236c3c88c678d369",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04c4a6fd09e82d0e2767b5c8236c3c88c678d369`.

Source path: `GRWTSK/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.Pointwise.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colon](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/colon.md) | 30 | `declaration-track:199e452cd8beddb322eec6788cc0d270b1945d300ad233dbfb3eb432a01720a5` |
| 2 | `theorem` | [mem_colon](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/mem-colon.md) | 40 | `result-track:e3fd3a86f63ad7ca582c00ffafc23e5bf725b9dd37664e0752a8b661de4f7437` |
| 3 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/instance.md) | 42 | `declaration-track:3c8591c11ff1a28f5ad2174ff6925c86b4d698124acbeecde6daed94df48a711` |
| 4 | `theorem` | [colon_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/colon-top.md) | 48 | `result-track:1825503a6938a89c68fcd105c0244c9c1fa1d558fac6f1df44b9d049484d5d5a` |
| 5 | `theorem` | [colon_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/colon-bot.md) | 53 | `result-track:a9ea279b8843608357b151563fe81f03b0ba91d54c4301c10422490f667b6e9a` |
| 6 | `theorem` | [colon_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/colon-mono.md) | 56 | `result-track:37c1b7c728126b0f59ec5579fb9b9a7055e4b0078c32e657177d5d848f66dca5` |
| 7 | `theorem` | [mem_colon'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/mem-colon-source-edition-2.md) | 68 | `result-track:ec59a0bf904ed0751d28740522ee2651075eb8a3a6ba871f7cca5a3445080a8a` |
| 8 | `theorem` | [iInf_colon_iSup](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/iinf-colon-isup.md) | 71 | `result-track:79a20795f5dfda7de2ebdc3593e35451be89c74d9c352fa01c90b6dbb2189913` |
| 9 | `theorem` | [mem_colon_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/mem-colon-singleton.md) | 85 | `result-track:e8cef8b2bf4ba5b940117836aef9c27ad51b92f8867521f01ea69a2c2e4484f1` |
| 10 | `theorem` | [_root_.Ideal.mem_colon_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/root-ideal-mem-colon-singleton.md) | 93 | `result-track:b7d2bb5cc5945c5aaef9cf38948c004fab5b8be1dda4fa7131b60c1b5c6dd285` |
| 11 | `lemma` | [annihilator_map_mkQ_eq_colon](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/annihilator-map-mkq-eq-colon.md) | 105 | `result-track:b6a4d5d65a5dbeae0eca9987f191cdac77d155afd66bc1a664c78200effe47a7` |
| 12 | `theorem` | [annihilator_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/annihilator-quotient.md) | 111 | `result-track:d19d7fcb951e2f6529dcef2cca574faa65842e73fa3c28b555d909b95ff2b204` |
| 13 | `theorem` | [_root_.Ideal.annihilator_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Colon.lean/declarations/root-ideal-annihilator-quotient.md) | 117 | `result-track:ff3c7ee9c03195df723bc6beacbc2ed2af9244d704b59279c00ed64826fadf95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d8e214a196c25e058b562c7de1d26fcdbd27e3ace4b83d36201f55576ee9250 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean","GRWTSK/_verification/specifications/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
