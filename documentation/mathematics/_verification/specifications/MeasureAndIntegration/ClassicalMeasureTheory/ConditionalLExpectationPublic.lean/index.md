# Verification target: Conditional LExpectation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ee4e8daed564c81a694d3fb206cddf597cda298",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ee4e8daed564c81a694d3fb206cddf597cda298`.

Source path: `GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condLExpUnexpander](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexpunexpander.md) | 88 | `declaration-track:77eaf846c9733bb712ec0bc42d089da058908351e5b774c39e153a540775f8af` |
| 2 | `theorem` | [condLExp_of_not_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-of-not-le.md) | 99 | `result-track:b46f1a37e052a2afe7546862dd0622e88b9973121d9daa1ebe4a768f2b2bcd3c` |
| 3 | `theorem` | [condLExp_of_not_sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-of-not-sigmafinite.md) | 102 | `result-track:1c42d9f3432bc15775cf65b9b08f960298c4b3edf73940f43899f492cf45063b` |
| 4 | `theorem` | [condLExp_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-eq-self.md) | 105 | `result-track:eac309791fe40a320e318ebcbacdb228cdfdf4187d318b4ad3a2eabd0f78fb0b` |
| 5 | `theorem` | [condLExp_of_not_sub_sigma_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-of-not-sub-sigma-measurable.md) | 109 | `result-track:8325b8c6d190db1d655a2a4840cc1425cfe7d74f68012c3b0967390628a0043d` |
| 6 | `theorem` | [measurable_condLExp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/measurable-condlexp.md) | 115 | `result-track:6713f23779e1b2e313ee9e80a0587b3cb35b7b361ab22b9a177b3bb5916f6e73` |
| 7 | `theorem` | [measurable_condLExp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/measurable-condlexp-source-edition-2.md) | 126 | `result-track:de28dacff6135dd13c23a215f8c2bf8cac0f1b6dd766513b6632c7b26bf6191d` |
| 8 | `theorem` | [setLIntegral_condLExp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/setlintegral-condlexp.md) | 136 | `result-track:76c46d8fe1955fc2644694da980f539469309389ff0cd4103127eb555ed54cfa` |
| 9 | `theorem` | [setLIntegral_condLExp_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/setlintegral-condlexp-trim.md) | 147 | `result-track:94faac03d15f99924bd685efc02cb5363e9e39919681219b48c084f1bb6e7a1e` |
| 10 | `theorem` | [lintegral_condLExp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/lintegral-condlexp.md) | 152 | `result-track:1c529f694de2ce3a615d64b37bd740e09f79451b18673499d4083e83fb13698f` |
| 11 | `lemma` | [condLExp_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-lt-top.md) | 156 | `result-track:35b0c2b349ba5f828805f6ae65a625f01b3f909acfc9b4e34de4fa47d5293705` |
| 12 | `lemma` | [condLExp_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-ne-top.md) | 163 | `result-track:07a7787791d0a127ead1de457d3eb8b639fb330c41bb5bfe90e1698fa24c9ea6` |
| 13 | `theorem` | [ae_eq_condLExp₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/ae-eq-condlexp-source-edition-2.md) | 166 | `result-track:48e9ccb1347605bbd4f098f34499b7bc858b43e3240d45aa162d9c15fe4e9923` |
| 14 | `theorem` | [ae_eq_condLExp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/ae-eq-condlexp.md) | 178 | `result-track:3a8cfee1aefc10ce9b5d30ec2070d2db73001233915d50541ded94e199d55b30` |
| 15 | `theorem` | [condLExp_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-const.md) | 183 | `result-track:9baacc0784cdae3d799a4fc27b7350cc0ea3ec455c473651daf46510344f3a7a` |
| 16 | `theorem` | [condLExp_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-congr-ae.md) | 187 | `result-track:09637f166dfa4bbac72afd58396dfc06841619cec61d4df47a7dea8d641e24ee` |
| 17 | `theorem` | [condLExp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-zero.md) | 199 | `result-track:69f6749fb73554c89e3eb8297ed2d3eea7c7b74b616f94faf74d3812d1334c02` |
| 18 | `theorem` | [condLExp_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-one.md) | 207 | `result-track:dcfee3df4860175eec199940d2084d2e9780bb56d7cd1f582b2c3f8d1a680e14` |
| 19 | `theorem` | [condLExp_congr_ae_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-congr-ae-trim.md) | 211 | `result-track:67e6de17e2e8a96b763e0e361fa41dba512c738288b81b750ec2abb2c3019f97` |
| 20 | `theorem` | [condLExp_bot'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-bot.md) | 216 | `result-track:7237db353c98552f7738ba92043ea360a24b1dc01e3e17fe0d860571cf5fb0f6` |
| 21 | `theorem` | [condLExp_bot_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-bot-ae-eq.md) | 229 | `result-track:d9f2af4d326ccb621198ba976064fcb084717a88e6e7de00c4769fe17b6e4bca` |
| 22 | `theorem` | [condLExp_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-bot-source-edition-2.md) | 235 | `result-track:d880bbc155c23bc72c07f66243094c8bba62cc6342c68bef84dbaf13837cdcf8` |
| 23 | `theorem` | [condLExp_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-mono.md) | 239 | `result-track:917253a61b95e2cc042cd69e5b780087ff627adda0230bf93d4963e309956cd2` |
| 24 | `theorem` | [condLExp_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-add-le.md) | 252 | `result-track:8dd69e6852e063fef42d97c25a63e3d3ca18418532717eeb8a0912b782b89696` |
| 25 | `theorem` | [condLExp_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-add-left.md) | 267 | `result-track:ef0df51263481c2d97d8360e954a7dcf8bac9ab04ddd71a0f17b579598205911` |
| 26 | `theorem` | [condLExp_add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-add-right.md) | 280 | `result-track:9db56bd1aa84976afe8e76beaba4c1afc7328e8ce7b172c5dbf054ec2a467b70` |
| 27 | `theorem` | [condLExp_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-smul.md) | 285 | `result-track:4b429f08c0d3d46edb83d77cb6c7725b573d174d108146120689f74e9f14177a` |
| 28 | `theorem` | [condLExp_smul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-smul-le.md) | 297 | `result-track:5fefcaecb9b094cf8c6f6db0387ae203d792043d51b0dd32ef9f51dff8558747` |
| 29 | `theorem` | [condLExp_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-smul-source-edition-2.md) | 309 | `result-track:dbf0d348458937901600e5596c2c3570ec6df91a09c4ff4dd1b07a2ee70d1f04` |
| 30 | `theorem` | [condLExp_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-tsum.md) | 324 | `result-track:49bff8229a4cb8415ac8ed940e7d8bd6fb7e6358e18bc647bf69913c6d764083` |
| 31 | `theorem` | [condLExp_finsetSum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/declarations/condlexp-finsetsum.md) | 338 | `result-track:9c34f9ebc7cf3436b992314c4027da0525ab3bbaff26b469392aa969f36e34f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9dc1a3d53fd18fc72349dc81d19de43ac4491a6567893bf8865d646b956d987 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
