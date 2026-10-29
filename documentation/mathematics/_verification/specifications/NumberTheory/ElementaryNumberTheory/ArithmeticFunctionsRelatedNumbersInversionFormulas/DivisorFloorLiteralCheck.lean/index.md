# Verification target: Divisor Floor Literal Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fc5ff1b8f88ab9a6339dd945e26d62bc8bcd434",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fc5ff1b8f88ab9a6339dd945e26d62bc8bcd434`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/dampeddivisorcoefficient.md) | 7 | `declaration-track:c8d8b1da80e69c74c9728f0d0529948cabeda72cab63b0662c1892102464dc65` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/floor-sum-divisors.md) | 24 | `result-track:2ec1bf9e79973736b31fe72472bae164dd3d31e4f4070ffebaf3ff1a8788e9f5` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/divisor-prefix-eq-floor.md) | 54 | `result-track:9e314d32231ef231dcc8146b43316bc5b1a4d00ca73241579b21396aee8b7a82` |
| 4 | `theorem` | [residual_floor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/residual-floor.md) | 60 | `result-track:0ac3c00cdce3d0eb1a247c78ad269ea08d56bf4bbdfb139e8a3c5bfdc0534315` |
| 5 | `theorem` | [damped_floor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/damped-floor.md) | 75 | `result-track:1c7aa4489e3b18877c85b8eedb78c8939c2973338835f1a3ed7e3e6c54795637` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed.md) | 87 | `result-track:e4596adb3b6c016b0aff1c18312592c47b2e9fbb75953b22ecd6995534fe7682` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/arithmeticresidual-eq-divisor-prefix.md) | 100 | `result-track:dbef41016fdfee76c57a01d0d2d17c22161ed4e9da0f945c9fe505ebcf62ea9e` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/arithmeticresidual-zero-of-lt-cutoff.md) | 111 | `result-track:3fa6ad9c8d0c130afcccd387aed3e0b57ee16b96675c21d607ebf225cb995803` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/arithmeticresidual-zero-damping-endpoint.md) | 121 | `result-track:a695961bbff0727c49b15ed4e5eaa6da43f18ad3ebf3640cf051cd619c0f84de` |
| 10 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/example-source-edition-2.md) | 142 | `declaration-track:69bdbd609db60b7f0c8285b3d3ef344a4726ad0c2e648d01a43fff9e4f655fd6` |
| 11 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/example.md) | 147 | `declaration-track:53ba14f8c05bd343c29010869d9873d536118fdc16b654a329ec5e776c4fbc49` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/example-source-edition-4.md) | 152 | `declaration-track:7ad922f1fe86cab923bd9d95d0dea5c74f7f4cd159ac8a99d0540393bbf792c4` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/example-source-edition-6.md) | 160 | `declaration-track:cf43db86b69734a5743a2f7bf3c8a9358b29ac56e0d4d221969721fe15c5c793` |
| 14 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/example-source-edition-3.md) | 166 | `declaration-track:74ea19f60d2e8fdde1965841fa68fff58d24a68f9d20ab1bd2ab1943ab08e001` |
| 15 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorFloorLiteralCheck.lean/declarations/example-source-edition-5.md) | 170 | `declaration-track:80d1a186c469173ba477978a5095d554cc9d82ab08ae837f2c5f526b5568eada` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3110a4295bcb76d224b3819cf89207ae4bcfb0f4ddfc428e2fe9deb5986eefa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
