# Verification target: Mathlib Adapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "697690e49a89b884f24895e03bbaf5cb13ed39b0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `697690e49a89b884f24895e03bbaf5cb13ed39b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Selmer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MathlibCohomologyAdapterBackend](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/mathlibcohomologyadapterbackend.md) | 27 | `declaration-track:1f87ec56ae3d45239001a78de9914c390c4507fed2e99cd7ecc1cb17412939d1` |
| 2 | `def` | [usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/usableforfinaltheorem.md) | 34 | `declaration-track:bf1822549465352a8ad8dc62f5e8c9edb798c17d3887943c4b4e4c50ba983681` |
| 3 | `theorem` | [unavailable_not_usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/unavailable-not-usableforfinaltheorem.md) | 38 | `result-track:64cc2a6ba35e3290a06ebb470e1474ec11fb0d6176caeadb3c78945dc1832717` |
| 4 | `structure` | [FiniteH1MathlibAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteh1mathlibadapter.md) | 46 | `declaration-track:bda7116d5a784cb72495980a43f973724372be1142b5e65c7cb97778ee2db889` |
| 5 | `def` | [FiniteH1MathlibAdapter.usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteh1mathlibadapter-usableforfinaltheorem.md) | 65 | `declaration-track:ab2486f8215d41f997a5e7b1837c4b8a339de2c2ef32af99ea1e16b3cc925bf6` |
| 6 | `theorem` | [FiniteH1MathlibAdapter.unavailable_not_usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteh1mathlibadapter-unavailable-not-usableforfinaltheorem.md) | 77 | `result-track:75b5ba862af8be3308c4b8803ada4d32534b00861fa3e732ca59a8040a61df2f` |
| 7 | `theorem` | [FiniteH1MathlibAdapter.usableForFinalTheorem_has_transfers](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteh1mathlibadapter-usableforfinaltheorem-has-transfers.md) | 88 | `result-track:4f8574deb357307a4c20c64b0fd6246bffa18c17b405f01b4c887207a24b41ac` |
| 8 | `structure` | [FiniteSelmerMathlibAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteselmermathlibadapter.md) | 101 | `declaration-track:8703715f8f952ce0fccde0f685e5bffb6b0bc8e2c5c785995e6e551ebee670ea` |
| 9 | `def` | [FiniteSelmerMathlibAdapter.usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteselmermathlibadapter-usableforfinaltheorem.md) | 120 | `declaration-track:6572ec0eeefc7c78c1be4cdd8f7fc4223a38f0e0504bdf73fed9008fbc44cff3` |
| 10 | `theorem` | [FiniteSelmerMathlibAdapter.unavailable_not_usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteselmermathlibadapter-unavailable-not-usableforfinaltheorem.md) | 132 | `result-track:52431cc6fc47116b291bb564ecc7a9a95b45987f1a9fcf8a82271c38ec6e0c6f` |
| 11 | `theorem` | [FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_globalH1](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteselmermathlibadapter-usableforfinaltheorem-has-globalh1.md) | 141 | `result-track:7c877755895d921dc8596101657050613c48d0f8b4e2b348ea8d028889cbe343` |
| 12 | `theorem` | [FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_localH1](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteselmermathlibadapter-usableforfinaltheorem-has-localh1.md) | 148 | `result-track:ec3d75a7a213c01d3a0bb07a4caec72be0285d03c71423a8275751f4828a3674` |
| 13 | `theorem` | [FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_transfers](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapter.lean/declarations/finiteselmermathlibadapter-usableforfinaltheorem-has-transfers.md) | 156 | `result-track:89541eee8aad5bf232236bad9c08d671ca5708c237915f0bfc11c07cbf30dff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96f541bf1410d5cd29ec16e62504e83c6adb65a5bc97189f6ca44e7de5856458 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
