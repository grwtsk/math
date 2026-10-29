# Verification target: Pairing Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66dc4558dbe63eb19edd983e4fbedca7371eb7df",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66dc4558dbe63eb19edd983e4fbedca7371eb7df`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean.json)

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
| 1 | `structure` | [Pairing](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/pairing.md) | 65 | `declaration-track:cca0e47d87c003102ebcdbd02e71c45f0a9184024e225afe8a7fa4b0b05beae3` |
| 2 | `class` | [IsProper](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/isproper.md) | 82 | `declaration-track:eb822c01fae701b233445509d49dadabead25f945ea386d30bf6c4dcd7ffdf41` |
| 3 | `lemma` | [isUniquelyCodimOneFace](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/isuniquelycodimoneface.md) | 86 | `result-track:af0284993ad382d586540d5dbbb3ff4948347989d428d437ffda70f9d5ff7880` |
| 4 | `lemma` | [dim_p](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/dim-p.md) | 91 | `result-track:11bf0d7bef48f88e50025d43294d1d9dba1410feb23a7cdead6e50bbaf841429` |
| 5 | `class` | [IsInner](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/isinner.md) | 96 | `declaration-track:5b888852328fadb4cde7d7c8a1d76f79d81aa098ca8fa49998bd47cf37daeae7` |
| 6 | `def` | [AncestralRel](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/ancestralrel.md) | 103 | `declaration-track:af8c62e45f4e648421287804a299c8d8dc39377c4209e881181b1e17e54715c5` |
| 7 | `lemma` | [AncestralRel.dim_le](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/ancestralrel-dim-le.md) | 107 | `result-track:1a143b3b7a3eb5717af01a4ef07cc5918fac28b57f13925578e7bab2b7817989` |
| 8 | `class` | [IsRegular](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/isregular.md) | 114 | `declaration-track:f8f50ad8fabf0d4770a7b9cf3343a6de2580b46401d1e76fe4b3384391d5168b` |
| 9 | `lemma` | [wf](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/wf.md) | 121 | `result-track:69a49fca316b6ba40d52b524ccb880edb356c2fe76a098f3929cac302c2248b3` |
| 10 | `lemma` | [exists_or](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/exists-or.md) | 125 | `result-track:b0da54cd560263def9e615fa638dfc246d5ccb9779eff523dcdde3aab5dd072a` |
| 11 | `lemma` | [ne](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/ne.md) | 134 | `result-track:811ffafdec2010b3b9b717ee93e44850643cd56aa696fc573cf96ea53d0248f9` |
| 12 | `lemma` | [le](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/le.md) | 142 | `result-track:645997abb5ed9ac00bbe79020ff2c3ccee44713886b32e8f1c5d0fcbf6bfcc75` |
| 13 | `lemma` | [lt](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/lt.md) | 146 | `result-track:bf630c50999e2aa0d4217a1007e5cdc8190a728c0d9f00750732e3fb5fe3f1c8` |
| 14 | `def` | [ofIso](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/ofiso.md) | 155 | `declaration-track:a464fed5a112c2858d4b3ec9e9d43cf474d393f12ab91f5924a1b50507af6b21` |
| 15 | `lemma` | [ofIso_p](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/ofiso-p.md) | 174 | `result-track:a5f78ed7b76b0d906f6c8681aca3706cdc344bef07160430f9e4910de032922b` |
| 16 | `lemma` | [ofIso_ancestralRel_iff](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/ofiso-ancestralrel-iff.md) | 182 | `result-track:1ed55cc7654fd6dc7293fbd7756f904a34e28601ea5471c180cab7d0424945b8` |
| 17 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/instance.md) | 189 | `declaration-track:b78440052d0a507b9e3b4c257b21666f3e04ef11e671c119e316ee6124656f71` |
| 18 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:e9947456205776c95264422bb4aa2a76ae664f86ab340aa19055a856ba6ac6fb` |
| 19 | `lemma` | [ofIso_index](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/ofiso-index.md) | 206 | `result-track:774144479be9ec687265bbbf20617e89ca3091f1eb63ffe9776b90f8fc7a7e54` |
| 20 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 214 | `declaration-track:f1d3b7e4770ab2c5eb36fc5cbd9feaecb1bc0344761d0969ae85f782031f5b4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d89288f04c37e473fd0bcf848787292d4ad174f52c2c4677bb8dcca8078421b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
