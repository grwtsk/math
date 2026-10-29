# Verification target: GRWTSK.Analysis.CoveringMap.Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64c4e59a2129269bca18cc9478c9eeb65178b51e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/index.md) · [Full source](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64c4e59a2129269bca18cc9478c9eeb65178b51e`.

Source path: `GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isAddQuotientCoveringMap_exp](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/isaddquotientcoveringmap-exp--6337a6f39762bb1f4f2ba569.md) | 31 | `result-track:6337a6f39762bb1f4f2ba5694ce8bc7159fec8c776996d7649a8194a08a0f7d0` |
| 2 | `theorem` | [isCoveringMap_exp](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/iscoveringmap-exp--a66356ded85ab27fec07b7ac.md) | 42 | `result-track:a66356ded85ab27fec07b7ac72551e972671f7fc9ae3e929bc2db7a19acb48ba` |
| 3 | `theorem` | [isCoveringMapOn_exp](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/iscoveringmapon-exp--5f5ed5a8627d4cd102ce2565.md) | 45 | `result-track:5f5ed5a8627d4cd102ce25658d10a2653e04483e04f9338741ea60e54f576222` |
| 4 | `theorem` | [Polynomial.isCoveringMapOn_eval](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/polynomial-iscoveringmapon-eval--d4156c0aa5243cfc80175b2b.md) | 56 | `result-track:d4156c0aa5243cfc80175b2b588d89cdbf477d9f9be8c6aebadf7db4ff9d4aa2` |
| 5 | `theorem` | [isCoveringMapOn_npow](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/iscoveringmapon-npow--04a1b555917d32567d5acf68.md) | 65 | `result-track:04a1b555917d32567d5acf6823a9d0dba960f8216084f49628ebf1037c8c0d4b` |
| 6 | `theorem` | [isCoveringMap_npow](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/iscoveringmap-npow--bde6357e147e02f486aa9a3a.md) | 73 | `result-track:bde6357e147e02f486aa9a3a78cbe696048e38f725ab9c6d245559022455fd08` |
| 7 | `theorem` | [isCoveringMap_zpow](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/iscoveringmap-zpow--98a83bf0c5d0a00a780a64fe.md) | 81 | `result-track:98a83bf0c5d0a00a780a64fe39b4079004ee75b0c66468102a1691d3179f116d` |
| 8 | `theorem` | [isCoveringMapOn_zpow](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/iscoveringmapon-zpow--15376ea406169eff47a69a43.md) | 89 | `result-track:15376ea406169eff47a69a432abeb69cbc3bccbcc623b4c221c33b2b13a87c3b` |
| 9 | `theorem` | [isQuotientCoveringMap_npow](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/isquotientcoveringmap-npow--71f4e5db8cdb7e5b81bb1b8b.md) | 100 | `result-track:71f4e5db8cdb7e5b81bb1b8b92d2f98aaa52fb2b6791724b3d608fa29de8775d` |
| 10 | `theorem` | [Complex.isQuotientCoveringMap_npow](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/complex-isquotientcoveringmap-npow--499c83a1de16f8ed0de14c1e.md) | 116 | `result-track:499c83a1de16f8ed0de14c1ec5f0fe7eb1a5ff7482bb7c95d3bfef5648e8ab9a` |
| 11 | `theorem` | [isQuotientCoveringMap_zpow](../../../../../Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean/declarations/isquotientcoveringmap-zpow--db96b79882488e8963bb4a6d.md) | 120 | `result-track:db96b79882488e8963bb4a6d0c37b3bb233188b73ede4aa3acb1f68733c8eea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71df0c1c88d4685d65118f848953576113fc188c288d6e2aaf0066f4896f9f56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean","GRWTSK/_verification/specifications/Analysis/CoveringMap/Variant9371381a334efe3e747a53b59268bc0da384a7faf7f81509678ef0ce7b825445.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
