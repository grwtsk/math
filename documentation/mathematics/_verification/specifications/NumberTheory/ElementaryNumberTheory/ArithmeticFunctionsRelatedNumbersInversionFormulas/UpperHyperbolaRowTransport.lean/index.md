# Verification target: Upper Hyperbola Row Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d3021f74f32433d21f4bd0b5526556bb0580cc2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d3021f74f32433d21f4bd0b5526556bb0580cc2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upperHyperbola_eq_threshold_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/upperhyperbola-eq-threshold-sum.md) | 11 | `result-track:8cb8148d6d60987f29111e955360a6fcd20ec54753adc73cd0bb6605c6fd87d0` |
| 2 | `theorem` | [upper_threshold_mem_source_interval](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/upper-threshold-mem-source-interval.md) | 38 | `result-track:188bdb6efe2e16bcf7092ed50e3dd777b44132bd48f24ddb87fffd14f777d5fd` |
| 3 | `theorem` | [closed_tail_integrableOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/closed-tail-integrableon.md) | 58 | `result-track:04d13bea7b94fc44263f0e61e67ce734870cc5ba9bf00bb2b3b41905b06e60b7` |
| 4 | `theorem` | [integral_closed_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/integral-closed-tail.md) | 68 | `result-track:37465106d1d4ebf963f5f4dc8cf3494bd6d09dbbc9f0178a23eda074d2a4ff06` |
| 5 | `theorem` | [source_closed_tail_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/source-closed-tail-integral.md) | 86 | `result-track:bbfcaedd1a12f2802cb677312430613867585e37399bf26957e5a83cd8916d23` |
| 6 | `theorem` | [source_weighted_tail_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/source-weighted-tail-intervalintegrable.md) | 106 | `result-track:8743fb113d94943f978ec1bdc1df63ec36d544d5a39becc6e0ae62b54e929014` |
| 7 | `theorem` | [source_hyperbola_integral_eq_rows](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/source-hyperbola-integral-eq-rows.md) | 117 | `result-track:a121c7a8b9f7f73e674b41bc9f740be40aff172175c009e914f1959fcfc5d7d5` |
| 8 | `theorem` | [full_upper_row_split](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/full-upper-row-split.md) | 177 | `result-track:b9b24beacf76b212ac9d76cd804e26509407b850316fac8c10cb98a26f620fd0` |
| 9 | `theorem` | [source_hyperbola_integral_eq_split_rows](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperHyperbolaRowTransport.lean/declarations/source-hyperbola-integral-eq-split-rows.md) | 208 | `result-track:639e2d608d51486cc3281500a82bad88be2a65ddb9a2c52987daa27ad5a10408` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22f707c7d67cb24f8e38fa8870b7d3a2b943b9e96cfaf6b5f929f005c3d59819 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
