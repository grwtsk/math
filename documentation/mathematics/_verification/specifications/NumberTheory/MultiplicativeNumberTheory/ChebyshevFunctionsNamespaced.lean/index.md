# Verification target: Chebyshev Functions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69d8a3c29e620f45679f8c2478b50e04e1b6b186",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant43a2d1517018d41c9f14a4fd78c6d5e3221cf62b43d86ddc3d1ab2d1b78f8a81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69d8a3c29e620f45679f8c2478b50e04e1b6b186`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant43a2d1517018d41c9f14a4fd78c6d5e3221cf62b43d86ddc3d1ab2d1b78f8a81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant43a2d1517018d41c9f14a4fd78c6d5e3221cf62b43d86ddc3d1ab2d1b78f8a81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCounting](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/primecounting.md) | 24 | `declaration-track:64565e9dd3bad176b09e547ad2976ae85e24c9c0f566c23d025d2760c42aef05` |
| 2 | `def` | [chebyshevTheta](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/chebyshevtheta.md) | 28 | `declaration-track:e337a06ec6312bbfb8e97cb7f98d40ecf3857f33780c9baa530645ec47248f48` |
| 3 | `theorem` | [primeCounting_eq_card_primesUpTo](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/primecounting-eq-card-primesupto.md) | 32 | `result-track:aaa6d8c1ecb1c1fa0480c5a3d9d2e8d632edb1fd1e5824f520ec0008ea385f29` |
| 4 | `theorem` | [chebyshevTheta_nonneg](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/chebyshevtheta-nonneg.md) | 37 | `result-track:d78088447cf3b2c921d2731ec87c38a254cd2ec61c46dfb8dd620b7954386312` |
| 5 | `theorem` | [chebyshevTheta_mono](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/chebyshevtheta-mono.md) | 47 | `result-track:859ef3a137498fdc58ca2fd6db6084dd49bdbe041e6479998590965e8d8ed580` |
| 6 | `theorem` | [chebyshevTheta_le_primeCounting_mul_log](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/chebyshevtheta-le-primecounting-mul-log.md) | 58 | `result-track:11155667f24fe38fc9585986e9da24cd4cab31a5fddb4e104e5b9f76ec4fb2f9` |
| 7 | `theorem` | [primeCounting_mul_log_two_le_chebyshevTheta](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/primecounting-mul-log-two-le-chebyshevtheta.md) | 74 | `result-track:cdee8071f6e16835c9e74d84fd9a97af53c882588a0da1cc3ddc08d8fe9ecf94` |
| 8 | `def` | [ChebyshevThetaUpperBoundTarget](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/chebyshevthetaupperboundtarget.md) | 91 | `declaration-track:fd07c5e8e67ac353eba99e0a6d49c65f018e3fbe3de1b1d46b0b2b282bb7e08e` |
| 9 | `def` | [ChebyshevPrimeCountingBoundsTarget](../../../../../NumberTheory/MultiplicativeNumberTheory/ChebyshevFunctionsNamespaced.lean/declarations/chebyshevprimecountingboundstarget.md) | 95 | `declaration-track:24b196b16f991e0116a8ecd11f7d4432002e69341598e77fa112d70befc2575c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c34d44174bdf0b0e5ae277a736445d955388d2604d6d3b5f38c239a0ea7cbd26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant43a2d1517018d41c9f14a4fd78c6d5e3221cf62b43d86ddc3d1ab2d1b78f8a81.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant43a2d1517018d41c9f14a4fd78c6d5e3221cf62b43d86ddc3d1ab2d1b78f8a81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
