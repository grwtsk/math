# Verification target: Arithmetic Function Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66cfc9dfdae63e15f8512408d6b27ba0ba892d56",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66cfc9dfdae63e15f8512408d6b27ba0ba892d56`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Payload` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/arithmeticfunction.md) | 15 | `declaration-track:0655867e9c403fa9214cea4a23d1b494267323031d6a21ec18987b6dd51e0592` |
| 2 | `structure` | [DirichletConvolutionCertificate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/dirichletconvolutioncertificate.md) | 25 | `declaration-track:6b4c8d6f20888c99f9f81624a1240e26d8549669b600dab12dc348feccb25f9a` |
| 3 | `def` | [oneFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/onefunction.md) | 31 | `declaration-track:0b68cda96a9b6dff67e324f73f5779aca08aa79adf898edddd48b1302ff37b47` |
| 4 | `def` | [epsilonFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/epsilonfunction.md) | 36 | `declaration-track:a9e9defba2f8943ac028199544ea0917c744bbc145c7b1f1b0ff5101dcc9ce37` |
| 5 | `structure` | [MobiusFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/mobiusfunction.md) | 41 | `declaration-track:c76a3c98adcb9e6ea383816b009a7f6cef5245b9d26467467d5916d4057fb506` |
| 6 | `theorem` | [dirichlet_convolution_sound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/dirichlet-convolution-sound.md) | 46 | `result-track:b254686a4526253d7d6c5ddc5fe8351f651b14a283f0d5f2134ac1745bd393fe` |
| 7 | `theorem` | [mobius_inverse_of_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/mobius-inverse-of-one.md) | 52 | `result-track:f4664684165134ce9447467089e4dc0137f2705b909a5c811ed1d8014d4f8f09` |
| 8 | `def` | [ArithmeticFunctionOwnsAnalyticSeries](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/arithmeticfunctionownsanalyticseries.md) | 61 | `declaration-track:7442d5a67156a977b3f4f066873125edca221f2596b03cbef3a7318adf03dade` |
| 9 | `theorem` | [arithmetic_function_not_analytic_series](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionEdition2.lean/declarations/arithmetic-function-not-analytic-series.md) | 65 | `result-track:0294a982729127c9c2e5e1ad1391b87def0d3de476d553b7e810a1781af5f02e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6877d2b1b4cc37b5df797e247ad48afa2f1b33288103b5931677d84802f0187b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
