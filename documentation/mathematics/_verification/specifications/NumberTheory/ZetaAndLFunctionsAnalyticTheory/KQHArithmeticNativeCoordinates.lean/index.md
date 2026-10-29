# Verification target: KQHArithmetic Native Coordinates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7995628c6061506313ef059f1f5d5bce6248a276",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticNativeCoordinates/Variantc42fdaa2c61acf887a87dc34f8e5ec21ba8d407aa2ee855caf9589b182f245f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7995628c6061506313ef059f1f5d5bce6248a276`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticNativeCoordinates/Variantc42fdaa2c61acf887a87dc34f8e5ec21ba8d407aa2ee855caf9589b182f245f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticNativeCoordinates/Variantc42fdaa2c61acf887a87dc34f8e5ec21ba8d407aa2ee855caf9589b182f245f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramForm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/declarations/gramform.md) | 27 | `declaration-track:2a751972008a43c3de68728a8923fe09aa1541b53b5cc4f6e82eb6bbb56eb08e` |
| 2 | `theorem` | [gramForm_exact_square](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/declarations/gramform-exact-square.md) | 31 | `result-track:7edba49a08e9d51065a91bb673d1bf0d92722a8dd4d8f28ca71a93079bacb472` |
| 3 | `theorem` | [gramForm_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/declarations/gramform-nonneg.md) | 37 | `result-track:a8dd82b0f3137163c591c04135ccddeec375cbcd5fba80c3c0c80e9d229ef0bc` |
| 4 | `theorem` | [gramForm_kernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/declarations/gramform-kernel.md) | 41 | `result-track:8814607c5546b1f4421a62fb36fa1df18133a6f00776c460654149d6edcac1ad` |
| 5 | `theorem` | [actual_source_normalization](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/declarations/actual-source-normalization.md) | 52 | `result-track:7ac1240fb9ccc7e73630f0e65af02daab03dbdb242d64ccb39c4b769a6b5189d` |
| 6 | `theorem` | [source_direction_annihilated](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/declarations/source-direction-annihilated.md) | 58 | `result-track:d25075663d0c33bb5f7f22af729b5984daa45059c6f87b3619373ef1b2d0d100` |
| 7 | `theorem` | [compression_bound_of_rank_certificate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/declarations/compression-bound-of-rank-certificate.md) | 63 | `result-track:623a870897f149137bd28d12bb674a25cfebdb00ef5a7d6c43696a462a83c067` |
| 8 | `theorem` | [native_residual_le_of_rank_certificate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticNativeCoordinates.lean/declarations/native-residual-le-of-rank-certificate.md) | 80 | `result-track:a74981b43908fea9497248f62e9fcc1e4dcfcd17a6fad6e355d4c6fa99e25c70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb67ae85c506d132fd8301de4727418ec428bfeca3212b43bad39c8d4970e245 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticNativeCoordinates/Variantc42fdaa2c61acf887a87dc34f8e5ec21ba8d407aa2ee855caf9589b182f245f1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticNativeCoordinates/Variantc42fdaa2c61acf887a87dc34f8e5ec21ba8d407aa2ee855caf9589b182f245f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
