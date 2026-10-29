# Verification target: Source Filter Delta Literal Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7e6cd7df97637494d96a8b64397b7439ed9f445",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7e6cd7df97637494d96a8b64397b7439ed9f445`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Lindelof` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 5; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment.md) | 26 | `declaration-track:ae6aaf40fdfad94144bcb5d2341e79b5b76042371728b3076a1389822933907e` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment-intervalintegrable.md) | 31 | `result-track:f9ac663b2c772425707a75ca2172c65c054e24777dcd00a5fc7cd66351a7544c` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment-zero-eq-source.md) | 38 | `result-track:10a989390c41e2747d49699c9330bcc629b41ec65d0b0c755a0c1da42abbbf04` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment-zero-zero.md) | 51 | `result-track:e73a920c211c953a72a3c9a17b4c2a12aace046ebdd83c29332877177b4b6087` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpflux-hasderivat.md) | 61 | `result-track:6e03c9342c29d47709ca491b6548e82e625ab987bf1070b0beb000f1c9f04fab` |
| 6 | `theorem` | [bumpMoment_equation](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment-equation.md) | 72 | `result-track:98fef10b45442ef52b80042160fd31e8c26c077d1d3f3a5d0aa93df265309106` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/re-eq-zero-of-weighted-energy.md) | 107 | `result-track:0db8b1e8f35b2cbb7e364621ff72999d0f2d7e74079c20126090d318a8ced17b` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpprimitive-hasderivat.md) | 136 | `result-track:5144241c06a8922967d3c66a505b12648573d686bb70c6f15ea1a0c9b12fae61` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment-closedformula.md) | 151 | `result-track:4ffbb4240df216e12f79d0c707dcb4654ce9cc6e3cf03bf1b40c17c67f607438` |
| 10 | `theorem` | [V_zero](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/v-zero.md) | 176 | `result-track:856668098ba96aebff567ca628e52ecc01dc096f38da0dee261244308fc436dd` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/v-eq-bumpmoment.md) | 185 | `result-track:a67df17469439fbb46abb91b325863b766d581ad44c71e92d745329c87627e42` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/w-eq-bumpmoment.md) | 198 | `result-track:fa1a0ecc1ad99f7b8119990ef4c847d01ebd5f0ddd8142559ebf4d04c5e77c82` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment-hasderivat.md) | 220 | `result-track:2bd906f19718d25798d0e34b6f444cd15f561204ed40021e6617adccbe8a231f` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment-continuous.md) | 256 | `result-track:7730d842014e48fda0dbc9c3669cb9dc3be030d043827e83b39a19ed543e7b50` |
| 15 | `def` | [radialProfile](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialprofile.md) | 261 | `declaration-track:41d93e7924a075354aad8ed492712fd10899b06b506cb47611f1f1bd99e89615` |
| 16 | `def` | [radialFlux](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialflux.md) | 264 | `declaration-track:fec5c7c34ee4f171521d28ffefdd314897afe9b3315a70e181d616227ae0d06e` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialprofile-hasderivat.md) | 268 | `result-track:2b72ec4d34b1f4db099129c26b1181dc4534358066127c36c106298126f7c3e3` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialflux-hasderivat.md) | 277 | `result-track:742550266c7e830221da0f874fccbb7d1d2e764023fd2b0c89376c54bb6447a7` |
| 19 | `theorem` | [radialProfile_continuous](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialprofile-continuous.md) | 287 | `result-track:cd9cd691021c1d36df53b6bfa007b388bc215790acacfc0072c0d24279a76e0a` |
| 20 | `theorem` | [radialFlux_continuous](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialflux-continuous.md) | 291 | `result-track:98c3bf2a01014e721b23a4318859c1a4c35f0501e3d931a947f5af4acfd409b8` |
| 21 | `def` | [radialMass](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialmass.md) | 296 | `declaration-track:e3f5ebeeb164da75940eaec371151a5987e02fc840b11f6329ecd1083de718c7` |
| 22 | `def` | [radialEnergy](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialenergy.md) | 299 | `declaration-track:f8c38eec09ef5229e031d82ab99fd310ab7f29fee4421bafeddd3bbc4fba05aa` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radial-integrands-intervalintegrable.md) | 303 | `result-track:55a3d02e9f8b93e106a1e43f0975ef1c34ce9006cc64494b6fcd780c292cbb6e` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialenergy-nonneg.md) | 315 | `result-track:4dc72c9ec8b69d70500cd557d60507ac102911e367f6c27a437aa3ab9b56abed` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialprofile-eventually-ne-zero.md) | 321 | `result-track:373c3a4ff60153aa884ae22382ddbc7afc8e81ff58cbef6bc319e33f29c29277` |
| 26 | `theorem` | [radialMass_pos](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radialmass-pos.md) | 328 | `result-track:8715e8f4fab8c0d3d00673592808e613ea7251a05c527bacc3bc47d3181c7ccc` |
| 27 | `theorem` | [radial_energy_identity](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/radial-energy-identity.md) | 344 | `result-track:edf8a774e9373a3a819bc391a7b46dd72c30cb8965166e35bd5c31c1f5e7c7b2` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/bumpmoment-zero-re.md) | 402 | `result-track:518732b36c04a0484d2b1f471276c6e820c0eb780694ba9efe58fc2646f989e0` |
| 29 | `theorem` | [W_zero_set_countable](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/w-zero-set-countable.md) | 419 | `result-track:e3ed0992b900f5330ad3fd77f58f19cf839b62e43d8c3eaac8235352959ea9dd` |
| 30 | `theorem` | [boundaryW_ae_ne_zero](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/boundaryw-ae-ne-zero.md) | 440 | `result-track:4bd988a9c2f849ed22e0ecfea8d998bee11243836aa381a5b13ee46e4d21cf59` |
| 31 | `def` | [boundaryFilter](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/boundaryfilter.md) | 447 | `declaration-track:56e8965b519c05dea3124e758777afc4f31857193eb95545413c23cb151a9c2c` |
| 32 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/example-source-edition-3.md) | 460 | `declaration-track:8af68b31b2fb956d923b7f445155c0802c8ad96feb2fc33a0c32d8779476e77b` |
| 33 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/example.md) | 461 | `declaration-track:166763e3a902819b4d5e0592fd2eda1bd0976dd985e3ef1b798e2b17ac0608e1` |
| 34 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceFilterDeltaLiteralCheck.lean/declarations/example-source-edition-2.md) | 462 | `declaration-track:81abf64135a21e7eec7779f9c20faa88e170e3c968a3d4c80354dd764424ab14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec6c3bafa33ac5c1f5e577d48b110f3c27a69d908a41117c779927c1344c138c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
