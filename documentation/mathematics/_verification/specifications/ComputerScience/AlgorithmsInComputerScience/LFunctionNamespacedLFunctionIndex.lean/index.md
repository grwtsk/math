# Verification target: LFunction Namespaced LFunction Index

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d192375536c7697651d254f8b3db431778ac17af",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LFunction/Variantcbdb6618356ee1a0be4626698a5c342796d26c9996f2d1b7883036b165168139.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d192375536c7697651d254f8b3db431778ac17af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LFunction/Variantcbdb6618356ee1a0be4626698a5c342796d26c9996f2d1b7883036b165168139.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LFunction/Variantcbdb6618356ee1a0be4626698a5c342796d26c9996f2d1b7883036b165168139.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Payload` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LFunctionIndex](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/lfunctionindex.md) | 30 | `declaration-track:6c402cbd96e897560990b0f5ba321e7af0c0fbe79b12d16dfbc662b385e2202d` |
| 2 | `structure` | [DirichletCoefficientWindow](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/dirichletcoefficientwindow.md) | 52 | `declaration-track:72363aad19ef4f28d498fc13883ffb3c12d86d42e7ef10e31f8c9a2871ecc01f` |
| 3 | `structure` | [LocalEulerFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/localeulerfactor.md) | 59 | `declaration-track:eded2e475e11c5d2fc24674da71f78386f9bfd18ded927220291d88702772126` |
| 4 | `structure` | [ConductorMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/conductormetadata.md) | 68 | `declaration-track:010fb55c15c7399d628e2a85a79e213c37cc440126581d247caecf6b24978505` |
| 5 | `structure` | [FiniteFunctionalEquationParameters](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finitefunctionalequationparameters.md) | 81 | `declaration-track:6c80c0a9d064efbef47ac62da9f1d96971c3d98a56101a8054531b61736ce590` |
| 6 | `structure` | [FiniteLFunctionPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finitelfunctionpayload.md) | 92 | `declaration-track:8429c85575fde2765f22c5650bb6aca5644cc5f90ca43620f1a021d2c4e50bf9` |
| 7 | `theorem` | [dirichlet_coefficient_window_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/dirichlet-coefficient-window-sound.md) | 101 | `result-track:14f044717a1e1ca0c413bde448a24ec059005e4809e1fbff31ef1ba6033ecda2` |
| 8 | `theorem` | [local_euler_factor_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/local-euler-factor-sound.md) | 106 | `result-track:f8e6f2101e4ed299962d3045a5f3f7915565d5ab88c3226f6485e54028cee6a7` |
| 9 | `theorem` | [conductor_metadata_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/conductor-metadata-sound.md) | 111 | `result-track:662602bc94b1439b33cfb6180071973b9cce838fba85ae47b2b9c31525088120` |
| 10 | `theorem` | [finite_functional_equation_parameters_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-functional-equation-parameters-sound.md) | 116 | `result-track:5527c53fd1e878c74e4386cfc515ade664c9e55ffd14e83609efae4c9203107a` |
| 11 | `theorem` | [finite_lfunction_payload_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-lfunction-payload-sound.md) | 121 | `result-track:bd1d6686f545c33884ac8d8544b0ef593ffc4b4332f7820b8e095519c7937e7b` |
| 12 | `def` | [FinitePayloadOwnsAnalyticContinuation](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finitepayloadownsanalyticcontinuation.md) | 127 | `declaration-track:eae8d34a97b2b6358e6f9953f3f9489139a8367e69043c888980e9c1c30bfbf6` |
| 13 | `def` | [FinitePayloadOwnsEulerProductConvergence](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finitepayloadownseulerproductconvergence.md) | 132 | `declaration-track:55b03ab384794ceb2177275ccc25c77c1eeb9b07a657770ec20b40760503a60e` |
| 14 | `def` | [FinitePayloadOwnsCompletedFunctionalEquation](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finitepayloadownscompletedfunctionalequation.md) | 137 | `declaration-track:72243eb169303902214cae702d8eaca80108c79aa7c70aec6e163a7e30bdf06d` |
| 15 | `def` | [FinitePayloadOwnsZeroFreeRegion](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finitepayloadownszerofreeregion.md) | 142 | `declaration-track:f2c6d3e44275a85de4a8f3792aa2e31539aa83440d646ea4ddc6d90f736d24aa` |
| 16 | `def` | [FinitePayloadOwnsExplicitFormula](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finitepayloadownsexplicitformula.md) | 147 | `declaration-track:f808e3bf01fd150e72a77a1b97e9ab44e3599224e573b6465eca5084bc75e4c0` |
| 17 | `def` | [FinitePayloadOwnsCentralValueIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finitepayloadownscentralvalueidentity.md) | 152 | `declaration-track:6fe4b88664faf5ef14b8408ef6adecf663584eec628b333ad187ebc8e40cf642` |
| 18 | `theorem` | [finite_payload_not_analytic_continuation](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-payload-not-analytic-continuation.md) | 156 | `result-track:ee81793ef800a980a2332258500089750175d7775d8525da97412866607bea21` |
| 19 | `theorem` | [finite_payload_not_euler_product_convergence](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-payload-not-euler-product-convergence.md) | 162 | `result-track:629aff8f444cc6a78c4c3c39d94ebd1c2f491eb4762dc36212b641da237239cf` |
| 20 | `theorem` | [finite_payload_not_completed_functional_equation](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-payload-not-completed-functional-equation.md) | 168 | `result-track:3c813ee1fd99992ee5a938ff16c0ebee6cbc5b734abe896ac1755ef8751d1d65` |
| 21 | `theorem` | [finite_payload_not_zero_free_region](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-payload-not-zero-free-region.md) | 174 | `result-track:38601e08a81c47b95593c097af4aa0cb38f637be6d4d1051937d2bef8fb59fdf` |
| 22 | `theorem` | [finite_payload_not_explicit_formula](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-payload-not-explicit-formula.md) | 180 | `result-track:f8fde91acdb0b3b6bec6e22b6aeb193016b60ef709f407af4b50493dfcb627bc` |
| 23 | `theorem` | [finite_payload_not_central_value_identity](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-payload-not-central-value-identity.md) | 186 | `result-track:58c737978dceb24decd85fc21803c9a6ff2f0b54974a44415604ec31647cb260` |
| 24 | `theorem` | [finite_lfunction_payload_boundary_summary](../../../../../ComputerScience/AlgorithmsInComputerScience/LFunctionNamespacedLFunctionIndex.lean/declarations/finite-lfunction-payload-boundary-summary.md) | 198 | `result-track:c79cf960125f8adfe316f286b24f291bfcdc9d7ba7c5942381e7e206b2697606` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c82c5985b8a178a7108c68b1eb33921e1fd231f4c9a58afb5dbf684d5642ac7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LFunction/Variantcbdb6618356ee1a0be4626698a5c342796d26c9996f2d1b7883036b165168139.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LFunction/Variantcbdb6618356ee1a0be4626698a5c342796d26c9996f2d1b7883036b165168139.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
