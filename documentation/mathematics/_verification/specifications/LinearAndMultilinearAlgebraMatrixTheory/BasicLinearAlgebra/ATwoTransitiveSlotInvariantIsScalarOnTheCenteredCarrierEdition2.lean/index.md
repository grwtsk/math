# Verification target: ATwo Transitive Slot Invariant Is Scalar On The Centered Carrier Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a0cf4b5ee1cfae3df5351c00bcea3c36cfbab8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variantc8093ba240451965ed3906d8c622ce97b7803ac20a76896aceb03e9076ecbd84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a0cf4b5ee1cfae3df5351c00bcea3c36cfbab8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variantc8093ba240451965ed3906d8c622ce97b7803ac20a76896aceb03e9076ecbd84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variantc8093ba240451965ed3906d8c622ce97b7803ac20a76896aceb03e9076ecbd84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CenteredPermutation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PairTransitiveFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/pairtransitivefamily.md) | 24 | `declaration-track:c8d931f62cab2f6038140cc0fc02531be4d2f54c6434c81aac86417a0b08c656` |
| 2 | `def` | [InvariantMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/invariantmatrix.md) | 27 | `declaration-track:dc4eb934b95838655c1c483b1b5b52c9f62ef210c19d088af1b2d1467b46aa2b` |
| 3 | `def` | [commonMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/commonmatrix.md) | 31 | `declaration-track:c7e702b1716ae9285ef3724f443c6a235e7b47590352983c705bd09fcb15915c` |
| 4 | `theorem` | [diagonal_constant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/diagonal-constant.md) | 33 | `result-track:d9f11854cddef8e1ca727680d8137899f5acb21ff1f84b7b0037649148c17694` |
| 5 | `theorem` | [off_diagonal_constant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/off-diagonal-constant.md) | 39 | `result-track:d8ed1bbd75c0bd37c9e3bcd76ee5d7323826cf7551a4977c664e6cff93b8b34e` |
| 6 | `theorem` | [invariant_matrix_two_coefficients](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/invariant-matrix-two-coefficients.md) | 45 | `result-track:e5d379d24904d3a7733311372c26bce673bcabc210ca79613981c129a6e58c8e` |
| 7 | `theorem` | [common_matrix_annihilates_centered](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/common-matrix-annihilates-centered.md) | 57 | `result-track:b6f4f4a5131a3dac91b60615205a9deabefaf993293018d8a196fa61b6578cd0` |
| 8 | `theorem` | [centered_invariant_matrix_action](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/centered-invariant-matrix-action.md) | 64 | `result-track:4b2f0cd0b64a40edb8cac6588c721fe5693f23d5687781cad59223eb3f5470de` |
| 9 | `theorem` | [centered_invariant_bilinear_readout](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ATwoTransitiveSlotInvariantIsScalarOnTheCenteredCarrierEdition2.lean/declarations/centered-invariant-bilinear-readout.md) | 73 | `result-track:737615d19f47986c2ebd2bf3f948e9861ea6edf4281bc95a776b72cf69c200ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6a6ec530683ba8fa3821dd69d11b13442b90b48811e96701e18f195065898c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variantc8093ba240451965ed3906d8c622ce97b7803ac20a76896aceb03e9076ecbd84.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variantc8093ba240451965ed3906d8c622ce97b7803ac20a76896aceb03e9076ecbd84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
