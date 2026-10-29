# Verification target: First Derivative Test

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16e95ec805e2c28520907cd2576082d3036d9572",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FirstDerivativeTest.lean/index.md) · [Full source](../../../../RealFunctions/FirstDerivativeTest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16e95ec805e2c28520907cd2576082d3036d9572`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.OrderClosedExtr` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocalMax_of_deriv_Ioo](../../../../RealFunctions/FirstDerivativeTest.lean/declarations/islocalmax-of-deriv-ioo.md) | 45 | `result-track:075147ba524b799cac5a9c273e03573f6cef5a90571eb8cd4f871423557e33d2` |
| 2 | `lemma` | [isLocalMin_of_deriv_Ioo](../../../../RealFunctions/FirstDerivativeTest.lean/declarations/islocalmin-of-deriv-ioo.md) | 63 | `result-track:b1d7c1d38b592082f64f038ea406a4ba37335e20c98dd8a36cc1f5ad115f84d2` |
| 3 | `lemma` | [isLocalMax_of_deriv'](../../../../RealFunctions/FirstDerivativeTest.lean/declarations/islocalmax-of-deriv.md) | 76 | `result-track:6996dc5ef20dbdf3f2aac26506a52c06d9e0c2c96f6e2dfefee02ed34b13b359` |
| 4 | `lemma` | [isLocalMin_of_deriv'](../../../../RealFunctions/FirstDerivativeTest.lean/declarations/islocalmin-of-deriv.md) | 89 | `result-track:28dbd33747e15ad55e42b5e0f73426c4f4e04ce783fa4e8b37d935222eb9ad79` |
| 5 | `theorem` | [isLocalMax_of_deriv](../../../../RealFunctions/FirstDerivativeTest.lean/declarations/islocalmax-of-deriv-source-edition-2.md) | 101 | `result-track:e25afeb068c63fb10ad2325af8cdb83400b10f31e89e1066d54b513764a8bba1` |
| 6 | `theorem` | [isLocalMin_of_deriv](../../../../RealFunctions/FirstDerivativeTest.lean/declarations/islocalmin-of-deriv-source-edition-2.md) | 108 | `result-track:72bf3448a22e00a2332cbb53c050ce1f31e23d3be5d34a91ee717d533ac539b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34effde4fa3c06b0471bad13f905402945325d2240f2ed81e33f924a8060a181 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
