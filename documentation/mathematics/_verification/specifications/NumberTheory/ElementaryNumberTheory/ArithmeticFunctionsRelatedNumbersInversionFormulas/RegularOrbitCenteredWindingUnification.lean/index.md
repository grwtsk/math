# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingUnification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "940a8a265a74bfc6553e01d1d74efab0d5b008f5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `940a8a265a74bfc6553e01d1d74efab0d5b008f5`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitWrapCenteredWinding`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitWrapCenteredWinding.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CenteredSquareModulusWinding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/centeredsquaremoduluswinding.md) | 38 | `declaration-track:966f59159b3bec10a7ea0419ac57a19f191e32f5a30988b5698c6ee805d4d236` |
| 2 | `theorem` | [centeredSquareModulusWinding_unique](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/centeredsquaremoduluswinding-unique.md) | 45 | `result-track:b71fadc01efc9479c6a8cdac10ad92da8d01511a27b2ec45940d3bc95a0c78b5` |
| 3 | `theorem` | [centeredSquareModulusWinding_zero_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/centeredsquaremoduluswinding-zero-iff.md) | 61 | `result-track:16323bf09b54e73a0a81c5cf6febba33294deff33aa10869ade0ecd467498578` |
| 4 | `theorem` | [centeredSquareModulusWinding_modEq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/centeredsquaremoduluswinding-modeq.md) | 77 | `result-track:dd9e735868b20c6537a60c135640d8aa0510233fb853abd97e8528da0e332f05` |
| 5 | `theorem` | [centeredSquareModulusWinding_ne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/centeredsquaremoduluswinding-ne.md) | 87 | `result-track:c236358e5e2d540d2ec9a859cee700928af57a4f23235484b74ea1843ed08b02` |
| 6 | `theorem` | [modEq_ne_exists_unique_nonzero_winding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/modeq-ne-exists-unique-nonzero-winding.md) | 100 | `result-track:54c950c92f7dc8e6583f4e2781b60cecd46ef34c14e952a17e078961b1f340d9` |
| 7 | `theorem` | [exists_nonzero_winding_iff_wrap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/exists-nonzero-winding-iff-wrap.md) | 122 | `result-track:b72996751bc5c4874e936b86c1ee732d8742716da2358365e509c2c934303a8f` |
| 8 | `def` | [centeredWindingMobiusCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/centeredwindingmobiuscoefficient.md) | 141 | `declaration-track:79e736eaa6765d0dc2b3d0b874288a792b879533fb7919397b124b3db79f7957` |
| 9 | `theorem` | [centeredWrapQuarticMobiusCoefficient_eq_winding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/centeredwrapquarticmobiuscoefficient-eq-winding.md) | 150 | `result-track:eae6c63dac7fcb53cb3193ac9d561d3778089ae0a7aad4925b219808bff01d48` |
| 10 | `theorem` | [halfIndexWrap_exists_unique_centered_winding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/halfindexwrap-exists-unique-centered-winding.md) | 159 | `result-track:de770d5170557dc13cba82562669363d43a68a382f6746d7fd3d0aaf009609c2` |
| 11 | `structure` | [RegularCenteredWindingSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/regularcenteredwindingsourcedata.md) | 179 | `declaration-track:dc2dcd80eba8e4876add73c05525446f1b7fc2a02d71ae430f1fff8806336cb5` |
| 12 | `def` | [RegularCenteredWindingSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingUnification.lean/declarations/regularcenteredwindingsource.md) | 192 | `declaration-track:cd52085d42150562a274462d11d669d0ea8ea407932fb2ee31c603e1d29785c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1ede0827037a0952975644848b9fe54df45e8364dc371f333ac3d1d789bb44f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
