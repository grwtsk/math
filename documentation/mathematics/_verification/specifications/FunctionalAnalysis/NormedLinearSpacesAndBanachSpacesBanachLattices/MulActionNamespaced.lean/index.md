# Verification target: Mul Action Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "360afa753c042e8ce488880dc80f9bb5873dbfdb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `360afa753c042e8ce488880dc80f9bb5873dbfdb`.

Source path: `GRWTSK/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENNReal.Action` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Algebra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/norm-smul-le.md) | 38 | `result-track:6a9d945f77423531e95cc1778dcaf9d749d24e8976d8af68e46de7a6299811ec` |
| 2 | `theorem` | [nnnorm_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/nnnorm-smul-le.md) | 42 | `result-track:7aae38b788a867d54119af3dcdf4ed8b97d4d712643969dd52b76b2a315f73ab` |
| 3 | `lemma` | [enorm_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/enorm-smul-le.md) | 46 | `result-track:9663dd7d0de3a1a6e360e019e38f461839feb8b932cb7308af33dc02b64befde` |
| 4 | `theorem` | [dist_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/dist-smul-le.md) | 49 | `result-track:36524cf4e54ee59e29ca66972ecf877e0f6879ceef59a9680688fb102bf32ec3` |
| 5 | `theorem` | [nndist_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/nndist-smul-le.md) | 52 | `result-track:5cbd726c11b4125830bb216b7753cbc849419f52a83178646cd4ea4a6325066b` |
| 6 | `theorem` | [lipschitzWith_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/lipschitzwith-smul.md) | 55 | `result-track:e4a23851120279c39d47a610ef30fc4ce44613900c761bbaf6e42ae1ddd47041` |
| 7 | `theorem` | [edist_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/edist-smul-le.md) | 58 | `result-track:c81e0aefaf5c20d987678ef2586da2072c3f632728bd837935c88d057de2e13b` |
| 8 | `instance` | [NonUnitalSeminormedRing.isBoundedSMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/nonunitalseminormedring-isboundedsmul.md) | 64 | `declaration-track:5293daa7f34c0607d63b8b422807dd94c517293422be3218a56fb86282427b7e` |
| 9 | `instance` | [NonUnitalSeminormedRing.isBoundedSMulOpposite](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/nonunitalseminormedring-isboundedsmulopposite.md) | 70 | `declaration-track:193da42918acefb362e4733a5d8419f4466ad8601cd0dead63c77cbd85621fb0` |
| 10 | `theorem` | [IsBoundedSMul.of_norm_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/isboundedsmul-of-norm-smul-le.md) | 81 | `result-track:acecedc45b9f7ae9a9c752e4c86683c258a8f6d1c01c3d6c40f977906934f013` |
| 11 | `theorem` | [IsBoundedSMul.of_enorm_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/isboundedsmul-of-enorm-smul-le.md) | 86 | `result-track:6d4806764510201afc9c1832142a4962aeda41ad0a8563683fe93a1a24b1650d` |
| 12 | `theorem` | [IsBoundedSMul.of_nnnorm_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/isboundedsmul-of-nnnorm-smul-le.md) | 93 | `result-track:9e580fda90760eeb4905e543194510bef9a2753fb1315be7025538b1fe799566` |
| 13 | `class` | [NormSMulClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/normsmulclass.md) | 105 | `declaration-track:aef0bd51cb30bc998d650ae8a7ee2ee6e544d59deec1af81d7ae0c3736c8c793` |
| 14 | `lemma` | [norm_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/norm-smul.md) | 108 | `result-track:e873097d0aa0b3315b1c12bd29d6dd91a8ed83784141f7eecbb792aa74aaf2cc` |
| 15 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:fb3c3028fef9475b5da5b73b74ede3f41f3f70c398957e41588c2b98e2f25c88` |
| 16 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/instance.md) | 116 | `declaration-track:aeeb2238793818c8d8195551b50ff5f31b7d2f6265256c2e5a840b0e55c1e247` |
| 17 | `theorem` | [NormSMulClass.of_nnnorm_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/normsmulclass-of-nnnorm-smul.md) | 122 | `result-track:2d2a645da4669fe8d0de72dbe57d77235888515d827cd819e224728b5e1090d6` |
| 18 | `theorem` | [nnnorm_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/nnnorm-smul.md) | 128 | `result-track:44c40c793768bea0ef1dd6dbfdb3ff40eb6403c19392889a9762755e51f07a88` |
| 19 | `lemma` | [enorm_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/enorm-smul.md) | 131 | `result-track:d74477b988632a0d4319d1d0a406bf721035abcd8e863130b6c6469994f28d35` |
| 20 | `instance` | [Pi.instNormSMulClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/pi-instnormsmulclass.md) | 133 | `declaration-track:028ebc59b50f28783b1281341b21e052b7ae5969739ade8e6dc75b72b0117368` |
| 21 | `instance` | [Prod.instNormSMulClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/prod-instnormsmulclass.md) | 139 | `declaration-track:36a4e1653b658b208c6547e5ed2be96663ee67d29dbadfafe4bbc14762e99eff` |
| 22 | `instance` | [ULift.instNormSMulClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/ulift-instnormsmulclass.md) | 144 | `declaration-track:c16b102987ccb3e516ce4751350af0b58a6b7b29b97d5935e29871f4cde8a831` |
| 23 | `theorem` | [dist_smul₀](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/dist-smul.md) | 153 | `result-track:b534db19405c9e258bb3d350c807374ab2af5053c9f162ff23e607396b5c5ce0` |
| 24 | `theorem` | [nndist_smul₀](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/nndist-smul.md) | 156 | `result-track:84ffbd213d143340c781fad8059648c832616f33dc31b7aed1b233528cfce834` |
| 25 | `theorem` | [edist_smul₀](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/edist-smul.md) | 159 | `result-track:e11814cb5b9fe3b316a3f193fbb1c87b3b88c785ebf5d71206ff92269bcd954c` |
| 26 | `instance` | [NormSMulClass.toIsBoundedSMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/normsmulclass-toisboundedsmul.md) | 162 | `declaration-track:b8b0d39a019e2071f3b103561e51ce00045901deb122b6f1eb3464f5fa14e2c2` |
| 27 | `lemma` | [NormedDivisionRing.toNormSMulClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/MulActionNamespaced.lean/declarations/normeddivisionring-tonormsmulclass.md) | 175 | `result-track:3e423208f6aa2378449df14fb30db92b822f2ab4caf512b16aadf2b09ea9349b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30cd60fa61691c64f7d7b7a92e0b31035bab28b0d22e6b0d8f32b981c024885f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
