# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitMobiusSquareIndicatorBinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a34f1c747b6952beedac2ad58dd28f3f889fa0ba",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitMobiusSquareIndicatorBinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a34f1c747b6952beedac2ad58dd28f3f889fa0ba`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitMobiusSquareIndicatorBinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitMobiusSquareIndicatorBinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredSquarefreeDivisorReduction`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredSquarefreeDivisorReduction.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusSquare_eq_squarefreeIndicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/declarations/mobiussquare-eq-squarefreeindicator.md) | 19 | `result-track:17ba8c9d25d2b2d7c63a727d3b970eae1256888b866cc6d3c8f271379f0797f4` |
| 2 | `def` | [SquareDivisorMobiusSumIsSquarefreeIndicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/declarations/squaredivisormobiussumissquarefreeindicator.md) | 28 | `declaration-track:fbd5b9e1bc904c5f852122cda82a3555e27eb89f7b22fb70287cb82650551747` |
| 3 | `theorem` | [mobiusSquareDivisorExpansion_of_indicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/declarations/mobiussquaredivisorexpansion-of-indicator.md) | 36 | `result-track:fab2c85929776c36aae2172b712f70f7e8c4b7de5ba420af37a0d0692a6c53e6` |
| 4 | `theorem` | [squareDivisorIndicator_of_mobiusSquareDivisorExpansion](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/declarations/squaredivisorindicator-of-mobiussquaredivisorexpansion.md) | 45 | `result-track:20da97c2619290e73c8cea0d124d96b95f4c5c8620ac2d86d925a1818dea556c` |
| 5 | `theorem` | [mobiusSquareDivisorExpansion_iff_indicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/declarations/mobiussquaredivisorexpansion-iff-indicator.md) | 52 | `result-track:783d704055d92b3bb5bc3346304a895b432b5c2a5f790afc825a181c4ce5dc27` |
| 6 | `def` | [canonicalToDivisorSquareRestrictedBinaryAdapter_of_indicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/declarations/canonicaltodivisorsquarerestrictedbinaryadapter-of-indicator.md) | 62 | `declaration-track:ad40fe4247961b943753c881b7d209e242230fb128dc981bb59a2eb105002a26` |
| 7 | `structure` | [MobiusSquareIndicatorBindingSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/declarations/mobiussquareindicatorbindingsourcedata.md) | 68 | `declaration-track:ec777434fc6dfc832b149b3ca2f06a2052d3cc71e12d4e2ceb9a30da9d8965b4` |
| 8 | `def` | [MobiusSquareIndicatorBindingSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMobiusSquareIndicatorBinding.lean/declarations/mobiussquareindicatorbindingsource.md) | 77 | `declaration-track:245e57fc0b2639f85ce0cceb2236740b4983f2c74ee20b0e075fdb380502e77b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd5384743a30abcfd5989e2ff4158cc2c493ce32fdf61eab9b13493a68b77f78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitMobiusSquareIndicatorBinding.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitMobiusSquareIndicatorBinding.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
