# Verification target: Quartic Bump ODEAttempt04 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83c45b5a9f233e0a47999da76d533327d2781b3d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant7cb3db469ab8ae966cbd9a40d6232aee74c41eb09a3d150973e6a285c0fd5b35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83c45b5a9f233e0a47999da76d533327d2781b3d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant7cb3db469ab8ae966cbd9a40d6232aee74c41eb09a3d150973e6a285c0fd5b35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant7cb3db469ab8ae966cbd9a40d6232aee74c41eb09a3d150973e6a285c0fd5b35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMellinFilter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/bumpmoment.md) | 23 | `declaration-track:a8125687a8b9543946856e4022821066208c8226409514fb18179a07320ead0f` |
| 2 | `def` | [fifthProfile](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/fifthprofile.md) | 26 | `declaration-track:ef4c9335ea41901f57429313e7cb2262b0b956fb59ceb8bf1db4660c1130c27b` |
| 3 | `theorem` | [moment_profile_continuous](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/moment-profile-continuous.md) | 28 | `result-track:1ffa278f079553cd4e60701c6f34c524d3f652ff4a391a973d9aa805bcc35a65` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/moment-profile-hascompactsupport.md) | 32 | `result-track:a1e302c6ddb5aed3088b1a39164e2f88a3d491288009c18b257b444d01fea660` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/bumpmoment-integrable.md) | 36 | `result-track:7be6460fb3f7ac63069569bf920d7397046a247522c422dbd5a66481724236a8` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/bumpmoment-hasderivat.md) | 40 | `result-track:6b3305c0c881c84e5b1c17ca19e7048f049ca6e68a1c0e257f945c62aa358103` |
| 7 | `theorem` | [bumpMoment_differentiable](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/bumpmoment-differentiable.md) | 52 | `result-track:9f2b55f379b42d40c8ff0b16c2d926134e8b434bd38e5d7fda2862697cbf3067` |
| 8 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/bumpmoment-zero-eq-quartic.md) | 56 | `result-track:a5a0a821a6b5a4e7d9acb858eab29bb196ea8a3b9ba484b3377ea12f55d5ad86` |
| 9 | `theorem` | [quartic_value_zero](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/quartic-value-zero.md) | 61 | `result-track:0630661b61d6b7122dfb71bb30b0558e2400f0706f4527276738f40bdb5ca224` |
| 10 | `theorem` | [quartic_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/quartic-hasderivat.md) | 78 | `result-track:cfcf853bf17040bcb4aa879286a2efb562d5cbefac2459c13fdc2963857ee7ac` |
| 11 | `theorem` | [quartic_deriv](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/quartic-deriv.md) | 83 | `result-track:e58e7de7c1893769ce6964ce00b8c84a06727f0b98ca9c31f757bd7287973bc8` |
| 12 | `theorem` | [quartic_second_deriv](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/quartic-second-deriv.md) | 86 | `result-track:c93922fa1759fdfa9bfa0db2055518f308ac386198d0de71ddb9a61140eb8b4f` |
| 13 | `theorem` | [fifthProfile_contDiff](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/fifthprofile-contdiff.md) | 90 | `result-track:53f5dd47e7f97a4806b8cda3b3e5556b03a135ddcb701749fa0a1457214ac410` |
| 14 | `theorem` | [fifthProfile_hasCompactSupport](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/fifthprofile-hascompactsupport.md) | 94 | `result-track:c650ee158fcc369631033f99ed2ea77aeb7b49d4399a08b633163495f1cb7ce3` |
| 15 | `theorem` | [fifthProfile_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/fifthprofile-hasderivat.md) | 97 | `result-track:cc44f512b0381544ba77603163582b5c75c47467ff5eb64c026e2897faa7e1d3` |
| 16 | `theorem` | [fifthProfile_deriv](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/fifthprofile-deriv.md) | 110 | `result-track:981c335d534d977198fa17a07abdc562e68b653d04e3cb99f62f153f3c3f0583` |
| 17 | `theorem` | [fifthProfile_transform](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/fifthprofile-transform.md) | 113 | `result-track:86f4850c3f7f4ded26606bd80e98f4a3a74c914bc1892fa006f57b35c1a368d2` |
| 18 | `theorem` | [fifthProfile_deriv_transform](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/fifthprofile-deriv-transform.md) | 128 | `result-track:cbd0648a8b82d438f51381c8cc36b03f810e7f38c7b08abd7a92bd50f7738e52` |
| 19 | `theorem` | [literal_quartic_ODE](../../../../MeasureAndIntegration/QuarticBumpODEAttempt04Namespaced.lean/declarations/literal-quartic-ode.md) | 138 | `result-track:78537d8c25e8277e27f912b17807de2a7ec322efab6d7b3d440f27d122ddb6ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=130bb0e8f0cec37e47f015bd32f1b07e0760080acf18f62ca3fc15a41d837ab3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant7cb3db469ab8ae966cbd9a40d6232aee74c41eb09a3d150973e6a285c0fd5b35.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant7cb3db469ab8ae966cbd9a40d6232aee74c41eb09a3d150973e6a285c0fd5b35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
