# Verification target: Lp Space Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e278692eef85d3b1cb2667b4340b2c6343150245",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LpSpace/Variant9be66d217512f644fc40950bf8fc666934cbfd5a4fe9dd278919e505fdc34df1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LpSpaceNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LpSpaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e278692eef85d3b1cb2667b4340b2c6343150245`.

Source path: `GRWTSK/Analysis/LpSpace/Variant9be66d217512f644fc40950bf8fc666934cbfd5a4fe9dd278919e505fdc34df1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LpSpace/Variant9be66d217512f644fc40950bf8fc666934cbfd5a4fe9dd278919e505fdc34df1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.lpSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LpSpaceNamespaced.lean/declarations/instance-source-edition-3.md) | 29 | `declaration-track:4027500bb46c8a5fe11f6e49f6406e47b44f9acc08639560c78b2740bc93aef9` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LpSpaceNamespaced.lean/declarations/instance-source-edition-4.md) | 32 | `declaration-track:813fb25f81fe99d8326b8dda1756b1c7ca9cd3dc4b555f89f6b22848631be280` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LpSpaceNamespaced.lean/declarations/instance.md) | 38 | `declaration-track:136751f3347344c2251f5abe711063fb74872ea3575d745a1c85e2ed518ff563` |
| 4 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LpSpaceNamespaced.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:31633df8d76b7c6e10a902da93db026ae0907d1797d3b2ed09f7a8d065388980` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a906706beaa310b5b057eb8920155ea0a06838c2a91c18427a9f15acc1a1468 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/LpSpace/Variant9be66d217512f644fc40950bf8fc666934cbfd5a4fe9dd278919e505fdc34df1.lean","GRWTSK/_verification/specifications/Analysis/FunctionSpaces/LebesgueSpaces/LpSpaces/Variant9be66d217512f644fc40950bf8fc666934cbfd5a4fe9dd278919e505fdc34df1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
