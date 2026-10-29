# Verification target: Away Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3b9afce142efbfb2eb4a372321e489aada5b7df",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Away/Variant8e42f24dc088dc30a63bb2961f8d445b07fc453978bbb9582655740f31479168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3b9afce142efbfb2eb4a372321e489aada5b7df`.

Source path: `GRWTSK/Algebra/GroupTheory/Away/Variant8e42f24dc088dc30a63bb2961f8d445b07fc453978bbb9582655740f31479168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Away/Variant8e42f24dc088dc30a63bb2961f8d445b07fc453978bbb9582655740f31479168.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AwayMap](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap.md) | 53 | `declaration-track:7eb74add99678ac2bcc24e9f86e970e1f5de87f815e3f6542b1efd7ae9e9cff9` |
| 2 | `def` | [AwayMap.invSelf](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap-invself.md) | 58 | `declaration-track:ae92863bfd82c579988b2fe6096dce209b672e4f8d5b885b6c1cfb7da4113957` |
| 3 | `def` | [AwayMap.lift](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap-lift-source-edition-2.md) | 63 | `declaration-track:89823796d9534a5191cbcc2913d3a2a1939adfd753e0d76fa602fe40ac38cb7a` |
| 4 | `theorem` | [AwayMap.lift_eq](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap-lift-eq-source-edition-2.md) | 71 | `result-track:dbca36eee4a46637d4e0eecb72383e5da02c3866f12a92e688ae1decc1262a59` |
| 5 | `theorem` | [AwayMap.lift_comp](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap-lift-comp.md) | 75 | `result-track:6a6e405ff81dd871ddc36fadf8b40adaed6891885a2c375e3d5d2c6f5d3165d2` |
| 6 | `def` | [awayToAwayRight](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaytoawayright.md) | 80 | `declaration-track:84157dc5222ab457c71b7b2e04f1ebba190110a95a6b8e43540cd15416615a26` |
| 7 | `def` | [AwayMap.negSelf](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap-negself.md) | 102 | `declaration-track:888f56ad77df14ce8ea2be17bf259a9ed5677bfac1f39b8c8e3fbf55e77521a6` |
| 8 | `def` | [AwayMap.lift](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap-lift.md) | 108 | `declaration-track:1916e7ee6ac01b58852ff17d4eda939d29d6b7f84a73a0211760dd193e104b2c` |
| 9 | `theorem` | [AwayMap.lift_eq](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap-lift-eq.md) | 118 | `result-track:25a0fffe0234d230de745c539c5bb868b65235f91f1d96f800f43262feb8bfe6` |
| 10 | `theorem` | [AwayMap.lift_comp](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaymap-lift-comp-source-edition-2.md) | 122 | `result-track:a2a45d079ff167deeeaf6628522bc0bfae2ce7d439aad8e6e854899648f46292` |
| 11 | `def` | [awayToAwayRight](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/awaytoawayright-source-edition-2.md) | 127 | `declaration-track:f1c4369ab65ba517e86e2ec7d30762c462e242758cac0945b69c8858ae917332` |
| 12 | `abbrev` | [Away](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/away.md) | 148 | `declaration-track:2ffaf5aed6205d4b24a5283c70f2e9d0eaa1e89f4657708943537fbfa42566b8` |
| 13 | `def` | [Away.invSelf](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/away-invself.md) | 156 | `declaration-track:697a70fb91120c22af395123a3407befdb1220e48877491f7e5e7f08857fb1d8` |
| 14 | `abbrev` | [Away.monoidOf](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/away-monoidof.md) | 164 | `declaration-track:9c9a7b29baf315bb2c9f2eef269a940eb57a0a8972b4aa3513914570097e3707` |
| 15 | `theorem` | [Away.mk_eq_monoidOf_mk'](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/away-mk-eq-monoidof-mk.md) | 168 | `result-track:175d945e12732b83b122085d3f84c4493233846dc891081c2dee8df493fe3509` |
| 16 | `def` | [Away.mulEquivOfQuotient](../../../../GroupTheoryAndGeneralizations/AwayNamespacedPublic.lean/declarations/away-mulequivofquotient.md) | 176 | `declaration-track:1164ae9672898b05dc2a0ae76e27fbceb6d8beed46b45d0704c38df0bca78942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=902de02bdbb0dd8207fed6d6bda7c6ee4ec2acde396266f98006f0cdf965312f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Away/Variant8e42f24dc088dc30a63bb2961f8d445b07fc453978bbb9582655740f31479168.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Away/Variant8e42f24dc088dc30a63bb2961f8d445b07fc453978bbb9582655740f31479168.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
