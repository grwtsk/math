# Verification target: Ergodic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e441db896d3bf18929aa764f0197f79004580c2",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variant21cca0df6998b37bee113fa50787c01ab86318e1f5a1643838a58b981c91641c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e441db896d3bf18929aa764f0197f79004580c2`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variant21cca0df6998b37bee113fa50787c01ab86318e1f5a1643838a58b981c91641c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variant21cca0df6998b37bee113fa50787c01ab86318e1f5a1643838a58b981c91641c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PreErgodic](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/preergodic.md) | 41 | `declaration-track:2e58f9ee275b0cfd1b46975286a643dbc73f6ca95e0a8ea2e20b3c5a4ecf1a04` |
| 2 | `structure` | [Ergodic](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ergodic.md) | 46 | `declaration-track:444d142ef58513808fcd70ce9a9d0a6a203d4fbb33f08909e37134df6bdb8e62` |
| 3 | `structure` | [QuasiErgodic](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/quasiergodic-source-edition-2.md) | 51 | `declaration-track:f7578f7192ba190cc443edd0d3dcfd505fee7b29eab7af886dda454fe16436e5` |
| 4 | `theorem` | [ae_empty_or_univ](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-empty-or-univ.md) | 58 | `result-track:55864114c3618120fe5b70c302ad70f5525e751be6619916d2bc8ae767fa0203` |
| 5 | `theorem` | [measure_self_or_compl_eq_zero](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/measure-self-or-compl-eq-zero.md) | 62 | `result-track:9e8358495636e0ae93d43de6011eb9fd8f5072ce2ac95c37f52fa0e021b1cbf9` |
| 6 | `theorem` | [ae_mem_or_ae_notMem](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-mem-or-ae-notmem-source-edition-2.md) | 66 | `result-track:bff4e4ab4212f374aa2e9edb90126614b25d2304bf8ff3fa4807ac7f764e2d5e` |
| 7 | `theorem` | [prob_eq_zero_or_one](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/prob-eq-zero-or-one.md) | 73 | `result-track:939678f5e06ddca771e584cd3b357504face2178c30df20f6c7f55bc96417cab` |
| 8 | `theorem` | [of_iterate](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/of-iterate.md) | 77 | `result-track:a750cefe31f2631201de2efbda87a973911f6109057e3dfc98fc75698dedf0c0` |
| 9 | `theorem` | [smul_measure](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/smul-measure-source-edition-2.md) | 80 | `result-track:a3ab334ba7822cccf4eeb8caf173f9d8ab9d1919e2ac25783687cc6de8e37dd6` |
| 10 | `theorem` | [zero_measure](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/zero-measure-source-edition-3.md) | 84 | `result-track:ad9a20b901ea2c31c20d00c12e8b11b87f3305fd1d213b88f8da4304a0a98976` |
| 11 | `theorem` | [preErgodic_of_preErgodic_conjugate](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/preergodic-of-preergodic-conjugate.md) | 93 | `result-track:735810024d11491337b2b7ace1cd060181a602e080e2e1d7e2b37a53e8f20f67` |
| 12 | `theorem` | [preErgodic_conjugate_iff](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/preergodic-conjugate-iff.md) | 100 | `result-track:76fbeaf0e8a36e53a9370e9db21cce14a5ec8409e056d8f6b6bef711d3b466cf` |
| 13 | `theorem` | [ergodic_conjugate_iff](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ergodic-conjugate-iff.md) | 107 | `result-track:566b8e71318aa5e04dd0782215406a8e2e3798b434e8fa577436b6f6c4480aa4` |
| 14 | `theorem` | [aeconst_set₀](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/aeconst-set.md) | 119 | `result-track:4332d0d9f819dc50c00377584eb144c53e8ae85d39078ca4a63634a8ab379090` |
| 15 | `theorem` | [ae_empty_or_univ₀](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-empty-or-univ-source-edition-2.md) | 126 | `result-track:8c44acc3e700745748302dbe2e3e909f68a3bb6bed0009357b1755f0e46bc2e3` |
| 16 | `theorem` | [ae_mem_or_ae_notMem₀](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-mem-or-ae-notmem.md) | 133 | `result-track:bc6c20a464b2a5e32ce43870d8e6e24118e9387c9694177cc0d8ad7ac9a91b4e` |
| 17 | `theorem` | [smul_measure](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/smul-measure-source-edition-3.md) | 140 | `result-track:a4e6a905e30df26dd892ba849bc0f2d4a41d028c455ba8bf83b73168e85e03f0` |
| 18 | `theorem` | [zero_measure](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/zero-measure-source-edition-2.md) | 144 | `result-track:a76a11702b997ca10fc627e64972ea16116d1a7c27349deae9f1e7c09ca25d89` |
| 19 | `theorem` | [quasiErgodic](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/quasiergodic.md) | 154 | `result-track:85d8b85b670b553a31f5f9a5c010612babfd21142225158c2344c52167e6bf5e` |
| 20 | `theorem` | [ae_empty_or_univ_of_preimage_ae_le'](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-empty-or-univ-of-preimage-ae-le.md) | 158 | `result-track:b89ae6bbb7548d1118d92131d3a907d8e15e3d309294e5139a94842fafc67cfe` |
| 21 | `theorem` | [ae_empty_or_univ_of_ae_le_preimage'](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-empty-or-univ-of-ae-le-preimage-source-edition-2.md) | 165 | `result-track:db8071f6b29ed7eff0c9ce0750320127b170d6ecbfdc700092cac6324692c131` |
| 22 | `theorem` | [ae_empty_or_univ_of_image_ae_le'](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-empty-or-univ-of-image-ae-le.md) | 172 | `result-track:9afc994f36affd8adca5e4e7c4c27f1b83aaf120d91cf84c6f5c00473b4a303b` |
| 23 | `theorem` | [symm](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/symm.md) | 180 | `result-track:3a570549eadc7ff9c9e3a031dbcab9f440474149020ffc3ac804ab987d8458a4` |
| 24 | `theorem` | [symm_iff](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/symm-iff.md) | 185 | `result-track:212bf43220131b79840eca0fe20e86730cf21398ae40ae087443bf0ff41ea61f` |
| 25 | `theorem` | [smul_measure](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/smul-measure.md) | 187 | `result-track:8e6914dea0e20704b2e2d5671a87b65a38a762b2de47b8ddacac713041aa07d7` |
| 26 | `theorem` | [zero_measure](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/zero-measure.md) | 191 | `result-track:6d279401c9256a243492e9fbe80fb5a4ed980190c4c5b0e2e916fe76c9b9ba2e` |
| 27 | `theorem` | [ae_empty_or_univ_of_preimage_ae_le](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-empty-or-univ-of-preimage-ae-le-source-edition-2.md) | 200 | `result-track:efe119914e2ff3728531dfe6d9b8a78fcade7145145a09359edb5b6544db5f7f` |
| 28 | `theorem` | [ae_empty_or_univ_of_ae_le_preimage](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-empty-or-univ-of-ae-le-preimage.md) | 204 | `result-track:18411578067e8041030e263aad8d589b375e6bf403d6c28046cb69327b79756e` |
| 29 | `theorem` | [ae_empty_or_univ_of_image_ae_le](../../../../DynamicalSystemsAndErgodicTheory/Ergodic.lean/declarations/ae-empty-or-univ-of-image-ae-le-source-edition-2.md) | 208 | `result-track:e2c8ebacec60c1313bf96fd580deb4b2db2778ff7983b88146bb41ef32938f8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb71d576dc27d6b1376a1b9d67d05a800c12bedffbf1528d9f30a5263a8eb463 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variant21cca0df6998b37bee113fa50787c01ab86318e1f5a1643838a58b981c91641c.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variant21cca0df6998b37bee113fa50787c01ab86318e1f5a1643838a58b981c91641c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
