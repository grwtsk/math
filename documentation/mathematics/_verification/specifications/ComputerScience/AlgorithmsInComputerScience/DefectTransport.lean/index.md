# Verification target: Defect Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2961299747ab39c3d97c068d227855c86e41220",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2961299747ab39c3d97c068d227855c86e41220`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.DerivativeGain` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineStep](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/affinestep.md) | 14 | `declaration-track:7f14dc09b0e5672564e790253a64805cdcd58ff2ca8f8227b74a7deb4032cfba` |
| 2 | `structure` | [ScaledGain](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledgain.md) | 19 | `declaration-track:6472c2d47a6ee0bbe1da239b81f4f84bba295f8eee158f5fa67f3c7cc1139abf` |
| 3 | `def` | [ScaledGain.one](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledgain-one.md) | 24 | `declaration-track:dcb2be43f7a3e06cc5c9e05f1007f7d678ec9e656672323b0eff6ed485adc745` |
| 4 | `def` | [ScaledGain.compose](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledgain-compose.md) | 27 | `declaration-track:d58afb408f24534255963ef2596dd7b7f591d788b519af467dc383c8738241d2` |
| 5 | `theorem` | [ScaledGain.one_numerator](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledgain-one-numerator.md) | 34 | `result-track:6670160a67859370ab58935d90a58a0ed606dfe86cbed775202f97db1137f53e` |
| 6 | `theorem` | [ScaledGain.one_scale](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledgain-one-scale.md) | 38 | `result-track:529a315d69ad8a132d909a18ce4cd0e5acc752d67caea77a559fdcabbbe27e1f` |
| 7 | `theorem` | [ScaledGain.compose_numerator](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledgain-compose-numerator.md) | 42 | `result-track:976481423c38957ae5cf8aaa18fa106b84b799b0537353c11bf70f2e8c1d13fd` |
| 8 | `theorem` | [ScaledGain.compose_scale](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledgain-compose-scale.md) | 48 | `result-track:658baf5f1df3f251642bd1b762305a7711cbaeca62a1b0f2e3077d46fe48ee1f` |
| 9 | `structure` | [FractionBound](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/fractionbound.md) | 58 | `declaration-track:a6ec5b141125e38d37de90a48a11f48385de69a4fd48d50d5e06fe13c6590606` |
| 10 | `def` | [FractionBound.ofNat](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/fractionbound-ofnat.md) | 63 | `declaration-track:5fc3ea6ca8dbc7a015303db259e2756ad91f36ed6a4f4f801ced11050a554ea5` |
| 11 | `def` | [scaledAffineStep](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledaffinestep.md) | 66 | `declaration-track:efd2ac624eaaf7672542f87763ba3716fccc1629dd566e2afc63b244f43f4d1f` |
| 12 | `def` | [SatisfiesBound](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/satisfiesbound.md) | 77 | `declaration-track:a2318a6144938407b0179c5d2e1b20a928f13ed81f570099fe002579d66a04ea` |
| 13 | `def` | [SatisfiesScaledAffineStep](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/satisfiesscaledaffinestep.md) | 80 | `declaration-track:44e694959b3a975880c0020723889da6ebc85091780dc01689d620ba0c4d13f9` |
| 14 | `theorem` | [scaled_affine_step_preserves_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaled-affine-step-preserves-bound.md) | 86 | `result-track:5a191ba4a7b572561b6ab735dc6f4dc7a22497e7b2bca5f81d648d6fabb9985b` |
| 15 | `def` | [constantAffineBound](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/constantaffinebound.md) | 112 | `declaration-track:c00eddd865f484f0622c2884866516f16e1e0a8e611ec8b94c8c142f410bc5e1` |
| 16 | `theorem` | [constantAffineBound_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/constantaffinebound-zero.md) | 120 | `result-track:d7108492b98cbf7deb38fd4d61017e189ea8340b1cd25d975f2012f36ed0db2a` |
| 17 | `theorem` | [constantAffineBound_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/constantaffinebound-succ.md) | 126 | `result-track:6d243986ac2bf2bd57ee549f0d0f3cad349e7eca9e7a80c03aa0de587c27a337` |
| 18 | `theorem` | [iterated_affine_defect_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/iterated-affine-defect-bound.md) | 134 | `result-track:62967bd1a7d45e22c9500ecec32ccec9c0e2708ed86314e78cf4ab91cbf736f7` |
| 19 | `def` | [transportAlong](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/transportalong.md) | 152 | `declaration-track:c4c28b0be2819666f6c054bd8455c2a909fe21a7768fce2ee6bf7bc25b95d14b` |
| 20 | `def` | [scaledTransportAlong](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledtransportalong.md) | 159 | `declaration-track:e04f8c710aa571382d6ad523fafc996f871e811203bd68c556c5c1a42c91aa7d` |
| 21 | `theorem` | [transportAlong_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/transportalong-nil.md) | 166 | `result-track:ac863e55b719460af3bce1cad5c6e1d00222da13c34dc83586c65d16a574accf` |
| 22 | `theorem` | [transportAlong_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/transportalong-cons.md) | 170 | `result-track:4af2a110e07a9d8a05eabcf5a945996089c6d3c8075c6ecba92d319b669c6775` |
| 23 | `theorem` | [exact_construction_zero_gain_erases_current_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/exact-construction-zero-gain-erases-current-bound.md) | 179 | `result-track:df1f54059ee2a9d36d8758acbee167d48b93c7897f9e8d3f41d9e3e5908d188d` |
| 24 | `theorem` | [scaledTransportAlong_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledtransportalong-nil.md) | 184 | `result-track:a5e4b878557cb2f346140913b05456416ea237672ab1d8e3cb12c0be9809307a` |
| 25 | `theorem` | [scaledTransportAlong_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/DefectTransport.lean/declarations/scaledtransportalong-cons.md) | 189 | `result-track:24e04026b548b13d2489ac2d429c75c4474de41cafb68d235fac1992a68d42c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9645062873e0378ccff57f801b161c9bc314e7249ce7811cc14491736274553f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
