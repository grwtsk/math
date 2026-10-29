# Verification target: Exact Critical Primitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e6d0870491355fb92cfa1f48382fb8561f073e1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant3739f452d078283fcc4e21a3d59a75d0a108463b831741f58bc159095e6242b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e6d0870491355fb92cfa1f48382fb8561f073e1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant3739f452d078283fcc4e21a3d59a75d0a108463b831741f58bc159095e6242b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant3739f452d078283fcc4e21a3d59a75d0a108463b831741f58bc159095e6242b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/primitive.md) | 13 | `declaration-track:665e8f065be5c21eb3292c1ee2993be27861e8e2ddecc8d025636e0920df59ca` |
| 2 | `def` | [halfPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/halfprefix.md) | 16 | `declaration-track:6dcb11d83612c1153fed35198607b754c62cda1cce7db085e70d0e0faf047641` |
| 3 | `theorem` | [twiceExp_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/twiceexp-hasderivat.md) | 19 | `result-track:f94382014bc0f66b612dd3c9a57125b75770b9eb121e659e76a3a917aa16b2ea` |
| 4 | `theorem` | [twiceExp_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/twiceexp-deriv.md) | 25 | `result-track:01565604ea5f173ba6a8c9b9194ecf741c32bcffab748138e3a26fd56ad73b7c` |
| 5 | `theorem` | [logSum_eq_halfPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/logsum-eq-halfprefix.md) | 29 | `result-track:6a34df472a5d2e3fbd5892808f937725aada51f9f71328857c5beed68230de47` |
| 6 | `theorem` | [prefix_weight_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/prefix-weight-integrable.md) | 44 | `result-track:49e051c8d2dd176a00ad5cfe31b172b87ebb2dfe8a3846f8540b9e5f89e1db48` |
| 7 | `theorem` | [prefix_weight_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/prefix-weight-integral.md) | 50 | `result-track:34a965ba5530193ea324994402b2b0d8731562d4913a0984b3d7430103b98fbf` |
| 8 | `theorem` | [background_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/background-integral.md) | 57 | `result-track:31324a3e930d218cd4101006cbef74e3f52ac3161d1337e799413481845fc13d` |
| 9 | `theorem` | [primitive_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/primitive-integrable.md) | 71 | `result-track:695d705b6e7d12594abaed80c2f0ea7acb2fe5082a2af33a28cec960f69cbbbc` |
| 10 | `theorem` | [primitive_eq_finite_arithmetic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/primitive-eq-finite-arithmetic.md) | 86 | `result-track:c18609518276835595b2c9db4e85d0428503e53a2363fa26436b4adc66286c1c` |
| 11 | `theorem` | [halfPrefix_below_first](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/halfprefix-below-first.md) | 103 | `result-track:3f30acc7ac4c55ebca9f7c9ab2d4b0ff84e2a5e6583b4fdf221b3ccfca1bd941` |
| 12 | `theorem` | [primitive_below_first](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactCriticalPrimitive.lean/declarations/primitive-below-first.md) | 116 | `result-track:0b2c1fb0ecf200a3d8754b8c37799da247979c38a642cbf43c44dbcf1f9514e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73f9493062b38f3fa47f3d5854072a6f5ca26a67642bb37161a69c285635ed15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant3739f452d078283fcc4e21a3d59a75d0a108463b831741f58bc159095e6242b8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant3739f452d078283fcc4e21a3d59a75d0a108463b831741f58bc159095e6242b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
