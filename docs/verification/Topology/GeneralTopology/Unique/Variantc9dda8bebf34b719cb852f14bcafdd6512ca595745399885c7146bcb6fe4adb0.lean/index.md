# Verification target: GRWTSK.Topology.GeneralTopology.Unique.Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39ab965024e0bac57bd24f01951a70af90276218",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39ab965024e0bac57bd24f01951a70af90276218`.

Source path: `GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.EverywherePos` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Urysohn` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ordered` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsCompact.measure_eq_biInf_integral_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/iscompact-measure-eq-biinf-integral-hascompactsupport--2c3f4d1adc6d74af7da300b5.md) | 82 | `result-track:2c3f4d1adc6d74af7da300b515cdbd2c42c2cbf84a0a8fb262a6a12bcb8d0dd6` |
| 2 | `lemma` | [continuous_integral_apply_inv_mul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/continuous-integral-apply-inv-mul--5271096889afe538e101f8e3.md) | 111 | `result-track:5271096889afe538e101f8e3751b74786bc7e6c19fca9665df28ed8ffd556be0` |
| 3 | `lemma` | [integral_isMulLeftInvariant_isMulRightInvariant_combo](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/integral-ismulleftinvariant-ismulrightinvariant-combo--98add4beb6018b51a8126cd7.md) | 157 | `result-track:98add4beb6018b51a8126cd79a4df52d9026340342c0fcc92d357782b9ac7197` |
| 4 | `lemma` | [exists_integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/exists-integral-ismulleftinvariant-eq-smul-of-hascompactsupport--c0bdbd5c158fb39861513fb0.md) | 251 | `result-track:c0bdbd5c158fb39861513fb0eaea297016a680975c0903c0d2bd0adb2e398991` |
| 5 | `def` | [haarScalarFactor](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/haarscalarfactor--425db93c4e6c3d8cea9510f4.md) | 302 | `declaration-track:425db93c4e6c3d8cea9510f4b022ead8bd76b7b8f2e24a2d244a56f98ba49a9b` |
| 6 | `theorem` | [integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/integral-ismulleftinvariant-eq-smul-of-hascompactsupport--d1fc54bffa21a1659db4eefd.md) | 317 | `result-track:d1fc54bffa21a1659db4eefda6b4c5b8676596eba613c8e9a095061d359e6b3c` |
| 7 | `lemma` | [haarScalarFactor_eq_integral_div](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/haarscalarfactor-eq-integral-div--a09f81e4246974aa12b803fe.md) | 329 | `result-track:a09f81e4246974aa12b803fee30e3dac4c16f2c6c20c83ac92536398f850c092` |
| 8 | `lemma` | [haarScalarFactor_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/haarscalarfactor-smul--feddf46424ee799289b8d070.md) | 338 | `result-track:feddf46424ee799289b8d070c292c6b75e980de4aab35aab213301f3905f0942` |
| 9 | `lemma` | [haarScalarFactor_self](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/haarscalarfactor-self--3bf7b43401b65f4c22611981.md) | 355 | `result-track:3bf7b43401b65f4c226119818e859899f2f9fb91d2129d30f0cbc0e5e7107fee` |
| 10 | `lemma` | [haarScalarFactor_eq_mul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/haarscalarfactor-eq-mul--3408f6bf8292c5983736c0ae.md) | 370 | `result-track:3408f6bf8292c5983736c0ae40a92d01f1217ea808ff102347e2cbac04060915` |
| 11 | `lemma` | [haarScalarFactor_pos_of_isHaarMeasure](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/haarscalarfactor-pos-of-ishaarmeasure--fde1576db1dff8a45074a85b.md) | 396 | `result-track:fde1576db1dff8a45074a85be71c41945728917cb925f357b0f5c4ade2f23ade` |
| 12 | `lemma` | [measure_preimage_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measure-preimage-ismulleftinvariant-eq-smul-of-hascompactsupport--4e927fed7d08bcf414e87e91.md) | 451 | `result-track:4e927fed7d08bcf414e87e910721c7b0d9538802d04346b4a67a08184516a32e` |
| 13 | `lemma` | [smul_measure_isMulInvariant_le_of_isCompact_closure](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/smul-measure-ismulinvariant-le-of-iscompact-closure--24efbc9b73f3bb372fed9355.md) | 528 | `result-track:24efbc9b73f3bb372fed93557ce19b8085274d6ccb553614c4020a5e0bacbc51` |
| 14 | `lemma` | [measure_isMulInvariant_eq_smul_of_isCompact_closure_of_innerRegularCompactLTTop](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure-of-innerregularcompa--84cd91276eeb8f3f2fb8211b.md) | 559 | `result-track:84cd91276eeb8f3f2fb8211bb4a2c4246300d1d5ed7b1e438f57dba7dd263681` |
| 15 | `lemma` | [measure_isMulInvariant_eq_smul_of_isCompact_closure_of_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure-of-measurableset--761b0dfa59d860c4f7a3c200.md) | 600 | `result-track:761b0dfa59d860c4f7a3c200fccd07252f96b9ed1904b05b2468481d52b9a48f` |
| 16 | `constant` | [&#96;addHaarScalarFactor](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/addhaarscalarfactor--4522665b05584ed03a6f9da0.md) | 619 | `declaration-track:4522665b05584ed03a6f9da09c7496c8459b98d27a83be9e88bcdb1d90e87307` |
| 17 | `theorem` | [measure_isMulInvariant_eq_smul_of_isCompact_closure](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure--4cdf791f3658500952fe8d01.md) | 620 | `result-track:4cdf791f3658500952fe8d0198ed2c7c29c367a587fe74c1329e61f5d7f8ec20` |
| 18 | `lemma` | [isMulInvariant_eq_smul_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/ismulinvariant-eq-smul-of-compactspace--35636fdb8a0b160b7cfe92b7.md) | 648 | `result-track:35636fdb8a0b160b7cfe92b78146688407ee7c7f6a36b7e85cfb147175c432b8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/instance--846885dced9bd047eefe91f8.md) | 655 | `declaration-track:846885dced9bd047eefe91f8e21a7746e95ea7f902fdb7a7e0b984b49131d5c4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/instance--9aea298dd4e9a042360df4b2.md) | 662 | `declaration-track:9aea298dd4e9a042360df4b2c5b922b625a062045eec621f31a4301c86a282fa` |
| 21 | `lemma` | [isHaarMeasure_eq_of_isProbabilityMeasure](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/ishaarmeasure-eq-of-isprobabilitymeasure--20ba73a1723672be719dd63d.md) | 671 | `result-track:20ba73a1723672be719dd63d7cd85c0cf1585cdc754477cd43027541950daaa5` |
| 22 | `theorem` | [measure_isHaarMeasure_eq_smul_of_isEverywherePos](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measure-ishaarmeasure-eq-smul-of-iseverywherepos--636ee1ce86559bcd5f5f0061.md) | 693 | `result-track:636ee1ce86559bcd5f5f0061b23526f5543e8a392555220bc660eac7de3c38db` |
| 23 | `theorem` | [measure_isHaarMeasure_eq_smul_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measure-ishaarmeasure-eq-smul-of-isopen--987bea2f6e6868bd857b427e.md) | 800 | `result-track:987bea2f6e6868bd857b427e5b30a88f9102727bcf731166b008933a16e890e3` |
| 24 | `lemma` | [measure_isMulLeftInvariant_eq_smul_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measure-ismulleftinvariant-eq-smul-of-ne-top--b2ef67fa8d1c748aba379979.md) | 815 | `result-track:b2ef67fa8d1c748aba3799791e07e29437d072968e6ccc24d485f718d1fccd4c` |
| 25 | `lemma` | [isMulLeftInvariant_eq_smul_of_innerRegular](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/ismulleftinvariant-eq-smul-of-innerregular--86b5600658c272c680c7174b.md) | 854 | `result-track:86b5600658c272c680c7174bb253229925b72750cb334120d4080b29af5f0a0e` |
| 26 | `lemma` | [isMulLeftInvariant_eq_smul_of_regular](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/ismulleftinvariant-eq-smul-of-regular--17ca9b2491ec4662e8b0b1c7.md) | 868 | `result-track:17ca9b2491ec4662e8b0b1c7556b6a6a4b6817c26f91c3eb2636af21d0c4d72c` |
| 27 | `lemma` | [isMulLeftInvariant_eq_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/ismulleftinvariant-eq-smul--2a6a7270e7561b0e2aa52245.md) | 886 | `result-track:2a6a7270e7561b0e2aa52245bafb5fa806a67e2da6e9c5375c860209baddb7f4` |
| 28 | `theorem` | [absolutelyContinuous_isHaarMeasure](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/absolutelycontinuous-ishaarmeasure--5300a2fe3dede8957833ad15.md) | 898 | `result-track:5300a2fe3dede8957833ad155873c9a2f57aeb92f613cef1da56b8046fc1ab3d` |
| 29 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsCompactMeasureEqBiInfIntegralHasCompactSupport.Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.MonoidHom.measurePreserving](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/root-grwtsk-topology-generaltopology-iscompactmeasureeqbiinfintegralhasc--02be0e11fd430233acf40aae.md) | 915 | `result-track:02be0e11fd430233acf40aae2e1bf287ad47ca62d3060fa847e4dd93feb4d04f` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/instance--1dcfae7ff77275c0a9166de3.md) | 942 | `declaration-track:1dcfae7ff77275c0a9166de34c23fd6200ebf731713bf91b0a47357b266999c6` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/instance--343305585711531f83de1413.md) | 967 | `declaration-track:343305585711531f83de141336c35717947b15271171418b3f6641e71af736dd` |
| 32 | `theorem` | [measurePreserving_zpow](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measurepreserving-zpow--43ea86e66a0f3fbd63691a4f.md) | 991 | `result-track:43ea86e66a0f3fbd63691a4fe0caa576e7d9bb9029f5d7e5a97331482e3d4d26` |
| 33 | `theorem` | [MeasurePreserving.zpow](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/measurepreserving-zpow--3971f599d21c7a0e1f19be1f.md) | 997 | `result-track:3971f599d21c7a0e1f19be1f81a39c1a1c3749d386959af925e93d3b3cbfbb23` |
| 34 | `lemma` | [addHaarScalarFactor_domSMul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/addhaarscalarfactor-domsmul--bc9d2082a252f43784232d21.md) | 1011 | `result-track:bc9d2082a252f43784232d2126e017870f0959cf1e97c7d019c8955a3d436e9c` |
| 35 | `lemma` | [addHaarScalarFactor_smul_congr](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/addhaarscalarfactor-smul-congr--f27f7aec98c079be35e37dc4.md) | 1026 | `result-track:f27f7aec98c079be35e37dc44fc1929270bde250b2b79a2bcbc6d948ce329526` |
| 36 | `lemma` | [addHaarScalarFactor_smul_congr'](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/declarations/addhaarscalarfactor-smul-congr--682c54a70315e6ceda111dea.md) | 1032 | `result-track:682c54a70315e6ceda111dea552f62e3ad8dc66b4b611d0c26b60ae7cf9221e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
