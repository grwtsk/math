# Verification target: Quartic Bump Energy Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a660f0653e2e73b04e1b6d9157c4749536d1918e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a660f0653e2e73b04e1b6d9157c4749536d1918e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/rayvalue.md) | 20 | `declaration-track:e01ff5d1a561bbc3dc796d01c1482432aa21a42d09fe8964f628bd26e33bbe95` |
| 2 | `def` | [raySlope](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/rayslope.md) | 21 | `declaration-track:1a358b81b5acbfcaad6d256c53544534566e9b8139db4a19b7c6483b57dacc44` |
| 3 | `def` | [weightedMass](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/weightedmass.md) | 22 | `declaration-track:7c4b445e542983860ad97ff23a081dbfe48ae11d65ab00433ce7ecbd32b2605f` |
| 4 | `def` | [weightedEnergy](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/weightedenergy.md) | 23 | `declaration-track:ca722ea8cf793b51de84fa2414bbd2116a85731b7b7efec37bd7a83916e2ba72` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/rayvalue-hasderivat.md) | 25 | `result-track:1618c5b89ef37142e915833476e1cf1d0f489884ac1ce6f4eaf351f0d39ae822` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/rayslope-hasderivat.md) | 33 | `result-track:6fc1954bb5d8ca59875a4a720091278dc10ca4ac851e2d01edb304c118795bdc` |
| 7 | `theorem` | [rayValue_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/rayvalue-continuous.md) | 41 | `result-track:791f57779fb44b74748da60deaa934d486545b86d579a40bf516d5c7f7192c8e` |
| 8 | `theorem` | [raySlope_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/rayslope-continuous.md) | 44 | `result-track:c85a7963de3f6e1f437319fbc31eb0060f1cac51e1f7105d0495f027a5604c9e` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/weightedray-hasderivat.md) | 47 | `result-track:9ce1c55a3c204cbc63d25aa591b1beb0e3647090e46446fb23b213959fd9d7ad` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/conjugateray-hasderivat.md) | 59 | `result-track:b75d6f0fbd59a8ea298316cd09015760485c5346c759e1130478bfa187126fb7` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/mass-integrand-continuous.md) | 63 | `result-track:fb67b80c478e2036f489b14fad0f00757f91027866a1beb6bcb5b4a77b880c53` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/energy-integrand-continuous.md) | 67 | `result-track:4d307e673e56c45258bfe63e7420d1e3ce55296e5cf25e103adf79d2605ce507` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/weightedenergy-nonneg.md) | 71 | `result-track:048419bf0b21a645e345011fd44f4ebabc7dba9302a5514567a724c91adeeffe` |
| 14 | `theorem` | [rayValue_zero](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/rayvalue-zero.md) | 75 | `result-track:429f7cd6e7b37a210d8dc046f8a2c4227f2190de095b50f0ad0c2182a19c5e3e` |
| 15 | `theorem` | [weightedMass_pos](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/weightedmass-pos.md) | 78 | `result-track:f168ffdaba62ca0b41fcdcd3d8c8e649c5c651035fb81616b2df68e0514a6880` |
| 16 | `theorem` | [weighted_energy_identity](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/weighted-energy-identity.md) | 93 | `result-track:cab380691a5db2b05aae657886b7afaa7e494cbc859879483328623c30766bc4` |
| 17 | `theorem` | [literal_quartic_nonzero](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/literal-quartic-nonzero.md) | 135 | `result-track:c6c37a6da9bd8d3169c1d08e67cc332a8cadb204d7c284cff1826d8f9286c1c2` |
| 18 | `theorem` | [actual_mellin_halfstrip_nonzero](../../../../MeasureAndIntegration/QuarticBumpEnergyNamespaced.lean/declarations/actual-mellin-halfstrip-nonzero.md) | 153 | `result-track:71445b5c6322e9a847e5d09c8ccf48c66393fccc2fe2e6e5d309882e9621484d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b25744917f6de0f2e2375b58d12c5e4a6db0ef2941913d24391a6bc01813f25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
